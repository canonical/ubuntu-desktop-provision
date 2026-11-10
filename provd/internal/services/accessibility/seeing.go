package accessibility

import (
	"context"

	"google.golang.org/protobuf/types/known/emptypb"
	"google.golang.org/protobuf/types/known/wrapperspb"
)

// GetHighContrast returns the current state of high contrast.
func (s *Service) GetHighContrast(ctx context.Context, req *emptypb.Empty) (*wrapperspb.BoolValue, error) {
	return &wrapperspb.BoolValue{Value: s.a11ySettings.GetBoolean("high-contrast")}, nil
}

// EnableHighContrast enables high contrast.
func (s *Service) EnableHighContrast(ctx context.Context, req *emptypb.Empty) (*emptypb.Empty, error) {
	return setBooleanSettings(s.a11ySettings, "high-contrast", true, "failed to enable high contrast: %v")
}

// DisableHighContrast disables high contrast.
func (s *Service) DisableHighContrast(ctx context.Context, req *emptypb.Empty) (*emptypb.Empty, error) {
	return setBooleanSettings(s.a11ySettings, "high-contrast", false, "failed to disable high contrast: %v")
}

// GetReducedMotion returns the current state of reduced motion.
func (s *Service) GetReducedMotion(ctx context.Context, req *emptypb.Empty) (*wrapperspb.BoolValue, error) {
	return &wrapperspb.BoolValue{Value: !getBooleanSettings(s.interfaceSettings, "enable-animations")}, nil
}

// EnableReducedMotion enables reduced motion.
func (s *Service) EnableReducedMotion(ctx context.Context, req *emptypb.Empty) (*emptypb.Empty, error) {
	return setBooleanSettings(s.interfaceSettings, "enable-animations", false, "failed to enable reduced motion: %v")
}

// DisableReducedMotion disables reduced motion.
func (s *Service) DisableReducedMotion(ctx context.Context, req *emptypb.Empty) (*emptypb.Empty, error) {
	return setBooleanSettings(s.interfaceSettings, "enable-animations", true, "failed to disable reduced motion: %v")
}

const (
	textScalingDefault = 1.0
	textScalingLarge   = 1.25
)

// GetLargeText returns the current state of large text.
func (s *Service) GetLargeText(ctx context.Context, req *emptypb.Empty) (*wrapperspb.BoolValue, error) {
	return &wrapperspb.BoolValue{Value: getDoubleSettings(s.interfaceSettings, "text-scaling-factor") == textScalingLarge}, nil
}

// EnableLargeText enables large text.
func (s *Service) EnableLargeText(ctx context.Context, req *emptypb.Empty) (*emptypb.Empty, error) {
	return setDoubleSettings(s.interfaceSettings, "text-scaling-factor", textScalingLarge, "failed to enable large text: %v")
}

// DisableLargeText disables large text.
func (s *Service) DisableLargeText(ctx context.Context, req *emptypb.Empty) (*emptypb.Empty, error) {
	return setDoubleSettings(s.interfaceSettings, "text-scaling-factor", textScalingDefault, "failed to disable large text: %v")
}

// GetScreenReader returns the current state of screen reader.
func (s *Service) GetScreenReader(ctx context.Context, req *emptypb.Empty) (*wrapperspb.BoolValue, error) {
	return &wrapperspb.BoolValue{Value: getBooleanSettings(s.applicationSettings, "screen-reader-enabled")}, nil
}

// EnableScreenReader enables screen reader.
func (s *Service) EnableScreenReader(ctx context.Context, req *emptypb.Empty) (*emptypb.Empty, error) {
	return setBooleanSettings(s.applicationSettings, "screen-reader-enabled", true, "failed to enable screen reader: %v")
}

// DisableScreenReader disables screen reader.
func (s *Service) DisableScreenReader(ctx context.Context, req *emptypb.Empty) (*emptypb.Empty, error) {
	return setBooleanSettings(s.applicationSettings, "screen-reader-enabled", false, "failed to disable screen reader: %v")
}
