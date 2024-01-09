package user_test

import (
	"context"
	"flag"
	"fmt"
	"net"
	"os"
	"path/filepath"
	"testing"

	"github.com/canonical/ubuntu-desktop-provision/provd/internal/services/user"
	"github.com/canonical/ubuntu-desktop-provision/provd/internal/testutils"
	"github.com/canonical/ubuntu-desktop-provision/provd/proto"
	"github.com/stretchr/testify/require"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
)

func TestCreateUser(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		realName  string
		username  string
		password  string
		hostname  string
		autoLogin bool

		wantErr bool
	}{
		"Successfully creates a user":  {realName: "Matt", username: "matt", password: "password", hostname: "ubuntu", autoLogin: true},
		"Error when realName is empty": {realName: "", username: "matt", password: "password", hostname: "ubuntu", autoLogin: true, wantErr: true},
		"Error when username is empty": {realName: "Matt", username: "", password: "password", hostname: "ubuntu", autoLogin: true, wantErr: true},
		"Error when hostname is empty": {realName: "Matt", username: "matt", password: "password", hostname: "", autoLogin: true, wantErr: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			client := newUserClient(t)

			userReq := &proto.CreateUserRequest{
				User: &proto.User{
					RealName:  tc.realName,
					Username:  tc.username,
					Password:  tc.password,
					Hostname:  tc.hostname,
					AutoLogin: tc.autoLogin,
				},
			}

			userResp, err := client.CreateUser(context.Background(), userReq)
			if tc.wantErr {
				require.Error(t, err, "CreateUser should return an error, but did not")
				return
			}
			require.NoError(t, err, "CreateUser should not return an error, but did")

			got := userResp
			want := testutils.LoadWithUpdateFromGolden(t, got.String())
			require.Equal(t, want, got, "CreateUser returned an unexpected response")
		})
	}
}

func newUserClient(t *testing.T) (client proto.UserServiceClient) {
	t.Helper()

	// socket path is limited in length.
	tmpDir, err := os.MkdirTemp("", "hello-socket-dir")
	require.NoError(t, err, "Setup: could not setup temporary socket dir path")
	t.Cleanup(func() { _ = os.RemoveAll(tmpDir) })
	socketPath := filepath.Join(tmpDir, "provd.sock")

	lis, err := net.Listen("unix", socketPath)
	require.NoError(t, err, "Setup: could not create unix socket")

	service := user.Service{}

	grpcServer := grpc.NewServer()
	proto.RegisterUserServiceServer(grpcServer, &service)
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

	return proto.NewUserServiceClient(conn)
}

func TestMain(m *testing.M) {
	testutils.InstallUpdateFlag()
	flag.Parse()

	// Start system bus mock.
	busCleanup, err := testutils.StartSystemBusMock()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Failed to start system bus mock: %v\n", err)
		os.Exit(1)
	}
	defer busCleanup()

	// Run the tests.
	os.Exit(m.Run())
}
