package hello

import (
	"context"

	"github.com/canonical/ubuntu-desktop-provision/provd"
	"github.com/canonical/ubuntu-desktop-provision/provd/internal/logs"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

type Service struct {
	provd.UnimplementedHelloWorldServiceServer
}

// SayHello receives a HelloRequest and returns a HelloReply with a greeting message.
func (s *Service) SayHello(ctx context.Context, req *provd.HelloRequest) (*provd.HelloReply, error) {
	if req == nil {
		return nil, status.Errorf(codes.InvalidArgument, "received a nil request")
	}

	name := req.GetName()
	if name == "" {
		return nil, status.Errorf(codes.InvalidArgument, "name must not be empty")
	}

	message := "Hello, " + name
	return &provd.HelloReply{
		Message: message,
	}, nil
}

func (s *Service) Quit(ctx context.Context) {}
