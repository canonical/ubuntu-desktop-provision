package user

import (
	"errors"
)

// WithAccountsPrefix is a functional option to set the DBus accounts prefix.
func WithAccountsPrefix(prefix string) Option {
	return func(s *Service) error {
		obj := s.conn.Object(prefix, "/org/freedesktop/Accounts")
		if obj == nil {
			return errors.New("invalid accounts prefix")
		}
		err := obj.Call("org.freedesktop.DBus.Peer.Ping", 0).Err
		if err != nil {
			return errors.New("invalid accounts prefix")
		}
		s.accounts = obj
		return nil
	}
}

// WithHostnamePrefix is a functional option to set the DBus hostname prefix.
func WithHostnamePrefix(prefix string) Option {
	return func(s *Service) error {
		obj := s.conn.Object(prefix, "/org/freedesktop/hostname1")
		if obj == nil {
			return errors.New("invalid hostname prefix")
		}
		err := obj.Call("org.freedesktop.DBus.Peer.Ping", 0).Err
		if err != nil {
			return errors.New("invalid accounts prefix")
		}
		s.hostname = obj
		return nil
	}
}

// WithPasswdMasterPath is a functional option to set the passwd master path.
func WithPasswdMasterPath(path string) Option {
	return func(s *Service) error {
		s.passwdMasterPath = path
		return nil
	}
}

// WithGroupMasterPath is a functional option to set the group master path.
func WithGroupMasterPath(path string) Option {
	return func(s *Service) error {
		s.groupMasterPath = path
		return nil
	}
}
