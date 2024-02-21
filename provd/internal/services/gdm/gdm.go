// Package gdm implements the GDM gRPC service.
package gdm

import (
	"context"
	"fmt"
	"log/slog"

	"github.com/canonical/ubuntu-desktop-provision/provd/internal/consts"
	pb "github.com/canonical/ubuntu-desktop-provision/provd/protos"
	"github.com/godbus/dbus/v5"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/types/known/emptypb"
)

// Option is a functional option to set the DBus objects in tests.
type Option func(*Service) error

// Service is the implementation of the GDM module service.
type Service struct {
	pb.UnimplementedGdmServiceServer
	conn           *dbus.Conn
	privateConn    *dbus.Conn
	displayManager dbus.BusObject
	greeter        dbus.BusObject
	userVerifier   dbus.BusObject
}

// New returns a new instance of the GDM service.
func New(conn *dbus.Conn, opts ...Option) (*Service, error) {
	s := &Service{conn: conn}

	s.displayManager = s.conn.Object(consts.DbusGdmPrefix, dbus.ObjectPath("/org/gnome/DisplayManager/Manager"))

	// Applying options, checking for errors in obtaining DBus objects
	for _, opt := range opts {
		if err := opt(s); err != nil {
			return nil, err
		}
	}

	// Ask GDM to open a session
	call := s.displayManager.Call(consts.DbusGdmPrefix+".Manager.OpenSession", 0)
	if call.Err != nil {
		return nil, status.Errorf(codes.Internal, "failed to call Manager: %s", call.Err)
	}

	busAddress, ok := call.Body[0].(string)
	if !ok {
		return nil, status.Errorf(codes.Internal, "failed to get bus address from Manager")
	}

	// Establish a private connection to the session bus
	var err error
	s.privateConn, err = dbus.Dial(busAddress)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to connect to session bus: %s", err)
	}
	err = s.privateConn.Auth(nil)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to authenticate: %s", err)
	}

	// Ignoring the error here, since GDM's private bus doesn't support the standard "Hello" method. It is needed for the tests, though.
	_ = s.privateConn.Hello()

	// Ping the UserVerifier and Greeter objects
	s.userVerifier = s.privateConn.Object(consts.DbusGdmPrefix+".UserVerifier", dbus.ObjectPath("/org/gnome/DisplayManager/Session"))
	err = s.userVerifier.Call(consts.DbusPeerPrefix+".Ping", 0).Err
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to ping UserVerifier: %s", err)
	}
	s.greeter = s.privateConn.Object(consts.DbusGdmPrefix+".Greeter", dbus.ObjectPath("/org/gnome/DisplayManager/Session"))
	err = s.greeter.Call(consts.DbusPeerPrefix+".Ping", 0).Err
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to ping Greeter: %s", err)
	}

	return s, nil
}

// LaunchDesktopSession launches a desktop session for the given user and password.
func (s *Service) LaunchDesktopSession(ctx context.Context, req *pb.GdmServiceRequest) (*emptypb.Empty, error) {
	// Validate request
	if req == nil {
		return nil, status.Errorf(codes.InvalidArgument, "received a nil request")
	}
	if req.Username == "" {
		return nil, status.Errorf(codes.InvalidArgument, "received an empty username")
	}

	// Listen for signals on the session bus
	signals := make(chan *dbus.Signal)
	defer close(signals)
	s.privateConn.Signal(signals)
	defer s.privateConn.RemoveSignal(signals)

	// Begin user verification
	s.userVerifier.Call(consts.DbusGdmPrefix+".UserVerifier.BeginVerificationForUser", 0, "gdm-password", req.Username)

	// Wait for signals
	for {
		select {
		case <-ctx.Done():
			return nil, status.Errorf(codes.DeadlineExceeded, "context deadline exceeded")
		case signal := <-signals:
			switch signal.Name {
			// Problem signal
			case consts.DbusGdmPrefix + ".UserVerifier.Problem":
				slog.Error(fmt.Sprintf("Problem signal received: %#v", signal))
				return nil, status.Errorf(codes.Internal, "received Problem signal: %v", signal.Body[1])
			// SecretInfoQuery signal
			case consts.DbusGdmPrefix + ".UserVerifier.SecretInfoQuery":
				slog.Debug(fmt.Sprintf("SecretInfoQuery signal received: %#v", signal))
				msg, ok := signal.Body[0].(string)
				if !ok {
					return nil, status.Errorf(codes.Internal, "failed to get message from SecretInfoQuery signal")
				}
				// Reply with password
				s.userVerifier.Call(consts.DbusGdmPrefix+".UserVerifier.AnswerQuery", 0, msg, req.Password)
			// SessionOpened signal
			case consts.DbusGdmPrefix + ".Greeter.SessionOpened":
				slog.Debug(fmt.Sprintf("SessionOpened signal received: %#v", signal))
				msg, ok := signal.Body[0].(string)
				if !ok {
					return nil, status.Errorf(codes.Internal, "failed to get message from SessionOpened signal")
				}
				// Tell GDM to start the session and return
				s.greeter.Call(consts.DbusGdmPrefix+".Greeter.StartSessionWhenReady", 0, msg, true)
				return &emptypb.Empty{}, nil
			default:
				slog.Debug(fmt.Sprintf("Received signal: %#v", signal))
			}
		}
	}
}

// Close closes the connection to the private bus.
func (s *Service) Close() {
	if s.privateConn != nil {
		s.privateConn.Close()
	}
}
