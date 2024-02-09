package accessibility

import (
	"context"

	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/types/known/emptypb"
	"google.golang.org/protobuf/types/known/wrapperspb"
)

// GetHighContrast returns the current state of high contrast.
func (s *Service) GetHighContrast(ctx context.Context, req *emptypb.Empty) (*wrapperspb.BoolValue, error) {
	// Validate request
	if req == nil {
		return nil, status.Error(codes.InvalidArgument, "empty request")
	}

	enabled := s.a11ySettings.GetBoolean("high-contrast")

	return &wrapperspb.BoolValue{Value: enabled}, nil
}

// EnableHighContrast enables high contrast.
func (s *Service) EnableHighContrast(ctx context.Context, req *emptypb.Empty) (*emptypb.Empty, error) {
	// Validate request
	if req == nil {
		return nil, status.Error(codes.InvalidArgument, "empty request")
	}

	success := s.a11ySettings.SetBoolean("high-contrast", true)
	if !success {
		return nil, status.Error(codes.Internal, "failed to enable high contrast")
	}

	return &emptypb.Empty{}, nil
}

// DisableHighContrast disables high contrast.
func (s *Service) DisableHighContrast(ctx context.Context, req *emptypb.Empty) (*emptypb.Empty, error) {
	// Validate request
	if req == nil {
		return nil, status.Error(codes.InvalidArgument, "empty request")
	}

	success := s.a11ySettings.SetBoolean("high-contrast", false)
	if !success {
		return nil, status.Error(codes.Internal, "failed to disable high contrast")
	}

	return &emptypb.Empty{}, nil
}

// GetReducedMotion returns the current state of reduced motion.
func (s *Service) GetReducedMotion(ctx context.Context, req *emptypb.Empty) (*wrapperspb.BoolValue, error) {
	// Validate request
	if req == nil {
		return nil, status.Error(codes.InvalidArgument, "empty request")
	}

	enabled := s.interfaceSettings.GetBoolean("enable-animations")

	return &wrapperspb.BoolValue{Value: !enabled}, nil
}

// EnableReducedMotion enables reduced motion.
func (s *Service) EnableReducedMotion(ctx context.Context, req *emptypb.Empty) (*emptypb.Empty, error) {
	// Validate request
	if req == nil {
		return nil, status.Error(codes.InvalidArgument, "empty request")
	}

	success := s.interfaceSettings.SetBoolean("enable-animations", false)
	if !success {
		return nil, status.Error(codes.Internal, "failed to enable reduced motion")
	}

	return &emptypb.Empty{}, nil
}

// DisableReducedMotion disables reduced motion.
func (s *Service) DisableReducedMotion(ctx context.Context, req *emptypb.Empty) (*emptypb.Empty, error) {
	// Validate request
	if req == nil {
		return nil, status.Error(codes.InvalidArgument, "empty request")
	}

	success := s.interfaceSettings.SetBoolean("enable-animations", true)
	if !success {
		return nil, status.Error(codes.Internal, "failed to disable reduced motion")
	}

	return &emptypb.Empty{}, nil
}

const (
	textScalingDefault = 1.0
	textScalingLarge   = 1.25
)

// GetLargeText returns the current state of large text.
func (s *Service) GetLargeText(ctx context.Context, req *emptypb.Empty) (*wrapperspb.BoolValue, error) {
	// Validate request
	if req == nil {
		return nil, status.Error(codes.InvalidArgument, "empty request")
	}

	scaling := s.interfaceSettings.GetDouble("text-scaling-factor")

	return &wrapperspb.BoolValue{Value: scaling == textScalingLarge}, nil
}

// EnableLargeText enables large text.
func (s *Service) EnableLargeText(ctx context.Context, req *emptypb.Empty) (*emptypb.Empty, error) {
	// Validate request
	if req == nil {
		return nil, status.Error(codes.InvalidArgument, "empty request")
	}

	success := s.interfaceSettings.SetDouble("text-scaling-factor", textScalingLarge)
	if !success {
		return nil, status.Error(codes.Internal, "failed to enable large text")
	}

	return &emptypb.Empty{}, nil
}

// DisableLargeText disables large text.
func (s *Service) DisableLargeText(ctx context.Context, req *emptypb.Empty) (*emptypb.Empty, error) {
	// Validate request
	if req == nil {
		return nil, status.Error(codes.InvalidArgument, "empty request")
	}

	success := s.interfaceSettings.SetDouble("text-scaling-factor", textScalingDefault)
	if !success {
		return nil, status.Error(codes.Internal, "failed to disable large text")
	}

	return &emptypb.Empty{}, nil
}

// GetScreenReader returns the current state of screen reader.
func (s *Service) GetScreenReader(ctx context.Context, req *emptypb.Empty) (*wrapperspb.BoolValue, error) {
	// Validate request
	if req == nil {
		return nil, status.Error(codes.InvalidArgument, "empty request")
	}

	enabled := s.applicationSettings.GetBoolean("screen-reader-enabled")

	return &wrapperspb.BoolValue{Value: enabled}, nil
}

// EnableScreenReader enables screen reader.
func (s *Service) EnableScreenReader(ctx context.Context, req *emptypb.Empty) (*emptypb.Empty, error) {
	// Validate request
	if req == nil {
		return nil, status.Error(codes.InvalidArgument, "empty request")
	}

	success := s.applicationSettings.SetBoolean("screen-reader-enabled", true)
	if !success {
		return nil, status.Error(codes.Internal, "failed to enable screen reader")
	}

	return &emptypb.Empty{}, nil
}

// DisableScreenReader disables screen reader.
func (s *Service) DisableScreenReader(ctx context.Context, req *emptypb.Empty) (*emptypb.Empty, error) {
	// Validate request
	if req == nil {
		return nil, status.Error(codes.InvalidArgument, "empty request")
	}

	success := s.applicationSettings.SetBoolean("screen-reader-enabled", false)
	if !success {
		return nil, status.Error(codes.Internal, "failed to disable screen reader")
	}

	return &emptypb.Empty{}, nil
}
