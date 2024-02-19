package testutils

import (
	"fmt"
	"strings"

	"github.com/canonical/ubuntu-desktop-provision/provd/internal/consts"
	"github.com/godbus/dbus/v5"
	"github.com/godbus/dbus/v5/introspect"
)

type timedatebus struct {
	path string
}

func (t timedatebus) Ping() *dbus.Error {
	return nil
}

func (t timedatebus) ListTimezones() ([]string, *dbus.Error) {
	if t.path == "gettimezoneserror" {
		return nil, dbus.NewError("org.freedesktop.locale1.Error.Failed", []interface{}{"error requested in ListTimezones mocked method"})
	}

	// Subset of timezones for testing purposes
	timezones := []string{
		"Europe/London",
		"Asia/Tokyo",
		"Africa/Johannesburg",
	}
	return timezones, nil
}

func (t timedatebus) SetTimezone(timezone string, someBool bool) *dbus.Error {
	if strings.HasPrefix(timezone, "error") {
		return dbus.NewError("org.freedesktop.locale1.Error.Failed", []interface{}{"error requested in SetTimezone mocked method"})
	}
	WriteActionToFile(fmt.Sprintf("timedate1.SetTimezone: %s", timezone))
	return nil
}

func (t timedatebus) Get(interfaceName string, propertyName string) (interface{}, *dbus.Error) {
	if strings.HasPrefix(t.path, "gettimezoneserror") {
		return nil, dbus.NewError("org.freedesktop.locale1.Error.Failed", []interface{}{"error requested in Get mocked method"})
	}
	return "Africa/Johannesburg", nil
}

// ExportTimedateMock exports the locale mock to the system bus.
func ExportTimedateMock(conn *dbus.Conn) error {
	peer := fmt.Sprintf(`
    <node>
        <interface name="%s">
            <method name="Ping">
            </method>
        </interface>%s</node>`, consts.DbusPeerPrefix, introspect.IntrospectDataString)

	intro := fmt.Sprintf(`
    <node>
        <interface name="%s">
            <method name="SetTimezone">
              <arg name="name" direction="in" type="s"/>
			  <arg name="someBool" direction="in" type="b"/>
            </method>
            <method name="ListTimezones">
			  <arg name="timezones" direction="out" type="as"/>
            </method>
        </interface>
		<interface name="org.freedesktop.DBus.Properties">
			<method name="Get">
				<arg name="interface" direction="in" type="s"/>
				<arg name="property" direction="in" type="s"/>
				<arg name="value" direction="out" type="v"/>
			</method>
		</interface>
	%s</node>`, consts.DbusTimedatePrefix, introspect.IntrospectDataString)

	for _, t := range []timedatebus{
		{path: "timedate1"},
		{path: "gettimezoneserror"},
	} {
		if err := conn.Export(t, dbus.ObjectPath(fmt.Sprintf("/org/freedesktop/%s", t.path)), consts.DbusTimedatePrefix); err != nil {
			return fmt.Errorf("could not export Timedate mock: %w", err)
		}
		if err := conn.Export(introspect.Introspectable(intro), dbus.ObjectPath(fmt.Sprintf("/org/freedesktop/%s", t.path)), "org.freedesktop.DBus.Introspectable"); err != nil {
			return fmt.Errorf("could not export introspectable for timedate mock: %w", err)
		}
		if err := conn.Export(t, dbus.ObjectPath(fmt.Sprintf("/org/freedesktop/%s", t.path)), consts.DbusPeerPrefix); err != nil {
			return fmt.Errorf("could not export Peer mock: %w", err)
		}
		if err := conn.Export(introspect.Introspectable(peer), dbus.ObjectPath(fmt.Sprintf("/org/freedesktop/%s", t.path)), "org.freedesktop.DBus.Introspectable"); err != nil {
			return fmt.Errorf("could not export introspectable for Peer mock: %w", err)
		}
		if err := conn.Export(t, dbus.ObjectPath(fmt.Sprintf("/org/freedesktop/%s", t.path)), "org.freedesktop.DBus.Properties"); err != nil {
			return fmt.Errorf("could not export DBus Properties mock: %w", err)
		}
	}
	reply, err := conn.RequestName(consts.DbusTimedatePrefix, dbus.NameFlagDoNotQueue)
	if err != nil {
		return fmt.Errorf("failed to acquire account name on timedate system bus: %w", err)
	}
	if reply != dbus.RequestNameReplyPrimaryOwner {
		return fmt.Errorf("failed to acquire account name on timedate system bus: name is already taken")
	}

	return nil
}
