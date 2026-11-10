package gdm

import (
	"errors"

	"github.com/godbus/dbus/v5"
)

func WithGdmPrefix(prefix string) Option {
	return func(s *Service) error {
		s.displayManager = s.conn.Object(prefix, dbus.ObjectPath("/org/gnome/DisplayManager/Manager"))
		if s.displayManager == nil {
			return errors.New("invalid GDM prefix")
		}
		return nil
	}
}
