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
		err := s.timezone.Call(consts.DbusPeerPrefix+".Ping", 0).Err
		if err != nil {
			return errors.New("invalid locale path")
		}
		return nil
	}
}
