package keyboard_test

import (
	"context"
	"flag"
	"fmt"
	"log/slog"
	"net"
	"os"
	"path/filepath"
	"strings"
	"testing"

	"github.com/canonical/ubuntu-desktop-provision/provd/internal/services/keyboard"
	"github.com/canonical/ubuntu-desktop-provision/provd/internal/testutils"
	pb "github.com/canonical/ubuntu-desktop-provision/provd/protos"
	"github.com/stretchr/testify/require"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
	"google.golang.org/protobuf/types/known/emptypb"
)

func TestGsettingsNotWritable(t *testing.T) {
	t.Parallel()

	bus := testutils.NewDbusConn(t)
	client, err := keyboard.New(bus, keyboard.WithGSettingsSubset(keyboard.GSettingsSubsetMock{IsWritableError: true}))

	require.Error(t, err, "SetInputSource should return an error")
	require.Empty(t, client, "SetInputSource should return a nil response")
}

func TestSetInputSources(t *testing.T) {
	tests := map[string]struct {
		variant string
		layout  string

		// Empty flags
		emptyRequest  bool
		emptySettings bool

		wantErr bool
	}{
		// Success cases
		"Success on valid layout and variant":    {},
		"Success on valid layout, empty variant": {variant: "-"},

		// Error cases
		"Error on empty layout":   {layout: "-", wantErr: true},
		"Error on empty request":  {emptyRequest: true, wantErr: true},
		"Error on empty settings": {emptySettings: true, wantErr: true},

		// GSettings errors
		"Error when calling SetValue": {layout: "gsettingserror", wantErr: true},
	}

	originalDir, err := os.Getwd()
	require.NoError(t, err, "Setup: could not get current working directory")

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Cleanup(testutils.StartLocalSystemBus())

			opts := []keyboard.Option{
				keyboard.WithGSettingsSubset(keyboard.GSettingsSubsetMock{}),
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

			var req *pb.SetInputSourceRequest
			if tc.emptyRequest {
				req = nil
			} else if tc.emptySettings {
				req = &pb.SetInputSourceRequest{}
			} else {
				req = &pb.SetInputSourceRequest{
					Settings: &pb.KeyboardSettings{
						Layout:  tc.layout,
						Variant: tc.variant,
					},
				}
			}

			tempDir := t.TempDir()
			err := os.Chdir(tempDir)
			require.NoError(t, err, "Setup: failed to change directory")

			err = os.WriteFile("actions", []byte(""), 0600)
			require.NoError(t, err, "Setup: could not create actions file")

			keyboardResp, reqErr := client.SetInputSource(context.Background(), req)

			d, err := os.ReadFile("actions")
			require.NoError(t, err, "Teardown: failed to read actions file ")
			got := string(d)

			err = os.Chdir(originalDir)
			require.NoError(t, err, "Teardown: failed to change directory")

			want := testutils.LoadWithUpdateFromGolden(t, got)
			require.Equal(t, want, got, "returned an unexpected response")

			if tc.wantErr {
				require.Error(t, reqErr, "SetInputSource should return an error")
				require.Empty(t, keyboardResp, "SetInputSource should return a nil response")
				return
			}
			require.NoError(t, err, "SetInputSource should not return an error")
		})
	}
}

func TestGetKeyboard(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		locale1Path string

		// Error flags
		emptyRequest       bool
		keyboardConfigPath string

		wantErr bool
	}{
		// Success cases
		"Success on retrieving keyboards": {},

		// // Error cases
		// "Error when request is empty":          {emptyRequest: true, wantErr: true},
		// "Error when can't find keyboard file":  {keyboardConfigPath: "invalid-path", wantErr: true},
		// "Error when can't parse keyboard file": {keyboardConfigPath: "unparsable", wantErr: true},

		// // Dbus errors
		// "Error when getting X11Layout":  {locale1Path: "x11layouterror", wantErr: true},
		// "Error when getting X11Variant": {locale1Path: "x11varianterror", wantErr: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()
			t.Cleanup(testutils.StartLocalSystemBus())

			tempDir := t.TempDir()

			if tc.keyboardConfigPath == "unparsable" {
				tc.keyboardConfigPath = filepath.Join(tempDir, "supported")
				err := os.WriteFile(tc.keyboardConfigPath, []byte("foo"), 0600)
				require.NoError(t, err, "Setup: could not write to %s: %v", tc.keyboardConfigPath, err)
			}

			var opts []keyboard.Option
			if tc.keyboardConfigPath != "" {
				opts = append(opts, keyboard.WithKeyboardl18nPath(tc.keyboardConfigPath))
			}
			if tc.locale1Path != "" {
				opts = append(opts, keyboard.WithLocalePath(tc.locale1Path))
			}

			client, err := keyboard.New(testutils.NewDbusConn(t), opts...)
			require.NoError(t, err, "Setup: could not create keyboard service")

			var req *emptypb.Empty
			if !tc.emptyRequest {
				req = &emptypb.Empty{}
			} else {
				req = nil
			}

			resp, err := client.GetKeyboard(context.Background(), req)

			if tc.wantErr {
				require.Error(t, err, "GetKeyboard should return an error")
				require.Empty(t, resp, "GetKeyboard should return a nil response")
				return
			}
			require.NoError(t, err, "GetKeyboard should not return an error")

			got := strings.ReplaceAll(resp.String(), "  ", " ") // Normalize spaces
			want := testutils.LoadWithUpdateFromGolden(t, got)
			require.Equal(t, want, got, "returned an unexpected response")
		})
	}
}

func TestSetKeyboard(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		variant     string
		layout      string
		locale1Path string

		emptyRequest  bool
		emptySettings bool

		wantErr bool
	}{
		// Success cases
		"Success on valid layout and variant":    {},
		"Success on valid layout, empty variant": {variant: "-"},

		// Error cases
		"Error on empty layout":   {layout: "-", wantErr: true},
		"Error on empty request":  {emptyRequest: true, wantErr: true},
		"Error on empty settings": {emptySettings: true, wantErr: true},

		// Dbus errors
		"Error when gettings X11Model":     {locale1Path: "x11modelerror", wantErr: true},
		"Error when getting X11Options":    {locale1Path: "x11optionserror", wantErr: true},
		"Error from locale dbus object":    {locale1Path: "localeerror", wantErr: true},
		"Error when setting X11Keyboard":   {layout: "x11keyboarderror", wantErr: true},
		"Error when cant parse X11Model":   {locale1Path: "x11modelparseerror", wantErr: true},
		"Error when cant parse X11Options": {locale1Path: "x11optionsparseerror", wantErr: true},
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
			} else if tc.emptySettings {
				req = &pb.SetKeyboardRequest{}
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
