package timezone_test

import (
	"context"
	"flag"
	"fmt"
	"log/slog"
	"net"
	"os"
	"path/filepath"
	"testing"

	"github.com/canonical/ubuntu-desktop-provision/provd/internal/services/timezone"
	"github.com/canonical/ubuntu-desktop-provision/provd/internal/testutils"
	pb "github.com/canonical/ubuntu-desktop-provision/provd/protos"
	"github.com/stretchr/testify/require"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
	"google.golang.org/protobuf/types/known/emptypb"
)

func TestNew(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		invalidTimedatePrefix bool

		wantErr bool
	}{
		// Success case
		"Success on creating a new timezone service": {},

		// Error cases
		"Error when timedate path is invalid": {invalidTimedatePrefix: true, wantErr: true},
	}
	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			var opts []timezone.Option
			if tc.invalidTimedatePrefix {
				opts = []timezone.Option{
					timezone.WithTimedatePrefix("invalid"),
				}
			}

			client, err := timezone.New(testutils.NewDbusConn(t), opts...)

			if tc.wantErr {
				require.Error(t, err, "New should return an error")
				require.Empty(t, client, "New should return a nil response")
				return
			}

			require.NoError(t, err, "New should not return an error")
			require.NotNil(t, client, "New should return a non-nil response")
		})
	}
}

func TestGetTimezone(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		timedatePath string

		emptyRequest bool
		wantErr      bool
	}{
		// Success case
		"Success with valid request": {},

		// Error cases
		"Error on empty request":           {emptyRequest: true, wantErr: true},
		"Error when fails to get timezone": {timedatePath: "gettimezoneerror", wantErr: true},
	}

	for name, tc := range tests {
		tc := tc // capture range variable
		t.Run(name, func(t *testing.T) {
			t.Parallel()
			t.Cleanup(testutils.StartLocalSystemBus())

			var opts []timezone.Option
			if tc.timedatePath != "" {
				opts = append(opts, timezone.WithTimedatePath(tc.timedatePath))
			}

			client := newTimezoneClient(t, opts...)

			var req *emptypb.Empty
			if !tc.emptyRequest {
				req = &emptypb.Empty{}
			} else {
				req = nil
			}

			timezoneResp, err := client.GetTimezone(context.Background(), req)
			if tc.wantErr {
				require.Error(t, err, "GetTimezone should return an error")
				require.Nil(t, timezoneResp, "GetTimezone should return a nil response when in error")
				return
			}

			require.NoError(t, err, "GetTimezone should not return an error")

			got := timezoneResp.String()
			want := testutils.LoadWithUpdateFromGolden(t, got)
			require.Equal(t, want, got, "GetTimezone response does not match golden file")
		})
	}
}

func TestSetTimezone(t *testing.T) {
	tests := map[string]struct {
		timezone string

		timedatePath string

		emptyRequest bool
		wantErr      bool
	}{
		// Success case
		"Success with valid timezone": {},

		// Error cases
		"Error on empty timezone":   {timezone: "-", wantErr: true},
		"Error on empty request":    {emptyRequest: true, wantErr: true},
		"Error on invalid timezone": {timezone: "invalid/timezone", wantErr: true},

		// Dbus errors
		"Error when fails to get valid timezones": {timedatePath: "gettimezoneserror", wantErr: true},
		"Error when fails to set timezone":        {timezone: "error", wantErr: true},
	}

	originalDir, err := os.Getwd()
	require.NoError(t, err, "Setup: could not get current working directory")

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Cleanup(testutils.StartLocalSystemBus())

			var opts []timezone.Option
			if tc.timedatePath != "" {
				opts = append(opts, timezone.WithTimedatePath(tc.timedatePath))
			}

			client := newTimezoneClient(t, opts...)

			if tc.timezone == "" {
				tc.timezone = "Africa/Johannesburg"
			} else if tc.timezone == "-" {
				tc.timezone = ""
			}

			var req *pb.SetTimezoneRequest
			if !tc.emptyRequest {
				req = &pb.SetTimezoneRequest{Timezone: tc.timezone}
			}

			// TODO: Cleanup into util (same for user service)
			tempDir := t.TempDir()
			err = os.Chdir(tempDir)
			require.NoError(t, err, "Setup: failed to change directory")

			err := os.WriteFile("actions", []byte(""), 0600)
			require.NoError(t, err, "Setup: could not create actions file")

			timezoneResp, respErr := client.SetTimezone(context.Background(), req)

			got, err := testutils.ReadActionFromFile()
			require.NoError(t, err, "Teardown: failed to read actions file ")

			err = os.Chdir(originalDir)
			require.NoError(t, err, "Teardown: failed to change directory")

			if tc.wantErr {
				require.Error(t, respErr, "SetTimezone should return an error")
				require.Nil(t, timezoneResp, "SetTimezone should return a nil response when in error")
				return
			}
			require.NoError(t, respErr, "SetTimezone should not return an error")
			require.NotNil(t, timezoneResp, "SetTimezone should return a non-nil response")

			want := testutils.LoadWithUpdateFromGolden(t, got)
			require.Equal(t, want, got, "CreateUser returned an unexpected response")
		})
	}
}

func newTimezoneClient(t *testing.T, opts ...timezone.Option) pb.TimezoneServiceClient {
	t.Helper()
	// socket path is limited in length.
	tmpDir, err := os.MkdirTemp("", "hello-socket-dir")
	require.NoError(t, err, "Setup: could not setup temporary socket dir path")
	t.Cleanup(func() { _ = os.RemoveAll(tmpDir) })
	socketPath := filepath.Join(tmpDir, "provd.sock")

	lis, err := net.Listen("unix", socketPath)
	require.NoError(t, err, "Setup: could not create unix socket")

	bus := testutils.NewDbusConn(t)

	service, err := timezone.New(bus, opts...)

	require.NoError(t, err, "Setup: could not create locale service")

	grpcServer := grpc.NewServer()
	pb.RegisterTimezoneServiceServer(grpcServer, service)
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

	return pb.NewTimezoneServiceClient(conn)
}

func TestMain(m *testing.M) {
	testutils.InstallUpdateFlag()
	flag.Parse()

	defer testutils.StartLocalSystemBus()()

	conn, err := testutils.GetSystemBusConnection()

	if err != nil {
		slog.Error(fmt.Sprintf("Could not get system bus connection: %v", err))
		os.Exit(1)
	}

	err = testutils.ExportTimedateMock(conn)
	if err != nil {
		slog.Error(fmt.Sprintf("Could not export Timedate mock: %v", err))
		os.Exit(1)
	}

	m.Run()
}
