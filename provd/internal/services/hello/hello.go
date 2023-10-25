// Package hello implements the HelloWorld gRPC service.
package hello

import (
	"context"

	"github.com/canonical/ubuntu-desktop-provision/provd"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

// Service is the implementation of the HelloWorld module service.
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
