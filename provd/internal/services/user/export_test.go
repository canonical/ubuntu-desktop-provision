package user

import (
	"errors"

	"github.com/godbus/dbus/v5"
)

// WithAccounts overrides the accounts caller for the service.
func WithAccounts(accounts Caller) option {
	return func(o *options) {
		o.accounts = accounts
	}
}

// WithHostname overrides the hostname caller for the service.
func WithHostname(hostname Caller) option {
	return func(o *options) {
		o.hostname = hostname
	}
}

// WithUserFactory overrides the userObjectFactory for the service.
func WithUserFactory(userFactory UserObjectFactory) option {
	return func(o *options) {
		o.userFactory = userFactory
	}
}

type AccountsObjectMock struct {
	WantError      bool
	UserObjectPath dbus.ObjectPath
}

type HostnameObjectMock struct {
	WantError bool
	Hostname  string
}

type UserObjectMock struct {
	WantError  bool
	Properties map[string]interface{}
}

func (a *AccountsObjectMock) Call(method string, flags dbus.Flags, args ...interface{}) *dbus.Call {
	var err error

	if a.WantError {
		switch method {
		case "org.freedesktop.Accounts.FindUserByName":
			dbusError := dbus.Error{
				Name: "org.freedesktop.Accounts.Error.Failed",
				Body: []interface{}{"specific error message"},
			}
			err = dbusError
		default:
			err = errors.New("Accounts object error")
		}
	}

	var callResult interface{}

	switch method {
	case "org.freedesktop.Accounts.CreateUser":
		callResult = a.UserObjectPath
	case "org.freedesktop.Accounts.FindUserByName":
		callResult = a.UserObjectPath
	default:
		err = errors.New("Unsupported method")
	}

	return &dbus.Call{
		Err:  err,
		Body: []interface{}{callResult},
	}
}

func (h *HostnameObjectMock) Call(method string, flags dbus.Flags, args ...interface{}) *dbus.Call {
	var err error

	if h.WantError {
		err = errors.New("Hostname object error")
	}

	var callResult interface{}

	switch method {
	case "org.freedesktop.hostname1.SetStaticHostname":
		h.Hostname = args[0].(string)
		callResult = []interface{}{}
	default:
		err = errors.New("Unsupported method")
	}

	return &dbus.Call{
		Err:  err,
		Body: []interface{}{callResult},
	}
}

func (u *UserObjectMock) Call(method string, flags dbus.Flags, args ...interface{}) *dbus.Call {
	var err error
	if u.WantError {
		err = errors.New("User object error")
	}

	callResult := dbus.ObjectPath("/org/freedesktop/Accounts/User1000")

	return &dbus.Call{
		Err:  err,
		Body: []interface{}{callResult},
	}
}

func (u *UserObjectMock) GetProperty(prop string) (dbus.Variant, error) {
	if u.WantError {
		return dbus.Variant{}, errors.New("GetProperty error")
	}
	value, exists := u.Properties[prop]
	if !exists {
		return dbus.Variant{}, errors.New("Property not found")
	}
	return dbus.MakeVariant(value), nil
}

type UserObjectFactoryMock struct {
	UserObject *UserObjectMock
}

func (f UserObjectFactoryMock) GetUserObject(userObjectPath dbus.ObjectPath) Caller {
	return f.UserObject
}
