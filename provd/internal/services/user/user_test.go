package user_test

import (
	"bytes"
	"context"
	"flag"
	"fmt"
	"io"
	"log"
	"log/slog"
	"net"
	"os"
	"path/filepath"
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

func TestCreateUser(t *testing.T) {

	tests := map[string]struct {
		realName  string
		username  string
		password  string
		hostname  string
		autoLogin bool
		isAdmin   bool

		wantErr bool
	}{
		// Success cases
		"Successfully creates a user":                     {},
		"Successfully creates an admin user":              {isAdmin: true},
		"Successfully set an user to login automatically": {autoLogin: true},

		// Error cases
		"Error when realName is empty": {realName: "-", wantErr: true},
		"Error when username is empty": {username: "-", wantErr: true},
		"Error when hostname is empty": {hostname: "-", wantErr: true},

		// Dbus object errors
		"Error from Accounts service": {username: "create-user-error", wantErr: true},
		"Error from Hostname service": {hostname: "set-static-hostname-error", wantErr: true},
	}

	originalDir, err := os.Getwd()
	if err != nil {
		t.Fatalf("Setup: could not get current working directory: %v", err)
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {

			// Register cleanup function
			t.Cleanup(testutils.StartLocalSystemBus())
			client := newUserClient(t)

			if tc.username == "" {
				tc.username = "mock-user"
			} else if tc.username == "-" {
				tc.username = ""
			}

			if tc.realName == "" {
				tc.realName = "mock-user"
			} else if tc.realName == "-" {
				tc.realName = ""
			}

			if tc.hostname == "" {
				tc.hostname = "mock-hostname"
			} else if tc.hostname == "-" {
				tc.hostname = ""
			}

			if tc.password == "" {
				tc.password = "mock-password"
			}

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

			tempDir := t.TempDir()
			os.Chdir(tempDir)

			_, reqErr := client.CreateUser(context.Background(), userReq)

			file, err := os.Open("actions")
			if err != nil {
				slog.Error(fmt.Sprintf("failed to open file: %s", err))
			}
			defer file.Close()

			// Read the file content
			var sb strings.Builder
			_, err = io.Copy(&sb, file)
			if err != nil {
				slog.Error(fmt.Sprintf("failed to read file: %s", err))
			}

			// Content of the file as a string
			got := sb.String()
			os.Chdir(originalDir)
			want := testutils.LoadWithUpdateFromGolden(t, got)
			require.Equal(t, want, got, "CreateUser returned an unexpected response")

			if tc.wantErr {
				require.Error(t, reqErr, "CreateUser should return an error, but did not")
				// On error cases, rollback is called. Rollback only logs errors if it fails to rollback.
				if strings.Contains(logBuffer.String(), "error encountered when rolling back CreateUser") {
					t.Errorf("Expected no error logs, but error logs found: %s", logBuffer.String())
				}
				// TODOOOOOOO
				return
			}
			require.NoError(t, err, "CreateUser should not return an error, but did not")

			// Alternative:
			// no t.Parallel()
			// os.Chdir(t.Tempdir()) // restore original dir
			// The mock writes its action to the file: CreateUser(parameters), SetAutologin(true)
			// This is your golden file. /tmp/path_based_on_testname/actions (<- contains the dbus account name actions and hostname actions)
			// read from this string file: got

			// Open the file

		})
	}
}

func TestValidateUsername(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		username string
		wantErr  bool
	}{
		// Success case
		"Valid username": {username: "find-user-by-name-not-found"},

		// Error cases
		"Existing username":              {},
		"Empty username":                 {username: "-"},
		"Reserved username":              {username: "root"},
		"Username too long":              {username: "thisusernameiswaytoolong1234567890abcdefghijklmnopqrstuvwxyz"},
		"Invalid characters in username": {username: "invalid@username"},

		// Dbus object error
		"Error from Accounts service": {username: "find-user-by-name-error", wantErr: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()
			t.Cleanup(testutils.StartLocalSystemBus())

			client := newUserClient(t)

			if tc.username == "" {
				tc.username = "mock-user"
			} else if tc.username == "-" {
				tc.username = ""
			}

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
