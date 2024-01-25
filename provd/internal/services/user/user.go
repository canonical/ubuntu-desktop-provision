// Package user implements the User gRPC service.
package user

import (
	"bufio"
	"context"
	"errors"
	"fmt"
	"log/slog"
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
	// usernameMaxLen is the maximum length of a username.
	usernameMaxLen = 32
	// usernameRegex is the regex for a valid username.
	usernameRegex = "^[a-z_][a-z0-9_-]*$"
)

// Service is the implementation of the User module service.
type Service struct {
	pb.UnimplementedUserServiceServer
	conn             *dbus.Conn
	accounts         dbus.BusObject
	hostname         dbus.BusObject
	passwdMasterPath string
	groupMasterPath  string
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

	err := s.accounts.Call(consts.DbusPeerPrefix+".Ping", 0).Err
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to ping default DBus Accounts object")
	}

	s.hostname = conn.Object(consts.DbusHostnamePrefix, "/org/freedesktop/hostname1")

	err = s.hostname.Call(consts.DbusPeerPrefix+".Ping", 0).Err
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to ping default DBus Hostname object")
	}

	// Default paths initialization
	s.passwdMasterPath = "/usr/share/base-passwd/passwd.master"
	s.groupMasterPath = "/usr/share/base-passwd/group.master"

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
	var initalHostname string
	property, err := s.hostname.GetProperty(consts.DbusHostnamePrefix + ".StaticHostname")
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to get current hostname: %v", err)
	}

	initalHostname, ok := property.Value().(string)
	if !ok {
		return nil, status.Errorf(codes.Internal, "failed to convert current hostname to string")
	}

	var userID uint64

	defer func() {
		if err == nil {
			return
		}
		var currentHostname string
		property, err := s.hostname.GetProperty(consts.DbusHostnamePrefix + ".StaticHostname")
		if err != nil {
			slog.Warn(fmt.Sprintf("error encountered when rolling back CreateUser: %v", err))
			return
		}

		currentHostname, ok := property.Value().(string)
		if !ok {
			slog.Warn(fmt.Sprintf("error encountered when rolling back CreateUser: %v", err))
			return
		}

		// Rollback hostname
		if currentHostname != initalHostname {
			err = s.hostname.Call(consts.DbusHostnamePrefix+".SetStaticHostname", 0, initalHostname, false).Err
			if err != nil {
				slog.Warn(fmt.Sprintf("error encountered when rolling back CreateUser: %v", err))
			}
		}
		// Delete user
		if userID == 0 {
			return
		}
		err = s.accounts.Call(consts.DbusAccountsPrefix+".DeleteUser", 0, userID).Err
		if err != nil {
			slog.Warn(fmt.Sprintf("error encountered when rolling back CreateUser: %v", err))
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
		return nil, status.Errorf(codes.Internal, "failed to create user: %v", err)
	}
	hashed, err := hashPassword(password, nil)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to generate hashed password: %v", err)
	}

	// Set the password for the user
	userObject := s.conn.Object(consts.DbusAccountsPrefix, userObjectPath)
	err = userObject.Call(consts.DbusUserPrefix+".SetPassword", 0, hashed, "").Err
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to set password: %v", err)
	}

	// Update userId for rollback via property
	uidProperty, err := userObject.GetProperty(consts.DbusUserPrefix + ".Uid")
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to get user ID: %v", err)
	}
	userID, ok = uidProperty.Value().(uint64)
	if !ok {
		return nil, status.Errorf(codes.Internal, "failed to convert user ID to uint64")
	}

	// Set autologin for the user
	err = userObject.Call(consts.DbusUserPrefix+".SetAutomaticLogin", 0, autologin).Err
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to set autologin: %v", err)
	}

	// Set the Hostname
	err = s.hostname.Call(consts.DbusHostnamePrefix+".SetStaticHostname", 0, Hostname, false).Err
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to set Hostname: %v", err)
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

	// Open the passwd.master file
	passwdFile, err := os.Open(s.passwdMasterPath)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "error opening passwd.master file: %v", err)
	}
	defer passwdFile.Close()

	// Open the group.master file
	groupFile, err := os.Open(s.groupMasterPath)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "error opening group.master file: %v", err)
	}
	defer groupFile.Close()

	// Check the passwd.master file
	isReserved, err := scanFile(passwdFile, username)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "error reading passwd.master file: %v", err)
	}

	// If not found, check the group.master file
	if !isReserved {
		isReserved, err = scanFile(groupFile, username)
		if err != nil {
			return nil, status.Errorf(codes.Internal, "error reading group.master file: %v", err)
		}
	}

	// If found, return reserved
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

// Function to scan a file for the username.
func scanFile(file *os.File, username string) (bool, error) {
	scanner := bufio.NewScanner(file)
	for scanner.Scan() {
		line := strings.TrimSpace(scanner.Text())
		if strings.HasPrefix(line, "#") || line == "" {
			continue
		}

		// Split the line and check format
		fields := strings.SplitN(line, ":", 2)
		if len(fields) < 2 {
			// Line does not have the expected format
			return false, fmt.Errorf("invalid line format: %s", line)
		}

		// Check if the username matches
		if fields[0] == username {
			return true, nil
		}
	}
	return false, scanner.Err()
}
