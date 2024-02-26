package accessibility_test

import (
	"flag"
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
)

func TestNew(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		// Error flags
		allySettingsError        bool
		applicationSettingsError bool
		interfaceSettingsError   bool
		wmSettingsError          bool
		keyboardSettingsError    bool

		wantErr bool
	}{
		// Success case
		"Success on creating a new a11y service": {},

		// Error cases
		"Error when a11y settings path is not writable":        {allySettingsError: true, wantErr: true},
		"Error when application settings path is not writable": {applicationSettingsError: true, wantErr: true},
		"Error when interface settings path is not writable":   {interfaceSettingsError: true, wantErr: true},
		"Error when wm settings path is not writable":          {wmSettingsError: true, wantErr: true},
		"Error when keyboard settings path is not writable":    {keyboardSettingsError: true, wantErr: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			var opts []accessibility.Option
			if tc.allySettingsError {
				opts = append(opts, accessibility.WithA11ySettings(&gSettingsSubsetMock{isWritableError: true}))
			}
			if tc.applicationSettingsError {
				opts = append(opts, accessibility.WithApplicationSettings(&gSettingsSubsetMock{isWritableError: true}))
			}
			if tc.interfaceSettingsError {
				opts = append(opts, accessibility.WithInterfaceSettings(&gSettingsSubsetMock{isWritableError: true}))
			}
			if tc.wmSettingsError {
				opts = append(opts, accessibility.WithWMSettings(&gSettingsSubsetMock{isWritableError: true}))
			}
			if tc.keyboardSettingsError {
				opts = append(opts, accessibility.WithKeyboardSettings(&gSettingsSubsetMock{isWritableError: true}))
			}

			client, err := accessibility.New(opts...)

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

type gSettingsSubsetMock struct {

	// Error flags for each method
	isWritableError bool
	setBooleanError bool
	getBooleanError bool
	setDoubleError  bool
	getDoubleError  bool

	// Current values
	currentBool   bool
	currentDouble float64
}

func (g gSettingsSubsetMock) IsWritable(key string) bool {
	return !g.isWritableError
}

func (g *gSettingsSubsetMock) SetBoolean(key string, value bool) bool {
	if g.setBooleanError {
		return false
	}
	g.currentBool = value
	return true
}

func (g gSettingsSubsetMock) GetBoolean(key string) bool {
	if g.getBooleanError {
		return false
	}
	return g.currentBool
}

func (g *gSettingsSubsetMock) SetDouble(key string, value float64) bool {
	if g.setDoubleError {
		return false
	}
	g.currentDouble = value
	return true
}

func (g gSettingsSubsetMock) GetDouble(key string) float64 {
	if g.getDoubleError {
		return 0
	}
	return g.currentDouble
}
