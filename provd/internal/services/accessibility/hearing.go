package accessibility

import (
	"context"

	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/types/known/emptypb"
	"google.golang.org/protobuf/types/known/wrapperspb"
)

// GetVisualAlerts returns the current state of visual alerts.
func (s *Service) GetVisualAlerts(ctx context.Context, req *emptypb.Empty) (*wrapperspb.BoolValue, error) {
	// Validate request
	if req == nil {
		return nil, status.Error(codes.InvalidArgument, "empty request")
	}

	enabled := s.wmSettings.GetBoolean("visual-bell")

	return &wrapperspb.BoolValue{Value: enabled}, nil
}

// EnableVisualAlerts enables visual alerts.
func (s *Service) EnableVisualAlerts(ctx context.Context, req *emptypb.Empty) (*emptypb.Empty, error) {
	// Validate request
	if req == nil {
		return nil, status.Error(codes.InvalidArgument, "empty request")
	}

	success := s.wmSettings.SetBoolean("visual-bell", true)
	if !success {
		return nil, status.Error(codes.Internal, "failed to enable visual alerts")
	}

	return &emptypb.Empty{}, nil
}

// DisableVisualAlerts disables visual alerts.
func (s *Service) DisableVisualAlerts(ctx context.Context, req *emptypb.Empty) (*emptypb.Empty, error) {
	// Validate request
	if req == nil {
		return nil, status.Error(codes.InvalidArgument, "empty request")
	}

	success := s.wmSettings.SetBoolean("visual-bell", false)
	if !success {
		return nil, status.Error(codes.Internal, "failed to disable visual alerts")
	}

	return &emptypb.Empty{}, nil
}
