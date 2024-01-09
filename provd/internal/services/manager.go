// Package services mediates all the business logic of the application via a manager.
package services

import (
	"context"
	"log/slog"

	"github.com/canonical/ubuntu-desktop-provision/provd"
	"github.com/canonical/ubuntu-desktop-provision/provd/internal/services/hello"
	"github.com/canonical/ubuntu-desktop-provision/provd/internal/services/user"
	proto "github.com/canonical/ubuntu-desktop-provision/provd/proto"
	"github.com/godbus/dbus/v5"

	"github.com/ubuntu/decorate"
	"google.golang.org/grpc"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

const (
	accountsDBusName  string = "org.freedesktop.Accounts"
	accountsDBusPath  string = "/org/freedesktop/Accounts"
	hostnameDBusName  string = "org.freedesktop.hostname1"
	hostnameDBusPath  string = "/org/freedesktop/hostname1"
	accountsUserIface string = "org.freedesktop.Accounts.User"
	hostnameIface     string = "org.freedesktop.hostname1"
)

// Manager mediates the whole business logic of the application.
type Manager struct {
	helloService hello.Service
	userService  user.Service
	bus          *dbus.Conn
}

// NewManager returns a new manager after creating all necessary items for our business logic.
func NewManager(ctx context.Context) (m Manager, err error) {
	defer decorate.OnError(&err, "can't create provd object")

	// Connect to dbus
	bus, err := dbus.ConnectSystemBus()
	if err != nil {
		return Manager{}, status.Errorf(codes.Internal, "Failed to connect to system bus: %s", err)
	}

	slog.Debug("Building provd object")

	helloService := hello.Service{}

	userService := user.New(bus)

	return Manager{
		helloService: helloService,
		userService:  *userService,
		bus:          bus,
	}, nil
}

// RegisterGRPCServices returns a new grpc Server.
func (m Manager) RegisterGRPCServices(ctx context.Context) *grpc.Server {
	slog.Debug("Registering GRPC services")

	grpcServer := grpc.NewServer()

	provd.RegisterHelloWorldServiceServer(grpcServer, &m.helloService)
	proto.RegisterUserServiceServer(grpcServer, &m.userService)
	return grpcServer
}

// stop closes the dbus connection.
func (m *Manager) Stop() error {
	slog.Debug("Closing grpc manager and dbus connection")

	return m.bus.Close()
}
