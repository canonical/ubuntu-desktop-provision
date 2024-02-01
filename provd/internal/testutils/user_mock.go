package testutils

import (
	"fmt"

	"github.com/canonical/ubuntu-desktop-provision/provd/internal/consts"
	"github.com/godbus/dbus/v5"
	"github.com/godbus/dbus/v5/introspect"
)

const (
	uidUserDeletionFails = 9999
	uidUserGetFails      = 9998
)

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
