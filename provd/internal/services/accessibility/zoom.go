package accessibility

import (
	"context"

	"google.golang.org/protobuf/types/known/emptypb"
	"google.golang.org/protobuf/types/known/wrapperspb"
)

// GetDesktopZoom returns the current state of desktop zoom.
func (s *Service) GetDesktopZoom(ctx context.Context, req *emptypb.Empty) (*wrapperspb.BoolValue, error) {
	return &wrapperspb.BoolValue{Value: s.applicationSettings.GetBoolean("screen-magnifier-enabled")}, nil
}

// EnableDesktopZoom enables desktop zoom.
func (s *Service) EnableDesktopZoom(ctx context.Context, req *emptypb.Empty) (*emptypb.Empty, error) {
	return setBooleanSettings(s.applicationSettings, "screen-magnifier-enabled", true, "failed to enable desktop zoom: %v")
}

// DisableDesktopZoom disables desktop zoom.
func (s *Service) DisableDesktopZoom(ctx context.Context, req *emptypb.Empty) (*emptypb.Empty, error) {
	return setBooleanSettings(s.applicationSettings, "screen-magnifier-enabled", false, "failed to disable desktop zoom: %v")
}
