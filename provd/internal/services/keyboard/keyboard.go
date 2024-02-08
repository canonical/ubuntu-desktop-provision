// Package keyboard implements the Keyboard gRPC service.
package keyboard

import (
	"context"
	"encoding/json"
	"io/fs"
	"strings"

	"github.com/canonical/ubuntu-desktop-provision/provd/internal/consts"
	pb "github.com/canonical/ubuntu-desktop-provision/provd/protos"
	"github.com/godbus/dbus/v5"
	"github.com/linuxdeepin/go-gir/gio-2.0"
	"github.com/linuxdeepin/go-gir/glib-2.0"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/types/known/emptypb"
)

// GSettingsSubset is a minimal subset of the GSettings interface to make for easier mocking.
type GSettingsSubset interface {
	IsWritable(key string) bool
	SetValue(key string, variant *glib.Variant) bool
}

// Option is a functional option to set the DBus objects in tests.
type Option func(*Service) error

// Service is the implementation of the Keyboard service.
type Service struct {
	pb.UnimplementedKeyboardServiceServer
	conn             *dbus.Conn
	locale           dbus.BusObject
	gsettings        GSettingsSubset
	keyboardl18nPath string
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

	// Create GSettings object
	s.gsettings = gio.NewSettings("org.gnome.desktop.input-sources")

	// Set the path to the keyboard configuration file
	s.keyboardl18nPath = "kbds/"

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

// GetKeyboard returns the current keyboard layout and available layouts.
func (s *Service) GetKeyboard(ctx context.Context, req *emptypb.Empty) (*pb.GetKeyboardResponse, error) {
	// Validate request
	if req == nil {
		return nil, status.Errorf(codes.InvalidArgument, "received a nil request")
	}

	// Get the current keyboard layout & variant
	x11Layout, err := s.locale.GetProperty(consts.DbusLocalePrefix + ".X11Layout")
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to get X11Layout: %v", err)
	}
	x11Variant, err := s.locale.GetProperty(consts.DbusLocalePrefix + ".X11Variant")
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to get X11Variant: %v", err)
	}

	// Type assertions
	layout, ok := x11Layout.Value().(string)
	if !ok {
		return nil, status.Errorf(codes.Internal, "failed to parse X11Layout: %v", err)
	}
	variant, ok := x11Variant.Value().(string)
	if !ok {
		return nil, status.Errorf(codes.Internal, "failed to parse X11Variant: %v", err)
	}

	// Get available keyboard layouts
	layouts, err := getKeyboardLayouts(s.keyboardl18nPath, layout)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to get keyboard layouts: %v", err)
	}

	// Create response
	resp := &pb.GetKeyboardResponse{
		Setup: &pb.KeyboardSetup{
			Settings: &pb.KeyboardSettings{
				Layout:  layout,
				Variant: variant,
			},
			Layouts: layouts,
		},
	}
	return resp, nil
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

func getKeyboardLayouts(keyboardl18nPath string, current string) ([]*pb.KeyboardLayout, error) {
	// Read in keyboard layouts
	k, err := fs.ReadFile(EmbeddedFiles, keyboardl18nPath+current+".jsonl")
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to read keyboard layouts: %v", err)
	}

	// Split the file into lines
	l := strings.Split(string(k), "\n")

	var layouts []*pb.KeyboardLayout

	// Loop through each line in the jsonl file
	for i := 0; i < len(l); i++ {
		line := strings.TrimSpace(l[i]) // Trim any leading/trailing whitespace
		if line == "" {
			continue // Skip any empty line
		}

		// Unmarshal line into a keyboard layout
		var rawLayout []interface{}
		err := json.Unmarshal([]byte(line), &rawLayout)
		if err != nil {
			return nil, status.Errorf(codes.Internal, "failed to unmarshal keyboard layout: %v", err)
		}

		// Get the layout code
		c, ok := rawLayout[0].(string)
		if !ok {
			return nil, status.Errorf(codes.Internal, "failed to parse keyboard layout code: %v", err)
		}

		// Get the layout name
		n, ok := rawLayout[1].(string)
		if !ok {
			return nil, status.Errorf(codes.Internal, "failed to parse keyboard layout name: %v", err)
		}

		l := &pb.KeyboardLayout{
			Code: c,
			Name: n,
		}

		// Get the layout variants
		rawVariants, ok := rawLayout[2].([]interface{})
		if !ok {
			return nil, status.Errorf(codes.Internal, "failed to parse keyboard layout variant: %v", err)
		}
		for j := 0; j < len(rawVariants); j++ {
			rawVariant, ok := rawVariants[j].([]interface{})
			if !ok {
				return nil, status.Errorf(codes.Internal, "failed to parse keyboard layout variant: %v", err)
			}
			c, ok := rawVariant[0].(string)
			if !ok {
				return nil, status.Errorf(codes.Internal, "failed to parse keyboard layout variant code: %v", err)
			}
			n, ok := rawVariant[1].(string)
			if !ok {
				return nil, status.Errorf(codes.Internal, "failed to parse keyboard layout variant name: %v", err)
			}
			l.Variants = append(l.Variants, &pb.KeyboardVariant{
				Code: c,
				Name: n,
			})
		}
		layouts = append(layouts, l)
	}
	return layouts, nil
}
