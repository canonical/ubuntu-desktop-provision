// package main of sprovd wraps sudo pro attach for use by the gis user exclusively.
package main

import (
	"context"
	"fmt"
	"os"
	"os/exec"
	"regexp"
	"syscall"
)

func main() {
	if len(os.Args) != 2 {
		fmt.Fprintln(os.Stderr, "Usage: program <token>")
		os.Exit(2)
	}

	token := os.Args[1]
	if !isValidToken(token) {
		fmt.Fprintln(os.Stderr, "Invalid token format")
		os.Exit(1)
	}

	err := syscall.Setuid(os.Geteuid())
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error setting uid: %s\n", err)
		os.Exit(1)
	}

	//nolint:gosec // TODO: Double check in a review
	cmd := exec.CommandContext(context.Background(), "pro", "attach", token)

	_, err = cmd.CombinedOutput()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error executing command: %s\n", err)
		os.Exit(1)
	}
}

func isValidToken(token string) bool {
	pattern := `^[A-Za-z0-9]{29,32}$`
	re := regexp.MustCompile(pattern)
	return re.MatchString(token)
}
