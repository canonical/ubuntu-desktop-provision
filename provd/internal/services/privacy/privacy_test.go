package privacy_test

import (
	"context"
	"flag"
	"fmt"
	"net"
	"os"
	"path/filepath"
	"strconv"
	"strings"
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

	client, err := privacy.New(privacy.WithLocationSettings(gSettingsSubsetMock{isWritableError: true}))

	require.Error(t, err, "New should return an error")
	require.Empty(t, client, "New should return a nil response")
}

func TestDisableLocationSettings(t *testing.T) {
	t.Parallel()

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

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			actionpath := t.TempDir()

			opts := []privacy.Option{
				privacy.WithLocationSettings(gSettingsSubsetMock{setBooleanError: tc.wantErr, actionpath: actionpath}),
			}

			client := newPrivacyClient(t, opts...)

			var req *emptypb.Empty
			if !tc.emptyRequest {
				req = &emptypb.Empty{}
			}
			privacyResp, reqErr := client.DisableLocationServices(context.Background(), req)

			if tc.wantErr {
				require.Error(t, reqErr, "DisableLocationServices should return an error")
				require.Empty(t, privacyResp, "DisableLocationServices should return a nil response")
				return
			}
			got, err := testutils.ReadActionFromFile(testutils.WithFilePath(actionpath))
			require.NoError(t, err, "ReadActionFromFile should not return an error")

			require.NoError(t, err, "DisableLocationSerivces should not return an error")
			want := testutils.LoadWithUpdateFromGolden(t, got)
			require.Equal(t, want, got, "returned an unexpected response")
		})
	}
}

func TestEnableLocationSettings(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		emptyRequest bool

		wantErr bool
	}{
		// Success case
		"Successfully enables location settings": {},

		// Error cases
		"Error case returns false, no calls made": {wantErr: true},
		"Error on empty request":                  {emptyRequest: true, wantErr: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			actionpath := t.TempDir()

			opts := []privacy.Option{
				privacy.WithLocationSettings(gSettingsSubsetMock{setBooleanError: tc.wantErr, actionpath: actionpath}),
			}

			client := newPrivacyClient(t, opts...)

			var req *emptypb.Empty
			if !tc.emptyRequest {
				req = &emptypb.Empty{}
			}

			privacyResp, reqErr := client.EnableLocationServices(context.Background(), req)

			if tc.wantErr {
				require.Error(t, reqErr, "EnableLocationServices should return an error")
				require.Empty(t, privacyResp, "EnableLocationServices should return a nil response")
				return
			}
			got, err := testutils.ReadActionFromFile(testutils.WithFilePath(actionpath))
			require.NoError(t, err, "ReadActionFromFile should not return an error")

			require.NoError(t, err, "EnableLocationSerivces should not return an error")
			want := testutils.LoadWithUpdateFromGolden(t, got)
			require.Equal(t, want, got, "returned an unexpected response")
		})
	}
}

func TestGetLocationSettings(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		emptyRequest    bool
		getBooleanError bool

		wantErr  bool
		wantTrue bool
	}{
		// Success case
		"Success on getting location settings when false": {},
		"Success on getting location settings when true":  {wantTrue: true},

		// Error cases
		"Error case returns false, no calls made": {getBooleanError: true},
		"Error on empty request":                  {emptyRequest: true, wantErr: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			opts := []privacy.Option{
				privacy.WithLocationSettings(gSettingsSubsetMock{getBooleanError: tc.getBooleanError, wantTrue: tc.wantTrue}),
			}

			client := newPrivacyClient(t, opts...)

			var req *emptypb.Empty
			if !tc.emptyRequest {
				req = &emptypb.Empty{}
			}

			privacyResp, err := client.GetLocationServices(context.Background(), req)

			if tc.wantErr {
				require.Error(t, err, "GetLocationSerivces should return an error")
				require.Empty(t, privacyResp, "GetLocationSerivces should return a nil response")
				return
			}

			got := fmt.Sprintf("%t", privacyResp.GetValue())
			require.NoError(t, err, "GetLocationSerivces should not return an error")
			want := testutils.LoadWithUpdateFromGolden(t, got)
			require.Equal(t, want, got, "returned an unexpected response")
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

type gSettingsSubsetMock struct {
	isWritableError bool
	setBooleanError bool
	getBooleanError bool

	wantTrue bool

	actionpath string
}

func (g gSettingsSubsetMock) IsWritable(key string) bool {
	return !g.isWritableError
}

func (g gSettingsSubsetMock) SetBoolean(key string, value bool) bool {
	if g.setBooleanError {
		return false
	}
	testutils.WriteActionToFile("gsettings.SetBoolean(key: "+key+", value: "+strings.ToLower(strconv.FormatBool(value))+")", testutils.WithFilePath(g.actionpath))
	return true
}

func (g gSettingsSubsetMock) GetBoolean(key string) bool {
	if g.getBooleanError {
		return false // GetBoolean either returns the boolean, or false if it fails, so its difficult to test
	}
	return g.wantTrue
}

func TestMain(m *testing.M) {
	testutils.InstallUpdateFlag()
	flag.Parse()

	m.Run()
}
