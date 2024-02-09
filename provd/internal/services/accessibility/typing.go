package accessibility

import (
	"context"

	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/types/known/emptypb"
	"google.golang.org/protobuf/types/known/wrapperspb"
)

// GetScreenKeyboard returns the current state of the screen keyboard.
func (s *Service) GetScreenKeyboard(ctx context.Context, req *emptypb.Empty) (*wrapperspb.BoolValue, error) {
	// Validate request
	if req == nil {
		return nil, status.Error(codes.InvalidArgument, "empty request")
	}

	enabled := s.applicationSettings.GetBoolean("screen-keyboard-enabled")

	return &wrapperspb.BoolValue{Value: enabled}, nil
}

// EnableScreenKeyboard enables the screen keyboard.
func (s *Service) EnableScreenKeyboard(ctx context.Context, req *emptypb.Empty) (*emptypb.Empty, error) {
	// Validate request
	if req == nil {
		return nil, status.Error(codes.InvalidArgument, "empty request")
	}

	success := s.applicationSettings.SetBoolean("screen-keyboard-enabled", true)
	if !success {
		return nil, status.Error(codes.Internal, "failed to enable screen keyboard")
	}

	return &emptypb.Empty{}, nil
}

// DisableScreenKeyboard disables the screen keyboard.
func (s *Service) DisableScreenKeyboard(ctx context.Context, req *emptypb.Empty) (*emptypb.Empty, error) {
	// Validate request
	if req == nil {
		return nil, status.Error(codes.InvalidArgument, "empty request")
	}

	success := s.applicationSettings.SetBoolean("screen-keyboard-enabled", false)
	if !success {
		return nil, status.Error(codes.Internal, "failed to disable screen keyboard")
	}

	return &emptypb.Empty{}, nil
}

// GetStickyKeys returns the current state of sticky keys.
func (s *Service) GetStickyKeys(ctx context.Context, req *emptypb.Empty) (*wrapperspb.BoolValue, error) {
	// Validate request
	if req == nil {
		return nil, status.Error(codes.InvalidArgument, "empty request")
	}

	enabled := s.keyboardSettings.GetBoolean("stickykeys-enable")

	return &wrapperspb.BoolValue{Value: enabled}, nil
}

// EnableStickyKeys enables sticky keys.
func (s *Service) EnableStickyKeys(ctx context.Context, req *emptypb.Empty) (*emptypb.Empty, error) {
	// Validate request
	if req == nil {
		return nil, status.Error(codes.InvalidArgument, "empty request")
	}

	success := s.keyboardSettings.SetBoolean("stickykeys-enable", true)
	if !success {
		return nil, status.Error(codes.Internal, "failed to enable sticky keys")
	}

	return &emptypb.Empty{}, nil
}

// DisableStickyKeys disables sticky keys.
func (s *Service) DisableStickyKeys(ctx context.Context, req *emptypb.Empty) (*emptypb.Empty, error) {
	// Validate request
	if req == nil {
		return nil, status.Error(codes.InvalidArgument, "empty request")
	}

	success := s.keyboardSettings.SetBoolean("stickykeys-enable", false)
	if !success {
		return nil, status.Error(codes.Internal, "failed to disable sticky keys")
	}

	return &emptypb.Empty{}, nil
}

// GetSlowKeys returns the current state of slow keys.
func (s *Service) GetSlowKeys(ctx context.Context, req *emptypb.Empty) (*wrapperspb.BoolValue, error) {
	// Validate request
	if req == nil {
		return nil, status.Error(codes.InvalidArgument, "empty request")
	}

	enabled := s.keyboardSettings.GetBoolean("slowkeys-enable")

	return &wrapperspb.BoolValue{Value: enabled}, nil
}

// EnableSlowKeys enables slow keys.
func (s *Service) EnableSlowKeys(ctx context.Context, req *emptypb.Empty) (*emptypb.Empty, error) {
	// Validate request
	if req == nil {
		return nil, status.Error(codes.InvalidArgument, "empty request")
	}

	success := s.keyboardSettings.SetBoolean("slowkeys-enable", true)
	if !success {
		return nil, status.Error(codes.Internal, "failed to enable slow keys")
	}

	return &emptypb.Empty{}, nil
}

// DisableSlowKeys disables slow keys.
func (s *Service) DisableSlowKeys(ctx context.Context, req *emptypb.Empty) (*emptypb.Empty, error) {
	// Validate request
	if req == nil {
		return nil, status.Error(codes.InvalidArgument, "empty request")
	}

	success := s.keyboardSettings.SetBoolean("slowkeys-enable", false)
	if !success {
		return nil, status.Error(codes.Internal, "failed to disable slow keys")
	}

	return &emptypb.Empty{}, nil
}
