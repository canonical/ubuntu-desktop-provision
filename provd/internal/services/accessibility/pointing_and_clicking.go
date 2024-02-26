package accessibility

import (
	"context"

	"google.golang.org/protobuf/types/known/emptypb"
	"google.golang.org/protobuf/types/known/wrapperspb"
)

// GetMouseKeys returns the current state of mouse keys.
func (s *Service) GetMouseKeys(ctx context.Context, req *emptypb.Empty) (*wrapperspb.BoolValue, error) {
	return &wrapperspb.BoolValue{Value: getBooleanSettings(s.keyboardSettings, "mousekeys-enable")}, nil
}

// EnableMouseKeys enables mouse keys.
func (s *Service) EnableMouseKeys(ctx context.Context, req *emptypb.Empty) (*emptypb.Empty, error) {
	return setBooleanSettings(s.keyboardSettings, "mousekeys-enable", true, "failed to enable mouse keys: %v")
}

// DisableMouseKeys disables mouse keys.
func (s *Service) DisableMouseKeys(ctx context.Context, req *emptypb.Empty) (*emptypb.Empty, error) {
	return setBooleanSettings(s.keyboardSettings, "mousekeys-enable", false, "failed to disable mouse keys: %v")
}
