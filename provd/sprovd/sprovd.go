package main

import (
	"context"
	"fmt"
	"os"
	"os/exec"
	"regexp"
)

func main() {
	if len(os.Args) != 2 {
		fmt.Println("Usage: program <token>")
		os.Exit(1)
	}

	token := os.Args[1]
	if !isValidToken(token) {
		fmt.Println("Invalid token format")
		os.Exit(1)
	}
	cmd := exec.CommandContext(context.Background(), "sudo", "pro", "attach", token)

	_, err := cmd.CombinedOutput()
	if err != nil {
		fmt.Printf("Error executing command: %s\n", err)
		os.Exit(1)
	}
}

func isValidToken(token string) bool {
	pattern := `^[A-Za-z0-9]{30}$`
	re := regexp.MustCompile(pattern)
	return re.MatchString(token)
}
