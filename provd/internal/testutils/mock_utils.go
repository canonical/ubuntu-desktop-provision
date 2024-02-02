// Package testutils provides utility functions and behaviors for testing.
package testutils

import (
	"fmt"
	"log/slog"
	"os"
)

// Writes the action to a file, compared against goldenfiles to test the correct actions are being called.
func WriteActionToFile(action string) {
	f, err := os.OpenFile("actions", os.O_APPEND|os.O_CREATE|os.O_WRONLY, 0600)
	if err != nil {
		slog.Error(fmt.Sprintf("Error opening file: %v", err))
		os.Exit(1)
	}
	defer f.Close()
	if _, err := f.WriteString(action); err != nil {
		slog.Error(fmt.Sprintf("Error writing to file: %v", err))
		os.Exit(1)
	}
}
