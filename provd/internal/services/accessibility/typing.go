package accessibility

import (
	"context"

	"google.golang.org/protobuf/types/known/emptypb"
	"google.golang.org/protobuf/types/known/wrapperspb"
)

// GetScreenKeyboard returns the current state of the screen keyboard.
func (s *Service) GetScreenKeyboard(ctx context.Context, req *emptypb.Empty) (*wrapperspb.BoolValue, error) {
	return &wrapperspb.BoolValue{Value: s.applicationSettings.GetBoolean("screen-keyboard-enabled")}, nil
}

// EnableScreenKeyboard enables the screen keyboard.
func (s *Service) EnableScreenKeyboard(ctx context.Context, req *emptypb.Empty) (*emptypb.Empty, error) {
	return setBooleanSettings(s.applicationSettings, "screen-keyboard-enabled", true, "failed to enable screen keyboard: %v")
}

// DisableScreenKeyboard disables the screen keyboard.
func (s *Service) DisableScreenKeyboard(ctx context.Context, req *emptypb.Empty) (*emptypb.Empty, error) {
	return setBooleanSettings(s.applicationSettings, "screen-keyboard-enabled", false, "failed to disable screen keyboard: %v")
}

// GetStickyKeys returns the current state of sticky keys.
func (s *Service) GetStickyKeys(ctx context.Context, req *emptypb.Empty) (*wrapperspb.BoolValue, error) {
	return &wrapperspb.BoolValue{Value: s.keyboardSettings.GetBoolean("stickykeys-enable")}, nil
}

// EnableStickyKeys enables sticky keys.
func (s *Service) EnableStickyKeys(ctx context.Context, req *emptypb.Empty) (*emptypb.Empty, error) {
	return setBooleanSettings(s.keyboardSettings, "stickykeys-enable", true, "failed to enable sticky keys: %v")
}

// DisableStickyKeys disables sticky keys.
func (s *Service) DisableStickyKeys(ctx context.Context, req *emptypb.Empty) (*emptypb.Empty, error) {
	return setBooleanSettings(s.keyboardSettings, "stickykeys-enable", false, "failed to disable sticky keys: %v")
}

// GetSlowKeys returns the current state of slow keys.
func (s *Service) GetSlowKeys(ctx context.Context, req *emptypb.Empty) (*wrapperspb.BoolValue, error) {
	return &wrapperspb.BoolValue{Value: s.keyboardSettings.GetBoolean("slowkeys-enable")}, nil
}

// EnableSlowKeys enables slow keys.
func (s *Service) EnableSlowKeys(ctx context.Context, req *emptypb.Empty) (*emptypb.Empty, error) {
	return setBooleanSettings(s.keyboardSettings, "slowkeys-enable", true, "failed to enable slow keys: %v")
}

// DisableSlowKeys disables slow keys.
func (s *Service) DisableSlowKeys(ctx context.Context, req *emptypb.Empty) (*emptypb.Empty, error) {
	return setBooleanSettings(s.keyboardSettings, "slowkeys-enable", false, "failed to disable slow keys: %v")
}
