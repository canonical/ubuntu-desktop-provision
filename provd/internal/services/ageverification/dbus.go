package ageverification

import (
	"encoding/json"
	"fmt"
	"os"
	"path/filepath"
	"time"

	"github.com/godbus/dbus/v5"
	"github.com/godbus/dbus/v5/introspect"
)

const (
	dbusPath      = "/com/ubuntu/AgeVerification"
	dbusInterface = "com.ubuntu.AgeVerification"
)

type DBusService struct {
	conn *dbus.Conn
}

func NewDBusService() (*DBusService, error) {
	conn, err := dbus.ConnectSystemBus()
	if err != nil {
		return nil, err
	}

	reply, err := conn.RequestName(dbusInterface, dbus.NameFlagDoNotQueue)
	if err != nil {
		conn.Close()
		return nil, err
	}
	if reply != dbus.RequestNameReplyPrimaryOwner {
		conn.Close()
		return nil, fmt.Errorf("name already taken")
	}

	s := &DBusService{conn: conn}
	
	conn.Export(s, dbusPath, dbusInterface)
	conn.Export(introspect.Introspectable(introXML), dbusPath, "org.freedesktop.DBus.Introspectable")

	return s, nil
}

func (s *DBusService) GetAgeBracket(username string) (uint32, *dbus.Error) {
	if username == "" {
		return 0, dbus.MakeFailedError(fmt.Errorf("username required"))
	}

	userFile := filepath.Join(userDataDir, username+".age")
	file, err := os.ReadFile(userFile)
	if err != nil {
		return 0, dbus.MakeFailedError(err)
	}

	var data userData
	if err := json.Unmarshal(file, &data); err != nil {
		return 0, dbus.MakeFailedError(err)
	}

	age := time.Now().Year() - data.BirthYear
	return uint32(calculateBracket(age)), nil
}

func (s *DBusService) Close() {
	s.conn.Close()
}

const introXML = `
<node>
  <interface name="com.ubuntu.AgeVerification">
    <method name="GetAgeBracket">
      <arg name="username" type="s" direction="in"/>
      <arg name="bracket" type="u" direction="out"/>
    </method>
  </interface>
</node>
`
