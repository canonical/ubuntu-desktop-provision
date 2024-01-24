// Package testutils provides utility functions and behaviors for testing.
package testutils

import (
	"bufio"
	"context"
	"errors"
	"fmt"
	"log/slog"
	"os"
	"os/exec"
	"path/filepath"
	"strings"
	"time"

	"github.com/canonical/ubuntu-desktop-provision/provd/internal/consts"
	"github.com/godbus/dbus/v5"
	"github.com/godbus/dbus/v5/introspect"
)

const defaultSystemBusAddress = "unix:path=/var/run/dbus/system_bus_socket"

var systemBusMockCfg = `<!DOCTYPE busconfig PUBLIC "-//freedesktop//DTD D-Bus Bus Configuration 1.0//EN"
 "http://www.freedesktop.org/standards/dbus/1.0/busconfig.dtd">
<busconfig>
  <type>system</type>
  <keep_umask/>
  <listen>unix:path=%s</listen>
  <policy context="default">
    <allow user="*"/>
    <allow send_destination="*" eavesdrop="true"/>
    <allow eavesdrop="true"/>
    <allow own="*"/>
  </policy>
</busconfig>
`

// StartSystemBusMock starts a mock dbus daemon and returns a cancel function to stop it.
//
// This function uses t.Setenv to set the DBUS_SYSTEM_BUS_ADDRESS environment, so it shouldn't be used in parallel tests
// that rely on the mentioned variable.
func StartSystemBusMock() (func(), error) {
	if isRunning() {
		return nil, errors.New("system bus mock is already running")
	}

	tmp, err := os.MkdirTemp(os.TempDir(), "authd-system-bus-mock")
	if err != nil {
		return nil, err
	}

	cfgPath := filepath.Join(tmp, "bus.conf")
	listenPath := filepath.Join(tmp, "bus.sock")

	err = os.WriteFile(cfgPath, []byte(fmt.Sprintf(systemBusMockCfg, listenPath)), 0600)
	if err != nil {
		err = errors.Join(err, os.RemoveAll(tmp))
		return nil, err
	}

	busCtx, busCancel := context.WithCancel(context.Background())
	//#nosec:G204 // This is a test helper and we are in control of the arguments.
	cmd := exec.CommandContext(busCtx, "dbus-daemon", "--config-file="+cfgPath, "--print-address=1")
	dbusStdout, err := cmd.StdoutPipe()
	if err != nil {
		busCancel()
		return nil, errors.Join(err, os.RemoveAll(tmp))
	}
	if err := cmd.Start(); err != nil {
		busCancel()
		err = errors.Join(err, os.RemoveAll(tmp))
		return nil, err
	}

	waitDone := make(chan struct{})
	var busAddress string

	go func() {
		scanner := bufio.NewScanner(dbusStdout)
		for scanner.Scan() {
			busAddress = scanner.Text()
			close(waitDone)
			break
		}
	}()

	select {
	case <-time.After(10 * time.Second):
		busCancel()
		err = errors.New("dbus-daemon failed to start in 10 seconds")
		return nil, errors.Join(err, os.RemoveAll(tmp))
	case <-waitDone:
	}

	if !strings.HasPrefix(busAddress, "unix:path=") {
		busCancel()
		err = fmt.Errorf("invalid bus path: %s", busAddress)
		return nil, errors.Join(err, os.RemoveAll(tmp))
	}

	busAddress, _, _ = strings.Cut(busAddress, ",")
	prev, set := os.LookupEnv("DBUS_SYSTEM_BUS_ADDRESS")
	os.Setenv("DBUS_SYSTEM_BUS_ADDRESS", busAddress)

	return func() {
		busCancel()
		_ = cmd.Wait()
		_ = os.RemoveAll(tmp)

		if !set {
			os.Unsetenv("DBUS_SYSTEM_BUS_ADDRESS")
		} else {
			os.Setenv("DBUS_SYSTEM_BUS_ADDRESS", prev)
		}
	}, nil
}

// GetSystemBusConnection returns a connection to the system bus with a safety check to avoid mistakenly connecting to the
// actual system bus.
func GetSystemBusConnection() (*dbus.Conn, error) {
	if !isRunning() {
		return nil, errors.New("system bus mock is not running. If that's intended, manually connect to the system bus instead of using this function")
	}
	conn, err := dbus.ConnectSystemBus()
	if err != nil {
		return nil, err
	}
	return conn, nil
}

// isRunning checks if the system bus mock is running.
func isRunning() bool {
	busAddr := os.Getenv("DBUS_SYSTEM_BUS_ADDRESS")
	return !(busAddr == "" || busAddr == defaultSystemBusAddress)
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
	// testname, username, _ = strings.Cut(username, "-")

	if username != "ok" || realname != "ok" {
		return "", dbus.NewError("org.freedesktop.Accounts.Error.Failed", []interface{}{"error"})
	}
	// check if it’s already in the map first
	//a.Users.Store()
	return "/org/freedesktop/Accounts/Userok", nil
}

func (a accountsdbus) DeleteUser(userID uint32) *dbus.Error {
	//a.Users.Store()
	// Remove from a.Users for that testname

	return nil
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

func ExportHostnameMock(conn *dbus.Conn) {
	peer := fmt.Sprintf(`
	<node>
		<interface name="%s">
            <method name="Ping">
			</method>
		</interface>̀%s</node>`, consts.DbusPeerPrefix, introspect.IntrospectDataString)

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

	reply, err := conn.RequestName(consts.DbusHostnamePrefix, dbus.NameFlagDoNotQueue)
	if err != nil {
		slog.Error("Setup: Failed to acquire user name on local system bus: %v", err)
	}
	if reply != dbus.RequestNameReplyPrimaryOwner {
		slog.Error("Setup: Failed to acquire user name on local system bus: name is already taken")
	}
}

func ExportUserMock(conn *dbus.Conn) {
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

	reply, err := conn.RequestName(consts.DbusUserPrefix, dbus.NameFlagDoNotQueue)
	if err != nil {
		slog.Error("Setup: Failed to acquire user name on local system bus: %v", err)
	}
	if reply != dbus.RequestNameReplyPrimaryOwner {
		slog.Error("Setup: Failed to acquire user name on local system bus: name is already taken")
	}
}

func ExportAccountsMock(conn *dbus.Conn) {
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
}
