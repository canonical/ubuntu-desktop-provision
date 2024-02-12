package accessibility_test

import (
	"context"
	"flag"
	"fmt"
	"net"
	"os"
	"path/filepath"
	"testing"

	"github.com/canonical/ubuntu-desktop-provision/provd/internal/services/accessibility"
	"github.com/canonical/ubuntu-desktop-provision/provd/internal/testutils"
	pb "github.com/canonical/ubuntu-desktop-provision/provd/protos"
	"github.com/stretchr/testify/require"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
	"google.golang.org/protobuf/types/known/emptypb"
)

type operation int

const (
	Get operation = iota
	Enable
	Disable
)

func TestGetHighContrast(t *testing.T) {
	tests := map[string]struct {
		emptyRequest    bool
		getBooleanError bool

		wantErr bool
	}{
		// Success case
		"Success getting state of high contrast": {},

		// Error cases
		"Error case returns false, no calls made": {getBooleanError: true},
		"Error on empty request":                  {emptyRequest: true, wantErr: true},
	}

	for name, tc := range tests {
		t.Run(name, func(t *testing.T) {
			// Prepare mocks
			var opts []accessibility.Option
			if tc.getBooleanError {
				opts = append(opts, accessibility.WithA11ySettings(accessibility.GSettingsSubsetMock{GetBooleanError: true}))
			} else {
				opts = append(opts, accessibility.WithA11ySettings(accessibility.GSettingsSubsetMock{}))
			}

			// Setup test
			client := newAccessibilityClient(t, opts...)
			req := newEmptyRequest(tc.emptyRequest)

			// Get function under test output
			resp, err := client.GetHighContrast(context.Background(), req)
			got := fmt.Sprintf("%v", resp.GetValue())

			// Evaluate function under test output
			want := testutils.LoadWithUpdateFromGolden(t, got)
			require.Equal(t, want, got, "returned an unexpected response")
			if tc.wantErr {
				require.Error(t, err, "GetHighContrast should return an error")
				require.Empty(t, resp, "GetHighContrast should return a nil response")
				return
			}
			require.NoError(t, err, "GetHighcontrast should not return an error")
		})
	}
}

func TestDisableHighContrast(t *testing.T) {
	tests := map[string]struct {
		emptyRequest    bool
		setBooleanError bool

		wantErr bool
	}{
		// Success case
		"Success disable high contrast": {},

		// Error cases
		"Error case returns false, no calls made": {setBooleanError: true, wantErr: true},
		"Error on empty request":                  {emptyRequest: true, wantErr: true},
	}

	originalDir, err := os.Getwd()
	require.NoError(t, err, "Setup: could not get current working directory")

	for name, tc := range tests {
		t.Run(name, func(t *testing.T) {
			// Prepare mocks
			var opts []accessibility.Option
			if tc.setBooleanError {
				opts = append(opts, accessibility.WithA11ySettings(accessibility.GSettingsSubsetMock{SetBooleanError: true}))
			} else {
				opts = append(opts, accessibility.WithA11ySettings(accessibility.GSettingsSubsetMock{}))
			}

			// Setup test
			client := newAccessibilityClient(t, opts...)
			req := newEmptyRequest(tc.emptyRequest)
			tempDirSetup(t)

			// Get function under test output
			resp, err := client.DisableHighContrast(context.Background(), req)
			got := tempDirTeardown(t, originalDir)

			// Evaluate function under test output
			want := testutils.LoadWithUpdateFromGolden(t, got)
			require.Equal(t, want, got, "returned an unexpected response")
			if tc.wantErr {
				require.Error(t, err, "DisableHighContrast should return an error")
				require.Empty(t, resp, "DisableHighContrast should return a nil response")
				return
			}
			require.NoError(t, err, "DisableHighcontrast should not return an error")
			require.NotNil(t, resp, "DisableHighContrast should return a non-nil response")
		})
	}
}

func TestEnableHighContrast(t *testing.T) {
	tests := map[string]struct {
		emptyRequest    bool
		setBooleanError bool

		wantErr bool
	}{
		// Success case
		"Success enable high contrast": {},

		// Error cases
		"Error case returns false, no calls made": {setBooleanError: true, wantErr: true},
		"Error on empty request":                  {emptyRequest: true, wantErr: true},
	}

	originalDir, err := os.Getwd()
	require.NoError(t, err, "Setup: could not get current working directory")

	for name, tc := range tests {
		t.Run(name, func(t *testing.T) {
			// Prepare mocks
			var opts []accessibility.Option
			if tc.setBooleanError {
				opts = append(opts, accessibility.WithA11ySettings(accessibility.GSettingsSubsetMock{SetBooleanError: true}))
			} else {
				opts = append(opts, accessibility.WithA11ySettings(accessibility.GSettingsSubsetMock{}))
			}
			// Setup test
			client := newAccessibilityClient(t, opts...)
			req := newEmptyRequest(tc.emptyRequest)
			tempDirSetup(t)

			// Get function under test output
			resp, err := client.EnableHighContrast(context.Background(), req)
			got := tempDirTeardown(t, originalDir)

			// Evaluate function under test output
			want := testutils.LoadWithUpdateFromGolden(t, got)
			require.Equal(t, want, got, "returned an unexpected response")
			if tc.wantErr {
				require.Error(t, err, "EnableHighContrast should return an error")
				require.Empty(t, resp, "EnableHighContrast should return a nil response")
				return
			}
			require.NoError(t, err, "EnableHighContrast should not return an error")
			require.NotNil(t, resp, "EnableHighContrast should return a non-nil response")
		})
	}
}

func TestGetReducedMotion(t *testing.T) {
	tests := map[string]struct {
		// Error flags
		emptyRequest    bool
		getBooleanError bool

		// wants
		wantErr bool
	}{
		// Success case
		"Success getting state of reduced motion": {},

		// Error cases
		"Error case returns false, no calls made": {getBooleanError: true},
		"Error on empty request":                  {emptyRequest: true, wantErr: true},
	}

	for name, tc := range tests {
		t.Run(name, func(t *testing.T) {
			// Prepare mocks
			var opts []accessibility.Option
			if tc.getBooleanError {
				opts = append(opts, accessibility.WithInterfaceSettings(accessibility.GSettingsSubsetMock{GetBooleanError: true}))
			} else {
				opts = append(opts, accessibility.WithInterfaceSettings(accessibility.GSettingsSubsetMock{}))
			}

			// Setup test
			client := newAccessibilityClient(t, opts...)
			req := newEmptyRequest(tc.emptyRequest)

			// Get function under test output
			resp, err := client.GetReducedMotion(context.Background(), req)
			got := fmt.Sprintf("%t", resp.GetValue())

			// Evaluate function under test output
			want := testutils.LoadWithUpdateFromGolden(t, got)
			require.Equal(t, want, got, "returned an unexpected response")
			if tc.wantErr {
				require.Error(t, err, "GetReducedMotion should return an error")
				require.Empty(t, resp, "GetReducedMotion should return a nil response")
				return
			}
			require.NoError(t, err, "GetReducedMotion should not return an error")
		})
	}
}

func TestDisableReducedMotion(t *testing.T) {
	tests := map[string]struct {
		emptyRequest    bool
		setBooleanError bool

		wantErr bool
	}{
		// Success case
		"Success disable reduced motion": {},

		// Error cases
		"Error case returns false, no calls made": {setBooleanError: true, wantErr: true},
		"Error on empty request":                  {emptyRequest: true, wantErr: true},
	}

	originalDir, err := os.Getwd()
	require.NoError(t, err, "Setup: could not get current working directory")

	for name, tc := range tests {
		t.Run(name, func(t *testing.T) {
			// Prepare mocks
			var opts []accessibility.Option
			if tc.setBooleanError {
				opts = append(opts, accessibility.WithInterfaceSettings(accessibility.GSettingsSubsetMock{SetBooleanError: true}))
			} else {
				opts = append(opts, accessibility.WithInterfaceSettings(accessibility.GSettingsSubsetMock{}))
			}

			// Setup test
			client := newAccessibilityClient(t, opts...)
			req := newEmptyRequest(tc.emptyRequest)
			tempDirSetup(t)

			// Get function under test output
			resp, err := client.DisableReducedMotion(context.Background(), req)
			got := tempDirTeardown(t, originalDir)

			// Evaluate function under test output
			want := testutils.LoadWithUpdateFromGolden(t, got)
			require.Equal(t, want, got, "returned an unexpected response")
			if tc.wantErr {
				require.Error(t, err, "DisableReducedMotion should return an error")
				require.Empty(t, resp, "DisableReducedMotion should return a nil response")
				return
			}
			require.NoError(t, err, "DisableReducedMotion should not return an error")
			require.NotNil(t, resp, "DisableReducedMotion should return a non-nil response")
		})
	}
}

func TestEnableReducedMotion(t *testing.T) {
	tests := map[string]struct {
		emptyRequest    bool
		setBooleanError bool

		wantErr bool
	}{
		// Success case
		"Success enable reduced motion": {},

		// Error cases
		"Error case returns false, no calls made": {setBooleanError: true, wantErr: true},
		"Error on empty request":                  {emptyRequest: true, wantErr: true},
	}

	originalDir, err := os.Getwd()
	require.NoError(t, err, "Setup: could not get current working directory")

	for name, tc := range tests {
		t.Run(name, func(t *testing.T) {
			// Prepare mocks
			var opts []accessibility.Option
			if tc.setBooleanError {
				opts = append(opts, accessibility.WithInterfaceSettings(accessibility.GSettingsSubsetMock{SetBooleanError: true}))
			} else {
				opts = append(opts, accessibility.WithInterfaceSettings(accessibility.GSettingsSubsetMock{}))
			}
			// Setup test
			client := newAccessibilityClient(t, opts...)
			req := newEmptyRequest(tc.emptyRequest)
			tempDirSetup(t)

			// Get function under test output
			resp, err := client.EnableReducedMotion(context.Background(), req)
			got := tempDirTeardown(t, originalDir)

			// Evaluate function under test output
			want := testutils.LoadWithUpdateFromGolden(t, got)
			require.Equal(t, want, got, "returned an unexpected response")
			if tc.wantErr {
				require.Error(t, err, "EnableReducedMotion should return an error")
				require.Empty(t, resp, "EnableReducedMotion should return a nil response")
				return
			}
			require.NoError(t, err, "EnableReducedMotion should not return an error")
			require.NotNil(t, resp, "EnableReducedMotion should return a non-nil response")
		})
	}
}

func newEmptyRequest(emptyRequest bool) *emptypb.Empty {
	var req *emptypb.Empty
	if !emptyRequest {
		req = &emptypb.Empty{}
	} else {
		req = nil
	}
	return req
}

func tempDirSetup(t *testing.T) {
	t.Helper()
	tempDir := t.TempDir()
	err := os.Chdir(tempDir)
	require.NoError(t, err, "Setup: failed to change directory")

	err = os.WriteFile("actions", []byte(""), 0600)
	require.NoError(t, err, "Setup: could not create actions file")
}

func tempDirTeardown(t *testing.T, originalDir string) string {
	t.Helper()
	d, err := os.ReadFile("actions")
	require.NoError(t, err, "Teardown: failed to read actions file ")
	got := string(d)

	err = os.Chdir(originalDir)
	require.NoError(t, err, "Teardown: failed to change directory")
	return got
}

// newAccessibilityClient creates a new accessibility client fo			if tc.wantErr {r testing, with a temp unix socket.
func newAccessibilityClient(t *testing.T, opts ...accessibility.Option) pb.AccessibilityServiceClient {
	t.Helper()
	// socket path is limited in length.
	tmpDir, err := os.MkdirTemp("", "hello-socket-dir")
	require.NoError(t, err, "Setup: could not setup temporary socket dir path")
	t.Cleanup(func() { _ = os.RemoveAll(tmpDir) })
	socketPath := filepath.Join(tmpDir, "provd.sock")

	lis, err := net.Listen("unix", socketPath)
	require.NoError(t, err, "Setup: could not create unix socket")

	service, err := accessibility.New(opts...)

	if err != nil {
		t.Fatalf("Setup: could not create a11y service: %v", err)
	}

	grpcServer := grpc.NewServer()
	pb.RegisterAccessibilityServiceServer(grpcServer, service)
	done := make(chan struct{})
	go func() {
		defer close(done)
		_ = grpcServer.Serve(lis)
	}()
	t.Cleanup(func() {
		grpcServer.Stop()
		<-done
	})

	conn, err := grpc.Dial("unix://"+socketPath, grpc.WithTransportCredentials(insecure.NewCredentials()))
	require.NoError(t, err, "Setup: Could not connect to GRPC server")
	t.Cleanup(func() { _ = conn.Close() })

	return pb.NewAccessibilityServiceClient(conn)
}

func TestMain(m *testing.M) {
	testutils.InstallUpdateFlag()
	flag.Parse()

	m.Run()
}
