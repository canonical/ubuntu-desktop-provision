package keyboard_test

import (
	"context"
	"flag"
	"fmt"
	"log/slog"
	"net"
	"os"
	"path/filepath"
	"testing"

	"github.com/canonical/ubuntu-desktop-provision/provd/internal/services/keyboard"
	"github.com/canonical/ubuntu-desktop-provision/provd/internal/testutils"
	pb "github.com/canonical/ubuntu-desktop-provision/provd/protos"
	"github.com/stretchr/testify/require"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
)

func TestSetKeyboard(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		variant     string
		layout      string
		locale1Path string

		emptyRequest bool

		wantErr bool
	}{
		// Success cases
		"Success on valid layout and variant":    {},
		"Success on valid layout, empty variant": {variant: "-"},

		// Error cases
		"Error on empty layout": {layout: "-", wantErr: true},

		// Dbus errors
		"Error when request is nil":      {emptyRequest: true, wantErr: true},
		"Error when gettings X11Model":   {locale1Path: "x11modelerror", wantErr: true},
		"Error when getting X11Options":  {locale1Path: "x11optionserror", wantErr: true},
		"Error from locale dbus object":  {locale1Path: "localeerror", wantErr: true},
		"Error when setting X11Keyboard": {layout: "x11keyboarderror", wantErr: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()
			t.Cleanup(testutils.StartLocalSystemBus())

			var opts []keyboard.Option
			if tc.locale1Path != "" {
				opts = append(opts, keyboard.WithLocalePath(tc.locale1Path))
			}

			client := newKeyboardClient(t, opts...)

			if tc.variant == "" {
				tc.variant = "ok"
			} else if tc.variant == "-" {
				tc.variant = ""
			}

			if tc.layout == "" {
				tc.layout = "ok"
			} else if tc.layout == "-" {
				tc.layout = ""
			}

			var req *pb.SetKeyboardRequest
			if tc.emptyRequest {
				req = nil
			} else {
				req = &pb.SetKeyboardRequest{
					Settings: &pb.KeyboardSettings{
						Layout:  tc.layout,
						Variant: tc.variant,
					},
				}
			}

			keyboardResp, err := client.SetKeyboard(context.Background(), req)
			if tc.wantErr {
				require.Error(t, err, "SetKeyboard should return an error")
				require.Empty(t, keyboardResp, "SetKeyboard should return a nil response")
				return
			}
			require.NoError(t, err, "SetKeyboard should not return an error")
		})
	}
}

// newKeyboardClient creates a new keyboard client for testing, with a temp unix socket and mock Dbus connection.
func newKeyboardClient(t *testing.T, opts ...keyboard.Option) pb.KeyboardServiceClient {
	t.Helper()
	// socket path is limited in length.
	tmpDir, err := os.MkdirTemp("", "hello-socket-dir")
	require.NoError(t, err, "Setup: could not setup temporary socket dir path")
	t.Cleanup(func() { _ = os.RemoveAll(tmpDir) })
	socketPath := filepath.Join(tmpDir, "provd.sock")

	lis, err := net.Listen("unix", socketPath)
	require.NoError(t, err, "Setup: could not create unix socket")

	bus := testutils.NewDbusConn(t)

	service, err := keyboard.New(bus, opts...)

	if err != nil {
		t.Fatalf("Setup: could not create user service: %v", err)
	}

	grpcServer := grpc.NewServer()
	pb.RegisterKeyboardServiceServer(grpcServer, service)
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

	return pb.NewKeyboardServiceClient(conn)
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

	err = testutils.ExportLocaleMock(conn)
	if err != nil {
		slog.Error(fmt.Sprintf("Could not export locale1 mock: %v", err))
		os.Exit(1)
	}

	m.Run()
}
