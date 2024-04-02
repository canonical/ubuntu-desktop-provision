// package main of sprovd wraps sudo pro attach for use by the gis user exclusively.
package main

import (
	"context"
	"flag"
	"fmt"
	"os"
	"os/exec"
	"os/user"
	"regexp"
	"syscall"
)

func main() {
	// Parse flags
	attachFlag := flag.Bool("attach", false, "Attach use case")
	chownFlag := flag.Bool("chown", false, "Chown use case")
	flag.Parse()

	// Validate flags and arg length
	if (*attachFlag && *chownFlag) || (!*attachFlag && !*chownFlag) {
		fmt.Fprintln(os.Stderr, "Error: Either -attach or -chown must be specified, but not both")
		os.Exit(2)
	}
	if len(flag.Args()) != 1 {
		fmt.Fprintln(os.Stderr, "Usage: program -attach <token> | -chown <username>")
		os.Exit(2)
	}
	arg := flag.Arg(0)

	// Pro attach
	if *attachFlag {
		if !isValidToken(arg) {
			fmt.Fprintln(os.Stderr, "Invalid token format")
			os.Exit(1)
		}

		err := attach(arg)
		if err != nil {
			fmt.Fprintf(os.Stderr, "Error: %s\n", err)
			os.Exit(1)
		}
		return
	}

	// chown /run/gnome-initial-setup
	err := chown(arg)
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error: %s\n", err)
		os.Exit(1)
	}
}

func isValidToken(token string) bool {
	pattern := `^[A-Za-z0-9]{29,32}$`
	re := regexp.MustCompile(pattern)
	return re.MatchString(token)
}

func attach(token string) error {
	err := syscall.Setuid(os.Geteuid())
	if err != nil {
		return fmt.Errorf("setting uid: %w", err)
	}

	cmd := exec.CommandContext(context.Background(), "pro", "attach", token)
	_, err = cmd.CombinedOutput()
	if err != nil {
		return fmt.Errorf("executing command: %w", err)
	}
	return nil
}

func isValidUsername(username string) bool {
	pattern := `^[a-z_][a-z0-9_-]*$`
	re := regexp.MustCompile(pattern)
	return re.MatchString(username)
}

func chown(username string) error {
	if !isValidUsername(username) {
		return fmt.Errorf("invalid username")
	}

	_, err := user.Lookup(username)
	if err != nil {
		return fmt.Errorf("looking up user: %w", err)
	}

	// #nosec:G204 // We are in control of the username and validate we can find it on the system before executing.
	cmd := exec.Command("chown", fmt.Sprintf("%s:nogroup", username), "/run/gnome-initial-setup")
	_, err = cmd.CombinedOutput()
	if err != nil {
		return fmt.Errorf("executing chown command: %w", err)
	}

	// Change ownership of specific subdirectories and files
	subdirs := []string{".config", ".local"}
	for _, subdir := range subdirs {
		// #nosec:G204 // We are in control of the username and validate we can find it on the system before executing.
		cmd = exec.Command("chown", "-R", fmt.Sprintf("%s:nogroup", username), fmt.Sprintf("/run/gnome-initial-setup/%s", subdir))
		_, err = cmd.CombinedOutput()
		if err != nil {
			return fmt.Errorf("executing chown command for %s: %w", subdir, err)
		}
	}

	return nil
}
