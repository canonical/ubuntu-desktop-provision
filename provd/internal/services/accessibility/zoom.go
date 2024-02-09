package accessibility

import (
	"context"

	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/types/known/emptypb"
	"google.golang.org/protobuf/types/known/wrapperspb"
)

// GetDesktopZoom returns the current state of desktop zoom.
func (s *Service) GetDesktopZoom(ctx context.Context, req *emptypb.Empty) (*wrapperspb.BoolValue, error) {
	// Validate request
	if req == nil {
		return nil, status.Error(codes.InvalidArgument, "empty request")
	}

	enabled := s.applicationSettings.GetBoolean("screen-magnifier-enabled")

	return &wrapperspb.BoolValue{Value: enabled}, nil
}

// EnableDesktopZoom enables desktop zoom.
func (s *Service) EnableDesktopZoom(ctx context.Context, req *emptypb.Empty) (*emptypb.Empty, error) {
	// Validate request
	if req == nil {
		return nil, status.Error(codes.InvalidArgument, "empty request")
	}

	success := s.applicationSettings.SetBoolean("screen-magnifier-enabled", true)
	if !success {
		return nil, status.Error(codes.Internal, "failed to enable desktop zoom")
	}

	return &emptypb.Empty{}, nil
}

// DisableDesktopZoom disables desktop zoom.
func (s *Service) DisableDesktopZoom(ctx context.Context, req *emptypb.Empty) (*emptypb.Empty, error) {
	// Validate request
	if req == nil {
		return nil, status.Error(codes.InvalidArgument, "empty request")
	}

	success := s.applicationSettings.SetBoolean("screen-magnifier-enabled", false)
	if !success {
		return nil, status.Error(codes.Internal, "failed to disable desktop zoom")
	}

	return &emptypb.Empty{}, nil
}
