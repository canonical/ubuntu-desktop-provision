package keyboard

import (
	"errors"
	"strings"

	"github.com/canonical/ubuntu-desktop-provision/provd/internal/consts"
	"github.com/canonical/ubuntu-desktop-provision/provd/internal/testutils"
	"github.com/godbus/dbus/v5"
	"github.com/linuxdeepin/go-gir/glib-2.0"
)

// WithLocalePath is a functional option to set the DBus locale path.
func WithLocalePath(path string) Option {
	return func(s *Service) error {
		s.locale = s.conn.Object(consts.DbusLocalePrefix, dbus.ObjectPath("/org/freedesktop/"+path))
		if s.locale == nil {
			return errors.New("invalid locale path")
		}
		err := s.locale.Call(consts.DbusPeerPrefix+".Ping", 0).Err
		if err != nil {
			return errors.New("invalid locale path")
		}
		return nil
	}
}

// WithGSettingsSubset is a functional option to set the GSettingsSubset object for testing purposes.
func WithGSettingsSubset(g GSettingsSubset) Option {
	return func(s *Service) error {
		s.gsettings = g
		return nil
	}
}

type GSettingsSubsetMock struct {
	IsWritableError bool
}

func (g GSettingsSubsetMock) IsWritable(key string) bool {
	return !g.IsWritableError
}

func (g GSettingsSubsetMock) SetValue(key string, variant *glib.Variant) bool {
	if !strings.Contains(variant.Print(false), "gsettingserror") {
		testutils.WriteActionToFile("gsettings.SetValue(key: " + key + ", variant: " + variant.Print(true) + ")\n")
		return true
	}
	return false
}
