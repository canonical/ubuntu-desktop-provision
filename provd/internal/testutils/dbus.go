// Package testutils provides utility functions and behaviors for testing.
package testutils

import (
	"errors"
	"fmt"
	"log/slog"
	"os"
	"strings"

	"github.com/canonical/ubuntu-desktop-provision/provd/internal/consts"
	"github.com/godbus/dbus/v5"
	"github.com/godbus/dbus/v5/introspect"
)

const defaultSystemBusAddress = "unix:path=/var/run/dbus/system_bus_socket"
const uidUserDeletionFails = 9999
const uidUserGetFails = 9998
const hostnameErrorPath = "hostnameerror"

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
	//if !strings.HasPrefix("unix:path=/tmp")…
	return !(busAddr == "" || busAddr == defaultSystemBusAddress)
}

// writes the action to a file, compared against goldenfiles to test the correct actions are being called.
func writeActionToFile(action string) {
	f, err := os.OpenFile("actions", os.O_APPEND|os.O_CREATE|os.O_WRONLY, 0600)
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
	if strings.HasSuffix(name, "find-user-by-name-error") {
		return "", dbus.NewError("org.freedesktop.Accounts.Error.FindUserByNameError", []interface{}{"error requested in FindUserByNameError mocked method"})
	}
	// This is used to also include the username in the error log, used to determine its an error because a user wasn't found.
	if strings.HasSuffix(name, "find-user-by-name-not-found") {
		return "", dbus.NewError("org.freedesktop.Accounts.Error.Failed", []interface{}{"Your name was: " + name})
	}
	action := fmt.Sprintf("Accounts.FindUserByName(name: %s)\n", name)
	writeActionToFile(action)
	return fmt.Sprintf("/org/freedesktop/Accounts/User%s", name), nil
}

func (a accountsdbus) CreateUser(username string, realname string, accountType int32) (string, *dbus.Error) {
	if strings.HasSuffix(username, "create-user-error") {
		return "", dbus.NewError("org.freedesktop.Accounts.Error.Failed", []interface{}{"error requested in CreateUserErrorUsername mocked method"})
	}
	action := fmt.Sprintf("Accounts.CreateUser(username: \"%s\", realname: \"%s\", accountType: %d)\n", username, realname, accountType)
	writeActionToFile(action)
	return fmt.Sprintf("/org/freedesktop/Accounts/User%s", username), nil
}

func (a accountsdbus) DeleteUser(userID uint32) *dbus.Error {
	if userID == uidUserDeletionFails {
		return dbus.NewError("org.freedesktop.Accounts.Error.Failed", []interface{}{"error requested in DeleteUser mocked method"})
	}
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
	if strings.HasSuffix(hostname, "set-static-hostname-error") {
		return dbus.NewError("org.freedesktop.hostname1.Error.Failed", []interface{}{"error requested in SetStaticHostname mocked method"})
	}
	action := fmt.Sprintf("hostname1.SetStaticHostname(hostname: %s)\n", hostname)
	writeActionToFile(action)
	return nil
}

func (h hostnamedbus) Get(interfaceName string, propertyName string) (interface{}, *dbus.Error) {
	if h.staticHostname == hostnameErrorPath {
		return "", dbus.NewError("org.freedesktop.hostname1.Error.Failed", []interface{}{"error requested in Get mocked method"})
	}
	action := fmt.Sprintf("hostname1.Get(interfaceName: %s, propertyName: %s)\n", interfaceName, propertyName)
	writeActionToFile(action)
	return h.staticHostname, nil
}

type userdbus struct {
	path string
	id   uint64
}

func (u userdbus) SetPassword(password string, hint string) *dbus.Error {
	action := "User.SetPassword\n"
	writeActionToFile(action)
	return nil
}

func (u userdbus) SetAutomaticLogin(autoLogin bool) *dbus.Error {
	action := fmt.Sprintf("User.SetAutomaticLogin(autoLogin: %t)\n", autoLogin)
	writeActionToFile(action)
	return nil
}
func (u userdbus) Get(interfaceName string, propertyName string) (interface{}, *dbus.Error) {
	if u.id == uidUserGetFails {
		return "", dbus.NewError("org.freedesktop.Accounts.Error.Failed", []interface{}{"error requested in User.Get mocked method"})
	}
	action := fmt.Sprintf("User.Get(interfaceName: %s, propertyName: %s)\n", interfaceName, propertyName)
	writeActionToFile(action)
	return u.id, nil
}

// ExportHostnameMock exports the hostname mock to the system bus.
func ExportHostnameMock(conn *dbus.Conn) error {
	peer := fmt.Sprintf(`
    <node>
        <interface name="%s">
            <method name="Ping">
            </method>
        </interface>%s</node>`, consts.DbusPeerPrefix, introspect.IntrospectDataString)

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

	for _, h := range []hostnamedbus{
		{staticHostname: "hostname1"},
		{staticHostname: hostnameErrorPath},
	} {
		if err := conn.Export(h, dbus.ObjectPath(fmt.Sprintf("/org/freedesktop/%s", h.staticHostname)), consts.DbusHostnamePrefix); err != nil {
			return fmt.Errorf("could not export hostname1 mock: %w", err)
		}
		if err := conn.Export(introspect.Introspectable(hostnameIntro), dbus.ObjectPath(fmt.Sprintf("/org/freedesktop/%s", h.staticHostname)), "org.freedesktop.DBus.Introspectable"); err != nil {
			return fmt.Errorf("could not export introspectable for hostname1 mock: %w", err)
		}
		if err := conn.Export(h, dbus.ObjectPath(fmt.Sprintf("/org/freedesktop/%s", h.staticHostname)), consts.DbusPeerPrefix); err != nil {
			return fmt.Errorf("could not export Peer mock: %w", err)
		}
		if err := conn.Export(h, dbus.ObjectPath(fmt.Sprintf("/org/freedesktop/%s", h.staticHostname)), "org.freedesktop.DBus.Properties"); err != nil {
			return fmt.Errorf("could not export DBus Properties mock: %w", err)
		}
		if err := conn.Export(introspect.Introspectable(peer), dbus.ObjectPath(fmt.Sprintf("/org/freedesktop/%s", h.staticHostname)), "org.freedesktop.DBus.Introspectable"); err != nil {
			return fmt.Errorf("could not export introspectable for Peer mock: %w", err)
		}
	}
	reply, err := conn.RequestName(consts.DbusHostnamePrefix, dbus.NameFlagDoNotQueue)
	if err != nil {
		return fmt.Errorf("failed to acquire hostname name on local system bus: %w", err)
	}
	if reply != dbus.RequestNameReplyPrimaryOwner {
		return fmt.Errorf("hostname name is already taken on local system bus")
	}

	return nil
}

// ExportUserMock exports the user mock to the system bus.
func ExportUserMock(conn *dbus.Conn) error {
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
        </interface>
        <interface name="org.freedesktop.DBus.Properties">
            <method name="Get">
                <arg name="interface" direction="in" type="s"/>
                <arg name="property" direction="in" type="s"/>
                <arg name="value" direction="out" type="v"/>
            </method>
        </interface>%s</node>`, consts.DbusUserPrefix, introspect.IntrospectDataString)

	for _, u := range []userdbus{
		{path: "Userok", id: 1001},
		{path: "Userdeleteerror", id: uidUserDeletionFails},
		{path: "Usergetfail", id: uidUserGetFails},
	} {
		if err := conn.Export(u, dbus.ObjectPath(fmt.Sprintf("/org/freedesktop/Accounts/%s", u.path)), consts.DbusUserPrefix); err != nil {
			return fmt.Errorf("could not export %s mock: %w", u.path, err)
		}
		if err := conn.Export(introspect.Introspectable(userIntro), dbus.ObjectPath(fmt.Sprintf("/org/freedesktop/Accounts/%s", u.path)), "org.freedesktop.DBus.Introspectable"); err != nil {
			return fmt.Errorf("could not export introspectable for %s: %w", u.path, err)
		}
		if err := conn.Export(u, dbus.ObjectPath(fmt.Sprintf("/org/freedesktop/Accounts/%s", u.path)), "org.freedesktop.DBus.Properties"); err != nil {
			return fmt.Errorf("could not export DBus Properties mock: %w", err)
		}
	}

	reply, err := conn.RequestName(consts.DbusUserPrefix, dbus.NameFlagDoNotQueue)
	if err != nil {
		return fmt.Errorf("failed to acquire user name on local system bus: %w", err)
	}
	if reply != dbus.RequestNameReplyPrimaryOwner {
		return fmt.Errorf("user name is already taken on local system bus")
	}

	return nil
}

// ExportAccountsMock exports the accounts mock to the system bus.
func ExportAccountsMock(conn *dbus.Conn) error {
	peer := fmt.Sprintf(`
    <node>
        <interface name="%s">
            <method name="Ping">
            </method>
        </interface>%s</node>`, consts.DbusPeerPrefix, introspect.IntrospectDataString)

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
        </interface>%s</node>`, consts.DbusAccountsPrefix, introspect.IntrospectDataString)

	a := accountsdbus{}
	if err := conn.Export(a, dbus.ObjectPath("/org/freedesktop/Accounts"), consts.DbusAccountsPrefix); err != nil {
		return fmt.Errorf("could not export Accounts mock: %w", err)
	}
	if err := conn.Export(introspect.Introspectable(intro), dbus.ObjectPath("/org/freedesktop/Accounts"), "org.freedesktop.DBus.Introspectable"); err != nil {
		return fmt.Errorf("could not export introspectable for accounts mock: %w", err)
	}
	if err := conn.Export(a, dbus.ObjectPath("/org/freedesktop/Accounts"), consts.DbusPeerPrefix); err != nil {
		return fmt.Errorf("could not export Peer mock: %w", err)
	}
	if err := conn.Export(introspect.Introspectable(peer), dbus.ObjectPath("/org/freedesktop/Accounts"), "org.freedesktop.DBus.Introspectable"); err != nil {
		return fmt.Errorf("could not export introspectable for Peer mock: %w", err)
	}

	reply, err := conn.RequestName(consts.DbusAccountsPrefix, dbus.NameFlagDoNotQueue)
	if err != nil {
		return fmt.Errorf("failed to acquire account name on local system bus: %w", err)
	}
	if reply != dbus.RequestNameReplyPrimaryOwner {
		return fmt.Errorf("failed to acquire account name on local system bus: name is already taken")
	}

	return nil
}
