// Package accessibility implements the Accessibility service.
package accessibility

import (
	pb "github.com/canonical/ubuntu-desktop-provision/provd/protos"
	"github.com/linuxdeepin/go-gir/gio-2.0"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/types/known/emptypb"
)

// GSettingsSubset is a minimal subset of the GSettings interface to make for easier mocking.
type GSettingsSubset interface {
	IsWritable(key string) bool
	booleanSetter
	booleanGetter
	doubleSetter
	doubleGetter
}

type booleanSetter interface {
	SetBoolean(string, bool) bool
}

type booleanGetter interface {
	GetBoolean(string) bool
}

type doubleSetter interface {
	SetDouble(string, float64) bool
}

type doubleGetter interface {
	GetDouble(string) float64
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

    var errs []error

	// Check if is writable as a ping test for gsettings
	isWritable := s.a11ySettings.IsWritable("high-contrast")
	if !isWritable {
		errs = append(errs, status.Errorf(codes.Internal, "failed to connect to org.gnome.desktop.a11y.interface"))
	}

	isWritable = s.applicationSettings.IsWritable("screen-keyboard-enabled")
	if !isWritable {
		errs = append(errs, status.Errorf(codes.Internal, "failed to connect to org.gnome.desktop.a11y.applications"))
	}

	isWritable = s.interfaceSettings.IsWritable("cursor-blink")
	if !isWritable {
		errs = append(errs, status.Errorf(codes.Internal, "failed to connect to org.gnome.desktop.interface"))
	}

	isWritable = s.wmSettings.IsWritable("audible-bell")
	if !isWritable {
		return nil, status.Errorf(codes.Internal, "failed to connect to org.gnome.desktop.wm.preferences")
	}

	isWritable = s.keyboardSettings.IsWritable("sticky-keys")
	if !isWritable {
		return nil, status.Errorf(codes.Internal, "failed to connect to org.gnome.desktop.a11y.keyboard")
	}

	return s, nil
}

func setBooleanSettings(boolSettings booleanSetter, key string, enabled bool, errorFmt string) (*emptypb.Empty, error) {
	success := boolSettings.SetBoolean(key, enabled)
	if !success {
		return nil, status.Errorf(codes.Internal, errorFmt, enabled)
	}

	return &emptypb.Empty{}, nil
}

func getBooleanSettings(boolSettings booleanGetter, key string) bool {
	return boolSettings.GetBoolean(key)
}

func setDoubleSettings(doubleSettings doubleSetter, key string, value float64, errorFmt string) (*emptypb.Empty, error) {
	success := doubleSettings.SetDouble(key, value)
	if !success {
		return nil, status.Errorf(codes.Internal, errorFmt, value)
	}

	return &emptypb.Empty{}, nil
}

func getDoubleSettings(doubleSettings doubleGetter, key string) float64 {
	return doubleSettings.GetDouble(key)
}
