// Package telemetry implements the Telemetry gRPC service.
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

type sysmetricer interface {
	Collect() ([]byte, error)
	CollectAndSend(r sysmetrics.ReportType, alwaysReport bool, baseURL string) error
	SendDecline(alwaysReport bool, baseURL string) error
}

// Implementation of sysmetricer that hands all commands over to the sysmetrics pkg.
type sysmetricsImpl struct{}

func (s *sysmetricsImpl) Collect() ([]byte, error) {
	return sysmetrics.Collect()
}

func (s *sysmetricsImpl) CollectAndSend(r sysmetrics.ReportType, alwaysReport bool, baseURL string) error {
	return sysmetrics.CollectAndSend(r, alwaysReport, baseURL)
}

func (s *sysmetricsImpl) SendDecline(alwaysReport bool, baseURL string) error {
	return sysmetrics.SendDecline(alwaysReport, baseURL)
}

// Service is the implementation of the telemetry service.
type Service struct {
	pb.UnimplementedTelemetryServiceServer
	systemmetrics sysmetricer
}

// New returns a new instance of the telemetry service.
func New(opts ...Option) (*Service, error) {
	s := &Service{}

	s.systemmetrics = &sysmetricsImpl{}

	// Apply options
	for _, opt := range opts {
		if err := opt(s); err != nil {
			return nil, err
		}
	}

	return s, nil
}

// Collect gathers system metrics and returns them without sending them to the metrics sever.
func (s *Service) Collect(ctx context.Context, _ *emptypb.Empty) (*pb.CollectResponse, error) {
	metrics, err := s.systemmetrics.Collect()

	if err != nil {
		slog.Error(fmt.Sprintf("failed to collect metrics: %v", err))
		return nil, status.Errorf(codes.Internal, fmt.Sprintf("faild to collect metrics: %v", err))
	}

	return &pb.CollectResponse{Metrics: string(metrics)}, nil
}

// CollectAndSend gathers system metrics and sends them to the metrics sever.
func (s *Service) CollectAndSend(ctx context.Context, _ *emptypb.Empty) (*pb.SendResponse, error) {
	err := s.systemmetrics.CollectAndSend(sysmetrics.ReportAuto, false, "")

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

// SendDecline sends a declined response to the server.
func (s *Service) SendDecline(ctx context.Context, _ *emptypb.Empty) (*pb.SendResponse, error) {
	err := s.systemmetrics.SendDecline(false, "")

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
