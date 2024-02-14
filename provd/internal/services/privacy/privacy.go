// Package privacy implements the Privacy gRPC service.
package privacy

import (
	"context"

	pb "github.com/canonical/ubuntu-desktop-provision/provd/protos"
	"github.com/linuxdeepin/go-gir/gio-2.0"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/types/known/emptypb"
	"google.golang.org/protobuf/types/known/wrapperspb"
)

// gSettingsSubset is a minimal subset of the GSettings interface to make for easier mocking.
type gSettingsSubset interface {
	IsWritable(key string) bool
	SetBoolean(key string, value bool) bool
	GetBoolean(key string) bool
}

// Option is a functional option to set the DBus objects in tests.
type Option func(*Service) error

// Service is the implementation of the Keyboard service.
type Service struct {
	pb.UnimplementedPrivacyServiceServer
	locationSettings gSettingsSubset
}

// New returns a new instance of the Privacy service.
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

// GetLocationServices returns the status of the location services.
func (s *Service) GetLocationServices(ctx context.Context, req *emptypb.Empty) (*wrapperspb.BoolValue, error) {
	// Validate request
	if req == nil {
		return nil, status.Error(codes.InvalidArgument, "empty request")
	}

	enabled := s.locationSettings.GetBoolean("enabled")

	return &wrapperspb.BoolValue{Value: enabled}, nil
}

// EnableLocationServices enables the location services.
func (s *Service) EnableLocationServices(ctx context.Context, req *emptypb.Empty) (*emptypb.Empty, error) {
	// Validate request
	if req == nil {
		return nil, status.Error(codes.InvalidArgument, "empty request")
	}

	success := s.locationSettings.SetBoolean("enabled", true)
	if !success {
		return nil, status.Error(codes.Internal, "failed to enable location services")
	}

	return &emptypb.Empty{}, nil
}

// DisableLocationServices disables the location services.
func (s *Service) DisableLocationServices(ctx context.Context, req *emptypb.Empty) (*emptypb.Empty, error) {
	// Validate request
	if req == nil {
		return nil, status.Error(codes.InvalidArgument, "empty request")
	}

	success := s.locationSettings.SetBoolean("enabled", false)
	if !success {
		return nil, status.Error(codes.Internal, "failed to disable location services")
	}

	return &emptypb.Empty{}, nil
}
