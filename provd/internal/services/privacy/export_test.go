package privacy

import (
	"strconv"
	"strings"

	"github.com/canonical/ubuntu-desktop-provision/provd/internal/testutils"
)

// WithGSettingsSubset is a functional option to set the GSettingsSubset object for testing purposes.
func WithLocationSettings(g GSettingsSubset) Option {
	return func(s *Service) error {
		s.locationSettings = g
		return nil
	}
}

type GSettingsSubsetMock struct {
	IsWritableError bool
	SetBooleanError bool
	GetBooleanError bool
}

func (g GSettingsSubsetMock) IsWritable(key string) bool {
	return !g.IsWritableError
}

func (g GSettingsSubsetMock) SetBoolean(key string, value bool) bool {
	if g.SetBooleanError {
		return false
	}
	testutils.WriteActionToFile("gsettings.SetBoolean(key: " + key + ", value: " + strings.ToLower(strconv.FormatBool(value)) + ")\n")
	return true
}

func (g GSettingsSubsetMock) GetBoolean(key string) bool {
	if g.GetBooleanError {
		return false // GetBoolean either returns the boolean, or false if it fails, so its difficult to test
	}
	testutils.WriteActionToFile("gsettings.GetBoolean(key: " + key + ")\n")
	return true
}
