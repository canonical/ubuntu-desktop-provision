// Package consts defines the constants used by the project.
package consts

import "log/slog"

var (
	// Version is the version of the executable.
	Version = "Dev"
)

const (
	// TEXTDOMAIN is the gettext domain for l10n.
	TEXTDOMAIN = "provd"

	// DefaultLogLevel is the default logging level selected without any option.
	DefaultLogLevel = slog.LevelWarn

	// DefaultSocketPath is the default socket path.
	DefaultSocketPath = "/run/provd.sock"
)

// D-Bus constants.
const (
	// DbusAccountsPrefix is the prefix for the Accounts D-Bus interface.
	DbusAccountsPrefix = "org.freedesktop.Accounts"
	// DbusUserPrefix is the prefix for the User D-Bus interface.
	DbusUserPrefix = "org.freedesktop.Accounts.User"
	// DbusHostnamePrefix is the prefix for the Hostname D-Bus interface.
	DbusHostnamePrefix = "org.freedesktop.hostname1"
	// DbusPeerPrefix is the prefix for the Peer D-Bus interface.
	DbusPeerPrefix = "org.freedesktop.DBus.Peer"
)
