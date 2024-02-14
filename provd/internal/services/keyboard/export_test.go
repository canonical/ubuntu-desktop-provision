package keyboard

import (
	"errors"

	"github.com/canonical/ubuntu-desktop-provision/provd/internal/consts"
	"github.com/godbus/dbus/v5"
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

type GSettingsSubset = gSettingsSubset

// WithGSettingsSubset is a functional option to set the GSettingsSubset object for testing purposes.
func WithGSettingsSubset(g gSettingsSubset) Option {
	return func(s *Service) error {
		s.gsettings = g
		return nil
	}
}

// WithKeyboardl18nPath is a functional option to set the path to the keyboard configuration file.
func WithKeyboardl18nPath(path string) Option {
	return func(s *Service) error {
		s.keyboardl18nPath = path
		return nil
	}
}
