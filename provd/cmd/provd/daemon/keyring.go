package daemon

import (
	"bytes"
	"os/exec"
)

// tempKeyringPassword is the temporary password used to unlock the login keyring.
const tempKeyringPassword = "gis"

// getKeyringCmd returns a command to unlock the login keyring.
func getKeyringCmd() *exec.Cmd {
	buf := bytes.Buffer{}
	buf.Write([]byte(tempKeyringPassword))
	cmd := exec.Command("gnome-keyring-daemon", "--unlock")
	cmd.Stdin = &buf
	return cmd
}
