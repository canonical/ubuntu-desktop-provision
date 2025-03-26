package telemetry_test

import (
	"context"
	"errors"
	"flag"
	"net"
	"os"
	"path/filepath"
	"testing"

	"github.com/canonical/ubuntu-desktop-provision/provd/internal/services/telemetry"
	"github.com/canonical/ubuntu-desktop-provision/provd/internal/testutils"
	pb "github.com/canonical/ubuntu-desktop-provision/provd/protos"
	"github.com/stretchr/testify/require"
	"github.com/ubuntu/ubuntu-report/pkg/sysmetrics"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
	"google.golang.org/protobuf/types/known/emptypb"
)

func TestCollect(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		unknownError bool

		wantErr bool
	}{
		// Success case
		"Metrics are collected successfully": {},

		// Error cases
		"Error when fail to collect metrics from the system": {wantErr: true, unknownError: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			// Prepare mocks
			opts := []telemetry.Option{
				telemetry.WithSysmetricer(&sysmetricsMock{unknownError: tc.unknownError}),
			}

			// Setup tests
			client := newTelemetryClient(t, opts...)
			req := &emptypb.Empty{}
			resp, err := client.Collect(context.Background(), req)

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

func TestCollectAndSend(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		unknownError bool
		networkError bool
	}{
		// Success case
		"Metrics are collected and sent successfully": {},

		// Error cases
		"Return unknown error when fail to collect and send metrics from the system": {unknownError: true},
		"Return network error when internet is not available":                        {networkError: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			// Prepare mocks
			opts := []telemetry.Option{
				telemetry.WithSysmetricer(&sysmetricsMock{unknownError: tc.unknownError, networkError: tc.networkError}),
			}

			// Setup tests
			client := newTelemetryClient(t, opts...)
			req := &emptypb.Empty{}
			resp, err := client.CollectAndSend(context.Background(), req)

			// Evaluate function under test output
			require.NoError(t, err, "CollectAndSend should not have returned an error")

			got := resp.String()
			want := testutils.LoadWithUpdateFromGolden(t, got)
			require.Equal(t, want, got, "CollectAndSend returned an unexpected response")
		})
	}
}

func TestSendDecline(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		unknownError bool
		networkError bool
	}{
		// Success case
		"Message sent declining metrics collection": {},

		// Error cases
		"Return unknown error when fail to send metrics collection decline message": {unknownError: true},
		"Return network error when internet is not available":                       {networkError: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			// Prepare mocks
			opts := []telemetry.Option{
				telemetry.WithSysmetricer(&sysmetricsMock{unknownError: tc.unknownError, networkError: tc.networkError}),
			}

			// Setup tests
			client := newTelemetryClient(t, opts...)
			req := &emptypb.Empty{}
			resp, err := client.SendDecline(context.Background(), req)

			// Evaluate function under test output
			require.NoError(t, err, "SendDecline should not have returned an error")

			got := resp.String()
			want := testutils.LoadWithUpdateFromGolden(t, got)
			require.Equal(t, want, got, "SendDecline returned an unexpected response")
		})
	}
}

type sysmetricsMock struct {
	unknownError bool
	networkError bool
}

func (s *sysmetricsMock) Collect() ([]byte, error) {
	if s.unknownError {
		return nil, errors.New("mock requested unknown error")
	}
	resp := []byte("some static data")
	return resp, nil
}

func (s *sysmetricsMock) CollectAndSend(r sysmetrics.ReportType, alwaysReport bool, baseURL string) error {
	if s.unknownError {
		return errors.New("mock requested unknown error")
	}
	if s.networkError {
		return errors.New("mock requested network error: dial tcp: lookup metrics.ubuntu.com: no such host")
	}
	return nil
}

func (s *sysmetricsMock) SendDecline(alwaysReport bool, baseURL string) error {
	if s.unknownError {
		return errors.New("mock requested unknown error")
	}
	if s.networkError {
		return errors.New("mock requested network error: dial tcp: lookup metrics.ubuntu.com: no such host")
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
