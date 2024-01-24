package user_test

import (
	"bytes"
	"context"
	"flag"
	"fmt"
	"log"
	"log/slog"
	"net"
	"os"
	"path/filepath"
	"reflect"
	"strings"
	"testing"

	"github.com/canonical/ubuntu-desktop-provision/provd/internal/services/user"
	"github.com/canonical/ubuntu-desktop-provision/provd/internal/testutils"
	pb "github.com/canonical/ubuntu-desktop-provision/provd/protos"
	"github.com/stretchr/testify/require"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
)

func TestEmptyCreateUserRequest(t *testing.T) {
	t.Parallel()

	client := newUserClient(t)

	userResp, err := client.CreateUser(context.Background(), nil)
	require.Error(t, err, "CreateUser should return an error for nil request")
	require.Empty(t, userResp, "CreateUser should return a nil response for a nil request")
}

func TestEmptyValidateUsernameRequest(t *testing.T) {
	t.Parallel()

	client := newUserClient(t)

	userResp, err := client.ValidateUsername(context.Background(), nil)
	require.Error(t, err, "ValidateUsername should return an error for nil request")
	require.Empty(t, userResp, "ValidateUsername should return a nil response for a nil request")
}

func TestDbusObjectsAvalible(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		invalidAccounts bool
		invalidHostname bool
		wantErr         bool
	}{
		"Invalid accounts object": {
			invalidAccounts: true,
			wantErr:         true,
		},
		"Invalid hostname object": {
			invalidHostname: true,
			wantErr:         true,
		},
		"Valid objects": {
			wantErr: false,
		},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()
			t.Cleanup(testutils.StartLocalSystemBus())

			var opts []user.Option
			if tc.invalidAccounts {
				opts = append(opts, user.WithAccountsPrefix("invalid"))
			}
			if tc.invalidHostname {
				opts = append(opts, user.WithHostnamePrefix("invalid"))
			}

			_, err := user.New(testutils.NewDbusConn(t), opts...)
			if tc.wantErr {
				require.Error(t, err, "New should return an error, but did not")
				return
			}
			require.NoError(t, err, "New should not return an error, but did")
		})
	}
}

func TestInvalidObjects(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		accountsPrefix string
		hostnamePrefix string
		wantErr        bool
	}{
		"Invalid accounts prefix": {
			accountsPrefix: "invalid",
			wantErr:        true,
		},
		"Invalid hostname prefix": {
			hostnamePrefix: "invalid",
			wantErr:        true,
		},
		"Valid accounts path": {
			wantErr: false,
		},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()
			t.Cleanup(testutils.StartLocalSystemBus())
			bus := testutils.NewDbusConn(t)

			var opts []user.Option
			v := reflect.ValueOf(tc)
			for i := 0; i < v.NumField(); i++ {
				if v.Field(i).String() != "" {
					fieldName := v.Type().Field(i).Name
					switch fieldName {
					case "accountsPrefix":
						opts = append(opts, user.WithAccountsPrefix(tc.accountsPrefix))
					case "hostnamePrefix":
						opts = append(opts, user.WithHostnamePrefix(tc.hostnamePrefix))
					}
				}
			}
			_, err := user.New(bus, opts...)
			if tc.wantErr {
				require.Error(t, err, "New should return an error, but did not")
				return
			}
			require.NoError(t, err, "New should not return an error, but did")
		})
	}
}

func TestCreateUser(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		realName  string
		username  string
		password  string
		hostname  string
		autoLogin bool
		isAdmin   bool

		wantErr bool
	}{
		// "Successfully creates a user":                     {},
		// "Successfully creates an admin user":              {isAdmin: true},
		// "Successfully set an user to login automatically": {autoLogin: true},

		// // Specially cases
		// "Successfully creates a user without realname": {realName: "-"},

		// Error cases

		"Successfully creates a user": {
			realName:  "ok",
			username:  "ok",
			password:  "ok",
			hostname:  "ok",
			isAdmin:   true,
			autoLogin: true,
		},
		"Error when realName is empty": {
			realName:  "",
			username:  "ok",
			password:  "ok",
			hostname:  "ok",
			autoLogin: true,
			wantErr:   true,
		},
		"Error when username is empty": {
			realName:  "ok",
			username:  "",
			password:  "ok",
			hostname:  "ok",
			autoLogin: true,
			wantErr:   true,
		},
		"Error when hostname is empty": {
			realName:  "ok",
			username:  "ok",
			password:  "ok",
			hostname:  "",
			autoLogin: true,
			wantErr:   true,
		},
		"Error from Accounts service": {
			realName:  "ok",
			username:  "error",
			password:  "ok",
			hostname:  "ok",
			autoLogin: true,
			wantErr:   true,
		},
		"Error from Hostname service": {
			realName:  "ok",
			username:  "ok",
			password:  "ok",
			hostname:  "error",
			autoLogin: true,
			wantErr:   true,
		},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()
			t.Cleanup(testutils.StartLocalSystemBus())

			client := newUserClient(t)

			userReq := &pb.CreateUserRequest{
				User: &pb.User{
					RealName:  tc.realName,
					Username:  tc.username,
					Password:  tc.password,
					Hostname:  tc.hostname,
					AutoLogin: tc.autoLogin,
				},
				IsAdmin: tc.isAdmin,
			}

			tc.username = strings.ReplaceAll(t.Name(), " ", "") + "-" + tc.username

			var logBuffer bytes.Buffer
			log.SetOutput(&logBuffer)

			_, err := client.CreateUser(context.Background(), userReq)
			if tc.wantErr {
				require.Error(t, err, "CreateUser should return an error, but did not")
				// On error cases, rollback is called. Rollback only logs errors if it fails to rollback.
				if strings.Contains(logBuffer.String(), "ERROR") {
					t.Errorf("Expected no error logs, but error logs found: %s", logBuffer.String())
				}
				// TODOOOOOOO
				return
			}
			require.NoError(t, err, "CreateUser should not return an error, but did not")

			// Missing assertions
			// add the username
			// access global object, and check that the user exists/not exists

			// Alternative:
			// no t.Parallel()
			// os.Chdir(t.Tempdir()) // restore original dir
			// The mock writes its action to the file: CreateUser(parameters), SetAutologin(true)
			// This is your golden file. /tmp/path_based_on_testname/actions (<- contains the dbus account name actions and hostname actions)
			// read from this string file: got
			//
			// want := testutils.LoadWithUpdateFromGolden(t, got)
		})
	}
}

func TestValidateUsername(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		username string
		wantErr  bool
	}{
		"Valid username": {
			username: "newname",
			wantErr:  false,
		},
		"Existing username": {
			username: "ok",
			wantErr:  false,
		},
		"Empty username": {
			username: "",
			wantErr:  false,
		},
		"Reserved username": {
			username: "root",
			wantErr:  false,
		},
		"Username too long": {
			username: "thisusernameiswaytoolong1234567890abcdefghijklmnopqrstuvwxyz",
			wantErr:  false,
		},
		"Invalid characters in username": {
			username: "invalid@username",
			wantErr:  false,
		},
		"Error from Accounts service": {
			username: "error",
			wantErr:  true,
		},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()
			t.Cleanup(testutils.StartLocalSystemBus())

			client := newUserClient(t)

			validateReq := &pb.ValidateUsernameRequest{
				Username: tc.username,
			}

			resp, err := client.ValidateUsername(context.Background(), validateReq)
			if tc.wantErr {
				require.Error(t, err, "ValidateUsername should return an error, but did not")
				return
			}
			require.NoError(t, err, "ValidateUsername should not return an error, but did")

			got := resp.UsernameValidation.String()
			want := testutils.LoadWithUpdateFromGolden(t, got)
			require.Equal(t, want, got, "ValidateUsername returned an unexpected response")
		})
	}
}

// newUserClient creates a new user client for testing, with a temp unix socket and mock Dbus connection.
func newUserClient(t *testing.T) pb.UserServiceClient {
	t.Helper()
	// socket path is limited in length.
	tmpDir, err := os.MkdirTemp("", "hello-socket-dir")
	require.NoError(t, err, "Setup: could not setup temporary socket dir path")
	t.Cleanup(func() { _ = os.RemoveAll(tmpDir) })
	socketPath := filepath.Join(tmpDir, "provd.sock")

	lis, err := net.Listen("unix", socketPath)
	require.NoError(t, err, "Setup: could not create unix socket")

	bus := testutils.NewDbusConn(t)

	service, err := user.New(bus)

	if err != nil {
		t.Fatalf("Setup: could not create user service: %v", err)
	}

	grpcServer := grpc.NewServer()
	pb.RegisterUserServiceServer(grpcServer, service)
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

	return pb.NewUserServiceClient(conn)
}

func TestMain(m *testing.M) {
	testutils.InstallUpdateFlag()
	flag.Parse()
	// export domains
	/*  Use testutils/dbus.go to start and get the bus   */
	defer testutils.StartLocalSystemBus()()

	conn, err := testutils.GetSystemBusConnection()

	if err != nil {
		slog.Error(fmt.Sprintf("Could not get system bus connection: %v", err))
		os.Exit(1)
	}

	testutils.ExportAccountsMock(conn)
	testutils.ExportHostnameMock(conn)
	testutils.ExportUserMock(conn)

	// global test variable
	// accountUser = testutils.NewAccountuser()
	// user dbus

	// hostname dbus

	m.Run()
}
