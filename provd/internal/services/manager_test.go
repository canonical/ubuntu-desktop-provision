package services_test

import (
	"context"
	"flag"
	"fmt"
	"log/slog"
	"testing"

	"github.com/canonical/ubuntu-desktop-provision/provd/internal/consts"
	"github.com/canonical/ubuntu-desktop-provision/provd/internal/services"
	"github.com/canonical/ubuntu-desktop-provision/provd/internal/testutils"
	"github.com/godbus/dbus/v5"
	"github.com/godbus/dbus/v5/introspect"
	"github.com/stretchr/testify/require"
	"google.golang.org/grpc"
)

func TestNewManager(t *testing.T) {
	tests := map[string]struct {
		wantErr bool
	}{
		"Successfully creates the manager": {},
	}
	for name, tc := range tests {
		t.Cleanup(testutils.StartLocalSystemBus())
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
	t.Cleanup(testutils.StartLocalSystemBus())

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

type accountsdbus struct{}

func (a accountsdbus) Ping() *dbus.Error {
	return nil
}

type hostnamedbus struct{}

func (h hostnamedbus) Ping() *dbus.Error {
	return nil
}

func TestMain(m *testing.M) {
	testutils.InstallUpdateFlag()
	flag.Parse()

	defer testutils.StartLocalSystemBus()()

	conn, err := dbus.SystemBusPrivate()
	if err != nil {
		slog.Error("Setup: can't get a private system bus: %v", err)
	}
	defer func() {
		if err = conn.Close(); err != nil {
			slog.Error("Teardown: can't close system dbus connection: %v", err)
		}
	}()
	if err = conn.Auth(nil); err != nil {
		slog.Error("Setup: can't auth on private system bus: %v", err)
	}
	if err = conn.Hello(); err != nil {
		slog.Error("Setup: can't send hello message on private system bus: %v", err)
	}

	peer := fmt.Sprintf(`
	<node>
		<interface name="%s">
            <method name="Ping">
			</method>
		</interface>̀%s</node>`, "org.freedesktop.DBus.Peer", introspect.IntrospectDataString)

	a := accountsdbus{}

	if err := conn.Export(a, dbus.ObjectPath("/org/freedesktop/Accounts"), "org.freedesktop.DBus.Peer"); err != nil {
		slog.Error("Setup: could not export Peer mock %v", err)
	}

	if err := conn.Export(introspect.Introspectable(peer), dbus.ObjectPath("/org/freedesktop/Accounts"),
		"org.freedesktop.DBus.Introspectable"); err != nil {
		slog.Error("Setup: could not export introspectable for Peer mock: %v", err)
	}

	reply, err := conn.RequestName(consts.DbusAccountsPrefix, dbus.NameFlagDoNotQueue)
	if err != nil {
		slog.Error("Setup: Failed to acquire account name on local system bus: %v", err)
	}
	if reply != dbus.RequestNameReplyPrimaryOwner {
		slog.Error("Setup: Failed to acquire account name on local system bus: name is already taken")
	}

	h := hostnamedbus{}

	if err := conn.Export(h, dbus.ObjectPath("/org/freedesktop/Accounts"), "org.freedesktop.DBus.Peer"); err != nil {
		slog.Error("Setup: could not export Peer mock %v", err)
	}

	if err := conn.Export(introspect.Introspectable(peer), dbus.ObjectPath("/org/freedesktop/hostname1"),
		"org.freedesktop.DBus.Introspectable"); err != nil {
		slog.Error("Setup: could not export introspectable for Peer mock: %v", err)
	}

	reply, err = conn.RequestName(consts.DbusHostnamePrefix, dbus.NameFlagDoNotQueue)
	if err != nil {
		slog.Error("Setup: Failed to acquire user name on local system bus: %v", err)
	}
	if reply != dbus.RequestNameReplyPrimaryOwner {
		slog.Error("Setup: Failed to acquire user name on local system bus: name is already taken")
	}

	m.Run()
}
