// Package accessibility implements the Accessibility service.
package accessibility

import (
	pb "github.com/canonical/ubuntu-desktop-provision/provd/protos"
	"github.com/linuxdeepin/go-gir/gio-2.0"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

// GSettingsSubset is a minimal subset of the GSettings interface to make for easier mocking.
type GSettingsSubset interface {
	IsWritable(key string) bool
	SetBoolean(key string, value bool) bool
	GetBoolean(key string) bool
	SetDouble(key string, value float64) bool
	GetDouble(key string) float64
}

// Service is the implementation of the Keyboard service.
type Service struct {
	pb.UnimplementedAccessibilityServiceServer
	a11ySettings        GSettingsSubset
	applicationSettings GSettingsSubset
	interfaceSettings   GSettingsSubset
	wmSettings          GSettingsSubset
	keyboardSettings    GSettingsSubset
}

// Option is a functional option to set the DBus objects in tests.
type Option func(*Service) error

// New returns a new instance of the Accessibility service.
func New(opts ...Option) (*Service, error) {
	s := &Service{}

	// Create GSettings object
	s.a11ySettings = gio.NewSettings("org.gnome.desktop.a11y.interface")
	s.applicationSettings = gio.NewSettings("org.gnome.desktop.a11y.applications")
	s.interfaceSettings = gio.NewSettings("org.gnome.desktop.interface")
	s.wmSettings = gio.NewSettings("org.gnome.desktop.wm.preferences")
	s.keyboardSettings = gio.NewSettings("org.gnome.desktop.a11y.keyboard")

	// Applying options, checking for errors in obtaining DBus objects
	for _, opt := range opts {
		if err := opt(s); err != nil {
			return nil, err
		}
	}

	// Check if is writable as a ping test for gsettings
	isWritable := s.a11ySettings.IsWritable("high-contrast")
	if !isWritable {
		return nil, status.Errorf(codes.Internal, "failed to connect to location settings")
	}

	isWritable = s.applicationSettings.IsWritable("screen-keyboard-enabled")
	if !isWritable {
		return nil, status.Errorf(codes.Internal, "failed to connect to location settings")
	}

	isWritable = s.interfaceSettings.IsWritable("cursor-blink")
	if !isWritable {
		return nil, status.Errorf(codes.Internal, "failed to connect to location settings")
	}

	isWritable = s.wmSettings.IsWritable("audible-bell")
	if !isWritable {
		return nil, status.Errorf(codes.Internal, "failed to connect to location settings")
	}

	isWritable = s.keyboardSettings.IsWritable("sticky-keys")
	if !isWritable {
		return nil, status.Errorf(codes.Internal, "failed to connect to location settings")
	}

	return s, nil
}
