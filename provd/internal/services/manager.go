// Package services mediates all the business logic of the application via a manager.
package services

import (
	"context"
	"fmt"
	"log/slog"

	"github.com/canonical/ubuntu-desktop-provision/provd/internal/services/user"
	pb "github.com/canonical/ubuntu-desktop-provision/provd/protos"
	"github.com/godbus/dbus/v5"
	"github.com/ubuntu/decorate"
	"google.golang.org/grpc"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

// Manager mediates the whole business logic of the application.
type Manager struct {
	userService user.Service
	bus         *dbus.Conn
}

// NewManager returns a new manager after creating all necessary items for our business logic.
func NewManager(ctx context.Context) (m *Manager, err error) {
	defer decorate.OnError(&err, "can't create provd object")

	bus, err := dbus.ConnectSystemBus(
		dbus.WithIncomingInterceptor(func(msg *dbus.Message) {
			slog.Debug(fmt.Sprintf("DBUS: %s", msg))
		}))
	if err != nil {
		return nil, status.Errorf(codes.Internal, "Failed to connect to system bus: %s", err)
	}

	userService, err := user.New(bus)

	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to create user service: %s", err)
	}

	return &Manager{
		userService: *userService,
		bus:         bus,
	}, nil
}

// RegisterGRPCServices returns a new grpc Server.
func (m Manager) RegisterGRPCServices(ctx context.Context) *grpc.Server {
	slog.Debug("Registering GRPC services")

	grpcServer := grpc.NewServer()

	pb.RegisterUserServiceServer(grpcServer, &m.userService)
	return grpcServer
}

// Stop closes the dbus connection.
func (m *Manager) Stop() error {
	slog.Debug("Closing grpc manager and dbus connection")

	return m.bus.Close()
}
