package locale

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

// With is a functional option to set the passwd master path.
func WithLocaleSupportedPath(path string) Option {
	return func(s *Service) error {
		s.localeSupportedPath = path
		return nil
	}
}
