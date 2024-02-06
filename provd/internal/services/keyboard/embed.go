package keyboard

import (
	"embed"
)

//go:embed keyboard-configuration.yaml
var EmbeddedFiles embed.FS
