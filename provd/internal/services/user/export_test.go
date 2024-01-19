package user

import (
	"errors"

	"github.com/canonical/ubuntu-desktop-provision/provd/internal/consts"
	"github.com/godbus/dbus/v5"
)

// Option type exported for tests.
type Option = option

// WithAccountsPrefix is a functional option to set the DBus accounts prefix.
func WithAccountsPath(path string) option {
	return func(s *Service) error {
		obj := s.conn.Object(consts.DbusAccountsPrefix, dbus.ObjectPath(path))
		if obj == nil {
			return errors.New("invalid accounts path")
		}
		s.accounts = obj
		return nil
	}
}

// WithHostnamePrefix is a functional option to set the DBus hostname prefix.
func WithHostnamePath(path string) option {
	return func(s *Service) error {
		obj := s.conn.Object(consts.DbusHostnamePrefix, dbus.ObjectPath(path))
		if obj == nil {
			return errors.New("invalid hostname path")
		}
		s.hostname = obj
		return nil
	}
}
