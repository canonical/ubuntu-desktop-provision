package accessibility_test

import (
	"context"
	"flag"
	"net"
	"os"
	"path/filepath"
	"testing"

	"github.com/canonical/ubuntu-desktop-provision/provd/internal/services/accessibility"
	"github.com/canonical/ubuntu-desktop-provision/provd/internal/testutils"
	pb "github.com/canonical/ubuntu-desktop-provision/provd/protos"
	"github.com/stretchr/testify/require"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
	"google.golang.org/protobuf/types/known/emptypb"
)

func TestNew(t *testing.T) {
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
				accessibility.WithA11ySettings(&gSettingsSubsetMock{getBooleanError: tc.getBooleanError, currentBool: tc.wantTrue}),
			}

			// Setup test
			client := newAccessibilityClient(t, opts...)
			req := newEmptyRequest(tc.emptyRequest)

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

func TestDisableHighContrast(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		emptyRequest    bool
		setBooleanError bool

		want    bool
		wantErr bool
	}{
		// Success case
		"Success disable high contrast": {want: false},

		// Error cases
		"Error when a11y settings path is not writable":        {allySettingsError: true, wantErr: true},
		"Error when application settings path is not writable": {applicationSettingsError: true, wantErr: true},
		"Error when interface settings path is not writable":   {interfaceSettingsError: true, wantErr: true},
		"Error when wm settings path is not writable":          {wmSettingsError: true, wantErr: true},
		"Error when keyboard settings path is not writable":    {keyboardSettingsError: true, wantErr: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			// Prepare mocks
			opts := []accessibility.Option{
				accessibility.WithA11ySettings(&gSettingsSubsetMock{setBooleanError: tc.setBooleanError, currentBool: !tc.want}),
			}
			client, err := accessibility.New(opts...)

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
		"Error case returns false, no calls made": {getBooleanError: true, wantTrue: true},
		"Error on empty request":                  {emptyRequest: true, wantErr: true},
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
			req := newEmptyRequest(tc.emptyRequest)

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

func TestDisableReducedMotion(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		emptyRequest    bool
		setBooleanError bool

		want    bool
		wantErr bool
	}{
		// Success case
		"Success disable reduced motion": {want: false},

		// Error cases
		"Error case returns false, no calls made": {setBooleanError: true, wantErr: true},
		"Error on empty request":                  {emptyRequest: true, wantErr: true},
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
			req := newEmptyRequest(tc.emptyRequest)

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

func TestEnableReducedMotion(t *testing.T) {
	t.Parallel()

	tests := map[string]struct {
		emptyRequest    bool
		setBooleanError bool

		want    bool
		wantErr bool
	}{
		// Success case
		"Success enable reduced motion": {want: true},

		// Error cases
		"Error case returns false, no calls made": {setBooleanError: true, wantErr: true},
		"Error on empty request":                  {emptyRequest: true, wantErr: true},
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
			req := newEmptyRequest(tc.emptyRequest)

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
		"Success getting state of large text when disabled": {},
		"Success getting state of large text when enabled":  {wantTrue: true},

		// Error cases
		"Error case returns false, no calls made": {getDoubleError: true},
		"Error on empty request":                  {emptyRequest: true, wantErr: true},
	}

	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {
			t.Parallel()

			var wantedDouble float64 = 1.0
			if tc.wantTrue {
				wantedDouble = 1.25
			}

			// Prepare mocks
			opts := []accessibility.Option{
				accessibility.WithInterfaceSettings(&gSettingsSubsetMock{getDoubleError: tc.getDoubleError, currentDouble: wantedDouble}),
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
		emptyRequest   bool
		setDoubleError bool

		want    bool
		wantErr bool
	}{
		// Success case
		"Success enable large text": {want: true},

		// Error cases
		"Error case returns false, no calls made": {setDoubleError: true, wantErr: true},
		"Error on empty request":                  {emptyRequest: true, wantErr: true},
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
		emptyRequest   bool
		setDoubleError bool

		want    bool
		wantErr bool
	}{
		// Success case
		"Success disable large text": {want: false},

		// Error cases
		"Error case returns false, no calls made": {setDoubleError: true, wantErr: true},
		"Error on empty request":                  {emptyRequest: true, wantErr: true},
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
				accessibility.WithApplicationSettings(&gSettingsSubsetMock{getBooleanError: tc.getBooleanError, currentBool: tc.wantTrue}),
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
		emptyRequest    bool
		setBooleanError bool

		want    bool
		wantErr bool
	}{
		// Success case
		"Success enable screen reader": {want: true},

		// Error cases
		"Error case returns false, no calls made": {setBooleanError: true, wantErr: true},
		"Error on empty request":                  {emptyRequest: true, wantErr: true},
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
		emptyRequest    bool
		setBooleanError bool

		want    bool
		wantErr bool
	}{
		// Success case
		"Success disable screen reader": {want: false},

		// Error cases
		"Error case returns false, no calls made": {setBooleanError: true, wantErr: true},
		"Error on empty request":                  {emptyRequest: true, wantErr: true},
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

			r, err := client.GetScreenReader(context.Background(), &emptypb.Empty{})
			require.NoError(t, err, "GetScreenReader should not return an error")

			got := r.Value
			want := tc.want
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
				accessibility.WithApplicationSettings(&gSettingsSubsetMock{getBooleanError: tc.getBooleanError, currentBool: tc.wantTrue}),
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
			require.NoError(t, err, "New should not return an error")

			require.NotNil(t, client, "New should return a non-nil response")
		})
	}
}

// newAccessibilityClient creates a new accessibility client for testing.
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
	require.NoError(t, err, "Setup: could not create a11y service")

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

	// Error flags for each method
	isWritableError bool
	setBooleanError bool
	setDoubleError  bool

	// Current values
	currentBool   bool
	currentDouble float64
}

func (g gSettingsSubsetMock) IsWritable(key string) bool {
	return !g.isWritableError
}

func (g *gSettingsSubsetMock) SetBoolean(key string, value bool) bool {
	if g.setBooleanError {
		return false
	}
	g.currentBool = value
	return true
}

func (g gSettingsSubsetMock) GetBoolean(key string) bool {
	return g.currentBool
}

func (g *gSettingsSubsetMock) SetDouble(key string, value float64) bool {
	if g.setDoubleError {
		return false
	}
	g.currentDouble = value
	return true
}

func (g gSettingsSubsetMock) GetDouble(key string) float64 {
	return g.currentDouble
}
