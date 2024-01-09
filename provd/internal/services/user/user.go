// Package user implements the User gRPC service.
package user

import (
	"bufio"
	"context"
	"crypto/rand"
	"crypto/sha512"
	"encoding/base64"
	"fmt"
	"math/big"
	"os"
	"regexp"
	"strconv"
	"strings"

	"github.com/canonical/ubuntu-desktop-provision/provd/proto"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"

	"github.com/godbus/dbus/v5"
)

const (
	// DbusAccountsPrefix is the prefix for the Accounts D-Bus interface.
	DbusAccountsPrefix = "org.freedesktop.Accounts"
	// DbusHostnamePrefix is the prefix for the Hostname D-Bus interface.
	DbusHostnamePrefix = "org.freedesktop.hostname1"
	UsernameMaxLen     = 32
	UsernameRegex      = "^[a-z_][a-z0-9_-]*$"
)

// DbusObject is an abstraction of a dbus object.
type DbusObject interface {
	Call(method string, flags dbus.Flags, args ...interface{}) *dbus.Call
	GetProperty(p string) (dbus.Variant, error)
}

// UserObjectFactory is a factory for creating DbusObjects for users.
// This is used to allow mocking of the DbusObjects for testing.
type UserObjectFactory interface {
	GetUserObject(userObjectPath dbus.ObjectPath) DbusObject
}

// userObjectFactoryImpl is the default implementation of UserObjectFactory.
type userObjectFactoryImpl struct {
	conn *dbus.Conn
}

// Wraps the dbus call for getting a user object.
func (f *userObjectFactoryImpl) GetUserObject(userObjectPath dbus.ObjectPath) DbusObject {
	userObject := f.conn.Object(DbusAccountsPrefix, userObjectPath)
	return userObject
}

type options struct {
	accounts    DbusObject
	hostname    DbusObject
	userFactory UserObjectFactory
}

type option func(*options)

// Service is the implementation of the User module service.
type Service struct {
	proto.UnimplementedUserServiceServer
	accounts    DbusObject
	hostname    DbusObject
	userFactory UserObjectFactory
}

// New retuns a new instance of the User service.
func New(bus *dbus.Conn, args ...option) *Service {
	accounts := bus.Object(DbusAccountsPrefix, "/org/freedesktop/Accounts")
	hostname := bus.Object(DbusHostnamePrefix, "/org/freedesktop/hostname1")
	userFactory := &userObjectFactoryImpl{conn: bus}

	opts := options{
		accounts:    accounts,
		hostname:    hostname,
		userFactory: userFactory,
	}

	// Apply given options
	for _, f := range args {
		f(&opts)
	}

	return &Service{
		accounts:    opts.accounts,
		hostname:    opts.hostname,
		userFactory: opts.userFactory,
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

// HashPassword hashes the given password, returning in the SHA-512 crypt format.
// A salt can be provided for testing purposes.
func HashPassword(password string, testSalt *string) (string, error) {
	if password == "" {
		return "", status.Errorf(codes.InvalidArgument, "recieved an empty password")
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
func (s *Service) CreateUser(ctx context.Context, req *proto.CreateUserRequest) (*proto.Empty, error) {

	// Validate requtest
	if req == nil {
		return nil, status.Errorf(codes.InvalidArgument, "received a nil request")
	}
	user := req.GetUser()
	if user == nil {
		return nil, status.Errorf(codes.InvalidArgument, "received a nil user")
	}
	username := user.GetUsername()
	if username == "" {
		return nil, status.Errorf(codes.InvalidArgument, "recieved an empty username")
	}
	realName := user.GetRealName()
	if realName == "" {
		return nil, status.Errorf(codes.InvalidArgument, "recieved an empty realName")
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
	hostname := user.GetHostname()
	if hostname == "" {
		return nil, status.Errorf(codes.InvalidArgument, "recieved an empty hostname")
	}
	// Create the user
	var userObjectPath dbus.ObjectPath
	call := s.accounts.Call(DbusAccountsPrefix+".CreateUser", 0, username, realName, accountType)

	err := call.Store(&userObjectPath)
	if err != nil {

		return nil, status.Errorf(codes.Internal, "failed to create user: %s", err)
	}

	hashed, err := HashPassword(password, nil)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to generate hashed password: %s", err)
	}

	// Set the password for the user
	userObject := s.userFactory.GetUserObject(userObjectPath)
	fmt.Printf(hashed)
	err = userObject.Call(DbusAccountsPrefix+".User.SetPassword", 0, hashed, "").Err
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to set password: %s", err)
	}

	// Set autologin for the user
	err = userObject.Call(DbusAccountsPrefix+".User.SetAutomaticLogin", 0, autologin).Err
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to set autologin: %s", err)
	}

	// Set the hostname
	err = s.hostname.Call(DbusHostnamePrefix+".SetStaticHostname", 0, hostname, false).Err
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to set hostname: %s", err)
	}

	return &proto.Empty{}, nil
}

// ValidateUsername validates the given username. Returns an enum value indicating
// the result of the validation.
func (s *Service) ValidateUsername(ctx context.Context, req *proto.ValidateUsernameRequest) (*proto.ValidateUsernameResponse, error) {
	// Validate request
	if req == nil {
		return nil, status.Errorf(codes.InvalidArgument, "received a nil request")
	}
	username := req.GetUsername()
	if username == "" {
		return &proto.ValidateUsernameResponse{UsernameValidation: proto.UsernameValidation_EMPTY}, nil
	}

	// Check if username uses valid characters
	matched, _ := regexp.MatchString(UsernameRegex, username)
	if !matched {
		return &proto.ValidateUsernameResponse{UsernameValidation: proto.UsernameValidation_INVALID_CHARS}, nil
	}

	// Check if username is too long
	if len(username) > UsernameMaxLen {
		return &proto.ValidateUsernameResponse{UsernameValidation: proto.UsernameValidation_TOO_LONG}, nil
	}

	// Check if username is in reserved list
	// Read line by line to avoid loading the whole file into memory
	file, err := os.Open("reserved-usernames")
	if err != nil {
		return nil, status.Errorf(codes.Internal, "error opening reserved usernames file: %v", err)
	}
	defer file.Close()

	isReserved := false
	scanner := bufio.NewScanner(file)
	for scanner.Scan() {
		line := scanner.Text()
		// Ignore comment lines
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
		return &proto.ValidateUsernameResponse{UsernameValidation: proto.UsernameValidation_SYSTEM_RESERVED}, nil
	}

	// Check if username is already in use
	err = s.accounts.Call(DbusAccountsPrefix+".FindUserByName", 0, username).Err
	if err != nil {

		// Check if the error is due to user not being found or a D-Bus error
		if dbusError, ok := err.(dbus.Error); ok {
			if dbusError.Name == DbusAccountsPrefix+".Error.Failed" {
				// User not found
				return &proto.ValidateUsernameResponse{UsernameValidation: proto.UsernameValidation_OK}, nil
			}
			// Handle other dbus errors
			return nil, status.Errorf(codes.Internal, "dbus error: %v", dbusError)
		}
		// Unknown error
		return nil, status.Errorf(codes.Internal, "unknown error: %v", err)
	}

	// User found
	return &proto.ValidateUsernameResponse{UsernameValidation: proto.UsernameValidation_ALREADY_IN_USE}, nil
}

// GetUser returns the user information for the given uid.
func (s *Service) GetUser(ctx context.Context, req *proto.GetUserRequest) (*proto.GetUserResponse, error) {

	// Validate request
	if req == nil {
		return nil, status.Errorf(codes.InvalidArgument, "received a nil request")
	}
	uid := req.GetUserId()
	if uid == "" {
		return nil, status.Errorf(codes.InvalidArgument, "uid cannot be empty")
	}

	uidInt, err := strconv.ParseInt(uid, 10, 64)
	if err != nil {
		// handle error: uid is not a valid integer
		return nil, status.Errorf(codes.Internal, "int convert: %s", err)

	}
	var userObjectPath dbus.ObjectPath
	err = s.accounts.Call(DbusAccountsPrefix+".FindUserById", 0, uidInt).Store(&userObjectPath)

	if err != nil {
		return nil, err
	}

	userObject := s.userFactory.GetUserObject(userObjectPath)

	// Get the username via dbus
	response, err := userObject.GetProperty(DbusAccountsPrefix + ".User.UserName")
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to get username: %s", err)
	}
	if response.Value() == nil {
		return nil, status.Errorf(codes.NotFound, "could not find username for given uid")
	}
	username, ok := response.Value().(string)
	if !ok {
		return nil, status.Errorf(codes.Internal, "unexpected type returned for username: %s", err)
	}

	// Get the realName via dbus
	response, err = userObject.GetProperty(DbusAccountsPrefix + ".User.RealName")
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to get realName: %s", err)
	}
	if response.Value() == nil {
		return nil, status.Errorf(codes.NotFound, "could not find realName for given uid")
	}
	realName, ok := response.Value().(string)
	if !ok {
		return nil, status.Errorf(codes.Internal, "unexpected type returned for realName: %s", err)
	}

	// Get autoLogin via dbus
	response, err = userObject.GetProperty(DbusAccountsPrefix + ".User.AutomaticLogin")
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to get autoLogin: %s", err)
	}
	if response.Value() == nil {
		return nil, status.Errorf(codes.NotFound, "could not find autoLogin for given uid")
	}
	autoLogin, ok := response.Value().(bool)
	if !ok {
		return nil, status.Errorf(codes.Internal, "unexpected type returned for autoLogin: %s", err)
	}

	// Get the hostname via dbus
	response, err = s.hostname.GetProperty(DbusHostnamePrefix + ".Hostname")
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to get hostname: %s", err)
	}
	if response.Value() == nil {
		return nil, status.Errorf(codes.NotFound, "could not find hostname")
	}
	hostname, ok := response.Value().(string)
	if !ok {
		return nil, status.Errorf(codes.Internal, "unexpected type returned for hostname: %s", err)
	}

	user := &proto.User{
		RealName:  realName,
		Hostname:  hostname,
		Username:  username,
		AutoLogin: autoLogin,
	}

	return &proto.GetUserResponse{
		User: user,
	}, nil

}
