// Package locale implements the Locale gRPC service.
package locale

import (
	"context"
	"regexp"

	"github.com/canonical/ubuntu-desktop-provision/provd/internal/consts"
	pb "github.com/canonical/ubuntu-desktop-provision/provd/protos"
	"github.com/godbus/dbus/v5"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/types/known/emptypb"
)

// DbusObject is an abstraction of a dbus object.
type DbusObject interface {
	Call(method string, flags dbus.Flags, args ...interface{}) *dbus.Call
	GetProperty(p string) (dbus.Variant, error)
}

// DbusConnector is the interface to the dbus connection which allow easy mocking.
type DbusConnector interface {
	Object(dest string, path dbus.ObjectPath) DbusObject
}

// Service is the implementation of the User module service.
type Service struct {
	pb.UnimplementedLocaleServiceServer
	conn   *dbus.Conn
	locale DbusObject
}

// New returns a new instance of the Locale service.
func New(conn *dbus.Conn) (*Service, error) {
    
    s := &Service{
		conn:   conn,
	}

    s.locale = conn.Object("org.freedesktop.locale1", dbus.ObjectPath("/org/freedesktop/locale1"))
    err := s.locale.Call(consts.DbusPeerPrefix+".Ping", 0).Err
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to ping default DBus Accounts object")
	}

    return s, nil
}

func (s *Service) GetLocale(ctx context.Context, req *emptypb.Empty) (*pb.GetLocaleResponse, error) {
	// Validate request
	if req == nil {
		return nil, status.Errorf(codes.InvalidArgument, "received a nil request")
	}
	// Get the locale from the dbus object properties.
	locale, err := s.locale.GetProperty("org.freedesktop.locale1." + "Locale")
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to get locale: %v", err)
	}
	re := regexp.MustCompile(`LANG=([a-zA-Z_]+\.UTF-8)`)
	matches := re.FindStringSubmatch(locale.String())
	if len(matches) < 2 {
		return nil, status.Errorf(codes.Internal, "unexpected locale format")
	}
	extractedLocale := matches[1]

	return &pb.GetLocaleResponse{Locale: extractedLocale}, nil
}

func (s *Service) SetLocale(ctx context.Context, req *pb.SetLocaleRequest) (*emptypb.Empty, error) {
	// Validate request
	if req == nil {
		return nil, status.Errorf(codes.InvalidArgument, "received a nil request")
	}
	if req.Locale == "" {
		return nil, status.Errorf(codes.InvalidArgument, "locale must be specified")
	}

	//err = userObject.Call(consts.DbusUserPrefix+".SetPassword", 0, hashed, "").Err
	// Set the locale using the dbus object.
	err := s.locale.Call("org.freedesktop.locale1."+"SetLocale", 0, []string{req.Locale}, false).Err
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to set locale: %v", err)
	}
	return &emptypb.Empty{}, nil
}
