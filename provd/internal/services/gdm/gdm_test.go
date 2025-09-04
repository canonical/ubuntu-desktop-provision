package gdm_test

import (
	"context"
	"fmt"
	"log/slog"
	"net"
	"os"
	"path/filepath"
	"testing"

	"github.com/canonical/ubuntu-desktop-provision/provd/internal/services/gdm"
	"github.com/canonical/ubuntu-desktop-provision/provd/internal/testutils"
	pb "github.com/canonical/ubuntu-desktop-provision/provd/protos"
	"github.com/stretchr/testify/require"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
)

func TestNew(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		invalidGdmPrefix bool

		wantErr bool
	}{
		// Success case
		"Success on creating GDM service": {},

		// Error case
		"Error on session bus unavailable": {invalidGdmPrefix: true, wantErr: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			var opts []gdm.Option
			if tc.invalidGdmPrefix {
				opts = []gdm.Option{
					gdm.WithGdmPrefix("invalid"),
				}
			}

			_, err := gdm.New(testutils.NewDbusConn(t), opts...)
			if tc.wantErr {
				require.Error(t, err, "Expected error, but got nil")
				return
			}
			require.NoError(t, err, "Expected no error, but got %v", err)
		})
	}
}

func TestLaunchDesktopSession(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		username  string
		password  string
		cancelReq bool

		wantErr bool
	}{
		// Success case
		"Success on launching desktop session": {},

		// Error cases
		"Error on invalid credentials":         {username: "foo", password: "bar", wantErr: true},
		"Error on empty username":              {username: "-", wantErr: true},
		"Error on cancelled request":           {cancelReq: true, wantErr: true},
		"Error when 'begin verifcation' fails": {username: "begin-verification-fails", wantErr: true},
		"Error when 'answer query' fails":      {password: "answer-query-fails", wantErr: true},
		"Error when 'start session' fails":     {username: "start-session-fails", wantErr: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			t.Cleanup(testutils.StartLocalSystemBus())

			client := newGdmClient(t)
			switch tc.username {
			case "":
				tc.username = "myuser"
			case "-":
				tc.username = ""
			}

			if tc.password == "" {
				tc.password = "mypassword"
			}

			req := &pb.GdmServiceRequest{
				Username: tc.username,
				Password: tc.password,
			}

			ctx := context.Background()
			if tc.cancelReq {
				var cancel context.CancelFunc
				ctx, cancel = context.WithCancel(ctx)
				cancel()
			}
			gdmResp, err := client.LaunchDesktopSession(ctx, req)
			if tc.wantErr {
				require.Error(t, err, "LaunchDesktopSession should return an error")
				require.Empty(t, gdmResp, "LaunchDesktopSession should return a nil response")
				return
			}
			require.NoError(t, err, "LaunchDesktopSession should not return an error")
		})
	}
}

// newGdmClient creates a new GDM service client for testing, with a temporary unix socket and mock Dbus connection.
func newGdmClient(t *testing.T, opts ...gdm.Option) pb.GdmServiceClient {
	t.Helper()
	tmpDir, err := os.MkdirTemp("", "hello-socket-dir")
	require.NoError(t, err, "Setup: could not setup temporary socket dir path")
	t.Cleanup(func() { _ = os.RemoveAll(tmpDir) })
	socketPath := filepath.Join(tmpDir, "provd.sock")

	lis, err := net.Listen("unix", socketPath)
	require.NoError(t, err, "Setup: could not create unix socket")

	bus := testutils.NewDbusConn(t)

	service, err := gdm.New(bus, opts...)

	if err != nil {
		t.Fatalf("Setup: could not create user service: %v", err)
	}

	grpcServer := grpc.NewServer()
	pb.RegisterGdmServiceServer(grpcServer, service)
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

	return pb.NewGdmServiceClient(conn)
}

func TestMain(m *testing.M) {
	defer testutils.StartLocalSystemBus()()
	defer testutils.CleanupPrivateBuses()

	conn, err := testutils.GetSystemBusConnection()

	if err != nil {
		slog.Error(fmt.Sprintf("Could not get system bus connection: %v", err))
		os.Exit(1)
	}

	err = testutils.ExportGdmMock(conn)
	if err != nil {
		slog.Error(fmt.Sprintf("Could not export gdm mock: %v", err))
		os.Exit(1)
	}

	m.Run()
}
