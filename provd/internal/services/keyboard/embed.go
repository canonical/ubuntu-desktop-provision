package keyboard

import (
	"embed"
)

//go:embed keyboard-configuration.yaml

// EmbeddedFiles is the embedded keyboard configuration file.
var EmbeddedFiles embed.FS
