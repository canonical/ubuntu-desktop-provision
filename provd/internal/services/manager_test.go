package services_test

import (
	"context"
	"flag"
	"testing"

	"github.com/canonical/ubuntu-desktop-provision/provd/internal/services"
	"github.com/canonical/ubuntu-desktop-provision/provd/internal/testutils"
	"github.com/stretchr/testify/require"
	"google.golang.org/grpc"
)

func TestNewManager(t *testing.T) {
	tests := map[string]struct {
		wantErr bool
	}{
		"Successfully create the manager": {},
	}
	for name, tc := range tests {
		tc := tc
		t.Run(name, func(t *testing.T) {

			_, err := services.NewManager(context.Background())
			if tc.wantErr {
				require.Error(t, err, "NewManager should have returned an error, but did not")
				return
			}
			defer require.NoError(t, err, "Teardown: Stop should not have returned an error, but did")

			require.NoError(t, err, "NewManager should not have returned an error, but did")
		})
	}
}

func TestRegisterGRPCServices(t *testing.T) {
	t.Parallel()

	m, err := services.NewManager(context.Background())
	require.NoError(t, err, "Setup: could not create manager for the test")
	defer require.NoError(t, err, "Teardown: Stop should not have returned an error, but did")

	got := m.RegisterGRPCServices(context.Background()).GetServiceInfo()
	want := testutils.LoadWithUpdateFromGoldenYAML(t, got)
	requireEqualServices(t, want, got)
}

// requireEqualServices asserts that the grpc services were registered as expected.
//
// This is needed because the order of the methods and the services is not guaranteed.
func requireEqualServices(t *testing.T, want, got map[string]grpc.ServiceInfo) {
	t.Helper()

	for name, wantInfo := range want {
		gotInfo, ok := got[name]
		if !ok {
			t.Error("Expected services to match, but didn't")
			return
		}
		require.ElementsMatch(t, wantInfo.Methods, gotInfo.Methods, "Expected methods to match, but didn't")
		delete(got, name)
	}
	require.Empty(t, got, "Expected no extra services, but got %v", got)
}

func TestMain(m *testing.M) {
	testutils.InstallUpdateFlag()
	flag.Parse()

	m.Run()
}
