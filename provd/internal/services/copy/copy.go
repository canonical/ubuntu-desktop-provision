// Package copy implemnts the Copy gRPC service for copying dconf settings to newly created users.
package copy

import (
	"context"
	"fmt"
	"log/slog"
	"os/exec"

	pb "github.com/canonical/ubuntu-desktop-provision/provd/protos"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/types/known/emptypb"
)

type iCopier interface {
	CopySettings(ctx context.Context, username string) error
}

type copier struct{}

func (c *copier) CopySettings(ctx context.Context, username string) error {
	//  Path to sprovd bin
	sprovdPath := "/usr/libexec/sprovd"

	out, err := exec.CommandContext(ctx, sprovdPath, "--user", username).CombinedOutput()
	if err != nil {
		slog.Error(fmt.Sprintf("failed to copy dconf settings to user: %v\nOutput: %s", err, string(out)))
		return fmt.Errorf("failed to copy dconf settings to user: %v\nOutput: %s", err, string(out))
	}

	return nil
}

// Option is a functional option to set the DBus objects in tests.
type Option func(*Service) error

// Service is the implementation of the Copy service.
type Service struct {
	pb.UnimplementedCopyServiceServer
	copier iCopier
}

// New returns a new instance of the Copy service.
func New(opts ...Option) (*Service, error) {
	s := &Service{}

	c := &copier{}
	s.copier = c

	// Applying options, checking for errors in obtaining DBus objects
	for _, opt := range opts {
		if err := opt(s); err != nil {
			return nil, err
		}
	}

	return s, nil
}

// CopySettings copies dconf settings from the gnome-initial-setup user to the target user.
func (s *Service) CopySettings(ctx context.Context, req *pb.CopySettingsRequest) (*emptypb.Empty, error) {
	if req.GetUsername() == "" {
		return nil, status.Errorf(codes.InvalidArgument, "username cannot be empty")
	}

	if err := s.copier.CopySettings(ctx, req.GetUsername()); err != nil {
		return nil, status.Errorf(codes.Internal, fmt.Sprintf("failed to copy settings: %v", err))
	}

	return &emptypb.Empty{}, nil
}
