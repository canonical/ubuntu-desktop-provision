package hello

import (
	"context"

	"github.com/canonical/ubuntu-desktop-provision/provd"
	"github.com/canonical/ubuntu-desktop-provision/provd/internal/logs"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

func (s *Service) SayHello(ctx context.Context, req *provd.HelloRequest) (*provd.HelloReply, error) {
	if req == nil {
		return nil, status.Errorf(codes.InvalidArgument, "Received a nil request")
	}

	name := req.GetName()
	if name == "" {
		return nil, status.Errorf(codes.InvalidArgument, "Name must not be empty")
	}

	message := "Hello, " + name
	return &provd.HelloReply{
		Message: message,
	}, nil
}

type Service struct {
	provd.UnimplementedHelloWorldServiceServer
}

type options struct{}

type option func(*options) error

func NewService(ctx context.Context) Service {
	log.Debug(ctx, "Building new GRPC Hello service")

	return Service{}
}

func (s *Service) Quit(ctx context.Context) {}
