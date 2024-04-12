package telemetry

import (
	"context"
	"fmt"
	"log/slog"

	pb "github.com/canonical/ubuntu-desktop-provision/provd/protos"
	"github.com/ubuntu/ubuntu-report/pkg/sysmetrics"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/types/known/emptypb"
)

// Option is a functional options for tests.
type Option func(*Service) error

// Service is the implementation of the telemetry service.
type Service struct {
	pb.UnimplementedTelemetryServiceServer
}

// New returns a new instance of the telemetry service.
func New(opts ...Option) (*Service, error) {
	s := &Service{}

	// Apply options
	for _, opt := range opts {
		if err := opt(s); err != nil {
			return nil, err
		}
	}

	return s, nil
}

func (s *Service) Collect(ctx context.Context, _ *emptypb.Empty) (*pb.CollectResponse, error) {
	metrics, err := sysmetrics.Collect()

	if err != nil {
		slog.Error(fmt.Sprintf("failed to collect metrics: %v", err))
		return nil, status.Errorf(codes.Internal, fmt.Sprintf("faild to collect metrics: %v", err))
	}

	return &pb.CollectResponse{Metrics: string(metrics)}, nil
}

func (s *Service) CollectAndSend(ctx context.Context, _ *emptypb.Empty) (*pb.SendResponse, error) {
    err := sysmetrics.CollectAndSend(sysmetrics.ReportAuto, false, "")

	if err != nil {
		slog.Error(fmt.Sprintf("failed to collect and send metrics: %v", err))
        return &pb.SendResponse{
        	Type: pb.SendResponse_UNKNOWN_ERROR,
        }, nil
	}

    return &pb.SendResponse{
        Type: pb.SendResponse_SUCCESS,
    }, nil
}

func (s *Service) SendDecline (ctx context.Context, _ *emptypb.Empty) (*pb.SendResponse, error) {
    err := sysmetrics.SendDecline(false, "") 

	if err != nil {
		slog.Error(fmt.Sprintf("failed to send decline: %v", err))
        return &pb.SendResponse{
        	Type: pb.SendResponse_UNKNOWN_ERROR,
        }, nil
	}

    return &pb.SendResponse{
        Type: pb.SendResponse_SUCCESS,
    }, nil
}

