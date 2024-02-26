package accessibility_test

import (
	"context"
	"testing"

	"github.com/canonical/ubuntu-desktop-provision/provd/internal/services/accessibility"
	"github.com/stretchr/testify/require"
	"google.golang.org/protobuf/types/known/emptypb"
)

func TestGetHighContrast(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		// Error flags
		getBooleanError bool

		// Wants
		wantErr  bool
		wantTrue bool
	}{
		// Success case
		"Return high contrast is disabled": {},
		"Return high contrast is enabled":  {wantTrue: true},

		// Error cases
		"Error when can't get state of high contrast": {getBooleanError: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			// Prepare mocks
			opts := []accessibility.Option{
				accessibility.WithA11ySettings(&gSettingsSubsetMock{getBooleanError: tc.getBooleanError, currentBool: tc.wantTrue}),
			}

			// Setup test
			client := newAccessibilityClient(t, opts...)
			req := &emptypb.Empty{}

			// Get function under test output
			resp, respErr := client.GetHighContrast(context.Background(), req)
			if tc.wantErr {
				require.Error(t, respErr, "GetHighContrast should return an error")
				require.Empty(t, resp, "GetHighContrast should return a nil response")
				return
			}
			require.NoError(t, respErr, "GetHighcontrast should not return an error")

			got := resp.GetValue()
			want := tc.wantTrue
			require.Equal(t, want, got, "returned an unexpected response")
		})
	}
}

func TestEnableHighContrast(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		setBooleanError bool

		want    bool
		wantErr bool
	}{
		// Success case
		"Enable high contrast": {want: true},

		// Error cases
		"Error when can't update high contrast": {setBooleanError: true, wantErr: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			// Prepare mocks
			opts := []accessibility.Option{
				accessibility.WithA11ySettings(&gSettingsSubsetMock{setBooleanError: tc.setBooleanError, currentBool: !tc.want}),
			}

			// Setup test
			client := newAccessibilityClient(t, opts...)
			req := &emptypb.Empty{}

			// Get function under test output
			resp, respErr := client.EnableHighContrast(context.Background(), req)

			if tc.wantErr {
				require.Error(t, respErr, "EnableHighContrast should return an error")
				require.Empty(t, resp, "EnableHighContrast should return a nil response")
				return
			}
			require.NoError(t, respErr, "DisableHighcontrast should not return an error")

			r, err := client.GetHighContrast(context.Background(), &emptypb.Empty{})
			require.NoError(t, err, "GetHighContrast should not return an error")

			got := r.Value
			want := tc.want
			require.Equal(t, want, got, "returned an unexpected response")
		})
	}
}

func TestDisableHighContrast(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		setBooleanError bool

		want    bool
		wantErr bool
	}{
		// Success case
		"Disable high contrast": {want: false},

		// Error cases
		"Error when can't update high contrast": {setBooleanError: true, wantErr: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			// Prepare mocks
			opts := []accessibility.Option{
				accessibility.WithA11ySettings(&gSettingsSubsetMock{setBooleanError: tc.setBooleanError, currentBool: !tc.want}),
			}

			// Setup test
			client := newAccessibilityClient(t, opts...)
			req := &emptypb.Empty{}

			// Get function under test output
			resp, respErr := client.DisableHighContrast(context.Background(), req)

			// Evaluate function under test output
			if tc.wantErr {
				require.Error(t, respErr, "DisableHighContrast should return an error")
				require.Empty(t, resp, "DisableHighContrast should return a nil response")
				return
			}
			require.NoError(t, respErr, "DisableHighcontrast should not return an error")

			r, err := client.GetHighContrast(context.Background(), &emptypb.Empty{})
			require.NoError(t, err, "GetHighContrast should not return an error")

			got := r.Value
			want := tc.want
			require.Equal(t, want, got, "returned an unexpected response")
		})
	}
}

func TestGetReducedMotion(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		// Error flags
		getBooleanError bool

		// wants
		wantErr  bool
		wantTrue bool
	}{
		// Success case
		"Return reduced motion is disabled": {},
		"Return reduced motion is enabled":  {wantTrue: true},

		// Error cases
		"Error when unable to get state of reduced motion": {getBooleanError: true, wantTrue: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			// Prepare mocks
			opts := []accessibility.Option{
				accessibility.WithInterfaceSettings(&gSettingsSubsetMock{getBooleanError: tc.getBooleanError, currentBool: !tc.wantTrue}),
			}

			// Setup test
			client := newAccessibilityClient(t, opts...)
			req := &emptypb.Empty{}

			// Get function under test output
			resp, respErr := client.GetReducedMotion(context.Background(), req)

			// Evaluate function under test output
			if tc.wantErr {
				require.Error(t, respErr, "GetReducedMotion should return an error")
				require.Empty(t, resp, "GetReducedMotion should return a nil response")
				return
			}
			require.NoError(t, respErr, "GetReducedMotion should not return an error")

			got := resp.GetValue()
			want := tc.wantTrue
			require.Equal(t, want, got, "returned an unexpected response")
		})
	}
}

func TestEnableReducedMotion(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		setBooleanError bool

		want    bool
		wantErr bool
	}{
		// Success case
		"Enable reduced motion": {want: true},

		// Error cases
		"Error when unable to update reduced motion": {setBooleanError: true, wantErr: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			// Prepare mocks
			opts := []accessibility.Option{
				accessibility.WithInterfaceSettings(&gSettingsSubsetMock{setBooleanError: tc.setBooleanError, currentBool: !tc.want}),
			}

			// Setup test
			client := newAccessibilityClient(t, opts...)
			req := &emptypb.Empty{}

			// Get function under test output
			resp, respErr := client.EnableReducedMotion(context.Background(), req)

			// Evaluate function under test output
			if tc.wantErr {
				require.Error(t, respErr, "EnableReducedMotion should return an error")
				require.Empty(t, resp, "EnableReducedMotion should return a nil response")
				return
			}
			require.NoError(t, respErr, "EnableReducedMotion should not return an error")

			r, err := client.GetReducedMotion(context.Background(), &emptypb.Empty{})
			require.NoError(t, err, "GetReducedMotion should not return an error")

			got := r.Value
			want := tc.want
			require.Equal(t, want, got, "returned an unexpected response")
		})
	}
}

func TestDisableReducedMotion(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		setBooleanError bool

		want    bool
		wantErr bool
	}{
		// Success case
		"Disable reduced motion": {want: false},

		// Error cases
		"Error when unable to update state of reduced motion": {setBooleanError: true, wantErr: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			// Prepare mocks
			opts := []accessibility.Option{
				accessibility.WithInterfaceSettings(&gSettingsSubsetMock{setBooleanError: tc.setBooleanError, currentBool: !tc.want}),
			}

			// Setup test
			client := newAccessibilityClient(t, opts...)
			req := &emptypb.Empty{}

			// Get function under test output
			resp, err := client.DisableReducedMotion(context.Background(), req)

			if tc.wantErr {
				require.Error(t, err, "DisableReducedMotion should return an error")
				require.Empty(t, resp, "DisableReducedMotion should return a nil response")
				return
			}
			require.NoError(t, err, "DisableReducedMotion should not return an error")

			r, err := client.GetReducedMotion(context.Background(), &emptypb.Empty{})
			require.NoError(t, err, "GetReducedMotion should not return an error")

			got := r.Value
			want := tc.want
			require.Equal(t, want, got, "returned an unexpected response")
		})
	}
}

func TestGetLargeText(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		// Error flags
		getDoubleError bool

		// wants
		wantTrue bool
		wantErr  bool
	}{
		// Success case
		"Returns large text is disabled": {},
		"Returns large text is enabled":  {wantTrue: true},

		// Error cases
		"Error when unable to get state of large text": {getDoubleError: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			wantedDouble := 1.0
			if tc.wantTrue {
				wantedDouble = 1.25
			}

			// Prepare mocks
			opts := []accessibility.Option{
				accessibility.WithInterfaceSettings(&gSettingsSubsetMock{getDoubleError: tc.getDoubleError, currentDouble: wantedDouble}),
			}

			// Setup test
			client := newAccessibilityClient(t, opts...)
			req := &emptypb.Empty{}

			// Get function under test output
			resp, err := client.GetLargeText(context.Background(), req)

			// Evaluate function under test output
			if tc.wantErr {
				require.Error(t, err, "GetLargeText should return an error")
				require.Empty(t, resp, "GetLargeText should return a nil response")
				return
			}
			require.NoError(t, err, "GetLargeText should not return an error")

			got := resp.GetValue()
			want := tc.wantTrue
			require.Equal(t, want, got, "returned an unexpected response")
		})
	}
}
func TestEnableLargeText(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		setDoubleError bool

		want    bool
		wantErr bool
	}{
		// Success case
		"Enable large text": {want: true},

		// Error cases
		"Error when unable to update large text": {setDoubleError: true, wantErr: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			// Prepare mocks
			opts := []accessibility.Option{
				accessibility.WithInterfaceSettings(&gSettingsSubsetMock{setDoubleError: tc.setDoubleError, currentDouble: 0}),
			}

			// Setup test
			client := newAccessibilityClient(t, opts...)
			req := &emptypb.Empty{}

			// Get function under test output
			resp, err := client.EnableLargeText(context.Background(), req)

			// Evaluate function under test output
			if tc.wantErr {
				require.Error(t, err, "EnableLargeText should return an error")
				require.Empty(t, resp, "EnableLargeText should return a nil response")
				return
			}
			require.NoError(t, err, "EnableLargeText should not return an error")

			r, err := client.GetLargeText(context.Background(), &emptypb.Empty{})
			require.NoError(t, err, "GetLargeText should not return an error")

			got := r.Value
			want := tc.want
			require.Equal(t, want, got, "returned an unexpected response")
		})
	}
}

func TestDisableLargeText(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		setDoubleError bool

		want    bool
		wantErr bool
	}{
		// Success case
		"Disable large text": {want: false},

		// Error cases
		"Error when unable to update large text": {setDoubleError: true, wantErr: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			// Prepare mocks
			opts := []accessibility.Option{
				accessibility.WithInterfaceSettings(&gSettingsSubsetMock{setDoubleError: tc.setDoubleError, currentDouble: 0}),
			}

			// Setup test
			client := newAccessibilityClient(t, opts...)
			req := &emptypb.Empty{}

			// Get function under test output
			resp, err := client.DisableLargeText(context.Background(), req)

			// Evaluate function under test output
			if tc.wantErr {
				require.Error(t, err, "DisableLargeText should return an error")
				require.Empty(t, resp, "DisableLargeText should return a nil response")
				return
			}
			require.NoError(t, err, "DisableLargeText should not return an error")

			r, err := client.GetLargeText(context.Background(), &emptypb.Empty{})
			require.NoError(t, err, "GetLargeText should not return an error")

			got := r.Value
			want := tc.want
			require.Equal(t, want, got, "returned an unexpected response")
		})
	}
}

func TestGetScreenReader(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		// Error flags
		getBooleanError bool

		// Wants
		wantErr  bool
		wantTrue bool
	}{
		// Success case
		"Return screen reader is disabled": {},
		"Return screen reader is enabled":  {wantTrue: true},

		// Error cases
		"Error when unable to get state of screen reader": {getBooleanError: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			// Prepare mocks
			opts := []accessibility.Option{
				accessibility.WithApplicationSettings(&gSettingsSubsetMock{getBooleanError: tc.getBooleanError, currentBool: tc.wantTrue}),
			}

			// Setup test
			client := newAccessibilityClient(t, opts...)
			req := &emptypb.Empty{}

			// Get function under test output
			resp, err := client.GetScreenReader(context.Background(), req)

			// Evaluate function under test output
			if tc.wantErr {
				require.Error(t, err, "GetScreenReader should return an error")
				require.Empty(t, resp, "GetScreenReader should return a nil response")
				return
			}
			require.NoError(t, err, "GetScreenReader should not return an error")

			got := resp.GetValue()
			want := tc.wantTrue
			require.Equal(t, want, got, "returned an unexpected response")
		})
	}
}

func TestEnableScreenReader(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		setBooleanError bool

		want    bool
		wantErr bool
	}{
		// Success case
		"Enable screen reader": {want: true},

		// Error cases
		"Error when unable to update state of screen reader": {setBooleanError: true, wantErr: true},
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

			// Get function under test output
			resp, err := client.EnableScreenReader(context.Background(), req)

			// Evaluate function under test output
			if tc.wantErr {
				require.Error(t, err, "EnableScreenReader should return an error")
				require.Empty(t, resp, "EnableScreenReader should return a nil response")
				return
			}
			require.NoError(t, err, "EnableScreenReader should not return an error")

			r, err := client.GetScreenReader(context.Background(), &emptypb.Empty{})
			require.NoError(t, err, "GetScreenReader should not return an error")

			got := r.Value
			want := tc.want
			require.Equal(t, want, got, "returned an unexpected response")
		})
	}
}

func TestDisableScreenReader(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		setBooleanError bool

		want    bool
		wantErr bool
	}{
		// Success case
		"Disable screen reader": {want: false},

		// Error cases
		"Error when unable to update state of screen reader": {setBooleanError: true, wantErr: true},
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

			// Get function under test output
			resp, err := client.DisableScreenReader(context.Background(), req)

			// Evaluate function under test output
			if tc.wantErr {
				require.Error(t, err, "DisableScreenReader should return an error")
				require.Empty(t, resp, "DisableScreenReader should return a nil response")
				return
			}
			require.NoError(t, err, "DisableScreenReader should not return an error")

			r, err := client.GetScreenReader(context.Background(), &emptypb.Empty{})
			require.NoError(t, err, "GetScreenReader should not return an error")

			got := r.Value
			want := tc.want
			require.Equal(t, want, got, "returned an unexpected response")
		})
	}
}
