// Package chown implements the chown gRPC service.
package chown

import (
	"context"
	"fmt"
	"log/slog"
	"os/exec"

	pb "github.com/canonical/ubuntu-desktop-provision/provd/protos"
)

type iChownExecutable interface {
	Chown(ctx context.Context, username string) error
}

type chownExecutable struct{}

// Option is a functional option to set the executable in tests.
type Option func(*Service) error

// Service is the implementation of the Pro service.
type Service struct {
	pb.UnimplementedChownServiceServer
	chownExecutable iChownExecutable
}

// New returns a new instance of the Chown service.
func New(opts ...Option) (*Service, error) {
	s := &Service{}

	c := &chownExecutable{}
	s.chownExecutable = c

	// Applying options
	for _, opt := range opts {
		if err := opt(s); err != nil {
			return nil, err
		}
	}

	return s, nil
}

func (c *chownExecutable) Chown(ctx context.Context, username string) error {
	// Construct the full path to the priveledged executable
	path := "/usr/libexec/sprovd"

	// Run the pro attach command with the contract token
	out, err := exec.CommandContext(ctx, path, "-chown", username).CombinedOutput()
	if err != nil {
		slog.Error(fmt.Sprintf("failed to run chown /run/gnome-initial-setup for user %s: %v\nOutput: %s", username, err, string(out)))
		return fmt.Errorf("failed to run pro attach: %v\nOutput: %s", err, string(out))
	}

	return nil
}

// ChownSettings attempts to recursively chown the /run/gnome-initial-setup directory for a given user.
func (s *Service) ChownSettings(ctx context.Context, req *pb.ChownRequest) (*pb.ChownResponse, error) {
	err := s.chownExecutable.Chown(ctx, req.Username)

	// This is only a temporary workaround, and somthing we don't want to be fatal, nor surface to the user if it fails.
	if err != nil {
		slog.Error(fmt.Sprintf("failed to change ownership of /run/gnome-initial-setup, not all settings will be correctly moved to new user: %v", err))
        return &pb.ChownResponse{Code: pb.ChownResponse_UNKNOWN_ERROR}, nil
	}

	return &pb.ChownResponse{Code: pb.ChownResponse_SUCCESS}, nil
}
