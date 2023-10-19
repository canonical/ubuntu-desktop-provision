package provdservice

import (
	"context"

	"github.com/canonical/ubuntu-desktop-provision/provd"
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
