package user

import (
	"embed"
)

//go:embed reserved-usernames
var reservedUsernamesFS embed.FS
