package testutils

import (
	"fmt"
	"strings"

	"github.com/canonical/ubuntu-desktop-provision/provd/internal/consts"
	"github.com/godbus/dbus/v5"
	"github.com/godbus/dbus/v5/introspect"
)

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
	WriteActionToFile(action)
	return fmt.Sprintf("/org/freedesktop/Accounts/User%s", name), nil
}

func (a accountsdbus) CreateUser(username string, realname string, accountType int32) (string, *dbus.Error) {
	if strings.HasSuffix(username, "create-user-error") {
		return "", dbus.NewError("org.freedesktop.Accounts.Error.Failed", []interface{}{"error requested in CreateUserErrorUsername mocked method"})
	}
	action := fmt.Sprintf("Accounts.CreateUser(username: \"%s\", realname: \"%s\", accountType: %d)\n", username, realname, accountType)
	WriteActionToFile(action)
	return fmt.Sprintf("/org/freedesktop/Accounts/User%s", username), nil
}

func (a accountsdbus) DeleteUser(userID uint32) *dbus.Error {
	if userID == uidUserDeletionFails {
		return dbus.NewError("org.freedesktop.Accounts.Error.Failed", []interface{}{"error requested in DeleteUser mocked method"})
	}
	action := fmt.Sprintf("Accounts.DeleteUser(userID: %d)\n", userID)
	WriteActionToFile(action)
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
