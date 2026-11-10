package accessibility

import (
	"context"

	"google.golang.org/protobuf/types/known/emptypb"
	"google.golang.org/protobuf/types/known/wrapperspb"
)

// GetVisualAlerts returns the current state of visual alerts.
func (s *Service) GetVisualAlerts(ctx context.Context, req *emptypb.Empty) (*wrapperspb.BoolValue, error) {
	return &wrapperspb.BoolValue{Value: getBooleanSettings(s.wmSettings, "visual-bell")}, nil
}

// EnableVisualAlerts enables visual alerts.
func (s *Service) EnableVisualAlerts(ctx context.Context, req *emptypb.Empty) (*emptypb.Empty, error) {
	return setBooleanSettings(s.wmSettings, "visual-bell", true, "failed to enable visual alerts %v")
}

// DisableVisualAlerts disables visual alerts.
func (s *Service) DisableVisualAlerts(ctx context.Context, req *emptypb.Empty) (*emptypb.Empty, error) {
	return setBooleanSettings(s.wmSettings, "visual-bell", false, "failed to disable visual alerts %v")
}
