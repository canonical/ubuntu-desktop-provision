// Package services mediates all the business logic of the application via a manager.
package services

import (
	"context"

	"github.com/canonical/ubuntu-desktop-provision/provd"
	"github.com/canonical/ubuntu-desktop-provision/provd/internal/logs"
	"github.com/canonical/ubuntu-desktop-provision/provd/internal/services/hello"
	"github.com/ubuntu/decorate"
	"google.golang.org/grpc"
)

// Manager mediate the whole business logic of the application.
type Manager struct {
	helloService hello.Service
}

// NewManager returns a new manager after creating all necessary items for our business logic.
func NewManager(ctx context.Context) (m Manager, err error) {
	defer decorate.OnError(&err, "can't create provd object")

	log.Debug(ctx, "Building authd object")

	helloService := hello.NewService(ctx)

	return Manager{
		helloService: helloService,
	}, nil
}

// RegisterGRPCServices returns a new grpc Server after registering both NSS and PAM services.
func (m Manager) RegisterGRPCServices(ctx context.Context) *grpc.Server {
	log.Debug(ctx, "Registering GRPC services")

	grpcServer := grpc.NewServer()

	provd.RegisterHelloWorldServiceServer(grpcServer, &m.helloService)
	return grpcServer
}
