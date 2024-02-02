// Package keyboard implements the Keyboard gRPC service.
package keyboard

import (
	"context"

	"github.com/canonical/ubuntu-desktop-provision/provd/internal/consts"
	pb "github.com/canonical/ubuntu-desktop-provision/provd/protos"
	"github.com/godbus/dbus/v5"
	"github.com/linuxdeepin/go-gir/gio-2.0"
	"github.com/linuxdeepin/go-gir/glib-2.0"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/types/known/emptypb"
)

type GSettingsSubset interface {
	IsWritable(key string) bool
	SetValue(key string, variant *glib.Variant) bool
}

// Option is a functional option to set the DBus objects in tests.
type Option func(*Service) error

// Service is the implementation of the Keyboard service.
type Service struct {
	pb.UnimplementedKeyboardServiceServer
	conn      *dbus.Conn
	locale    dbus.BusObject
	gsettings GSettingsSubset
}

// New returns a new instance of the Keyboard service.
func New(conn *dbus.Conn, opts ...Option) (*Service, error) {
	s := &Service{
		conn: conn,
	}

	s.locale = conn.Object("org.freedesktop.locale1", dbus.ObjectPath("/org/freedesktop/locale1"))

	// Ping object to ensure it is reachable
	err := s.locale.Call(consts.DbusPeerPrefix+".Ping", 0).Err
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to ping default DBus locale1 object")
	}

	s.gsettings = gio.NewSettings("org.gnome.desktop.input-sources")

	// Applying options, checking for errors in obtaining DBus objects
	for _, opt := range opts {
		if err := opt(s); err != nil {
			return nil, err
		}
	}

	// Check if is writable as a ping test
	isWritable := s.gsettings.IsWritable("sources")
	if !isWritable {
		return nil, status.Errorf(codes.Internal, "failed to connect to gsettings")
	}

	return s, nil
}

// SetInputSource sets the input source for the current user via gsettings.
func (s *Service) SetInputSource(ctx context.Context, req *pb.SetInputSourceRequest) (*emptypb.Empty, error) {
	// Validate request
	if req == nil {
		return nil, status.Errorf(codes.InvalidArgument, "received a nil request")
	}
	if req.Settings == nil {
		return nil, status.Errorf(codes.InvalidArgument, "received a nil settings")
	}
	if req.Settings.Layout == "" {
		return nil, status.Errorf(codes.InvalidArgument, "received an empty layout")
	}

	var xkbString string
	if req.Settings.Variant == "" {
		xkbString = req.Settings.Layout
	} else {
		xkbString = req.Settings.Layout + "+" + req.Settings.Variant
	}

	sources, err := glib.VariantParse(glib.NewVariantType("a(ss)"), "[('xkb', '"+xkbString+"')]", "", "")
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to parse input source into GVariant: %v", err)
	}
	success := s.gsettings.SetValue("sources", sources)
	if !success {
		return nil, status.Errorf(codes.Internal, "failed to set input source")
	}

	return &emptypb.Empty{}, nil
}

// SetKeyboard sets the keyboard layout for the current user via DBus.
func (s *Service) SetKeyboard(ctx context.Context, req *pb.SetKeyboardRequest) (*emptypb.Empty, error) {
	// Validate request
	if req == nil {
		return nil, status.Errorf(codes.InvalidArgument, "received a nil request")
	}
	if req.Settings == nil {
		return nil, status.Errorf(codes.InvalidArgument, "received a nil settings")
	}
	if req.Settings.Layout == "" {
		return nil, status.Errorf(codes.InvalidArgument, "received a nil layout")
	}

	x11Model, err := s.locale.GetProperty(consts.DbusLocalePrefix + ".X11Model")
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to get X11Model: %v", err)
	}

	x11Options, err := s.locale.GetProperty(consts.DbusLocalePrefix + ".X11Options")
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to get X11Options: %v", err)
	}

	x11ModelStr, ok := x11Model.Value().(string)
	if !ok {
		return nil, status.Errorf(codes.Internal, "failed to get X11Model: %v", err)
	}
	x11OptionsStr, ok := x11Options.Value().(string)
	if !ok {
		return nil, status.Errorf(codes.Internal, "failed to get X11Options: %v", err)
	}

	call := s.locale.Call(consts.DbusLocalePrefix+".SetX11Keyboard", 0, req.Settings.Layout, x11ModelStr, req.Settings.Variant, x11OptionsStr, false, false)
	err = call.Err
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to set X11 keyboard: %v", err)
	}

	return &emptypb.Empty{}, nil
}
