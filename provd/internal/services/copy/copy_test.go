package copy_test

import (
	"context"
	"errors"
	"flag"
	"net"
	"os"
	"path/filepath"
	"strings"
	"testing"

	copy "github.com/canonical/ubuntu-desktop-provision/provd/internal/services/copy"
	"github.com/canonical/ubuntu-desktop-provision/provd/internal/testutils"
	pb "github.com/canonical/ubuntu-desktop-provision/provd/protos"
	"github.com/stretchr/testify/require"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
)

func TestCopySettings(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		wantError bool
	}{
		"Successfully copy settings to a new user": {},

		"Error when copy settings fails": {wantError: true},
	}

	for name, tc := range tests {
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			// Prepare mocks
			opts := []copy.Option{
				copy.WithCopier(&mockCopier{}),
			}
			username := "foo"
			if tc.wantError {
				username = "error"
			}
			client := newCopyClient(t, opts...)
			_, err := client.CopySettings(context.Background(), &pb.CopySettingsRequest{Username: username})

			if tc.wantError {
				require.Error(t, err, "CopySettings should have returned an error")
				return
			}
			require.NoError(t, err, "CopySettings should not have returned an error")
		})
	}
}

func newCopyClient(t *testing.T, opts ...copy.Option) pb.CopyServiceClient {
	t.Helper()

	// socket path is limited in length.
	tmpDir, err := os.MkdirTemp("", "hello-socket-dir")
	require.NoError(t, err, "Setup: could not setup temporary socket dir path")
	t.Cleanup(func() { _ = os.RemoveAll(tmpDir) })
	socketPath := filepath.Join(tmpDir, "provd.sock")

	lis, err := net.Listen("unix", socketPath)
	require.NoError(t, err, "Setup: could not create unix socket")

	service, err := copy.New(opts...)

	if err != nil {
		t.Fatalf("Setup: could not create user service: %v", err)
	}

	grpcServer := grpc.NewServer()
	pb.RegisterCopyServiceServer(grpcServer, service)
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

	return pb.NewCopyServiceClient(conn)
}

func TestMain(m *testing.M) {
	testutils.InstallUpdateFlag()
	flag.Parse()

	m.Run()
}

type mockCopier struct{}

func (c *mockCopier) CopySettings(ctx context.Context, username string) error {
	if strings.Contains(username, "error") {
		return errors.New("mock requsted failure")
	}
	return nil
}
