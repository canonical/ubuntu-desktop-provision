package accessibility_test

import (
	"context"
	"testing"

	"github.com/canonical/ubuntu-desktop-provision/provd/internal/services/accessibility"
	"github.com/stretchr/testify/require"
	"google.golang.org/protobuf/types/known/emptypb"
)

func TestGetMouseKeys(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		// Error flags
		getBooleanError bool

		// Wants
		wantErr  bool
		wantTrue bool
	}{
		// Success case
		"Return mouse keys are disabled": {},
		"Return mouse keys are enabled":  {wantTrue: true},

		// Error cases
		"Error when can't get state of mouse keys": {getBooleanError: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			// Prepare mocks
			opts := []accessibility.Option{
				accessibility.WithKeyboardSettings(&gSettingsSubsetMock{getBooleanError: tc.getBooleanError, currentBool: tc.wantTrue}),
			}

			// Setup test
			client := newAccessibilityClient(t, opts...)
			req := &emptypb.Empty{}
			resp, err := client.GetMouseKeys(context.Background(), req)

			// Evaluate function under test output
			if tc.wantErr {
				require.Error(t, err, "GetMouseKeys should return an error")
				require.Empty(t, resp, "GetMouseKeys should return a nil response")
				return
			}
			require.NoError(t, err, "GetMouseKeys should not return an error")

			got := resp.GetValue()
			require.Equal(t, tc.wantTrue, got, "returned an unexpected response")
		})
	}
}

func TestEnableMouseKeys(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		setBooleanError bool

		want    bool
		wantErr bool
	}{
		// Success case
		"Enable mouse keys": {want: true},

		// Error cases
		"Error when can't update mouse keys": {setBooleanError: true, wantErr: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()
			// Prepare mocks
			opts := []accessibility.Option{
				accessibility.WithKeyboardSettings(&gSettingsSubsetMock{setBooleanError: tc.setBooleanError, currentBool: !tc.want}),
			}

			// Setup test
			client := newAccessibilityClient(t, opts...)
			req := &emptypb.Empty{}
			resp, err := client.EnableMouseKeys(context.Background(), req)

			// Evaluate function under test output
			if tc.wantErr {
				require.Error(t, err, "EnableMouseKeys should return an error")
				require.Empty(t, resp, "EnableMouseKeys should return a nil response")
				return
			}
			require.NoError(t, err, "EnableMouseKeys should not return an error")

			r, err := client.GetMouseKeys(context.Background(), &emptypb.Empty{})
			require.NoError(t, err, "GetMouseKeys should not return an error")

			got := r.Value
			require.Equal(t, tc.want, got, "returned an unexpected response")
		})
	}
}

func TestDisableMouseKeys(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		setBooleanError bool

		want    bool
		wantErr bool
	}{
		// Success case
		"Disable mouse keys": {want: false},

		// Error cases
		"Error when unable to update mouse keys": {setBooleanError: true, wantErr: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()
			// Prepare mocks
			opts := []accessibility.Option{
				accessibility.WithKeyboardSettings(&gSettingsSubsetMock{setBooleanError: tc.setBooleanError, currentBool: !tc.want}),
			}

			// Setup test
			client := newAccessibilityClient(t, opts...)
			req := &emptypb.Empty{}
			resp, err := client.DisableMouseKeys(context.Background(), req)

			// Evaluate function under test output
			if tc.wantErr {
				require.Error(t, err, "DisableMouseKeys should return an error")
				require.Empty(t, resp, "DisableMouseKeys should return a nil response")
				return
			}
			require.NoError(t, err, "DisableMouseKeys should not return an error")

			r, err := client.GetMouseKeys(context.Background(), &emptypb.Empty{})
			require.NoError(t, err, "GetMouseKeys should not return an error")

			got := r.Value
			require.Equal(t, tc.want, got, "returned an unexpected response")
		})
	}
}
