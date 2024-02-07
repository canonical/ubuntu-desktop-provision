package privacy

import (
	"context"

	pb "github.com/canonical/ubuntu-desktop-provision/provd/protos"
	"github.com/linuxdeepin/go-gir/gio-2.0"
	"github.com/linuxdeepin/go-gir/glib-2.0"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/types/known/emptypb"
	"google.golang.org/protobuf/types/known/wrapperspb"
)

// GSettingsSubset is a minimal subset of the GSettings interface to make for easier mocking.
type GSettingsSubset interface {
	IsWritable(key string) bool
	SetBool(key string, variant *glib.Variant) bool
}

// Option is a functional option to set the DBus objects in tests.
type Option func(*Service) error

// Service is the implementation of the Keyboard service.
type Service struct {
	pb.UnimplementedPrivacyServiceServer
	locationSettings *gio.Settings
}

func New(opts ...Option) (*Service, error) {
	s := &Service{}

	// Create GSettings object
	s.locationSettings = gio.NewSettings("org.gnome.system.location")

	// Applying options, checking for errors in obtaining DBus objects
	for _, opt := range opts {
		if err := opt(s); err != nil {
			return nil, err
		}
	}

	// Check if is writable as a ping test for location settings
	isWritable := s.locationSettings.IsWritable("enabled")
	if !isWritable {
		return nil, status.Errorf(codes.Internal, "failed to connect to location settings")
	}

	return s, nil
}

func (s *Service) GetLocationServices(ctx context.Context, req *emptypb.Empty) (*wrapperspb.BoolValue, error) {
	// Validate request
	if req == nil {
		return nil, status.Error(codes.InvalidArgument, "empty request")
	}

	enabled := s.locationSettings.GetBoolean("enabled")

	return &wrapperspb.BoolValue{Value: enabled}, nil
}

func (s *Service) EnableLocationServices(ctx context.Context, req *emptypb.Empty) (*emptypb.Empty, error) {
	// Validate request
	if req == nil {
		return nil, status.Error(codes.InvalidArgument, "empty request")
	}

	s.locationSettings.SetBoolean("enabled", true)

	return &emptypb.Empty{}, nil
}

func (s *Service) DisableLocationServices(ctx context.Context, req *emptypb.Empty) (*emptypb.Empty, error) {
	// Validate request
	if req == nil {
		return nil, status.Error(codes.InvalidArgument, "empty request")
	}

	s.locationSettings.SetBoolean("enabled", false)

	return &emptypb.Empty{}, nil
}
