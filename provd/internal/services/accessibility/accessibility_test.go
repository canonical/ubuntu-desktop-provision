package accessibility_test

import (
	"context"
	"flag"
	"fmt"
	"net"
	"os"
	"path/filepath"
	"strconv"
	"strings"
	"testing"

	"github.com/canonical/ubuntu-desktop-provision/provd/internal/services/accessibility"
	"github.com/canonical/ubuntu-desktop-provision/provd/internal/testutils"
	pb "github.com/canonical/ubuntu-desktop-provision/provd/protos"
	"github.com/stretchr/testify/require"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
	"google.golang.org/protobuf/types/known/emptypb"
)

type operation int

const (
	Get operation = iota
	Enable
	Disable
)

func TestGetHighContrast(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		// Error flags
		emptyRequest    bool
		getBooleanError bool

		// Wants
		wantErr  bool
		wantTrue bool
	}{
		// Success case
		"Success getting state of high contrast":              {},
		"Success getting state of high contrast when enabled": {wantTrue: true},

		// Error cases
		"Error case returns false, no calls made": {getBooleanError: true},
		"Error on empty request":                  {emptyRequest: true, wantErr: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			// Prepare mocks
			opts := []accessibility.Option{
				accessibility.WithA11ySettings(gSettingsSubsetMock{getBooleanError: tc.getBooleanError, WantTrue: tc.wantTrue}),
			}

			// Setup test
			client := newAccessibilityClient(t, opts...)
			req := newEmptyRequest(tc.emptyRequest)

			// Get function under test output
			resp, respErr := client.GetHighContrast(context.Background(), req)
			got := fmt.Sprintf("%v", resp.GetValue())

			if tc.wantErr {
				require.Error(t, respErr, "GetHighContrast should return an error")
				require.Empty(t, resp, "GetHighContrast should return a nil response")
				return
			}

			require.NoError(t, respErr, "GetHighcontrast should not return an error")
			want := testutils.LoadWithUpdateFromGolden(t, got)
			require.Equal(t, want, got, "returned an unexpected response")
		})
	}
}

func TestDisableHighContrast(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		emptyRequest    bool
		setBooleanError bool

		wantErr bool
	}{
		// Success case
		"Success disable high contrast": {},

		// Error cases
		"Error case returns false, no calls made": {setBooleanError: true, wantErr: true},
		"Error on empty request":                  {emptyRequest: true, wantErr: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			// Prepare mocks
			actionpath := t.TempDir()

			opts := []accessibility.Option{
				accessibility.WithA11ySettings(gSettingsSubsetMock{setBooleanError: tc.setBooleanError, actionpath: actionpath}),
			}

			// Setup test
			client := newAccessibilityClient(t, opts...)
			req := newEmptyRequest(tc.emptyRequest)

			// Get function under test output
			resp, respErr := client.DisableHighContrast(context.Background(), req)

			// Evaluate function under test output
			if tc.wantErr {
				require.Error(t, respErr, "DisableHighContrast should return an error")
				require.Empty(t, resp, "DisableHighContrast should return a nil response")
				return
			}
			got, err := testutils.ReadActionFromFile(testutils.WithFilePath(actionpath))
			require.NoError(t, err, "ReadActionFromFile should not return an error")

			require.NoError(t, respErr, "DisableHighcontrast should not return an error")
			require.NotNil(t, resp, "DisableHighContrast should return a non-nil response")
			want := testutils.LoadWithUpdateFromGolden(t, got)
			require.Equal(t, want, got, "returned an unexpected response")
		})
	}
}

func TestEnableHighContrast(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		emptyRequest    bool
		setBooleanError bool

		wantErr bool
	}{
		// Success case
		"Success enable high contrast": {},

		// Error cases
		"Error case returns false, no calls made": {setBooleanError: true, wantErr: true},
		"Error on empty request":                  {emptyRequest: true, wantErr: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			// Prepare mocks
			actionpath := t.TempDir()

			opts := []accessibility.Option{
				accessibility.WithA11ySettings(gSettingsSubsetMock{setBooleanError: tc.setBooleanError, actionpath: actionpath}),
			}

			// Setup test
			client := newAccessibilityClient(t, opts...)
			req := newEmptyRequest(tc.emptyRequest)

			// Get function under test output
			resp, respErr := client.EnableHighContrast(context.Background(), req)

			if tc.wantErr {
				require.Error(t, respErr, "EnableHighContrast should return an error")
				require.Empty(t, resp, "EnableHighContrast should return a nil response")
				return
			}
			got, err := testutils.ReadActionFromFile(testutils.WithFilePath(actionpath))
			require.NoError(t, err, "ReadActionFromFile should not return an error")

			require.NoError(t, err, "EnableHighContrast should not return an error")
			require.NotNil(t, resp, "EnableHighContrast should return a non-nil response")
			want := testutils.LoadWithUpdateFromGolden(t, got)
			require.Equal(t, want, got, "returned an unexpected response")
		})
	}
}

func TestGetReducedMotion(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		// Error flags
		emptyRequest    bool
		getBooleanError bool

		// wants
		wantErr  bool
		wantTrue bool
	}{
		// Success case
		"Success getting state of reduced motion":               {},
		"Success gettings state of reduced motion when enabled": {wantTrue: true},

		// Error cases
		"Error case returns false, no calls made": {getBooleanError: true},
		"Error on empty request":                  {emptyRequest: true, wantErr: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			// Prepare mocks
			opts := []accessibility.Option{
				accessibility.WithInterfaceSettings(gSettingsSubsetMock{getBooleanError: tc.getBooleanError, WantTrue: tc.wantTrue}),
			}

			// Setup test
			client := newAccessibilityClient(t, opts...)
			req := newEmptyRequest(tc.emptyRequest)

			// Get function under test output
			resp, respErr := client.GetReducedMotion(context.Background(), req)
			got := fmt.Sprintf("%t", resp.GetValue())

			// Evaluate function under test output
			if tc.wantErr {
				require.Error(t, respErr, "GetReducedMotion should return an error")
				require.Empty(t, resp, "GetReducedMotion should return a nil response")
				return
			}

			require.NoError(t, respErr, "GetReducedMotion should not return an error")
			want := testutils.LoadWithUpdateFromGolden(t, got)
			require.Equal(t, want, got, "returned an unexpected response")
		})
	}
}

func TestDisableReducedMotion(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		emptyRequest    bool
		setBooleanError bool

		wantErr bool
	}{
		// Success case
		"Success disable reduced motion": {},

		// Error cases
		"Error case returns false, no calls made": {setBooleanError: true, wantErr: true},
		"Error on empty request":                  {emptyRequest: true, wantErr: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			// Prepare mocks

			actionpath := t.TempDir()

			opts := []accessibility.Option{
				accessibility.WithInterfaceSettings(gSettingsSubsetMock{setBooleanError: tc.setBooleanError, actionpath: actionpath}),
			}

			// Setup test
			client := newAccessibilityClient(t, opts...)
			req := newEmptyRequest(tc.emptyRequest)

			// Get function under test output
			resp, respErr := client.DisableReducedMotion(context.Background(), req)

			if tc.wantErr {
				require.Error(t, respErr, "DisableReducedMotion should return an error")
				require.Empty(t, resp, "DisableReducedMotion should return a nil response")
				return
			}
			got, err := testutils.ReadActionFromFile(testutils.WithFilePath(actionpath))
			require.NoError(t, err, "ReadActionFromFile should not return an error")

			require.NoError(t, respErr, "DisableReducedMotion should not return an error")
			require.NotNil(t, resp, "DisableReducedMotion should return a non-nil response")
			want := testutils.LoadWithUpdateFromGolden(t, got)
			require.Equal(t, want, got, "returned an unexpected response")
		})
	}
}

func TestEnableReducedMotion(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		emptyRequest    bool
		setBooleanError bool

		wantErr bool
	}{
		// Success case
		"Success enable reduced motion": {},

		// Error cases
		"Error case returns false, no calls made": {setBooleanError: true, wantErr: true},
		"Error on empty request":                  {emptyRequest: true, wantErr: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			// Prepare mocks
			actionpath := t.TempDir()

			opts := []accessibility.Option{
				accessibility.WithInterfaceSettings(gSettingsSubsetMock{setBooleanError: tc.setBooleanError, actionpath: actionpath}),
			}

			// Setup test
			client := newAccessibilityClient(t, opts...)
			req := newEmptyRequest(tc.emptyRequest)

			// Get function under test output
			resp, respErr := client.EnableReducedMotion(context.Background(), req)

			// Evaluate function under test output
			if tc.wantErr {
				require.Error(t, respErr, "EnableReducedMotion should return an error")
				require.Empty(t, resp, "EnableReducedMotion should return a nil response")
				return
			}
			got, err := testutils.ReadActionFromFile(testutils.WithFilePath(actionpath))
			require.NoError(t, err, "ReadActionFromFile should not return an error")

			require.NoError(t, respErr, "EnableReducedMotion should not return an error")
			require.NotNil(t, resp, "EnableReducedMotion should return a non-nil response")
			want := testutils.LoadWithUpdateFromGolden(t, got)
			require.Equal(t, want, got, "returned an unexpected response")
		})
	}
}

func TestGetLargeText(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		// Error flags
		emptyRequest   bool
		getDoubleError bool

		// wants
		wantTrue bool
		wantErr  bool
	}{
		// Success case
		//"Success getting state of large text when disabled": {},
		"Success getting state of large text when enabled": {wantTrue: true},

		// Error cases
		"Error case returns false, no calls made": {getDoubleError: true},
		"Error on empty request":                  {emptyRequest: true, wantErr: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			// Prepare mocks
			opts := []accessibility.Option{
				accessibility.WithInterfaceSettings(gSettingsSubsetMock{getDoubleError: tc.getDoubleError, WantTrue: tc.wantTrue}),
			}

			// Setup test
			client := newAccessibilityClient(t, opts...)
			req := newEmptyRequest(tc.emptyRequest)

			// Get function under test output
			resp, err := client.GetLargeText(context.Background(), req)

			// Evaluate function under test output
			if tc.wantErr {
				require.Error(t, err, "GetLargeText should return an error")
				require.Empty(t, resp, "GetLargeText should return a nil response")
				return
			}

			got := fmt.Sprintf("%v", resp.GetValue())
			require.NoError(t, err, "GetLargeText should not return an error")
			want := testutils.LoadWithUpdateFromGolden(t, got)
			require.Equal(t, want, got, "returned an unexpected response")
		})
	}
}
func TestEnableLargeText(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		emptyRequest   bool
		setDoubleError bool

		wantErr bool
	}{
		// Success case
		"Success enable large text": {},

		// Error cases
		"Error case returns false, no calls made": {setDoubleError: true, wantErr: true},
		"Error on empty request":                  {emptyRequest: true, wantErr: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			// Prepare mocks
			actionpath := t.TempDir()

			opts := []accessibility.Option{
				accessibility.WithInterfaceSettings(gSettingsSubsetMock{setDoubleError: tc.setDoubleError, actionpath: actionpath}),
			}

			// Setup test
			client := newAccessibilityClient(t, opts...)
			req := newEmptyRequest(tc.emptyRequest)

			// Get function under test output
			resp, err := client.EnableLargeText(context.Background(), req)

			// Evaluate function under test output
			if tc.wantErr {
				require.Error(t, err, "EnableLargeText should return an error")
				require.Empty(t, resp, "EnableLargeText should return a nil response")
				return
			}
			require.NoError(t, err, "EnableLargeText should not return an error")
			require.NotNil(t, resp, "EnableLargeText should return a non-nil response")

			got, err := testutils.ReadActionFromFile(testutils.WithFilePath(actionpath))
			require.NoError(t, err, "ReadActionFromFile should not return an error")
			want := testutils.LoadWithUpdateFromGolden(t, got)
			require.Equal(t, want, got, "returned an unexpected response")
		})
	}
}

func TestDisableLargeText(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		emptyRequest   bool
		setDoubleError bool

		wantErr bool
	}{
		// Success case
		"Success disable large text": {},

		// Error cases
		"Error case returns false, no calls made": {setDoubleError: true, wantErr: true},
		"Error on empty request":                  {emptyRequest: true, wantErr: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			// Prepare mocks
			actionpath := t.TempDir()

			opts := []accessibility.Option{
				accessibility.WithInterfaceSettings(gSettingsSubsetMock{setDoubleError: tc.setDoubleError, actionpath: actionpath}),
			}

			// Setup test
			client := newAccessibilityClient(t, opts...)
			req := newEmptyRequest(tc.emptyRequest)

			// Get function under test output
			resp, err := client.DisableLargeText(context.Background(), req)

			// Evaluate function under test output
			if tc.wantErr {
				require.Error(t, err, "DisableLargeText should return an error")
				require.Empty(t, resp, "DisableLargeText should return a nil response")
				return
			}
			require.NoError(t, err, "DisableLargeText should not return an error")
			require.NotNil(t, resp, "DisableLargeText should return a non-nil response")

			got, err := testutils.ReadActionFromFile(testutils.WithFilePath(actionpath))
			require.NoError(t, err, "ReadActionFromFile should not return an error")
			want := testutils.LoadWithUpdateFromGolden(t, got)
			require.Equal(t, want, got, "returned an unexpected response")
		})
	}
}

func TestGetScreenReader(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		// Error flags
		emptyRequest    bool
		getBooleanError bool

		// Wants
		wantErr  bool
		wantTrue bool
	}{
		// Success case
		"Success getting state of screen reader":              {},
		"Success getting state of screen reader when enabled": {wantTrue: true},

		// Error cases
		"Error case returns false, no calls made": {getBooleanError: true},
		"Error on empty request":                  {emptyRequest: true, wantErr: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			// Prepare mocks
			opts := []accessibility.Option{
				accessibility.WithApplicationSettings(gSettingsSubsetMock{getBooleanError: tc.getBooleanError, WantTrue: tc.wantTrue}),
			}

			// Setup test
			client := newAccessibilityClient(t, opts...)
			req := newEmptyRequest(tc.emptyRequest)

			// Get function under test output
			resp, err := client.GetScreenReader(context.Background(), req)

			// Evaluate function under test output
			if tc.wantErr {
				require.Error(t, err, "GetScreenReader should return an error")
				require.Empty(t, resp, "GetScreenReader should return a nil response")
				return
			}

			got := fmt.Sprintf("%t", resp.GetValue())
			require.NoError(t, err, "GetScreenReader should not return an error")
			want := testutils.LoadWithUpdateFromGolden(t, got)
			require.Equal(t, want, got, "returned an unexpected response")
		})
	}
}

func TestEnableScreenReader(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		emptyRequest    bool
		setBooleanError bool

		wantErr bool
	}{
		// Success case
		"Success enable screen reader": {},

		// Error cases
		"Error case returns false, no calls made": {setBooleanError: true, wantErr: true},
		"Error on empty request":                  {emptyRequest: true, wantErr: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			// Prepare mocks
			actionpath := t.TempDir()
			opts := []accessibility.Option{
				accessibility.WithApplicationSettings(gSettingsSubsetMock{setBooleanError: tc.setBooleanError, actionpath: actionpath}),
			}

			// Setup test
			client := newAccessibilityClient(t, opts...)
			req := newEmptyRequest(tc.emptyRequest)

			// Get function under test output
			resp, err := client.EnableScreenReader(context.Background(), req)

			// Evaluate function under test output
			if tc.wantErr {
				require.Error(t, err, "EnableScreenReader should return an error")
				require.Empty(t, resp, "EnableScreenReader should return a nil response")
				return
			}
			require.NoError(t, err, "EnableScreenReader should not return an error")
			require.NotNil(t, resp, "EnableScreenReader should return a non-nil response")

			got, err := testutils.ReadActionFromFile(testutils.WithFilePath(actionpath))
			require.NoError(t, err, "ReadActionFromFile should not return an error")
			want := testutils.LoadWithUpdateFromGolden(t, got)
			require.Equal(t, want, got, "returned an unexpected response")
		})
	}
}

func TestDisableScreenReader(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		emptyRequest    bool
		setBooleanError bool

		wantErr bool
	}{
		// Success case
		"Success disable screen reader": {},

		// Error cases
		"Error case returns false, no calls made": {setBooleanError: true, wantErr: true},
		"Error on empty request":                  {emptyRequest: true, wantErr: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			// Prepare mocks
			actionpath := t.TempDir()
			opts := []accessibility.Option{
				accessibility.WithApplicationSettings(gSettingsSubsetMock{setBooleanError: tc.setBooleanError, actionpath: actionpath}),
			}

			// Setup test
			client := newAccessibilityClient(t, opts...)
			req := newEmptyRequest(tc.emptyRequest)

			// Get function under test output
			resp, err := client.DisableScreenReader(context.Background(), req)

			// Evaluate function under test output
			if tc.wantErr {
				require.Error(t, err, "DisableScreenReader should return an error")
				require.Empty(t, resp, "DisableScreenReader should return a nil response")
				return
			}
			require.NoError(t, err, "DisableScreenReader should not return an error")
			require.NotNil(t, resp, "DisableScreenReader should return a non-nil response")

			got, err := testutils.ReadActionFromFile(testutils.WithFilePath(actionpath))
			require.NoError(t, err, "ReadActionFromFile should not return an error")
			want := testutils.LoadWithUpdateFromGolden(t, got)
			require.Equal(t, want, got, "returned an unexpected response")
		})
	}
}

func TestGetScreenKeyboard(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		// Error flags
		emptyRequest    bool
		getBooleanError bool

		// Wants
		wantErr  bool
		wantTrue bool
	}{
		// Success case
		"Success getting state of screen keyboard":              {},
		"Success getting state of screen keyboard when enabled": {wantTrue: true},

		// Error cases
		"Error case returns false, no calls made": {getBooleanError: true},
		"Error on empty request":                  {emptyRequest: true, wantErr: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			// Prepare mocks
			opts := []accessibility.Option{
				accessibility.WithApplicationSettings(gSettingsSubsetMock{getBooleanError: tc.getBooleanError, WantTrue: tc.wantTrue}),
			}

			// Setup test
			client := newAccessibilityClient(t, opts...)
			req := newEmptyRequest(tc.emptyRequest)

			// Get function under test output
			resp, err := client.GetScreenKeyboard(context.Background(), req)

			// Evaluate function under test output
			if tc.wantErr {
				require.Error(t, err, "GetScreenKeyboard should return an error")
				require.Empty(t, resp, "GetScreenKeyboard should return a nil response")
				return
			}

			got := fmt.Sprintf("%t", resp.GetValue())
			require.NoError(t, err, "GetScreenKeyboard should not return an error")
			want := testutils.LoadWithUpdateFromGolden(t, got)
			require.Equal(t, want, got, "returned an unexpected response")
		})
	}
}

func TestEnableScreenKeyboard(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		emptyRequest    bool
		setBooleanError bool

		wantErr bool
	}{
		// Success case
		"Success enable screen keyboard": {},

		// Error cases
		"Error case returns false, no calls made": {setBooleanError: true, wantErr: true},
		"Error on empty request":                  {emptyRequest: true, wantErr: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()
			// Prepare mocks
			actionpath := t.TempDir()
			opts := []accessibility.Option{
				accessibility.WithApplicationSettings(gSettingsSubsetMock{setBooleanError: tc.setBooleanError, actionpath: actionpath}),
			}

			// Setup test
			client := newAccessibilityClient(t, opts...)
			req := newEmptyRequest(tc.emptyRequest)

			// Get function under test output
			resp, err := client.EnableScreenKeyboard(context.Background(), req)

			// Evaluate function under test output
			if tc.wantErr {
				require.Error(t, err, "EnableScreenKeyboard should return an error")
				require.Empty(t, resp, "EnableScreenKeyboard should return a nil response")
				return
			}
			require.NoError(t, err, "EnableScreenKeyboard should not return an error")
			require.NotNil(t, resp, "EnableScreenKeyboard should return a non-nil response")

			got, err := testutils.ReadActionFromFile(testutils.WithFilePath(actionpath))
			require.NoError(t, err, "ReadActionFromFile should not return an error")
			want := testutils.LoadWithUpdateFromGolden(t, got)
			require.Equal(t, want, got, "returned an unexpected response")
		})
	}
}

func TestDisableScreenKeyboard(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		emptyRequest    bool
		setBooleanError bool

		wantErr bool
	}{
		// Success case
		"Success disable screen keyboard": {},

		// Error cases
		"Error case returns false, no calls made": {setBooleanError: true, wantErr: true},
		"Error on empty request":                  {emptyRequest: true, wantErr: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()
			// Prepare mocks
			actionpath := t.TempDir()
			opts := []accessibility.Option{
				accessibility.WithApplicationSettings(gSettingsSubsetMock{setBooleanError: tc.setBooleanError, actionpath: actionpath}),
			}

			// Setup test
			client := newAccessibilityClient(t, opts...)
			req := newEmptyRequest(tc.emptyRequest)

			// Get function under test output
			resp, err := client.DisableScreenKeyboard(context.Background(), req)

			// Evaluate function under test output
			if tc.wantErr {
				require.Error(t, err, "DisableScreenKeyboard should return an error")
				require.Empty(t, resp, "DisableScreenKeyboard should return a nil response")
				return
			}
			require.NoError(t, err, "DisableScreenKeyboard should not return an error")
			require.NotNil(t, resp, "DisableScreenKeyboard should return a non-nil response")

			got, err := testutils.ReadActionFromFile(testutils.WithFilePath(actionpath))
			require.NoError(t, err, "ReadActionFromFile should not return an error")
			want := testutils.LoadWithUpdateFromGolden(t, got)
			require.Equal(t, want, got, "returned an unexpected response")
		})
	}
}

func TestGetStickyKeys(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		// Error flags
		emptyRequest    bool
		getBooleanError bool

		// Wants
		wantErr  bool
		wantTrue bool
	}{
		// Success case
		"Success getting state of sticky keys":              {},
		"Success getting state of sticky keys when enabled": {wantTrue: true},

		// Error cases
		"Error case returns false, no calls made": {getBooleanError: true},
		"Error on empty request":                  {emptyRequest: true, wantErr: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			// Prepare mocks
			opts := []accessibility.Option{
				accessibility.WithKeyboardSettings(gSettingsSubsetMock{getBooleanError: tc.getBooleanError, WantTrue: tc.wantTrue}),
			}

			// Setup test
			client := newAccessibilityClient(t, opts...)
			req := newEmptyRequest(tc.emptyRequest)

			// Get function under test output
			resp, err := client.GetStickyKeys(context.Background(), req)

			// Evaluate function under test output
			if tc.wantErr {
				require.Error(t, err, "GetStickyKeys should return an error")
				require.Empty(t, resp, "GetStickyKeys should return a nil response")
				return
			}

			require.NoError(t, err, "GetStickyKeys should not return an error")
			got := fmt.Sprintf("%t", resp.GetValue())
			want := testutils.LoadWithUpdateFromGolden(t, got)
			require.Equal(t, want, got, "returned an unexpected response")
		})
	}
}

func TestEnableStickyKeys(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		emptyRequest    bool
		setBooleanError bool

		wantErr bool
	}{
		// Success case
		"Success enable sticky keys": {},

		// Error cases
		"Error case returns false, no calls made": {setBooleanError: true, wantErr: true},
		"Error on empty request":                  {emptyRequest: true, wantErr: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			// Prepare mocks
			actionpath := t.TempDir()
			opts := []accessibility.Option{
				accessibility.WithKeyboardSettings(gSettingsSubsetMock{setBooleanError: tc.setBooleanError, actionpath: actionpath}),
			}

			// Setup test
			client := newAccessibilityClient(t, opts...)
			req := newEmptyRequest(tc.emptyRequest)

			// Get function under test output
			resp, err := client.EnableStickyKeys(context.Background(), req)

			// Evaluate function under test output
			if tc.wantErr {
				require.Error(t, err, "EnableStickyKeys should return an error")
				require.Empty(t, resp, "EnableStickyKeys should return a nil response")
				return
			}
			require.NoError(t, err, "EnableStickyKeys should not return an error")
			require.NotNil(t, resp, "EnableStickyKeys should return a non-nil response")

			got, err := testutils.ReadActionFromFile(testutils.WithFilePath(actionpath))
			require.NoError(t, err, "ReadActionFromFile should not return an error")
			want := testutils.LoadWithUpdateFromGolden(t, got)
			require.Equal(t, want, got, "returned an unexpected response")
		})
	}
}

func TestDisableStickyKeys(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		emptyRequest    bool
		setBooleanError bool

		wantErr bool
	}{
		// Success case
		"Success disable sticky keys": {},

		// Error cases
		"Error case returns false, no calls made": {setBooleanError: true, wantErr: true},
		"Error on empty request":                  {emptyRequest: true, wantErr: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			// Prepare mocks
			actionpath := t.TempDir()

			opts := []accessibility.Option{
				accessibility.WithKeyboardSettings(gSettingsSubsetMock{setBooleanError: tc.setBooleanError, actionpath: actionpath}),
			}

			// Setup test
			client := newAccessibilityClient(t, opts...)
			req := newEmptyRequest(tc.emptyRequest)

			// Get function under test output
			resp, err := client.DisableStickyKeys(context.Background(), req)

			// Evaluate function under test output
			if tc.wantErr {
				require.Error(t, err, "DisableStickyKeys should return an error")
				require.Empty(t, resp, "DisableStickyKeys should return a nil response")
				return
			}
			require.NoError(t, err, "DisableStickyKeys should not return an error")
			require.NotNil(t, resp, "DisableStickyKeys should return a non-nil response")

			got, err := testutils.ReadActionFromFile(testutils.WithFilePath(actionpath))
			require.NoError(t, err, "ReadActionFromFile should not return an error")
			want := testutils.LoadWithUpdateFromGolden(t, got)
			require.Equal(t, want, got, "returned an unexpected response")
		})
	}
}

func newEmptyRequest(emptyRequest bool) *emptypb.Empty {
	var req *emptypb.Empty
	if !emptyRequest {
		req = &emptypb.Empty{}
	} else {
		req = nil
	}
	return req
}

// newAccessibilityClient creates a new accessibility client fo			if tc.wantErr {r testing, with a temp unix socket.
func newAccessibilityClient(t *testing.T, opts ...accessibility.Option) pb.AccessibilityServiceClient {
	t.Helper()

	// socket path is limited in length.
	tmpDir, err := os.MkdirTemp("", "hello-socket-dir")
	require.NoError(t, err, "Setup: could not setup temporary socket dir path")
	t.Cleanup(func() { _ = os.RemoveAll(tmpDir) })
	socketPath := filepath.Join(tmpDir, "provd.sock")

	lis, err := net.Listen("unix", socketPath)
	require.NoError(t, err, "Setup: could not create unix socket")

	service, err := accessibility.New(opts...)

	if err != nil {
		t.Fatalf("Setup: could not create a11y service: %v", err)
	}

	grpcServer := grpc.NewServer()
	pb.RegisterAccessibilityServiceServer(grpcServer, service)
	done := make(chan struct{})
	go func() {
		defer close(done)
		_ = grpcServer.Serve(lis)
	}()
	t.Cleanup(func() {
		grpcServer.Stop()
		<-done
	})

	conn, err := grpc.Dial("unix://"+socketPath, grpc.WithTransportCredentials(insecure.NewCredentials()))
	require.NoError(t, err, "Setup: Could not connect to GRPC server")
	t.Cleanup(func() { _ = conn.Close() })

	return pb.NewAccessibilityServiceClient(conn)
}

func TestMain(m *testing.M) {
	testutils.InstallUpdateFlag()
	flag.Parse()

	m.Run()
}

type gSettingsSubsetMock struct {

	// Wants
	WantTrue bool

	actionpath string

	// Error flags for each method
	isWritableError bool
	setBooleanError bool
	getBooleanError bool
	setDoubleError  bool
	getDoubleError  bool
}

func (g gSettingsSubsetMock) IsWritable(key string) bool {
	return !g.isWritableError
}

func (g gSettingsSubsetMock) SetBoolean(key string, value bool) bool {
	if g.setBooleanError {
		return false
	}
	testutils.WriteActionToFile("gsettings.SetBoolean(key: "+key+", value: "+strings.ToLower(strconv.FormatBool(value))+")", testutils.WithFilePath(g.actionpath))
	return true
}

func (g gSettingsSubsetMock) GetBoolean(key string) bool {
	if g.getBooleanError {
		return false
	}
	return g.WantTrue
}

func (g gSettingsSubsetMock) SetDouble(key string, value float64) bool {
	if g.setDoubleError {
		return false
	}
	testutils.WriteActionToFile("gsettings.SetDouble(key: "+key+", value: "+strconv.FormatFloat(value, 'f', -1, 64)+")", testutils.WithFilePath(g.actionpath))
	return true
}

func (g gSettingsSubsetMock) GetDouble(key string) float64 {
	if g.getDoubleError {
		return 0
	}
	if g.WantTrue {
		return 1.25
	}
	return 1.0
}
