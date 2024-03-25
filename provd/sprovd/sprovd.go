// package main of sprovd wraps commands that require sudo for use by the gis user exclusively.
package main

import (
	"context"
	"fmt"
	"os"
	"os/exec"
	"os/user"
	"regexp"
	"strconv"
	"syscall"
)

func main() {
	if len(os.Args) != 3 {
		fmt.Fprintln(os.Stderr, "Usage: program --token <token> or program --user <username>")
		os.Exit(2)
	}

	command := os.Args[1]
	arg := os.Args[2]

	switch command {
	case "--token":
		if !isValidToken(arg) {
			fmt.Fprintln(os.Stderr, "Invalid token format")
			os.Exit(1)
		}

		err := syscall.Setuid(os.Geteuid())
		if err != nil {
			fmt.Fprintf(os.Stderr, "Error setting uid: %s\n", err)
			os.Exit(1)
		}

		//nolint:gosec // TODO: Double check in a review
		cmd := exec.CommandContext(context.Background(), "pro", "attach", arg)

		_, err = cmd.CombinedOutput()
		if err != nil {
			fmt.Fprintf(os.Stderr, "Error executing command: %s\n", err)
			os.Exit(1)
		}

	case "--user":
		copyConfigFiles(arg)

	default:
		fmt.Fprintln(os.Stderr, "Invalid command. Use --token or --user")
		os.Exit(2)
	}
}

func isValidToken(token string) bool {
	pattern := `^[A-Za-z0-9]{29,32}$`
	re := regexp.MustCompile(pattern)
	return re.MatchString(token)
}

func copyConfigFiles(username string) {
	files := []string{
		".config/gnome-initial-setup-done",
		".config/dconf/user",
		".config/monitors.xml",
		".local/share/keyrings/login.keyring",
	}

	usr, err := user.Lookup(username)
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error looking up user %s: %s\n", username, err)
		os.Exit(1)
	}

	uid, err := strconv.Atoi(usr.Uid)
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error converting UID to int: %s\n", err)
		os.Exit(1)
	}

	gid, err := strconv.Atoi(usr.Gid)
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error converting GID to int: %s\n", err)
		os.Exit(1)
	}

	for _, file := range files {
		src := "/run/gnome-initial-setup/" + file
		dst := "/home/" + username + "/" + file
		if err := copyFile(src, dst); err != nil {
			fmt.Fprintf(os.Stderr, "Error copying file %s to %s: %s\n", src, dst, err)
			os.Exit(1)
		}
		if err := os.Chown(dst, uid, gid); err != nil {
			fmt.Fprintf(os.Stderr, "Error changing ownership of file %s: %s\n", dst, err)
			os.Exit(1)
		}
	}
}

func copyFile(src, dst string) error {
	input, err := os.ReadFile(src)
	if err != nil {
		return err
	}

	err = os.WriteFile(dst, input, 0600)
	if err != nil {
		return err
	}

	return nil
}
