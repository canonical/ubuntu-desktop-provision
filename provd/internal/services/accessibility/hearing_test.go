package accessibility_test

import (
	"context"
	"testing"

	"github.com/canonical/ubuntu-desktop-provision/provd/internal/services/accessibility"
	"github.com/stretchr/testify/require"
	"google.golang.org/protobuf/types/known/emptypb"
)

func TestGetVisualAlerts(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		want bool
	}{
		"Return visual alerts are disabled": {},
		"Return visual alerts are enabled":  {want: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			// Prepare mocks
			opts := []accessibility.Option{
				accessibility.WithWMSettings(&gSettingsSubsetMock{currentBool: tc.want}),
			}

			// Setup test
			client := newAccessibilityClient(t, opts...)
			req := &emptypb.Empty{}
			resp, err := client.GetVisualAlerts(context.Background(), req)
			require.NoError(t, err, "GetVisualAlerts should not return an error")

			got := resp.GetValue()
			require.Equal(t, tc.want, got, "returned an unexpected response")
		})
	}
}

func TestEnableVisualAlerts(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		setBooleanError bool

		want    bool
		wantErr bool
	}{
		// Success case
		"Enable visual alerts": {want: true},

		// Error cases
		"Error when unable to update visual alerts": {setBooleanError: true, wantErr: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			// Prepare mocks
			opts := []accessibility.Option{
				accessibility.WithWMSettings(&gSettingsSubsetMock{setBooleanError: tc.setBooleanError, currentBool: !tc.want}),
			}

			// Setup test
			client := newAccessibilityClient(t, opts...)
			req := &emptypb.Empty{}
			resp, err := client.EnableVisualAlerts(context.Background(), req)

			// Evaluate function under test output
			if tc.wantErr {
				require.Error(t, err, "EnableVisualAlerts should return an error")
				require.Empty(t, resp, "EnableVisualAlerts should return a nil response")
				return
			}
			require.NoError(t, err, "EnableVisualAlerts should not return an error")

			r, err := client.GetVisualAlerts(context.Background(), &emptypb.Empty{})
			require.NoError(t, err, "GetVisualAlerts should not return an error")

			got := r.GetValue()
			require.Equal(t, tc.want, got, "returned an unexpected response")
		})
	}
}

func TestDisableVisualAlerts(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		setBooleanError bool

		want    bool
		wantErr bool
	}{
		// Success case
		"Disable visual alerts": {},

		// Error cases
		"Error when unable to update visual alerts": {wantErr: true, setBooleanError: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			// Prepare mocks
			opts := []accessibility.Option{
				accessibility.WithWMSettings(&gSettingsSubsetMock{setBooleanError: tc.setBooleanError, currentBool: !tc.want}),
			}

			// Setup test
			client := newAccessibilityClient(t, opts...)
			req := &emptypb.Empty{}
			resp, err := client.DisableVisualAlerts(context.Background(), req)

			// Evaluate function under test output
			if tc.wantErr {
				require.Error(t, err, "DisableVisualAlerts should return an error")
				require.Empty(t, resp, "DisableVisualAlerts should return a nil response")
				return
			}
			require.NoError(t, err, "DisableVisualAlerts should not return an error")

			r, err := client.GetVisualAlerts(context.Background(), &emptypb.Empty{})
			require.NoError(t, err, "GetVisualAlerts should not return an error")

			got := r.GetValue()
			require.Equal(t, tc.want, got, "returned an unexpected response")
		})
	}
}
