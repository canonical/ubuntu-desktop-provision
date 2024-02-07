package privacy_test

import (
	"context"
	"flag"
	"net"
	"os"
	"path/filepath"
	"testing"

	"github.com/canonical/ubuntu-desktop-provision/provd/internal/services/privacy"
	"github.com/canonical/ubuntu-desktop-provision/provd/internal/testutils"
	pb "github.com/canonical/ubuntu-desktop-provision/provd/protos"
	"github.com/stretchr/testify/require"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
	"google.golang.org/protobuf/types/known/emptypb"
)

func TestNotWritable(t *testing.T) {
	t.Parallel()

	client, err := privacy.New(privacy.WithLocationSettings(privacy.GSettingsSubsetMock{IsWritableError: true}))

	require.Error(t, err, "New should return an error")
	require.Empty(t, client, "New should return a nil response")
}

func TestDisableLocationSettings(t *testing.T) {
	tests := map[string]struct {
		emptyRequest bool
		wantErr      bool
	}{
		// Success case
		"Successfully disables location settings": {},

		// Error cases
		"Error case returns false, no calls made": {wantErr: true},
		"Error on empty request":                  {emptyRequest: true, wantErr: true},
	}

	originalDir, err := os.Getwd()
	require.NoError(t, err, "Setup: could not get current working directory")

	for name, tc := range tests {
		t.Run(name, func(t *testing.T) {
			var opts []privacy.Option
			if tc.wantErr {
				opts = append(opts, privacy.WithLocationSettings(privacy.GSettingsSubsetMock{SetBooleanError: true}))
			} else {
				opts = append(opts, privacy.WithLocationSettings(privacy.GSettingsSubsetMock{}))
			}

			client := newPrivacyClient(t, opts...)

			var req *emptypb.Empty
			if !tc.emptyRequest {
				req = &emptypb.Empty{}
			} else {
				req = nil
			}

			tempDir := t.TempDir()
			err := os.Chdir(tempDir)
			require.NoError(t, err, "Setup: failed to change directory")

			err = os.WriteFile("actions", []byte(""), 0600)
			require.NoError(t, err, "Setup: could not create actions file")

			privacyResp, reqErr := client.DisableLocationServices(context.Background(), req)

			d, err := os.ReadFile("actions")
			require.NoError(t, err, "Teardown: failed to read actions file ")
			got := string(d)

			err = os.Chdir(originalDir)
			require.NoError(t, err, "Teardown: failed to change directory")

			want := testutils.LoadWithUpdateFromGolden(t, got)
			require.Equal(t, want, got, "returned an unexpected response")

			if tc.wantErr {
				require.Error(t, reqErr, "DisableLocationServices should return an error")
				require.Empty(t, privacyResp, "DisableLocationServices should return a nil response")
				return
			}
			require.NoError(t, err, "DisableLocationSerivces should not return an error")
		})
	}
}

func TestEnableLocationSettings(t *testing.T) {
	tests := map[string]struct {
		emptyRequest bool
		wantErr      bool
	}{
		// Success case
		"Successfully enables location settings": {},

		// Error cases
		"Error case returns false, no calls made": {wantErr: true},
		"Error on empty request":                  {emptyRequest: true, wantErr: true},
	}

	originalDir, err := os.Getwd()
	require.NoError(t, err, "Setup: could not get current working directory")

	for name, tc := range tests {
		t.Run(name, func(t *testing.T) {
			var opts []privacy.Option
			if tc.wantErr {
				opts = append(opts, privacy.WithLocationSettings(privacy.GSettingsSubsetMock{SetBooleanError: true}))
			} else {
				opts = append(opts, privacy.WithLocationSettings(privacy.GSettingsSubsetMock{}))
			}

			client := newPrivacyClient(t, opts...)

			var req *emptypb.Empty
			if !tc.emptyRequest {
				req = &emptypb.Empty{}
			} else {
				req = nil
			}

			tempDir := t.TempDir()
			err := os.Chdir(tempDir)
			require.NoError(t, err, "Setup: failed to change directory")

			err = os.WriteFile("actions", []byte(""), 0600)
			require.NoError(t, err, "Setup: could not create actions file")

			privacyResp, reqErr := client.EnableLocationServices(context.Background(), req)

			d, err := os.ReadFile("actions")
			require.NoError(t, err, "Teardown: failed to read actions file ")
			got := string(d)

			err = os.Chdir(originalDir)
			require.NoError(t, err, "Teardown: failed to change directory")

			want := testutils.LoadWithUpdateFromGolden(t, got)
			require.Equal(t, want, got, "returned an unexpected response")

			if tc.wantErr {
				require.Error(t, reqErr, "EnableLocationServices should return an error")
				require.Empty(t, privacyResp, "EnableLocationServices should return a nil response")
				return
			}
			require.NoError(t, err, "EnableLocationSerivces should not return an error")
		})
	}
}

func TestGetLocationSettings(t *testing.T) {
	tests := map[string]struct {
		emptyRequest bool
		wantErr      bool
	}{
		// Success case
		"Success on getting location settings": {},

		// Error cases
		"Error case returns false, no calls made": {wantErr: true},
		"Error on empty request":                  {emptyRequest: true, wantErr: true},
	}

	originalDir, err := os.Getwd()
	require.NoError(t, err, "Setup: could not get current working directory")

	for name, tc := range tests {
		t.Run(name, func(t *testing.T) {
			var opts []privacy.Option
			if tc.wantErr {
				opts = append(opts, privacy.WithLocationSettings(privacy.GSettingsSubsetMock{GetBooleanError: true}))
			} else {
				opts = append(opts, privacy.WithLocationSettings(privacy.GSettingsSubsetMock{}))
			}

			client := newPrivacyClient(t, opts...)

			var req *emptypb.Empty
			if !tc.emptyRequest {
				req = &emptypb.Empty{}
			} else {
				req = nil
			}

			tempDir := t.TempDir()
			err := os.Chdir(tempDir)
			require.NoError(t, err, "Setup: failed to change directory")

			err = os.WriteFile("actions", []byte(""), 0600)
			require.NoError(t, err, "Setup: could not create actions file")

			privacyResp, reqErr := client.GetLocationServices(context.Background(), req)

			d, err := os.ReadFile("actions")
			require.NoError(t, err, "Teardown: failed to read actions file ")
			got := string(d)

			err = os.Chdir(originalDir)
			require.NoError(t, err, "Teardown: failed to change directory")

			want := testutils.LoadWithUpdateFromGolden(t, got)
			require.Equal(t, want, got, "returned an unexpected response")

			if tc.wantErr {
				require.Error(t, reqErr, "GetLocationSerivces should return an error")
				require.Empty(t, privacyResp, "GetLocationSerivces should return a nil response")
				return
			}
			require.NoError(t, err, "GetLocationSerivces should not return an error")
		})
	}
}

// newPrivacyClient creates a new privacy client for testing, with a temp unix socket.
func newPrivacyClient(t *testing.T, opts ...privacy.Option) pb.PrivacyServiceClient {
	t.Helper()
	// socket path is limited in length.
	tmpDir, err := os.MkdirTemp("", "hello-socket-dir")
	require.NoError(t, err, "Setup: could not setup temporary socket dir path")
	t.Cleanup(func() { _ = os.RemoveAll(tmpDir) })
	socketPath := filepath.Join(tmpDir, "provd.sock")

	lis, err := net.Listen("unix", socketPath)
	require.NoError(t, err, "Setup: could not create unix socket")

	service, err := privacy.New(opts...)

	if err != nil {
		t.Fatalf("Setup: could not create user service: %v", err)
	}

	grpcServer := grpc.NewServer()
	pb.RegisterPrivacyServiceServer(grpcServer, service)
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

	return pb.NewPrivacyServiceClient(conn)
}

func TestMain(m *testing.M) {
	testutils.InstallUpdateFlag()
	flag.Parse()

	m.Run()
}
