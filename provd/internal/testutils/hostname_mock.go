package testutils

import (
	"fmt"
	"strings"

	"github.com/canonical/ubuntu-desktop-provision/provd/internal/consts"
	"github.com/godbus/dbus/v5"
	"github.com/godbus/dbus/v5/introspect"
)

const (
	hostnameErrorPath = "hostnameerror"
)

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
	action := fmt.Sprintf("hostname1.SetStaticHostname(hostname: %s)", hostname)
	WriteActionToFile(action)
	return nil
}

func (h hostnamedbus) Get(interfaceName string, propertyName string) (interface{}, *dbus.Error) {
	if h.staticHostname == hostnameErrorPath {
		return "", dbus.NewError("org.freedesktop.hostname1.Error.Failed", []interface{}{"error requested in Get mocked method"})
	}
	action := fmt.Sprintf("hostname1.Get(interfaceName: %s, propertyName: %s)", interfaceName, propertyName)
	WriteActionToFile(action)
	return h.staticHostname, nil
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
