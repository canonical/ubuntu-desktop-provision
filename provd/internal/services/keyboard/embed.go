package keyboard

import (
	"embed"
)

//go:embed kbds/*

// EmbeddedFiles is the embedded keyboard configuration file.
var EmbeddedFiles embed.FS
