package accessibility_test

import (
	"context"
	"testing"

	"github.com/canonical/ubuntu-desktop-provision/provd/internal/services/accessibility"
	"github.com/stretchr/testify/require"
	"google.golang.org/protobuf/types/known/emptypb"
)

func TestGetDesktopZoom(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		want bool
	}{
		"Return desktop zoom is disabled": {},
		"Return desktop zoom is enabled":  {want: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			// Prepare mocks
			opts := []accessibility.Option{
				accessibility.WithApplicationSettings(&gSettingsSubsetMock{currentBool: tc.want}),
			}

			// Setup test
			client := newAccessibilityClient(t, opts...)
			req := &emptypb.Empty{}
			resp, err := client.GetDesktopZoom(context.Background(), req)
			require.NoError(t, err, "GetDesktopZoom should not return an error")

			got := resp.GetValue()
			require.Equal(t, tc.want, got, "returned an unexpected response")
		})
	}
}

func TestEnableDesktopZoom(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		setBooleanError bool

		want    bool
		wantErr bool
	}{
		// Success case
		"Eable desktop zoom": {want: true},

		// Error cases
		"Error when unable to update state of desktop zoom": {setBooleanError: true, wantErr: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			// Prepare mocks
			opts := []accessibility.Option{
				accessibility.WithApplicationSettings(&gSettingsSubsetMock{setBooleanError: tc.setBooleanError, currentBool: !tc.want}),
			}

			// Setup test
			client := newAccessibilityClient(t, opts...)
			req := &emptypb.Empty{}
			resp, err := client.EnableDesktopZoom(context.Background(), req)

			// Evaluate function under test output
			if tc.wantErr {
				require.Error(t, err, "EnableDesktopZoom should return an error")
				require.Empty(t, resp, "EnableDesktopZoom should return a nil response")
				return
			}
			require.NoError(t, err, "EnableDesktopZoom should not return an error")

			r, err := client.GetDesktopZoom(context.Background(), &emptypb.Empty{})
			require.NoError(t, err, "GetDesktopZoom should not return an error")

			got := r.Value
			require.Equal(t, tc.want, got, "returned an unexpected response")
		})
	}
}

func TestDisableDesktopZoom(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		setBooleanError bool

		want    bool
		wantErr bool
	}{
		// Success case
		"Disable desktop zoom": {},

		// Error cases
		"Error when unable to update state of desktop zoom": {setBooleanError: true, wantErr: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			// Prepare mocks
			opts := []accessibility.Option{
				accessibility.WithApplicationSettings(&gSettingsSubsetMock{setBooleanError: tc.setBooleanError, currentBool: !tc.want}),
			}

			// Setup test
			client := newAccessibilityClient(t, opts...)
			req := &emptypb.Empty{}
			resp, err := client.DisableDesktopZoom(context.Background(), req)

			// Evaluate function under test output
			if tc.wantErr {
				require.Error(t, err, "DisableDesktopZoom should return an error")
				require.Empty(t, resp, "DisableDesktopZoom should return a nil response")
				return
			}
			require.NoError(t, err, "DisableDesktopZoom should not return an error")

			r, err := client.GetDesktopZoom(context.Background(), &emptypb.Empty{})
			require.NoError(t, err, "GetDesktopZoom should not return an error")

			got := r.Value
			require.Equal(t, tc.want, got, "returned an unexpected response")
		})
	}
}
