// Package testutils provides utility functions and behaviors for testing.
package testutils

import (
	"errors"
	"fmt"
	"log/slog"
	"os"

	"github.com/canonical/ubuntu-desktop-provision/provd/internal/consts"
	"github.com/godbus/dbus/v5"
	"github.com/godbus/dbus/v5/introspect"
)

const defaultSystemBusAddress = "unix:path=/var/run/dbus/system_bus_socket"

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

func writeActionToFile(action string) {
	f, err := os.OpenFile("actions", os.O_APPEND|os.O_CREATE|os.O_WRONLY, 0644)
	if err != nil {
		slog.Error(fmt.Sprintf("Error opening file: %v", err))
		os.Exit(1)
	}
	defer f.Close()

	if _, err := f.WriteString(action); err != nil {
		slog.Error(fmt.Sprintf("Error writing to file: %v", err))
		os.Exit(1)
	}
}

type accountsdbus struct{}

func (a accountsdbus) Ping() *dbus.Error {
	return nil
}

func (a accountsdbus) FindUserByName(name string) (string, *dbus.Error) {
	if name == "find-user-by-name-error" {
		return "", dbus.NewError("org.freedesktop.Accounts.Error.FindUserByNameError", []interface{}{"error requested in FindUserByNameError mocked method"})
	}
	// This is used to also include the username in the error log, used to determine its an error because a user wasn't found.
	if name == "find-user-by-name-not-found" {
		return "", dbus.NewError("org.freedesktop.Accounts.Error.Failed", []interface{}{"Your name was: " + name})
	}
	action := fmt.Sprintf("Accounts.FindUserByName(name: %s)\n", name)
	writeActionToFile(action)
	return "/org/freedesktop/Accounts/UserMockUser", nil
}

func (a accountsdbus) CreateUser(username string, realname string, accountType int32) (string, *dbus.Error) {
	if username == "create-user-error" {
		return "", dbus.NewError("org.freedesktop.Accounts.Error.Failed", []interface{}{"error requested in CreateUserErrorUsername mocked method"})
	}
	action := fmt.Sprintf("Accounts.CreateUser(username: \"%s\", realname: \"%s\", accountType: %d)\n", username, realname, accountType)
	writeActionToFile(action)
	return "/org/freedesktop/Accounts/UserMockUser", nil
}

func (a accountsdbus) DeleteUser(userID uint32) *dbus.Error {
	action := fmt.Sprintf("Accounts.DeleteUser(userID: %d)\n", userID)
	writeActionToFile(action)

	return nil
}

type hostnamedbus struct {
	staticHostname string
}

func (h hostnamedbus) Ping() *dbus.Error {
	return nil
}

func (h hostnamedbus) SetStaticHostname(hostname string, someBool bool) *dbus.Error {
	if hostname == "set-static-hostname-error" {
		return dbus.NewError("org.freedesktop.hostname1.Error.Failed", []interface{}{"error requested in SetStaticHostname mocked method"})
	}
	action := fmt.Sprintf("hostname1.SetStaticHostname(hostname: %s)\n", hostname)
	writeActionToFile(action)
	return nil
}

func (h hostnamedbus) Get(interfaceName string, propertyName string) (interface{}, *dbus.Error) {
	action := fmt.Sprintf("hostname1.Get(interfaceName: %s, propertyName: %s)\n", interfaceName, propertyName)
	writeActionToFile(action)
	return h.staticHostname, nil
}

type userdbus struct {
	wantAutoLoginError bool
}

func (u userdbus) SetPassword(password string, hint string) *dbus.Error {
	action := "User.SetPassword\n"
	writeActionToFile(action)
	return nil
}

func (u userdbus) SetAutomaticLogin(autoLogin bool) *dbus.Error {
	if u.wantAutoLoginError {
		return dbus.NewError("org.freedesktop.Accounts.Error.Failed", []interface{}{"error requested in SetAutomaticLogin mocked method"})
	}
	action := fmt.Sprintf("User.SetAutomaticLogin(autoLogin: %t)\n", autoLogin)
	writeActionToFile(action)
	return nil
}
func (u userdbus) Get(interfaceName string, propertyName string) (interface{}, *dbus.Error) {
	action := fmt.Sprintf("User.Get(interfaceName: %s, propertyName: %s)\n", interfaceName, propertyName)
	writeActionToFile(action)
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

	if err := conn.Export(u, dbus.ObjectPath("/org/freedesktop/Accounts/UserMockUser"), consts.DbusUserPrefix); err != nil {
		slog.Error("Setup: could not export UserMockUser mock: %v", err)
	}
	if err := conn.Export(introspect.Introspectable(userIntro), dbus.ObjectPath("/org/freedesktop/Accounts/UserMockUser"),
		"org.freedesktop.DBus.Introspectable"); err != nil {
		slog.Error("Setup: could not export introspectable for UserMockUser: %v", err)
	}

	if err := conn.Export(u, dbus.ObjectPath("/org/freedesktop/Accounts/UserMockUser"), "org.freedesktop.DBus.Properties"); err != nil {
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
