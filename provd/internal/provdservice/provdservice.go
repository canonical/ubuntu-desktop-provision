package provdservice

import (
	"context"

	"github.com/canonical/ubuntu-desktop-provision/provd"
	"github.com/canonical/ubuntu-desktop-provision/provd/internal/daemon"
	"google.golang.org/grpc"
)

type Service struct {
	provd.UnimplementedHelloWorldServiceServer
	daemon *daemon.Daemon
}

type options struct{}

type option func(*options) error

func New(ctx context.Context, opts ...option) (*Service, error) {
	return &Service{}, nil
}

func (s *Service) RegisterGRPCServer(d *daemon.Daemon) *grpc.Server {
	srv := grpc.NewServer()
	provd.RegisterHelloWorldServiceServer(srv, s)
	s.daemon = d
	return srv
}

func (s *Service) Quit(ctx context.Context) {}
