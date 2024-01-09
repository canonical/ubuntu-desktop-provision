package user_test

import (
	"context"
	"flag"
	"net"
	"os"
	"path/filepath"
	"strconv"
	"testing"

	"github.com/canonical/ubuntu-desktop-provision/provd/internal/services/user"
	"github.com/canonical/ubuntu-desktop-provision/provd/internal/testutils"
	"github.com/canonical/ubuntu-desktop-provision/provd/proto"
	"github.com/godbus/dbus/v5"
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

		accountsError bool
		hostnameError bool

		wantErr bool
	}{
		"Successfully creates a user": {
			realName:  "Ubuntu",
			username:  "ubuntu",
			password:  "password",
			hostname:  "ubuntu",
			autoLogin: true,
		},
		"Error when realName is empty": {
			realName:  "",
			username:  "ubuntu",
			password:  "password",
			hostname:  "ubuntu",
			autoLogin: true,
			wantErr:   true,
		},
		"Error when username is empty": {
			realName:  "Ubuntu",
			username:  "",
			password:  "password",
			hostname:  "ubuntu",
			autoLogin: true,
			wantErr:   true,
		},
		"Error when hostname is empty": {
			realName:  "Ubuntu",
			username:  "ubuntu",
			password:  "password",
			hostname:  "",
			autoLogin: true,
			wantErr:   true,
		},
		"Error from Accounts service": {
			realName:      "Ubuntu",
			username:      "ubuntu",
			password:      "password",
			hostname:      "ubuntu",
			autoLogin:     true,
			accountsError: true,
			wantErr:       true,
		},
		"Error from Hostname service": {
			realName:      "Ubuntu",
			username:      "ubuntu",
			password:      "password",
			hostname:      "ubuntu",
			autoLogin:     true,
			hostnameError: true,
			wantErr:       true,
		},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()
			t.Cleanup(testutils.StartLocalSystemBus())

			accountsMock := &user.AccountsObjectMock{
				UserObjectPath: dbus.ObjectPath("/org/freedesktop/Accounts/User1000"),
				WantError:      tc.accountsError,
			}

			hostnameMock := &user.HostnameObjectMock{
				WantError: tc.hostnameError,
			}

			userFactoryMock := user.UserObjectFactoryMock{
				&user.UserObjectMock{},
			}

			client := newUserClient(t, accountsMock, hostnameMock, userFactoryMock)

			userReq := &proto.CreateUserRequest{
				User: &proto.User{
					RealName:  tc.realName,
					Username:  tc.username,
					Password:  tc.password,
					Hostname:  tc.hostname,
					AutoLogin: tc.autoLogin,
				},
			}

			_, err := client.CreateUser(context.Background(), userReq)
			if tc.wantErr {
				require.Error(t, err, "CreateUser should return an error, but did not")
				return
			}
			require.NoError(t, err, "CreateUser should not return an error, but did not")
		})
	}
}

func TestGetUser(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		uid string

		realName  string
		username  string
		password  string
		hostname  string
		autoLogin bool

		accountsError bool
		hostnameError bool

		wantErr bool
	}{
		"Successfully gets a user": {
			uid:       "1000",
			realName:  "Ubuntu",
			username:  "ubuntu",
			password:  "password",
			hostname:  "ubuntu",
			autoLogin: true,
		},
		"Error when uid is empty": {
			uid:       "",
			realName:  "Ubuntu",
			username:  "ubuntu",
			password:  "password",
			hostname:  "ubuntu",
			autoLogin: true,
			wantErr:   true,
		},
		"Error when uid is not a number": {
			uid:       "notanumber",
			realName:  "Ubuntu",
			username:  "ubuntu",
			password:  "password",
			hostname:  "ubuntu",
			autoLogin: true,
			wantErr:   true,
		},
		"Error when accounts returns an error": {
			uid:           "9999",
			realName:      "Ubuntu",
			username:      "ubuntu",
			password:      "password",
			hostname:      "ubuntu",
			autoLogin:     true,
			wantErr:       true,
			accountsError: true,
		},
		"Error when hostname returns an error": {
			uid:           "1000",
			realName:      "Ubuntu",
			username:      "ubuntu",
			password:      "password",
			hostname:      "ubuntu",
			autoLogin:     true,
			wantErr:       true,
			hostnameError: true,
		},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()
			t.Cleanup(testutils.StartLocalSystemBus())

			accountsMock := &user.AccountsObjectMock{
				WantError: tc.accountsError,
			}

			hostnameMock := &user.HostnameObjectMock{
				WantError: tc.hostnameError,
				Properties: map[string]interface{}{
					"org.freedesktop.hostname1.Hostname": tc.hostname,
				},
			}
			userFactoryMock := user.UserObjectFactoryMock{
				&user.UserObjectMock{
					Properties: map[string]interface{}{
						"org.freedesktop.Accounts.User.RealName":       tc.realName,
						"org.freedesktop.Accounts.User.UserName":       tc.username,
						"org.freedesktop.Accounts.User.Password":       tc.password,
						"org.freedesktop.Accounts.User.AutomaticLogin": tc.autoLogin,
					},
				},
			}

			client := newUserClient(t, accountsMock, hostnameMock, userFactoryMock)

			getReq := &proto.GetUserRequest{
				UserId: tc.uid,
			}

			resp, err := client.GetUser(context.Background(), getReq)
			if tc.wantErr {
				require.Error(t, err, "ValidateUsername should return an error, but did not")
				return
			}
			require.NoError(t, err, "ValidateUsername should not return an error, but did")

			got := resp.GetUser().String()
			want := testutils.LoadWithUpdateFromGolden(t, got)
			require.Equal(t, want, got, "ValidateUsername returned an unexpected response")

		})

	}
}

func TestValidateUsername(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		username      string
		accountsError bool
		wantErr       bool
	}{
		"Valid username": {
			username:      "newuser",
			accountsError: true,
			wantErr:       false,
		},
		"Existing username": {
			username:      "existinguser",
			accountsError: false,
			wantErr:       false,
		},
		"Empty username": {
			username: "",
			wantErr:  true,
		},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()
			t.Cleanup(testutils.StartLocalSystemBus())

			accountsMock := &user.AccountsObjectMock{
				WantError: tc.accountsError,
			}

			hostnameMock := &user.HostnameObjectMock{}
			userFactoryMock := user.UserObjectFactoryMock{}

			client := newUserClient(t, accountsMock, hostnameMock, userFactoryMock)

			validateReq := &proto.ValidateUsernameRequest{
				Username: tc.username,
			}

			resp, err := client.ValidateUsername(context.Background(), validateReq)
			if tc.wantErr {
				require.Error(t, err, "ValidateUsername should return an error, but did not")
				return
			}
			require.NoError(t, err, "ValidateUsername should not return an error, but did")

			got := strconv.FormatBool(resp.GetValid())
			want := testutils.LoadWithUpdateFromGolden(t, got)
			require.Equal(t, want, got, "ValidateUsername returned an unexpected response")
		})
	}
}

func newUserClient(t *testing.T, accountsMock user.Caller, hostnameMock user.Caller, userFactoryMock user.UserObjectFactory) proto.UserServiceClient {
	t.Helper()
	// socket path is limited in length.
	tmpDir, err := os.MkdirTemp("", "hello-socket-dir")
	require.NoError(t, err, "Setup: could not setup temporary socket dir path")
	t.Cleanup(func() { _ = os.RemoveAll(tmpDir) })
	socketPath := filepath.Join(tmpDir, "provd.sock")

	lis, err := net.Listen("unix", socketPath)
	require.NoError(t, err, "Setup: could not create unix socket")

	bus := testutils.NewDbusConn(t)

	// Create the service with the necessary mocks
	service := user.New(bus, user.WithAccounts(accountsMock), user.WithHostname(hostnameMock), user.WithUserFactory(userFactoryMock))

	grpcServer := grpc.NewServer()
	proto.RegisterUserServiceServer(grpcServer, service)
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
	os.Exit(m.Run())
}
