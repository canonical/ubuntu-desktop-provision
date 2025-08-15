package telemetry_test

import (
	"errors"
	"flag"
	"fmt"
	"net"
	"os"
	"path/filepath"
	"slices"
	"testing"

	"github.com/canonical/ubuntu-desktop-provision/provd/internal/services/telemetry/v2"
	"github.com/canonical/ubuntu-desktop-provision/provd/internal/testutils"
	pb "github.com/canonical/ubuntu-desktop-provision/provd/protos/v2"
	"github.com/stretchr/testify/require"
	"github.com/ubuntu/ubuntu-insights/insights"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
	"google.golang.org/protobuf/types/known/emptypb"
)

func TestCollect(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		req          *pb.CollectRequest
		collectError error

		wantErr bool
	}{
		// Success case
		"Metrics are collected successfully": {},
		"Request arguments are passed correctly": {
			req: &pb.CollectRequest{
				SourceMetricsPath: "/some/generic/path/to/metrics.json",
				DryRun:            true,
			},
		},
		"SourceMetricsError is handled correctly with special response": {
			collectError: fmt.Errorf("requested error: %w", insights.ErrSourceMetricsError),
		},

		// Error cases
		"Error in case of generic failure to collect metrics from the system": {collectError: errors.New("requested generic error"), wantErr: true},
	}

	for name, tc := range tests {
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			// Prepare mocks
			opts := []telemetry.Option{
				telemetry.WithProvider(&providerMock{collectErr: tc.collectError}),
			}

			// Setup tests
			client := newTelemetryClient(t, opts...)
			resp, err := client.Collect(t.Context(), &pb.CollectRequest{})

			// Evaluate function under test output
			if tc.wantErr {
				require.Error(t, err, "Collect should have returned an error")
				return
			}
			require.NoError(t, err, "Collect should not have returned an error")

			got := resp.String()
			want := testutils.LoadWithUpdateFromGolden(t, got)
			require.Equal(t, want, got, "Collect returned an unexpected response")
		})
	}
}

func TestSetConsent(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		req              *pb.SetConsentRequest
		setConsentErrors []string

		wantErr bool
	}{
		"Consent state true is passed successfully": {
			req: &pb.SetConsentRequest{State: true},
		},
		"Consent state false is passed successfully": {
			req: &pb.SetConsentRequest{State: false},
		},

		// Error cases
		"Error if failed to set global consent state": {
			req:              &pb.SetConsentRequest{State: false},
			setConsentErrors: []string{""},
			wantErr:          true,
		},
		"Error if failed to set app source consent state": {
			req:              &pb.SetConsentRequest{State: false},
			setConsentErrors: []string{"ubuntu_desktop_provision"},
			wantErr:          true,
		},
		"Error if failed to set linux source consent state": {
			req:              &pb.SetConsentRequest{State: false},
			setConsentErrors: []string{"linux"},
			wantErr:          true,
		},
	}

	for name, tc := range tests {
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			opts := []telemetry.Option{
				telemetry.WithProvider(&providerMock{
					setConsentStateErrs: tc.setConsentErrors,
				}),
			}

			client := newTelemetryClient(t, opts...)
			resp, err := client.SetConsent(t.Context(), tc.req)

			if tc.wantErr {
				require.Error(t, err, "SetConsent should have returned an error")
				return
			}
			require.NoError(t, err, "SetConsent should not have returned an error")
			require.IsType(t, &emptypb.Empty{}, resp, "SetConsent should return an empty response")
		})
	}
}

type providerMock struct {
	// Collect
	collectErr     error
	gotCollectArgs []map[string]any

	// SetConsentState
	setConsentStateErrs    []string
	gotSetConsentStateArgs []map[string]any
}

func (s *providerMock) Collect(source string, flags insights.CollectFlags) ([]byte, error) {
	if s.gotCollectArgs == nil {
		s.gotCollectArgs = make([]map[string]any, 0)
	}

	s.gotCollectArgs = append(s.gotCollectArgs, map[string]any{
		"source": source,
		"flags":  flags,
	})

	if s.collectErr != nil {
		return nil, s.collectErr
	}
	return []byte("some static data"), nil
}

func (s *providerMock) SetConsentState(source string, state bool) error {
	if s.gotSetConsentStateArgs == nil {
		s.gotSetConsentStateArgs = make([]map[string]any, 0)
	}
	s.gotSetConsentStateArgs = append(s.gotSetConsentStateArgs, map[string]any{
		"source": source,
		"state":  state,
	})

	if s.setConsentStateErrs != nil && slices.Contains(s.setConsentStateErrs, source) {
		return fmt.Errorf("requested error for source %q", source)
	}
	return nil
}

// newTelemetryClient creates a new telemetry client for testing, with a temp unix socket.
func newTelemetryClient(t *testing.T, opts ...telemetry.Option) pb.TelemetryServiceClient {
	t.Helper()
	// socket path is limited in length.
	tmpDir, err := os.MkdirTemp("", "hello-socket-dir")
	require.NoError(t, err, "Setup: could not setup temporary socket dir path")
	t.Cleanup(func() { _ = os.RemoveAll(tmpDir) })
	socketPath := filepath.Join(tmpDir, "provd.sock")

	lis, err := net.Listen("unix", socketPath)
	require.NoError(t, err, "Setup: could not create unix socket")

	service, err := telemetry.New(opts...)

	if err != nil {
		t.Fatalf("Setup: could not create user service: %v", err)
	}

	grpcServer := grpc.NewServer()
	pb.RegisterTelemetryServiceServer(grpcServer, service)
	done := make(chan struct{})
	go func() {
		defer close(done)
		_ = grpcServer.Serve(lis)
	}()
	t.Cleanup(func() {
		grpcServer.Stop()
		<-done
	})

	conn, err := grpc.NewClient("unix://"+socketPath, grpc.WithTransportCredentials(insecure.NewCredentials()))
	require.NoError(t, err, "Setup: Could not connect to GRPC server")
	t.Cleanup(func() { _ = conn.Close() })

	return pb.NewTelemetryServiceClient(conn)
}

func TestMain(m *testing.M) {
	testutils.InstallUpdateFlag()
	flag.Parse()

	m.Run()
}
