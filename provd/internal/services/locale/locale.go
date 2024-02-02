// Package locale implements the Locale gRPC service.
package locale

import (
	"bufio"
	"context"
	"fmt"
	"os"
	"regexp"
	"strings"

	"github.com/canonical/ubuntu-desktop-provision/provd/internal/consts"
	pb "github.com/canonical/ubuntu-desktop-provision/provd/protos"
	"github.com/godbus/dbus/v5"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/types/known/emptypb"
)

const (
	localeSupportedPath = "/usr/share/i18n/SUPPORTED"
)

// Option is a functional option to set the DBus objects in tests.
type Option func(*Service) error

// Service is the implementation of the User module service.
type Service struct {
	pb.UnimplementedLocaleServiceServer
	conn                *dbus.Conn
	locale              dbus.BusObject
	localeSupportedPath string
}

// New returns a new instance of the Locale service.
func New(conn *dbus.Conn, opts ...Option) (*Service, error) {
	s := &Service{
		conn: conn,
	}

	s.locale = conn.Object(consts.DbusLocalePrefix, dbus.ObjectPath("/org/freedesktop/locale1"))
	err := s.locale.Call(consts.DbusPeerPrefix+".Ping", 0).Err
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to ping default DBus locale1 object")
	}

	s.localeSupportedPath = localeSupportedPath

	// Applying options, checking for errors in obtaining DBus objects
	for _, opt := range opts {
		if err := opt(s); err != nil {
			return nil, err
		}
	}

	return s, nil
}

var localRegexp = regexp.MustCompile(`LANG=([a-zA-Z_]+\.UTF-8)`)

// GetLocale returns the current locale.
func (s *Service) GetLocale(ctx context.Context, req *emptypb.Empty) (*pb.GetLocaleResponse, error) {
	// Validate request
	if req == nil {
		return nil, status.Errorf(codes.InvalidArgument, "received a nil request")
	}

	// Get the locale from the dbus object properties.
	locale, err := s.locale.GetProperty(consts.DbusLocalePrefix + ".Locale")
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to get locale: %v", err)
	}
	matches := localRegexp.FindStringSubmatch(locale.String())
	if len(matches) < 2 {
		return nil, status.Errorf(codes.Internal, "unexpected locale format")
	}
	extractedLocale := matches[1]

	return &pb.GetLocaleResponse{Locale: extractedLocale}, nil
}

// SetLocale sets the current locale.
func (s *Service) SetLocale(ctx context.Context, req *pb.SetLocaleRequest) (*emptypb.Empty, error) {
	// Validate request
	if req == nil {
		return nil, status.Errorf(codes.InvalidArgument, "received a nil request")
	}
	if req.Locale == "" {
		return nil, status.Errorf(codes.InvalidArgument, "locale must be specified")
	}

	// Check if the locale is supported
	if supported, err := isLocaleSupported(req.Locale, s.localeSupportedPath); err != nil {
		return nil, status.Errorf(codes.Internal, "failed to check if locale is supported: %v", err)
	} else if !supported {
		return nil, status.Errorf(codes.InvalidArgument, "locale is not supported")
	}

	// Set the locale
	err := s.locale.Call(consts.DbusLocalePrefix+".SetLocale", 0, []string{req.Locale}, false).Err
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to set locale: %v", err)
	}

	return &emptypb.Empty{}, nil
}

// Function to check if a given locale is supported.
func isLocaleSupported(locale string, supportedPath string) (bool, error) {
	// Open the locale file
	f, err := os.Open(supportedPath)
	if err != nil {
		return false, fmt.Errorf("failed to open locale file: %v", err)
	}
	defer f.Close()

	s := bufio.NewScanner(f)
	for s.Scan() {
		l := strings.TrimSpace(s.Text())
		if l == "" {
			continue
		}

		// Split the line into locale and encoding
		fields := strings.Fields(l)
		if len(fields) < 2 {
			// Line does not have the expected format
			return false, fmt.Errorf("invalid line format: %s", l)
		}

		// Check if the input locale matches
		if fields[0] == locale {
			return true, nil
		}
	}
	return false, s.Err()
}
