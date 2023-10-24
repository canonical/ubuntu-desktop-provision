package hello_test

import (
	"context"
	"flag"
	"net"
	"os"
	"path/filepath"
	"testing"

	"github.com/canonical/ubuntu-desktop-provision/provd"
	"github.com/canonical/ubuntu-desktop-provision/provd/internal/services/hello"
	"github.com/canonical/ubuntu-desktop-provision/provd/internal/testutils"
	"github.com/stretchr/testify/require"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
)

func TestEmptyRequest(t *testing.T) {
	t.Parallel()

	client := newHelloClient(t)

	helloResp, err := client.SayHello(context.Background(), nil)
	require.Error(t, err, "SayHello should return an error for nil request")
	require.Empty(t, helloResp, "SayHello should return a nil response for a nil request")
}

func TestSayHello(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		name string

		wantErr bool
	}{
		"Successfully greets a given name": {name: "Matt"},
		"Error when name is empty":         {wantErr: true},
	}
	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			client := newHelloClient(t)

			helloReq := &provd.HelloRequest{
				Name: tc.name,
			}

			helloResp, err := client.SayHello(context.Background(), helloReq)
			if tc.wantErr {
				require.Error(t, err, "SayHello should return an error, but did not")
				return
			}
			require.NoError(t, err, "SayHello should not return an error, but did")

			got := helloResp.GetMessage()
			want := testutils.LoadWithUpdateFromGolden(t, got)
			require.Equal(t, want, got, "GetAuthenticationModes returned an unexpected response")
		})
	}
}

// newHellolient returns a new GRPC Hello client for tests.
func newHelloClient(t *testing.T) (client provd.HelloWorldServiceClient) {
	t.Helper()

	// socket path is limited in length.
	tmpDir, err := os.MkdirTemp("", "hello-socket-dir")
	require.NoError(t, err, "Setup: could not setup temporary socket dir path")
	t.Cleanup(func() { _ = os.RemoveAll(tmpDir) })
	socketPath := filepath.Join(tmpDir, "provd.sock")

	lis, err := net.Listen("unix", socketPath)
	require.NoError(t, err, "Setup: could not create unix socket")

	service := hello.Service{}

	grpcServer := grpc.NewServer()
	provd.RegisterHelloWorldServiceServer(grpcServer, &service)
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

	return provd.NewHelloWorldServiceClient(conn)
}

func TestMain(m *testing.M) {
	testutils.InstallUpdateFlag()
	flag.Parse()

	m.Run()
}
