package accessibility

import (
	"context"

	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/types/known/emptypb"
	"google.golang.org/protobuf/types/known/wrapperspb"
)

// GetMouseKeys returns the current state of mouse keys.
func (s *Service) GetMouseKeys(ctx context.Context, req *emptypb.Empty) (*wrapperspb.BoolValue, error) {
	// Validate request
	if req == nil {
		return nil, status.Error(codes.InvalidArgument, "empty request")
	}

	enabled := s.keyboardSettings.GetBoolean("mousekeys-enable")

	return &wrapperspb.BoolValue{Value: enabled}, nil
}

// EnableMouseKeys enables mouse keys.
func (s *Service) EnableMouseKeys(ctx context.Context, req *emptypb.Empty) (*emptypb.Empty, error) {
	// Validate request
	if req == nil {
		return nil, status.Error(codes.InvalidArgument, "empty request")
	}

	success := s.keyboardSettings.SetBoolean("mousekeys-enable", true)
	if !success {
		return nil, status.Error(codes.Internal, "failed to enable mouse keys")
	}

	return &emptypb.Empty{}, nil
}

// DisableMouseKeys disables mouse keys.
func (s *Service) DisableMouseKeys(ctx context.Context, req *emptypb.Empty) (*emptypb.Empty, error) {
	// Validate request
	if req == nil {
		return nil, status.Error(codes.InvalidArgument, "empty request")
	}

	success := s.keyboardSettings.SetBoolean("mousekeys-enable", false)
	if !success {
		return nil, status.Error(codes.Internal, "failed to disable mouse keys")
	}

	return &emptypb.Empty{}, nil
}
