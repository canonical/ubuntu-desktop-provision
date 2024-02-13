// Package testutils provides utility functions and behaviors for testing.
package testutils

import (
	"fmt"
	"log/slog"
	"os"
)

// Option defines the type for functional options.
type Option func(*options)

// options holds configuration for WriteActionToFile.
type options struct {
	filePath string
}

// WithFilePath configures a custom file path for WriteActionToFile.
func WithFilePath(filePath string) Option {
	return func(opts *options) {
		opts.filePath = filePath + "/actions"
	}
}

// WriteActionToFile writes the action to a file, compared against goldenfiles to test the correct actions are being called.
func WriteActionToFile(action string, opts ...Option) {
	// Default option
	o := &options{
		filePath: "actions", // Default file path
	}

	// Apply provided options
	for _, opt := range opts {
		opt(o)
	}

	// Use the configured file path
	f, err := os.OpenFile(o.filePath, os.O_APPEND|os.O_CREATE|os.O_WRONLY, 0600)
	if err != nil {
		slog.Error(fmt.Sprintf("Error opening file: %v", err))
		os.Exit(1)
	}
	defer f.Close()

	if _, err := f.WriteString(action + "\n"); err != nil {
		slog.Error(fmt.Sprintf("Error writing to file: %v", err))
		os.Exit(1)
	}
}

// ReadActionFromFile reads the action from a file, compared against goldenfiles to test the correct actions are being called.
func ReadActionFromFile(wantNoFile bool, opts ...Option) (string, error) {
	// Default option
	o := &options{
		filePath: "actions", // Default file path'
	}

	// Apply provided options
	for _, opt := range opts {
		opt(o)
	}

	f, err := os.ReadFile(o.filePath)

	if err != nil && !wantNoFile {
		return "", fmt.Errorf("failed to read actions file: %v", err)
	}
	if err != nil && wantNoFile {
		return "", nil
	}

	return string(f), nil
}
