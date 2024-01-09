package user

import (
	"errors"

	"github.com/godbus/dbus/v5"
)

// WithAccounts overrides the accounts caller for the service.
func WithAccounts(accounts DbusObject) option {
	return func(o *options) {
		o.accounts = accounts
	}
}

// WithHostname overrides the hostname caller for the service.
func WithHostname(hostname DbusObject) option {
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

// AccountsObjectMock is a mock AccountsObject.
type AccountsObjectMock struct {
	WantError      bool
	UserObjectPath dbus.ObjectPath
	Properties     map[string]interface{}
}

// HostnameObjectMock is a mock HostnameObject.
type HostnameObjectMock struct {
	WantError  bool
	Properties map[string]interface{}
}

// UserObjectMock is a mock UserObject.
type UserObjectMock struct {
	WantError  bool
	Properties map[string]interface{}
}

// Call is a mock implementation of the dbus Call method for the AccountsObjectMock.
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
	case "org.freedesktop.Accounts.FindUserById":
		callResult = a.UserObjectPath
	default:
		err = errors.New("Unsupported accounts method")
	}

	return &dbus.Call{
		Err:  err,
		Body: []interface{}{callResult},
	}
}

// Call is a mock implementation of the dbus Call method for the HostnameObjectMock.
func (h *HostnameObjectMock) Call(method string, flags dbus.Flags, args ...interface{}) *dbus.Call {
	var err error

	if h.WantError {
		err = errors.New("Hostname object error")
	}

	var callResult interface{}

	switch method {
	case "org.freedesktop.hostname1.SetStaticHostname":
		callResult = []interface{}{}
	default:
		err = errors.New("Unsupported hostname method")
	}

	return &dbus.Call{
		Err:  err,
		Body: []interface{}{callResult},
	}
}

// Call is a mock implementation of the dbus Call method for the UserObjectMock.
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

// GetProperty is a mock implementation of the dbus GetProperty method for the UserObjectMock.
func (u *UserObjectMock) GetProperty(prop string) (dbus.Variant, error) {
	if u.WantError {
		return dbus.Variant{}, errors.New("GetProperty error")
	}
	value, exists := u.Properties[prop]
	if !exists {

		return dbus.Variant{}, errors.New("User property not found: " + prop)
	}
	return dbus.MakeVariant(value), nil
}

// GetProperty is a mock implementation of the dbus GetProperty method for the AccountsObjectMock.
func (u *AccountsObjectMock) GetProperty(prop string) (dbus.Variant, error) {
	if u.WantError {
		return dbus.Variant{}, errors.New("GetProperty error")
	}
	value, exists := u.Properties[prop]
	if !exists {
		return dbus.Variant{}, errors.New("Accounts property not found")
	}
	return dbus.MakeVariant(value), nil
}

// GetProperty is a mock implementation of the dbus GetProperty method for the HostnameObjectMock.
func (u *HostnameObjectMock) GetProperty(prop string) (dbus.Variant, error) {
	if u.WantError {
		return dbus.Variant{}, errors.New("GetProperty error")
	}
	value, exists := u.Properties[prop]
	if !exists {
		return dbus.Variant{}, errors.New("Hostname1 property not found")
	}
	return dbus.MakeVariant(value), nil
}

// UserObjectFactoryMock is a mock UserObjectFactory.
type UserObjectFactoryMock struct {
	UserObject *UserObjectMock
}

// GetUserObject returns a mock UserObject.
func (f UserObjectFactoryMock) GetUserObject(userObjectPath dbus.ObjectPath) DbusObject {
	return f.UserObject
}
