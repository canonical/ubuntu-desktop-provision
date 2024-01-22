// Package user implements the User gRPC service.
package user

import (
	"bufio"
	"context"
	"errors"
	"log/slog"
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
	// usernameMaxLen is the maximum length of a username.
	usernameMaxLen = 32
	// usernameRegex is the regex for a valid username.
	usernameRegex = "^[a-z_][a-z0-9_-]*$"
)

// Service is the implementation of the User module service.
type Service struct {
	pb.UnimplementedUserServiceServer
	conn     *dbus.Conn
	accounts dbus.BusObject
	hostname dbus.BusObject
}

// Option is a functional option to set the DBus objects in tests.
type Option func(*Service) error

// New returns a new instance of the User service with optional configurations.
// Returns an error if unable to obtain necessary DBus objects.
func New(conn *dbus.Conn, opts ...Option) (*Service, error) {
	s := &Service{
		conn: conn,
	}

	// Default objects initialization
	s.accounts = conn.Object(consts.DbusAccountsPrefix, "/org/freedesktop/Accounts")
	if s.accounts == nil {
		return nil, errors.New("failed to get default DBus Accounts object")
	}
	err := s.accounts.Call("org.freedesktop.DBus.Peer.Ping", 0).Err
	if err != nil {
		return nil, errors.New("failed to ping default DBus Accounts object")
	}

	s.hostname = conn.Object(consts.DbusHostnamePrefix, "/org/freedesktop/hostname1")
	if s.hostname == nil {
		return nil, errors.New("failed to get default DBus Hostname object")
	}
	err = s.hostname.Call("org.freedesktop.DBus.Peer.Ping", 0).Err
	if err != nil {
		return nil, errors.New("failed to ping default DBus Hostname object")
	}

	// Applying options, checking for errors in obtaining DBus objects
	for _, opt := range opts {
		if err := opt(s); err != nil {
			return nil, err
		}
	}

	return s, nil
}

// CreateUser creates a new user on the system.
func (s *Service) CreateUser(ctx context.Context, req *pb.CreateUserRequest) (_ *emptypb.Empty, err error) {
	// Get current statichostname
	var currentHostname string
	property, err := s.hostname.GetProperty(consts.DbusHostnamePrefix + ".StaticHostname")
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to get current hostname: %s", err)
	}

	currentHostname, ok := property.Value().(string)
	if !ok {
		return nil, status.Errorf(codes.Internal, "failed to convert current hostname to string")
	}

	var userID uint64

	defer func() {
		if err == nil {
			return
		}

		// Rollback hostname
		err = s.hostname.Call(consts.DbusHostnamePrefix+".SetStaticHostname", 0, currentHostname, false).Err
		if err != nil {
			slog.Error("failed to rollback hostname: %s", err)
		}
		// Delete user
		if userID == 0 {
			return
		}
		err = s.accounts.Call(consts.DbusAccountsPrefix+".DeleteUser", 0, userID).Err
		if err != nil {
			slog.Error("failed to rollback user: %s", err)
		}
	}()

	// Validate request
	if req == nil {
		return nil, status.Errorf(codes.InvalidArgument, "received a nil request")
	}
	user := req.GetUser()
	if user == nil {
		return nil, status.Errorf(codes.InvalidArgument, "received a nil user")
	}
	username := user.GetUsername()
	if username == "" {
		return nil, status.Errorf(codes.InvalidArgument, "received an empty username")
	}
	realName := user.GetRealName()
	if realName == "" {
		return nil, status.Errorf(codes.InvalidArgument, "received an empty realName")
	}
	isAdmin := req.GetIsAdmin()
	var accountType int32
	if isAdmin {
		accountType = 1
	} else {
		accountType = 0
	}
	password := user.GetPassword() // allow empty password?
	autologin := user.GetAutoLogin()
	Hostname := user.GetHostname()
	if Hostname == "" {
		return nil, status.Errorf(codes.InvalidArgument, "received an empty Hostname")
	}
	// Create the user
	var userObjectPath dbus.ObjectPath
	call := s.accounts.Call(consts.DbusAccountsPrefix+".CreateUser", 0, username, realName, accountType)
	err = call.Store(&userObjectPath)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to create user: %s", err)
	}
	hashed, err := hashPassword(password, nil)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to generate hashed password: %s", err)
	}

	// Set the password for the user
	userObject := s.conn.Object(consts.DbusAccountsPrefix, userObjectPath)
	err = userObject.Call(consts.DbusUserPrefix+".SetPassword", 0, hashed, "").Err
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to set password: %s", err)
	}

	// Update userId for rollback via property
	uidProperty, err := userObject.GetProperty(consts.DbusUserPrefix + ".Uid")
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to get user ID: %s", err)
	}
	userID, ok = uidProperty.Value().(uint64)
	if !ok {
		return nil, status.Errorf(codes.Internal, "failed to convert user ID to uint64")
	}

	// Set autologin for the user
	err = userObject.Call(consts.DbusUserPrefix+".SetAutomaticLogin", 0, autologin).Err
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to set autologin: %s", err)
	}

	// Set the Hostname
	err = s.hostname.Call(consts.DbusHostnamePrefix+".SetStaticHostname", 0, Hostname, false).Err
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to set Hostname: %s", err)
	}

	return &emptypb.Empty{}, nil
}

// ValidateUsername validates the given username. Returns an enum value indicating
// the result of the validation.
func (s *Service) ValidateUsername(ctx context.Context, req *pb.ValidateUsernameRequest) (*pb.ValidateUsernameResponse, error) {
	// Validate request
	if req == nil {
		return nil, status.Errorf(codes.InvalidArgument, "received a nil request")
	}
	username := req.GetUsername()
	if username == "" {
		return &pb.ValidateUsernameResponse{UsernameValidation: pb.UsernameValidation_EMPTY}, nil
	}

	// Check if username uses valid characters
	matched, _ := regexp.MatchString(usernameRegex, username)
	if !matched {
		return &pb.ValidateUsernameResponse{UsernameValidation: pb.UsernameValidation_INVALID_CHARS}, nil
	}

	// Check if username is too long
	if len(username) > usernameMaxLen {
		return &pb.ValidateUsernameResponse{UsernameValidation: pb.UsernameValidation_TOO_LONG}, nil
	}

	// Check if username is in reserved list
	// Read line by line to avoid loading the whole file into memory
	file, err := reservedUsernamesFS.Open("reserved-usernames")
	if err != nil {
		return nil, status.Errorf(codes.Internal, "error opening reserved usernames file: %v", err)
	}
	defer file.Close()

	isReserved := false
	scanner := bufio.NewScanner(file)
	for scanner.Scan() {
		line := strings.TrimSpace(scanner.Text()) // Trim the line and ignore comment lines
		if strings.HasPrefix(line, "#") {
			continue
		}
		if line == username {
			isReserved = true
			break
		}
	}

	if err := scanner.Err(); err != nil {
		return nil, status.Errorf(codes.Internal, "error reading reserved usernames file: %v", err)
	}

	if isReserved {
		return &pb.ValidateUsernameResponse{UsernameValidation: pb.UsernameValidation_SYSTEM_RESERVED}, nil
	}

	// Check if username is already in use
	err = s.accounts.Call(consts.DbusAccountsPrefix+".FindUserByName", 0, username).Err

	// User found
	if err == nil {
		return &pb.ValidateUsernameResponse{UsernameValidation: pb.UsernameValidation_ALREADY_IN_USE}, nil
	}

	// Inspect the error we got
	var dbusError dbus.Error
	isDbusError := errors.As(err, &dbusError)

	// Unknown error
	if !isDbusError {
		return nil, status.Errorf(codes.Internal, "unknown error: %v", err)
	}

	// Non "user not found" account service error
	errBody, ok := dbusError.Body[0].(string)
	if !ok {
		return nil, status.Errorf(codes.Internal, "unknown error: %v", err)
	}

	if dbusError.Name != consts.DbusAccountsPrefix+".Error.Failed" || !strings.Contains(errBody, username) {
		return nil, status.Errorf(codes.Internal, "dbus error: %v", dbusError)
	}

	// We have "user not found"
	return &pb.ValidateUsernameResponse{UsernameValidation: pb.UsernameValidation_OK}, nil
}
