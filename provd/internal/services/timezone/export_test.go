package timezone

import (
	"errors"

	"github.com/canonical/ubuntu-desktop-provision/provd/internal/consts"
	"github.com/godbus/dbus/v5"
)

// WithLocalePath is a functional option to set the DBus timezone path.
func WithTimedatePath(path string) Option {
	return func(s *Service) error {
		s.timezone = s.conn.Object(consts.DbusTimedatePrefix, dbus.ObjectPath("/org/freedesktop/"+path))
		if s.timezone == nil {
			return errors.New("invalid timedate path")
		}
		return nil
	}
}

// WithTimedatePrefix is a functional option to set the DBus timezone prefix.
func WithTimedatePrefix(prefix string) Option {
	return func(s *Service) error {
		obj := s.conn.Object(prefix, "/org/freedesktop/timedate1")
		if obj == nil {
			return errors.New("invalid timedate prefix")
		}
		err := obj.Call("org.freedesktop.DBus.Peer.Ping", 0).Err
		if err != nil {
			return errors.New("invalid accounts prefix")
		}
		s.timezone = obj
		return nil
	}
}
