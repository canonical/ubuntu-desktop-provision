package testutils

import (
	"fmt"

	"github.com/canonical/ubuntu-desktop-provision/provd/internal/consts"
	"github.com/godbus/dbus/v5"
	"github.com/godbus/dbus/v5/introspect"
)

type localebus struct {
	path string
}

func (l localebus) Ping() *dbus.Error {
	return nil
}

func (l localebus) SetLocale(locales []string, someBool bool) *dbus.Error {
	if locales[0] == "locale_error" {
		return dbus.NewError("org.freedesktop.locale1.Error.Failed", []interface{}{"error requested in SetLocale mocked method"})
	}
	return nil
}

func (l localebus) SetX11Keyboard(layout string, model string, variant string, options string, someBool bool, someOtherBool bool) *dbus.Error {
	if layout == "x11keyboarderror" {
		return dbus.NewError("org.freedesktop.locale1.Error.Failed", []interface{}{"error requested in SetX11Keyboard mocked method"})
	}
	return nil
}

func (l localebus) Get(interfaceName string, propertyName string) (interface{}, *dbus.Error) {
	// switch based on interfaceName
	if l.path == "localeerror" {
		return "", dbus.NewError("org.freedesktop.locale1.Error.Failed", []interface{}{"error requested in Get mocked method"})
	}
	switch propertyName {
	case "Locale":
		return "LANG=xh_ZA.UTF-8", nil
	case "X11Model":
		switch l.path {
		case "x11modelerror":
			return "", dbus.NewError("org.freedesktop.locale1.Error.Failed", []interface{}{"error requested in Get mocked method"})
		case "x11modelparseerror":
			return map[string]int{"key": 1}, nil
		default:
			return "ok", nil
		}
	case "X11Options":
		switch l.path {
		case "x11optionserror":
			return "", dbus.NewError("org.freedesktop.locale1.Error.Failed", []interface{}{"error requested in Get mocked method"})
		case "x11optionsparseerror":
			return map[string]int{"key": 1}, nil
		default:
			return "ok", nil
		}
	default:
		return "", dbus.NewError("org.freedesktop.locale1.Error.Failed", []interface{}{"error requested in Get mocked method"})
	}
}

// ExportLocaleMock exports the locale mock to the system bus.
func ExportLocaleMock(conn *dbus.Conn) error {
	peer := fmt.Sprintf(`
    <node>
        <interface name="%s">
            <method name="Ping">
            </method>
        </interface>%s</node>`, consts.DbusPeerPrefix, introspect.IntrospectDataString)

	intro := fmt.Sprintf(`
    <node>
        <interface name="%s">
            <method name="SetLocale">
              <arg name="name" direction="in" type="as"/>
			  <arg name="someBool" direction="in" type="b"/>
            </method>
			<method name="SetX11Keyboard">
				<arg name="model" direction="in" type="s"/>
				<arg name="layout" direction="in" type="s"/>
				<arg name="variant" direction="in" type="s"/>
				<arg name="options" direction="in" type="s"/>
				<arg name"someBool" direction="in" type="b"/>
				<arg name"someOtherBool" direction="in" type="b"/>

			</method>
        </interface>
		<interface name="org.freedesktop.DBus.Properties">
			<method name="Get">
				<arg name="interface" direction="in" type="s"/>
				<arg name="property" direction="in" type="s"/>
				<arg name="value" direction="out" type="v"/>
			</method>
		</interface>
	%s</node>`, consts.DbusLocalePrefix, introspect.IntrospectDataString)

	for _, l := range []localebus{
		{path: "locale1"},
		{path: "localeerror"},
		{path: "x11modelerror"},
		{path: "x11optionserror"},
		{path: "x11keyboarderror"},
		{path: "x11modelparseerror"},
		{path: "x11optionsparseerror"},
	} {
		if err := conn.Export(l, dbus.ObjectPath(fmt.Sprintf("/org/freedesktop/%s", l.path)), consts.DbusLocalePrefix); err != nil {
			return fmt.Errorf("could not export Locale mock: %w", err)
		}
		if err := conn.Export(introspect.Introspectable(intro), dbus.ObjectPath(fmt.Sprintf("/org/freedesktop/%s", l.path)), "org.freedesktop.DBus.Introspectable"); err != nil {
			return fmt.Errorf("could not export introspectable for accounts mock: %w", err)
		}
		if err := conn.Export(l, dbus.ObjectPath(fmt.Sprintf("/org/freedesktop/%s", l.path)), consts.DbusPeerPrefix); err != nil {
			return fmt.Errorf("could not export Peer mock: %w", err)
		}
		if err := conn.Export(introspect.Introspectable(peer), dbus.ObjectPath(fmt.Sprintf("/org/freedesktop/%s", l.path)), "org.freedesktop.DBus.Introspectable"); err != nil {
			return fmt.Errorf("could not export introspectable for Peer mock: %w", err)
		}
		if err := conn.Export(l, dbus.ObjectPath(fmt.Sprintf("/org/freedesktop/%s", l.path)), "org.freedesktop.DBus.Properties"); err != nil {
			return fmt.Errorf("could not export DBus Properties mock: %w", err)
		}
	}
	reply, err := conn.RequestName(consts.DbusLocalePrefix, dbus.NameFlagDoNotQueue)
	if err != nil {
		return fmt.Errorf("failed to acquire account name on local system bus: %w", err)
	}
	if reply != dbus.RequestNameReplyPrimaryOwner {
		return fmt.Errorf("failed to acquire account name on local system bus: name is already taken")
	}

	return nil
}
