package chown_test

import (
	"context"
	"errors"
	"flag"
	"net"
	"os"
	"path/filepath"
	"strings"
	"testing"

	chown "github.com/canonical/ubuntu-desktop-provision/provd/internal/services/chown"
	"github.com/canonical/ubuntu-desktop-provision/provd/internal/testutils"
	pb "github.com/canonical/ubuntu-desktop-provision/provd/protos"
	"github.com/stretchr/testify/require"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
)

func TestChownSettings(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		wantError bool
	}{
		"Successfully chown settings to a new user": {},

		"Error when chown settings fails": {wantError: true},
	}

	for name, tc := range tests {
		t.Run(name, func(t *testing.T) {
			tc := tc
			t.Parallel()

			// Prepare mocks
			opts := []chown.Option{
				chown.WithChownExecutable(&mockChownExecutable{}),
			}
			username := "foo"
			if tc.wantError {
				username = "error"
			}
			client := newChownClient(t, opts...)
			resp, err := client.ChownSettings(context.Background(), &pb.ChownRequest{Username: username})
			require.NoError(t, err, "ChownSettings should not return an error")

			got := resp.String()
			want := testutils.LoadWithUpdateFromGolden(t, got)
			require.Equal(t, want, got, "response from ChownSettings should match expected")
		})
	}
}

// newChownClient creates a new chown client for testing, with a temp unix socket.
func newChownClient(t *testing.T, opts ...chown.Option) pb.ChownServiceClient {
	t.Helper()

	// socket path is limited in length.
	tmpDir, err := os.MkdirTemp("", "hello-socket-dir")
	require.NoError(t, err, "Setup: could not setup temporary socket dir path")
	t.Cleanup(func() { _ = os.RemoveAll(tmpDir) })
	socketPath := filepath.Join(tmpDir, "provd.sock")

	lis, err := net.Listen("unix", socketPath)
	require.NoError(t, err, "Setup: could not create unix socket")

	service, err := chown.New(opts...)

	if err != nil {
		t.Fatalf("Setup: could not create user service: %v", err)
	}

	grpcServer := grpc.NewServer()
	pb.RegisterChownServiceServer(grpcServer, service)
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

	return pb.NewChownServiceClient(conn)
}

func TestMain(m *testing.M) {
	testutils.InstallUpdateFlag()
	flag.Parse()

	m.Run()
}

type mockChownExecutable struct{}

func (c *mockChownExecutable) Chown(ctx context.Context, username string) error {
	if strings.Contains(username, "error") {
		return errors.New("mock requsted failure")
	}
	return nil
}
