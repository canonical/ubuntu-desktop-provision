// Package telemetry implements the Telemetry.v2 gRPC service.
package telemetry

import (
	"context"
	"errors"
	"fmt"
	"log/slog"

	pb "github.com/canonical/ubuntu-desktop-provision/provd/protos/v2"
	"github.com/ubuntu/ubuntu-insights/insights"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/types/known/emptypb"
)

// appSource is the source identifier for telemetry data collection.
const appSource = "ubuntu_desktop_provision"

// Option is a functional option for tests.
type Option func(*Service) error

type provider interface {
	Collect(source string, flags insights.CollectFlags) ([]byte, error)
	SetConsentState(source string, state bool) error
}

// Service is the implementation of the telemetry service.
type Service struct {
	pb.UnimplementedTelemetryServiceServer
	provider provider
}

// New returns a new instance of the telemetry service.
func New(opts ...Option) (*Service, error) {
	s := &Service{}

	s.provider = insights.Config{}.Resolve()
	for _, opt := range opts {
		if err := opt(s); err != nil {
			return nil, err
		}
	}
	return s, nil
}

// Collect gathers system metrics. If `dryRun` is true, the collected metrics are not written to disk.
// If `sourceMetricsPath` is provided, the file at that path will be parsed as JSON and appended to the collected metrics.
//
// Note that the returned metrics may differ from the ones actually written to disk if consent is false, or unknown.
func (s *Service) Collect(ctx context.Context, req *pb.CollectRequest) (*pb.CollectResponse, error) {
	flags := insights.CollectFlags{
		SourceMetricsPath: req.SourceMetricsPath,
		DryRun:            req.DryRun,
	}

	metrics, err := s.provider.Collect(appSource, flags)
	if err != nil {
		slog.Error(fmt.Sprintf("failed to collect metrics: %v", err))

		if errors.Is(err, insights.ErrSourceMetricsError) {
			return &pb.CollectResponse{Type: pb.CollectResponse_SOURCE_METRICS_ERROR}, nil
		}
		return nil, status.Errorf(codes.Internal, "failed to collect metrics: %v", err)
	}

	return &pb.CollectResponse{Metrics: string(metrics)}, nil
}

// SetConsent sets the consent state to the desired state for the global, app source, and linux sources.
func (s *Service) SetConsent(ctx context.Context, req *pb.SetConsentRequest) (*emptypb.Empty, error) {
	if err := s.provider.SetConsentState("", req.State); err != nil {
		slog.Error(fmt.Sprintf("failed to set global consent state: %v", err))
		return nil, status.Errorf(codes.Internal, "failed to set global consent state: %v", err)
	}

	if err := s.provider.SetConsentState(appSource, req.State); err != nil {
		slog.Error(fmt.Sprintf("failed to set app source consent state: %v", err))
		return nil, status.Errorf(codes.Internal, "failed to set app source consent state: %v", err)
	}

	// Sets the linux source consent state for systemd controlled triggers
	if err := s.provider.SetConsentState("linux", req.State); err != nil {
		slog.Error(fmt.Sprintf("failed to set linux source consent state: %v", err))
		return nil, status.Errorf(codes.Internal, "failed to set linux source consent state: %v", err)
	}

	return &emptypb.Empty{}, nil
}
