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

	"github.com/canonical/ubuntu-desktop-provision/provd/internal/consts"
	"github.com/canonical/ubuntu-desktop-provision/provd/internal/services/user"
	"github.com/canonical/ubuntu-desktop-provision/provd/internal/testutils"
	pb "github.com/canonical/ubuntu-desktop-provision/provd/protos"
	"github.com/godbus/dbus/v5"
	"github.com/godbus/dbus/v5/introspect"
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

			var logBuffer bytes.Buffer
			log.SetOutput(&logBuffer)

			_, err := client.CreateUser(context.Background(), userReq)
			if tc.wantErr {
				require.Error(t, err, "CreateUser should return an error, but did not")
				// On error cases, rollback is called. Rollback only logs errors if it fails to rollback.
				if strings.Contains(logBuffer.String(), "ERROR") {
					t.Errorf("Expected no error logs, but error logs found: %s", logBuffer.String())
				}
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

type accountsdbus struct{}

func (a accountsdbus) Ping() *dbus.Error {
	return nil
}

func (a accountsdbus) FindUserByName(name string) (string, *dbus.Error) {
	if name == "error" {
		return "", dbus.NewError("org.strange.error", []interface{}{"error"})
	}
	// This is used to also include the username in the error log, used to determine its an error because a user wasn't found.
	if name != "ok" {
		return "", dbus.NewError("org.freedesktop.Accounts.Error.Failed", []interface{}{"Your name was: " + name})
	}
	return "/org/freedesktop/Accounts/Userok", nil
}

func (a accountsdbus) CreateUser(username string, realname string, accountType int32) (string, *dbus.Error) {
	if username != "ok" || realname != "ok" {
		return "", dbus.NewError("org.freedesktop.Accounts.Error.Failed", []interface{}{"error"})
	}
	return "/org/freedesktop/Accounts/Userok", nil
}

func (a accountsdbus) DeleteUser(userID uint32) *dbus.Error {
	return nil
}

type userdbus struct {
	wantAutoLoginError bool
}

func (u userdbus) SetPassword(password string, hint string) *dbus.Error {
	return nil
}

func (u userdbus) SetAutomaticLogin(autoLogin bool) *dbus.Error {
	if u.wantAutoLoginError {
		return dbus.NewError("org.freedesktop.Accounts.Error.Failed", []interface{}{"error"})
	}
	return nil
}
func (u userdbus) Get(interfaceName string, propertyName string) (interface{}, *dbus.Error) {
	return uint64(1), nil
}

type hostnamedbus struct {
	staticHostname string
}

func (h hostnamedbus) Ping() *dbus.Error {
	return nil
}

func (h hostnamedbus) SetStaticHostname(hostname string, someBool bool) *dbus.Error {
	if hostname != "ok" && hostname != "original" {
		return dbus.NewError("org.freedesktop.hostname1.Error.Failed", []interface{}{"error"})
	}
	return nil
}

func (h hostnamedbus) Get(interfaceName string, propertyName string) (interface{}, *dbus.Error) {
	return h.staticHostname, nil
}

func TestMain(m *testing.M) {
	testutils.InstallUpdateFlag()
	flag.Parse()
	// export domains
	defer testutils.StartLocalSystemBus()()

	conn, err := dbus.SystemBusPrivate()
	if err != nil {
		slog.Error("Setup: can't get a private system bus: %v", err)
	}
	defer func() {
		if err = conn.Close(); err != nil {
			slog.Error("Teardown: can't close system dbus connection: %v", err)
		}
	}()
	if err = conn.Auth(nil); err != nil {
		slog.Error("Setup: can't auth on private system bus: %v", err)
	}
	if err = conn.Hello(); err != nil {
		slog.Error("Setup: can't send hello message on private system bus: %v", err)
	}

	peer := fmt.Sprintf(`
	<node>
		<interface name="%s">
            <method name="Ping">
			</method>
		</interface>̀%s</node>`, consts.DbusPeerPrefix, introspect.IntrospectDataString)

	intro := fmt.Sprintf(`
	<node>
		<interface name="%s">
            <method name="FindUserByName">
              <arg name="name" direction="in" type="s"/>
              <arg name="user" direction="out" type="o"/>
			</method>
            <method name="CreateUser">
              <arg name="username" direction="in" type="s"/>
              <arg name="realName" direction="in" type="s"/>
              <arg name="accountType" direction="in" type="i"/>
              <arg name="user" direction="out" type="o"/>
			</method>
			<method name="DeleteUser">
				<arg name="userID" direction="in" type="u"/>
        	</method>
		</interface>̀%s</node>`, consts.DbusAccountsPrefix, introspect.IntrospectDataString)

	a := accountsdbus{}
	if err := conn.Export(a, dbus.ObjectPath("/org/freedesktop/Accounts"), consts.DbusAccountsPrefix); err != nil {
		slog.Error("Setup: could not export Accounts mock %v", err)
	}
	if err := conn.Export(introspect.Introspectable(intro), dbus.ObjectPath("/org/freedesktop/Accounts"),
		"org.freedesktop.DBus.Introspectable"); err != nil {
		slog.Error("Setup: could not export introspectable for accoutns mock: %v", err)
	}

	if err := conn.Export(a, dbus.ObjectPath("/org/freedesktop/Accounts"), consts.DbusPeerPrefix); err != nil {
		slog.Error("Setup: could not export Peer mock %v", err)
	}

	if err := conn.Export(introspect.Introspectable(peer), dbus.ObjectPath("/org/freedesktop/Accounts"),
		"org.freedesktop.DBus.Introspectable"); err != nil {
		slog.Error("Setup: could not export introspectable for Peer mock: %v", err)
	}

	reply, err := conn.RequestName(consts.DbusAccountsPrefix, dbus.NameFlagDoNotQueue)
	if err != nil {
		slog.Error("Setup: Failed to acquire account name on local system bus: %v", err)
	}
	if reply != dbus.RequestNameReplyPrimaryOwner {
		slog.Error("Setup: Failed to acquire account name on local system bus: name is already taken")
	}

	// user dbus

	userIntro := fmt.Sprintf(`
	<node>
		<interface name="%s">
            <method name="SetPassword">
              <arg name="name" direction="in" type="s"/>
              <arg name="hint" direction="in" type="s"/>
			</method>
            <method name="SetAutomaticLogin">
              <arg name="autoLogin" direction="in" type="b"/>
			</method>
		</interface>̀
		<interface name="org.freedesktop.DBus.Properties">
		<method name="Get">
			<arg name="interface" direction="in" type="s"/>
			<arg name="property" direction="in" type="s"/>
			<arg name="value" direction="out" type="v"/>
		</method>
	</interface>%s</node>`, consts.DbusUserPrefix, introspect.IntrospectDataString)

	u := userdbus{}

	if err := conn.Export(u, dbus.ObjectPath("/org/freedesktop/Accounts/Userok"), consts.DbusUserPrefix); err != nil {
		slog.Error("Setup: could not export Userok mock: %v", err)
	}
	if err := conn.Export(introspect.Introspectable(userIntro), dbus.ObjectPath("/org/freedesktop/Accounts/Userok"),
		"org.freedesktop.DBus.Introspectable"); err != nil {
		slog.Error("Setup: could not export introspectable for Userok: %v", err)
	}

	if err := conn.Export(u, dbus.ObjectPath("/org/freedesktop/Accounts/Userok"), "org.freedesktop.DBus.Properties"); err != nil {
		slog.Error("Setup: could not export Peer mock %v", err)
	}

	reply, err = conn.RequestName(consts.DbusUserPrefix, dbus.NameFlagDoNotQueue)
	if err != nil {
		slog.Error("Setup: Failed to acquire user name on local system bus: %v", err)
	}
	if reply != dbus.RequestNameReplyPrimaryOwner {
		slog.Error("Setup: Failed to acquire user name on local system bus: name is already taken")
	}

	// hostname dbus
	hostnameIntro := fmt.Sprintf(`
	<node>
		<interface name="%s">
			<method name="SetStaticHostname">
				<arg name="hostname" direction="in" type="s"/>
				<arg name="someBool" direction="in" type="b"/>
			</method>
			<property name="StaticHostname" type="s" access="read"/>
		</interface>
		<interface name="org.freedesktop.DBus.Properties">
			<method name="Get">
				<arg name="interface" direction="in" type="s"/>
				<arg name="property" direction="in" type="s"/>
				<arg name="value" direction="out" type="v"/>
			</method>
		</interface>
	</node>`, consts.DbusHostnamePrefix)

	h := hostnamedbus{
		staticHostname: "original",
	}

	if err := conn.Export(h, dbus.ObjectPath("/org/freedesktop/hostname1"), consts.DbusHostnamePrefix); err != nil {
		slog.Error("Setup: could not export hostname1 mock: %v", err)
	}
	if err := conn.Export(introspect.Introspectable(hostnameIntro), dbus.ObjectPath("/org/freedesktop/hostname1"),
		"org.freedesktop.DBus.Introspectable"); err != nil {
		slog.Error("Setup: could not export introspectable for hostname1 mock: %v", err)
	}

	if err := conn.Export(h, dbus.ObjectPath("/org/freedesktop/hostname1"), consts.DbusPeerPrefix); err != nil {
		slog.Error("Setup: could not export Peer mock %v", err)
	}

	if err := conn.Export(h, dbus.ObjectPath("/org/freedesktop/hostname1"), "org.freedesktop.DBus.Properties"); err != nil {
		slog.Error("Setup: could not export Peer mock %v", err)
	}

	if err := conn.Export(introspect.Introspectable(peer), dbus.ObjectPath("/org/freedesktop/hostname1"),
		"org.freedesktop.DBus.Introspectable"); err != nil {
		slog.Error("Setup: could not export introspectable for Peer mock: %v", err)
	}

	reply, err = conn.RequestName(consts.DbusHostnamePrefix, dbus.NameFlagDoNotQueue)
	if err != nil {
		slog.Error("Setup: Failed to acquire user name on local system bus: %v", err)
	}
	if reply != dbus.RequestNameReplyPrimaryOwner {
		slog.Error("Setup: Failed to acquire user name on local system bus: name is already taken")
	}

	m.Run()
}
