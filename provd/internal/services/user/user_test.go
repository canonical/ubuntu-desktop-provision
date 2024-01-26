package user_test

import (
	"context"
	"flag"
	"fmt"
	"io"
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

func TestReservedUsernamesFilePaths(t *testing.T) {
	t.Parallel()
	tests := map[string]struct {
		passwdMasterFile string
		groupMasterFile  string
		wantErr          bool
	}{
		// Success case
		"Valid paths": {},

		// Invalid paths
		"Invalid passwd master file path": {passwdMasterFile: "invalid-path", wantErr: true},
		"Invalid group master file path":  {groupMasterFile: "invalid-path", wantErr: true},

		// Unparsable files
		"Unparsable passwd master file": {passwdMasterFile: "unparsable-passwd-master", wantErr: true},
		"Unparsable group master file":  {groupMasterFile: "unparsable-group-master", wantErr: true},
	}

	for name, tc := range tests {
		tc := tc // capture range variable
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			// Setup dummy passwd and group master files in temp directory
			tempDir := t.TempDir()

			if tc.passwdMasterFile == "unparsable-passwd-master" {
				passwdFilePath := filepath.Join(tempDir, tc.passwdMasterFile)
				file, err := os.Create(passwdFilePath)
				if err != nil {
					t.Fatalf("Setup: could not create %s: %v", tc.passwdMasterFile, err)
				}
				_, err = file.WriteString("foo") // Write "foo" to the file
				if err != nil {
					t.Fatalf("Setup: could not write to %s: %v", tc.passwdMasterFile, err)
				}
				file.Close()                         // Close immediately after creating the file
				tc.passwdMasterFile = passwdFilePath // Update with full path
			}
			if tc.groupMasterFile == "unparsable-group-master" {
				groupFilePath := filepath.Join(tempDir, tc.groupMasterFile)
				file, err := os.Create(groupFilePath)
				if err != nil {
					t.Fatalf("Setup: could not create %s: %v", tc.groupMasterFile, err)
				}
				_, err = file.WriteString("bar") // Write "bar" to the file
				if err != nil {
					t.Fatalf("Setup: could not write to %s: %v", tc.groupMasterFile, err)
				}
				file.Close()                       // Close immediately after creating the file
				tc.groupMasterFile = groupFilePath // Update with full path
			}

			// Create service with options
			var opts []user.Option
			if tc.passwdMasterFile != "" {
				opts = append(opts, user.WithPasswdMasterPath(tc.passwdMasterFile))
			}
			if tc.groupMasterFile != "" {
				opts = append(opts, user.WithGroupMasterPath(tc.groupMasterFile))
			}

			client, err := user.New(testutils.NewDbusConn(t), opts...)
			if err != nil {
				t.Fatalf("Setup: could not create user service: %v", err)
			}

			// Call ValidateUsername with a valid username
			validateReq := &pb.ValidateUsernameRequest{
				Username: "find-user-by-name-not-found",
			}

			_, err = client.ValidateUsername(context.Background(), validateReq)

			if tc.wantErr {
				require.Error(t, err, "ValidateUsername should return an error, but did not")
				return
			}
			require.NoError(t, err, "ValidateUsername should not return an error, but did")
		})
	}
}

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
		// Request fields
		realName  string
		username  string
		password  string
		hostname  string
		autoLogin bool
		isAdmin   bool

		// Options for dbus objects
		hostnamePath string

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
		"Error from Accounts service":        {username: "create-user-error", wantErr: true},
		"Error from Hostname service":        {hostname: "set-static-hostname-error", wantErr: true},
		"Error when deleting user":           {username: "deleteerror", hostname: "set-static-hostname-error", wantErr: true},
		"Error when getting uid":             {username: "getuiderror", wantErr: true},
		"Error when getting static hostname": {hostnamePath: "hostnameerror", hostname: "set-static-hostname-error", wantErr: true},
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
			// Get ops
			var opts []user.Option
			if tc.hostnamePath != "" {
				opts = append(opts, user.WithHostnamePath(tc.hostnamePath))
			}
			client := newUserClient(t, opts...)

			if tc.username == "" {
				tc.username = "ok"
			} else if tc.username == "-" {
				tc.username = ""
			}

			if tc.realName == "" {
				tc.realName = "ok"
			} else if tc.realName == "-" {
				tc.realName = ""
			}

			if tc.hostname == "" {
				tc.hostname = "ok"
			} else if tc.hostname == "-" {
				tc.hostname = ""
			}

			if tc.password == "" {
				tc.password = "ok"
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

			tempDir := t.TempDir()
			err = os.Chdir(tempDir)
			if err != nil {
				t.Fatalf("failed to change directory: %s", err)
			}

			_, reqErr := client.CreateUser(context.Background(), userReq)

			file, err := os.OpenFile("actions", os.O_CREATE, 0600)
			if err != nil {
				t.Fatalf("failed to open file: %s", err)
			}
			defer file.Close()

			// Read the file content
			var sb strings.Builder
			_, err = io.Copy(&sb, file)
			if err != nil {
				t.Fatalf(fmt.Sprintf("failed to read file: %s", err))
			}

			// Assert we made the expected dbus calls in the expected order, with the expected parameters.
			got := sb.String()
			err = os.Chdir(originalDir)
			if err != nil {
				t.Fatalf("failed to change directory: %s", err)
			}
			want := testutils.LoadWithUpdateFromGolden(t, got)
			require.Equal(t, want, got, "CreateUser returned an unexpected response")

			// Assert we got the expected error from CreateUser.
			if tc.wantErr {
				require.Error(t, reqErr, "CreateUser should return an error, but did not")
				return
			}
			require.NoError(t, err, "CreateUser should not return an error, but did not")
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
func newUserClient(t *testing.T, opts ...user.Option) pb.UserServiceClient {
	t.Helper()
	// socket path is limited in length.
	tmpDir, err := os.MkdirTemp("", "hello-socket-dir")
	require.NoError(t, err, "Setup: could not setup temporary socket dir path")
	t.Cleanup(func() { _ = os.RemoveAll(tmpDir) })
	socketPath := filepath.Join(tmpDir, "provd.sock")

	lis, err := net.Listen("unix", socketPath)
	require.NoError(t, err, "Setup: could not create unix socket")

	bus := testutils.NewDbusConn(t)

	service, err := user.New(bus, opts...)

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

	defer testutils.StartLocalSystemBus()()

	conn, err := testutils.GetSystemBusConnection()

	if err != nil {
		slog.Error(fmt.Sprintf("Could not get system bus connection: %v", err))
		os.Exit(1)
	}

	err = testutils.ExportAccountsMock(conn)
	if err != nil {
		slog.Error(fmt.Sprintf("Could not export Accounts mock: %v", err))
		os.Exit(1)
	}
	err = testutils.ExportHostnameMock(conn)
	if err != nil {
		slog.Error(fmt.Sprintf("Could not export Hostname mock: %v", err))
		os.Exit(1)
	}
	err = testutils.ExportUserMock(conn)
	if err != nil {
		slog.Error(fmt.Sprintf("Could not export User mock: %v", err))
		os.Exit(1)
	}
	m.Run()
}
