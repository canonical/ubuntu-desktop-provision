package accessibility_test

import (
	"context"
	"testing"

	"github.com/canonical/ubuntu-desktop-provision/provd/internal/services/accessibility"
	"github.com/stretchr/testify/require"
	"google.golang.org/protobuf/types/known/emptypb"
)

func TestGetScreenKeyboard(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		want bool
	}{
		"Return screen keyboard is disabled": {},
		"Return screen keyboard is enabled":  {want: true},
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
			resp, err := client.GetScreenKeyboard(context.Background(), req)
			require.NoError(t, err, "GetScreenKeyboard should not return an error")

			got := resp.GetValue()
			require.Equal(t, tc.want, got, "returned an unexpected response")
		})
	}
}

func TestEnableScreenKeyboard(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		setBooleanError bool

		want    bool
		wantErr bool
	}{
		// Success case
		"Enable screen keyboard": {want: true},

		// Error cases
		"Error when unable to update screen keyboard": {setBooleanError: true, wantErr: true},
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
			resp, err := client.EnableScreenKeyboard(context.Background(), req)

			// Evaluate function under test output
			if tc.wantErr {
				require.Error(t, err, "EnableScreenKeyboard should return an error")
				require.Empty(t, resp, "EnableScreenKeyboard should return a nil response")
				return
			}
			require.NoError(t, err, "EnableScreenKeyboard should not return an error")

			r, err := client.GetScreenKeyboard(context.Background(), &emptypb.Empty{})
			require.NoError(t, err, "GetScreenKeyboard should not return an error")

			got := r.Value
			require.Equal(t, tc.want, got, "returned an unexpected response")
		})
	}
}

func TestDisableScreenKeyboard(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		setBooleanError bool

		want    bool
		wantErr bool
	}{
		// Success case
		"Disable screen keyboard": {},

		// Error cases
		"Error when unable to update screen keyboard": {setBooleanError: true, wantErr: true},
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
			resp, err := client.DisableScreenKeyboard(context.Background(), req)

			// Evaluate function under test output
			if tc.wantErr {
				require.Error(t, err, "DisableScreenKeyboard should return an error")
				require.Empty(t, resp, "DisableScreenKeyboard should return a nil response")
				return
			}
			require.NoError(t, err, "DisableScreenKeyboard should not return an error")

			r, err := client.GetScreenKeyboard(context.Background(), &emptypb.Empty{})
			require.NoError(t, err, "GetScreenKeyboard should not return an error")

			got := r.Value
			require.Equal(t, tc.want, got, "returned an unexpected response")
		})
	}
}

func TestGetStickyKeys(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		want bool
	}{
		"Return sticky keys are disabled": {},
		"Return sticky keys are enabled":  {want: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			// Prepare mocks
			opts := []accessibility.Option{
				accessibility.WithKeyboardSettings(&gSettingsSubsetMock{currentBool: tc.want}),
			}

			// Setup test
			client := newAccessibilityClient(t, opts...)
			req := &emptypb.Empty{}
			resp, err := client.GetStickyKeys(context.Background(), req)
			require.NoError(t, err, "GetStickyKeys should not return an error")

			got := resp.GetValue()
			require.Equal(t, tc.want, got, "returned an unexpected response")
		})
	}
}

func TestEnableStickyKeys(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		setBooleanError bool

		want    bool
		wantErr bool
	}{
		// Success case
		"Enable sticky keys": {want: true},

		// Error cases
		"Error when unable to update sticky keys": {setBooleanError: true, wantErr: true},
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
			resp, err := client.EnableStickyKeys(context.Background(), req)

			// Evaluate function under test output
			if tc.wantErr {
				require.Error(t, err, "EnableStickyKeys should return an error")
				require.Empty(t, resp, "EnableStickyKeys should return a nil response")
				return
			}
			require.NoError(t, err, "EnableStickyKeys should not return an error")

			r, err := client.GetStickyKeys(context.Background(), &emptypb.Empty{})
			require.NoError(t, err, "GetStickyKeys should not return an error")

			got := r.Value
			require.Equal(t, tc.want, got, "returned an unexpected response")
		})
	}
}

func TestDisableStickyKeys(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		setBooleanError bool

		want    bool
		wantErr bool
	}{
		// Success case
		"Disable sticky keys": {want: false},

		// Error cases
		"Error when unable to update sticky keys": {setBooleanError: true, wantErr: true},
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
			resp, err := client.DisableStickyKeys(context.Background(), req)

			// Evaluate function under test output
			if tc.wantErr {
				require.Error(t, err, "DisableStickyKeys should return an error")
				require.Empty(t, resp, "DisableStickyKeys should return a nil response")
				return
			}
			require.NoError(t, err, "DisableStickyKeys should not return an error")

			r, err := client.GetStickyKeys(context.Background(), &emptypb.Empty{})
			require.NoError(t, err, "GetStickyKeys should not return an error")

			got := r.Value
			require.Equal(t, tc.want, got, "returned an unexpected response")
		})
	}
}

func TestGetSlowKeys(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		want bool
	}{
		"Return slow keys are disabled": {},
		"Return slow keys are enabled":  {want: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			// Prepare mocks
			opts := []accessibility.Option{
				accessibility.WithKeyboardSettings(&gSettingsSubsetMock{currentBool: tc.want}),
			}

			// Setup test
			client := newAccessibilityClient(t, opts...)
			req := &emptypb.Empty{}
			resp, err := client.GetSlowKeys(context.Background(), req)
			require.NoError(t, err, "GetSlowKeys should not return an error")

			got := resp.GetValue()
			require.Equal(t, tc.want, got, "returned an unexpected response")
		})
	}
}

func TestEnableSlowKeys(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		setBooleanError bool

		want    bool
		wantErr bool
	}{
		// Success case
		"Enable slow keys": {want: true},

		// Error cases
		"Error when unable to update state of slow keys": {setBooleanError: true, wantErr: true},
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
			resp, err := client.EnableSlowKeys(context.Background(), req)

			// Evaluate function under test output
			if tc.wantErr {
				require.Error(t, err, "EnableSlowKeys should return an error")
				require.Empty(t, resp, "EnableSlowKeys should return a nil response")
				return
			}
			require.NoError(t, err, "EnableSlowKeys should not return an error")

			r, err := client.GetSlowKeys(context.Background(), &emptypb.Empty{})
			require.NoError(t, err, "GetSlowKeys should not return an error")

			got := r.Value
			require.Equal(t, tc.want, got, "returned an unexpected response")
		})
	}
}

func TestDisableSlowKeys(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		setBooleanError bool

		want    bool
		wantErr bool
	}{
		// Success case
		"Disable slow keys": {want: false},

		// Error cases
		"Error unable to updagte slow keys": {setBooleanError: true, wantErr: true},
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
			resp, err := client.DisableSlowKeys(context.Background(), req)

			// Evaluate function under test output
			if tc.wantErr {
				require.Error(t, err, "DisableSlowKeys should return an error")
				require.Empty(t, resp, "DisableSlowKeys should return a nil response")
				return
			}
			require.NoError(t, err, "DisableSlowKeys should not return an error")

			r, err := client.GetSlowKeys(context.Background(), &emptypb.Empty{})
			require.NoError(t, err, "GetSlowKeys should not return an error")

			got := r.Value
			require.Equal(t, tc.want, got, "returned an unexpected response")
		})
	}
}
