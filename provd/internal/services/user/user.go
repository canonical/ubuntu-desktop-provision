// Package user implements the User gRPC service.
package user

import (
	"context"
	"crypto/rand"
	"crypto/sha512"
	"encoding/base64"
	"fmt"
	"log/slog"
	"strconv"

	"github.com/canonical/ubuntu-desktop-provision/provd/proto"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"

	"github.com/godbus/dbus/v5"
)

const (
	accountsDBusName  string = "org.freedesktop.Accounts"
	accountsDBusPath  string = "/org/freedesktop/Accounts"
	hostnameDBusName  string = "org.freedesktop.hostname1"
	hostnameDBusPath  string = "/org/freedesktop/hostname1"
	accountsUserIface string = "org.freedesktop.Accounts.User"
	hostnameIface     string = "org.freedesktop.hostname1"
)

type Caller interface {
	Call(method string, flags dbus.Flags, args ...interface{}) *dbus.Call
}

type UserObjectFactory interface {
	GetUserObject(userObjectPath dbus.ObjectPath) Caller
}

type userObjectFactoryImpl struct {
	conn *dbus.Conn
}

func (f *userObjectFactoryImpl) GetUserObject(userObjectPath dbus.ObjectPath) Caller {
	userObject := f.conn.Object(accountsDBusName, userObjectPath)
	return userObject
}

type options struct {
	accounts    Caller
	hostname    Caller
	userFactory UserObjectFactory
}

type option func(*options)

// Service is the implementation of the User module service.
type Service struct {
	proto.UnimplementedUserServiceServer
	accounts    Caller
	hostname    Caller
	userFactory UserObjectFactory
}

// New retuns a new instance of the User service.
func New(bus *dbus.Conn, args ...option) *Service {
	accounts := bus.Object("org.freedesktop.Accounts", "/org/freedesktop/Accounts")
	hostname := bus.Object("org.freedesktop.hostname1", "/org/freedesktop/hostname1")
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

func hashPassword(password string) (string, error) {
	// Generate a 16-byte salt
	salt := make([]byte, 16)
	if _, err := rand.Read(salt); err != nil {
		return "", err
	}

	// Hash the password with the salt
	hasher := sha512.New()
	hasher.Write(salt)
	hasher.Write([]byte(password))
	hashedBytes := hasher.Sum(nil)
	hashedPassword := base64.RawStdEncoding.EncodeToString(hashedBytes)

	// Format the hash in the SHA-512 crypt format
	saltStr := base64.RawStdEncoding.EncodeToString(salt)
	return fmt.Sprintf("$6$%s$%s", saltStr, hashedPassword), nil
}

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
	call := s.accounts.Call("org.freedesktop.Accounts.CreateUser", 0, username, realName, accountType)

	// Log the response (assuming you have a logger set up)

	slog.Info(fmt.Sprintf("%v", call.Body))

	err := call.Store(&userObjectPath)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to create user: %s", err)
	}

	hashed, err := hashPassword(password)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to generate hashed password: %s", err)
	}

	// Set the password for the user
	userObject := s.userFactory.GetUserObject(userObjectPath)
	fmt.Printf(hashed)
	err = userObject.Call("org.freedesktop.Accounts.User.SetPassword", 0, hashed, "").Err
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to set password: %s", err)
	}

	// Set autologin for the user
	err = userObject.Call("org.freedesktop.Accounts.User.SetAutomaticLogin", 0, autologin).Err
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to set autologin: %s", err)
	}

	// Set the hostname
	err = s.hostname.Call("org.freedesktop.hostname1.SetStaticHostname", 0, hostname, false).Err
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to set hostname: %s", err)
	}

	return &proto.Empty{}, nil
}

func (s *Service) ValidateUsername(ctx context.Context, req *proto.ValidateUsernameRequest) (*proto.ValidateUsernameResponse, error) {
	// Validate request
	if req == nil {
		return nil, status.Errorf(codes.InvalidArgument, "received a nil request")
	}
	username := req.GetUsername()
	if username == "" {
		return nil, status.Errorf(codes.InvalidArgument, "username cannot be empty")
	}

	// Connect to dbus
	conn, err := dbus.ConnectSystemBus()
	if err != nil {
		return nil, status.Errorf(codes.Internal, "Failed to connect to system bus: %s", err)
	}
	defer conn.Close()

	accountObject := conn.Object(accountsDBusName, dbus.ObjectPath(accountsDBusPath))

	// Try to find the user by username
	err = accountObject.CallWithContext(ctx, "org.freedesktop.Accounts.FindUserByName", 0, username).Err
	if err != nil {
		if _, ok := err.(dbus.Error); ok {
			// User not found
			return &proto.ValidateUsernameResponse{Valid: true}, nil
		}
	}

	// User found
	return &proto.ValidateUsernameResponse{Valid: false}, nil
}

func (s *Service) GetUser(ctx context.Context, req *proto.GetUserRequest) (*proto.GetUserResponse, error) {

	// Validate request
	if req == nil {
		return nil, status.Errorf(codes.InvalidArgument, "received a nil request")
	}
	uid := req.GetUserId()
	if uid == "" {
		return nil, status.Errorf(codes.InvalidArgument, "uid cannot be empty")
	}

	// Connect to dbus
	conn, err := dbus.ConnectSystemBus()
	if err != nil {
		return nil, status.Errorf(codes.Internal, "Failed to connect to session bus: %s", err)
	}
	defer conn.Close()

	accountObject := conn.Object(accountsDBusName, dbus.ObjectPath(accountsDBusPath))
	var userObjectPath dbus.ObjectPath

	uidInt, err := strconv.ParseInt(uid, 10, 64)
	if err != nil {
		// handle error: uid is not a valid integer
		return nil, status.Errorf(codes.Internal, "int convert: %s", err)

	}

	err = accountObject.CallWithContext(ctx, "org.freedesktop.Accounts.FindUserById", 0, uidInt).Store(&userObjectPath)
	if err != nil {
		return nil, err
	}

	userObject := conn.Object(accountsDBusName, userObjectPath)
	hostnameObject := conn.Object(hostnameDBusName, dbus.ObjectPath(hostnameDBusPath))

	// Get the username via dbus
	response, err := userObject.GetProperty("org.freedesktop.Accounts.User.UserName")
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
	response, err = userObject.GetProperty("org.freedesktop.Accounts.User." + "RealName")
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
	response, err = userObject.GetProperty("org.freedesktop.Accounts.User." + "AutomaticLogin")
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
	response, err = hostnameObject.GetProperty("org.freedesktop.hostname1." + "Hostname")
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
