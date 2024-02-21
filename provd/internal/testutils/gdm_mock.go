package testutils

import (
	"context"
	"fmt"
	"log"
	"log/slog"
	"os"
	"os/exec"
	"path/filepath"
	"strings"
	"sync"

	"github.com/canonical/ubuntu-desktop-provision/provd/internal/consts"
	"github.com/godbus/dbus/v5"
)

var (
	privateBusMU sync.Mutex
	privateBuses []*privateBus
)

type privateBus struct {
	conn    *dbus.Conn
	tempDir string
	address string
	cleanup func()
}

type gdmManagerBus struct{}

func (g gdmManagerBus) OpenSession() (interface{}, *dbus.Error) {
	bus, err := setupPrivateBus()
	if err != nil {
		return "", dbus.NewError(consts.DbusGdmPrefix+".Manager.OpenSession", []interface{}{"failed to open session"})
	}

	// Add the bus to the list of private buses so it can be cleaned up later
	privateBusMU.Lock()
	defer privateBusMU.Unlock()
	privateBuses = append(privateBuses, bus)
	return bus.address, nil
}

// ExportGdmMock exports a mock GDM Manager on the system bus.
func ExportGdmMock(conn *dbus.Conn) error {
	g := gdmManagerBus{}
	if err := conn.Export(g, dbus.ObjectPath("/org/gnome/DisplayManager/Manager"), consts.DbusGdmPrefix+".Manager"); err != nil {
		return fmt.Errorf("could not export GDM Manager mock: %w", err)
	}

	reply, err := conn.RequestName(consts.DbusGdmPrefix, dbus.NameFlagDoNotQueue)
	if err != nil {
		return fmt.Errorf("failed to acquire account name on local system bus: %w", err)
	}
	if reply != dbus.RequestNameReplyPrimaryOwner {
		return fmt.Errorf("failed to acquire account name on local system bus: name already taken")
	}

	return nil
}

type gdmSessionBus struct {
	conn     *dbus.Conn
	username string
}

func (g *gdmSessionBus) Ping() *dbus.Error {
	return nil
}

func (g *gdmSessionBus) BeginVerificationForUser(serviceName, username string, s dbus.Sender) (interface{}, *dbus.Error) {
	// Save the username for later verification
	g.username = username
	_ = emitSignal(g.conn, dbus.ObjectPath("/org/gnome/DisplayManager/Session"), string(s), consts.DbusGdmPrefix+".UserVerifier.SecretInfoQuery", "gdm-password", "foobar")
	return "", nil
}

func (g *gdmSessionBus) AnswerQuery(serviceName, answer string, s dbus.Sender) *dbus.Error {
	if g.username != "myuser" || answer != "mypassword" {
		_ = emitSignal(g.conn, dbus.ObjectPath("/org/gnome/DisplayManager/Session"), string(s), consts.DbusGdmPrefix+".UserVerifier.Problem", "gdm-password", "Invalid username or password")
		return nil
	}
	_ = emitSignal(g.conn, dbus.ObjectPath("/org/gnome/DisplayManager/Session"), string(s), consts.DbusGdmPrefix+".Greeter.SessionOpened", "gdm-password")
	return nil
}

func (g *gdmSessionBus) StartSessionWhenReady(serviceName string, shouldStartSession bool) *dbus.Error {
	return nil
}

// emitSignal is essentially a copy of dbus.Conn.Emit, but with the ability to specify the destination.
func emitSignal(conn *dbus.Conn, path dbus.ObjectPath, destination, name string, values ...interface{}) error {
	i := strings.LastIndex(name, ".")
	iface := name[:i]
	member := name[i+1:]
	msg := new(dbus.Message)
	msg.Type = dbus.TypeSignal
	msg.Headers = make(map[dbus.HeaderField]dbus.Variant)
	msg.Headers[dbus.FieldInterface] = dbus.MakeVariant(iface)
	msg.Headers[dbus.FieldMember] = dbus.MakeVariant(member)
	msg.Headers[dbus.FieldPath] = dbus.MakeVariant(path)
	msg.Headers[dbus.FieldDestination] = dbus.MakeVariant(destination)
	msg.Body = values
	if len(values) > 0 {
		msg.Headers[dbus.FieldSignature] = dbus.MakeVariant(dbus.SignatureOf(values...))
	}
	if err := msg.IsValid(); err != nil {
		return err
	}
	return conn.Send(msg, nil).Err
}

func setupPrivateBus() (*privateBus, error) {
	address, tempDir, cleanup := startPrivateDbusServer()
	conn, err := dbus.Dial(address)
	if err != nil {
		return nil, fmt.Errorf("failed to connect to session bus: %w", err)
	}
	err = conn.Auth(nil)
	if err != nil {
		return nil, fmt.Errorf("failed to authenticate: %w", err)
	}
	err = conn.Hello()
	if err != nil {
		return nil, fmt.Errorf("failed to say hello: %w", err)
	}
	g := &gdmSessionBus{conn: conn}
	if err := conn.Export(g, dbus.ObjectPath("/org/gnome/DisplayManager/Session"), consts.DbusGdmPrefix+".UserVerifier"); err != nil {
		return nil, fmt.Errorf("could not export UserVerifier mock: %w", err)
	}
	if err := conn.Export(g, dbus.ObjectPath("/org/gnome/DisplayManager/Session"), consts.DbusGdmPrefix+".Greeter"); err != nil {
		return nil, fmt.Errorf("could not export Greeter mock: %w", err)
	}
	if err := conn.Export(g, dbus.ObjectPath("/org/gnome/DisplayManager/Session"), consts.DbusPeerPrefix); err != nil {
		return nil, fmt.Errorf("could not export Peer mock: %w", err)
	}

	var reply dbus.RequestNameReply
	reply, err = conn.RequestName(consts.DbusGdmPrefix+".UserVerifier", dbus.NameFlagDoNotQueue)
	if err != nil {
		return nil, fmt.Errorf("failed to acquire account name on local system bus: %w", err)
	}
	if reply != dbus.RequestNameReplyPrimaryOwner {
		return nil, fmt.Errorf("failed to acquire account name on local system bus: name already taken")
	}

	reply, err = conn.RequestName(consts.DbusGdmPrefix+".Greeter", dbus.NameFlagDoNotQueue)
	if err != nil {
		return nil, fmt.Errorf("failed to acquire account name on local system bus: %w", err)
	}
	if reply != dbus.RequestNameReplyPrimaryOwner {
		return nil, fmt.Errorf("failed to acquire account name on local system bus: name already taken")
	}

	return &privateBus{conn, tempDir, address, cleanup}, nil
}

func startPrivateDbusServer() (string, string, func()) {
	privateBusDir, err := os.MkdirTemp("", "tests-private-dbus")
	if err != nil {
		log.Fatalf("Setup: can't create dbus system directory: %v", err)
	}
	slog.Info(fmt.Sprintf("Created directory for private dbus: %s", privateBusDir))
	config := filepath.Join(privateBusDir, "dbus.config")
	err = os.WriteFile(config, []byte(`<!DOCTYPE busconfig PUBLIC "-//freedesktop//DTD D-Bus Bus Configuration 1.0//EN"
 "http://www.freedesktop.org/standards/dbus/1.0/busconfig.dtd">
<busconfig>
  <type>system</type>
  <keep_umask/>
  <listen>unix:tmpdir=/tmp</listen>
  <standard_system_servicedirs />
  <policy context="default">
    <allow send_destination="*" eavesdrop="true"/>
    <allow eavesdrop="true"/>
    <allow own="*"/>
  </policy>
</busconfig>`), 0600)
	if err != nil {
		log.Fatalf("Setup: can't create dbus configuration: %v", err)
	}
	ctx, stopDbus := context.WithCancel(context.Background())
	// #nosec G204 - this is only for tests, we are in control of the config
	dbusCmd := exec.CommandContext(ctx, "dbus-daemon", "--print-address=1", "--config-file="+config)
	dbusStdout, err := dbusCmd.StdoutPipe()
	if err != nil {
		_ = os.RemoveAll(privateBusDir)
		log.Fatalf("couldn't get stdout of dbus-daemon: %v", err)
	}
	if err := dbusCmd.Start(); err != nil {
		_ = os.RemoveAll(privateBusDir)
		log.Fatalf("couldn't start dbus-daemon: %v", err)
	}
	dbusAddr := make([]byte, 256)
	n, err := dbusStdout.Read(dbusAddr)
	if err != nil {
		_ = os.RemoveAll(privateBusDir)
		log.Fatalf("couldn't get dbus address: %v", err)
	}
	dbusAddr = dbusAddr[:n]

	return string(dbusAddr), privateBusDir, func() {
		stopDbus()
		_ = dbusCmd.Wait()

		if err := os.RemoveAll(filepath.Dir(config)); err != nil {
			log.Fatalf("couldn't remove dbus configuration directory: %v", err)
		}
		slog.Info("Removed dbus configuration directory")
	}
}

// CleanupPrivateBuses cleans up the private buses created for testing.
func CleanupPrivateBuses() {
	for _, bus := range privateBuses {
		bus.cleanup()
		bus.conn.Close()
		if err := os.RemoveAll(bus.tempDir); err != nil {
			log.Fatalf("couldn't remove dbus configuration directory: %v", err)
		}
		slog.Info(fmt.Sprintf("Removed directory for private dbus: %s", bus.tempDir))
	}
}
