// Package user implements the User gRPC service.
package user

import (
	"bufio"
	"context"
	"crypto/rand"
	"crypto/sha512"
	"encoding/base64"
	"errors"
	"fmt"
	"math/big"
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
	pb.UnimplementedUserServiceServer
	Conn     DbusConnector
	Accounts DbusObject
	Hostname DbusObject
}

// New returns a new instance of the User service.
func New(Conn DbusConnector) *Service {
	acountsObject := Conn.Object(consts.DbusAccountsPrefix, "/org/freedesktop/Accounts")
	hostnameObject := Conn.Object(consts.DbusHostnamePrefix, "/org/freedesktop/Accounts")
	return &Service{
		Conn:     Conn,
		Accounts: acountsObject,
		Hostname: hostnameObject,
	}
}

const validSaltChars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789./"

// generateSalt generates a salt string of the specified length using validSalts characters.
func generateSalt(length int) (string, error) {
	salt := make([]byte, length)
	for i := range salt {
		index, err := rand.Int(rand.Reader, big.NewInt(int64(len(validSaltChars))))
		if err != nil {
			return "", err
		}
		salt[i] = validSaltChars[index.Int64()]
	}
	return string(salt), nil
}

// hashPassword hashes the given password, returning in the SHA-512 crypt format.
// A salt can be provided for testing purposes.
func hashPassword(password string, testSalt *string) (string, error) {
	if password == "" {
		return "", status.Errorf(codes.InvalidArgument, "received an empty password")
	}
	var salt string
	var err error

	if testSalt != nil {
		salt = *testSalt
	} else {
		salt, err = generateSalt(16)
		if err != nil {
			return "", err
		}
	}
	hasher := sha512.New()
	hasher.Write([]byte(salt + password))
	hashedBytes := hasher.Sum(nil)
	hashedPassword := base64.RawStdEncoding.EncodeToString(hashedBytes)

	return fmt.Sprintf("$6$%s$%s", salt, hashedPassword), nil
}

// CreateUser creates a new user on the system.
func (s *Service) CreateUser(ctx context.Context, req *pb.CreateUserRequest) (*emptypb.Empty, error) {
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
	call := s.Accounts.Call(consts.DbusAccountsPrefix+".CreateUser", 0, username, realName, accountType)
	err := call.Store(&userObjectPath)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to create user: %s", err)
	}
	hashed, err := hashPassword(password, nil)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to generate hashed password: %s", err)
	}

	// Set the password for the user
	userObject := s.Conn.Object(consts.DbusAccountsPrefix, userObjectPath)
	err = userObject.Call(consts.DbusUserPrefix+".SetPassword", 0, hashed, "").Err
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to set password: %s", err)
	}

	// Set autologin for the user
	err = userObject.Call(consts.DbusUserPrefix+".SetAutomaticLogin", 0, autologin).Err
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to set autologin: %s", err)
	}

	// Set the Hostname
	err = s.Hostname.Call(consts.DbusHostnamePrefix+".SetStaticHostname", 0, Hostname, false).Err
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
	err = s.Accounts.Call(consts.DbusAccountsPrefix+".FindUserByName", 0, username).Err
	if err != nil {
		var dbusError dbus.Error
		if errors.As(err, &dbusError) {
			if dbusError.Name == consts.DbusAccountsPrefix+".Error.Failed" {
				// User not found
				return &pb.ValidateUsernameResponse{UsernameValidation: pb.UsernameValidation_OK}, nil
			}
			// Handle other dbus errors
			return nil, status.Errorf(codes.Internal, "dbus error: %v", dbusError)
		}
		// Unknown error
		return nil, status.Errorf(codes.Internal, "unknown error: %v", err)
	}

	// User found
	return &pb.ValidateUsernameResponse{UsernameValidation: pb.UsernameValidation_ALREADY_IN_USE}, nil
}
