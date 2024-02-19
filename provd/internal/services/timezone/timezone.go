// Package timezone implements the Timezone gRPC service.
package timezone

import (
	"context"

	"github.com/canonical/ubuntu-desktop-provision/provd/internal/consts"
	pb "github.com/canonical/ubuntu-desktop-provision/provd/protos"
	"github.com/godbus/dbus/v5"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/types/known/emptypb"
)

// Service is the implementation of the Timezone service.
type Service struct {
	pb.UnimplementedTimezoneServiceServer
	conn     *dbus.Conn
	timezone dbus.BusObject
}

// Option is a functional option to set the DBus objects in tests.
type Option func(*Service) error

// New returns a new instance of the Timezone service.
func New(conn *dbus.Conn, opts ...Option) (*Service, error) {
	s := &Service{
		conn: conn,
	}

	// Create timezone object
	s.timezone = conn.Object("org.freedesktop.timedate1", "/org/freedesktop/timedate1")

	// Applying options, checking for errors in obtaining DBus objects
	for _, opt := range opts {
		if err := opt(s); err != nil {
			return nil, err
		}
	}

	err := s.timezone.Call(consts.DbusPeerPrefix+".Ping", 0).Err
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to ping default DBus Timezone object")
	}

	return s, nil
}

// GetTimezone gets the current timezone.
func (s *Service) GetTimezone(ctx context.Context, req *emptypb.Empty) (*pb.GetTimezoneResponse, error) {
	if req == nil {
		return nil, status.Error(codes.InvalidArgument, "empty request")
	}

	// Get the timezone
	var timezone string
	property, err := s.timezone.GetProperty(consts.DbusTimedatePrefix + ".Timezone")
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to get current timezone: %v", err)
	}

	timezone, ok := property.Value().(string)
	if !ok {
		return nil, status.Error(codes.Internal, "failed to parse timezone")
	}

	return &pb.GetTimezoneResponse{Timezone: timezone}, nil
}

// SetTimezone validates the requested timezone and sets it if valid.
func (s *Service) SetTimezone(ctx context.Context, req *pb.SetTimezoneRequest) (*emptypb.Empty, error) {
	if req == nil {
		return nil, status.Error(codes.InvalidArgument, "empty request")
	}

	// Get the list of avalible timezones
	var timezones []string
	err := s.timezone.Call(consts.DbusTimedatePrefix+".ListTimezones", 0).Store(&timezones)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to list timezones: %v", err)
	}

	// Validate requested timezone
	isValidTimezone := false
	for _, tz := range timezones {
		if req.Timezone == tz {
			isValidTimezone = true
			break
		}
	}
	if !isValidTimezone {
		return nil, status.Errorf(codes.InvalidArgument, "invalid timezone: %s", req.Timezone)
	}

	// Set the timezone
	err = s.timezone.Call(consts.DbusTimedatePrefix+".SetTimezone", 0, req.Timezone, false).Err
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to set timezone: %v", err)
	}

	return &emptypb.Empty{}, nil
}
