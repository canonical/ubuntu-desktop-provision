package accessibility

import (
	"strconv"
	"strings"

	"github.com/canonical/ubuntu-desktop-provision/provd/internal/testutils"
)

func WithA11ySettings(g GSettingsSubset) Option {
	return func(s *Service) error {
		s.a11ySettings = g
		return nil
	}
}

func WithInterfaceSettings(g GSettingsSubset) Option {
	return func(s *Service) error {
		s.interfaceSettings = g
		return nil
	}
}

func WithWMSettings(g GSettingsSubset) Option {
	return func(s *Service) error {
		s.wmSettings = g
		return nil
	}
}

func WithKeyboardSettings(g GSettingsSubset) Option {
	return func(s *Service) error {
		s.keyboardSettings = g
		return nil
	}
}

func WithApplicationSettings(g GSettingsSubset) Option {
	return func(s *Service) error {
		s.applicationSettings = g
		return nil
	}
}

type GSettingsSubsetMock struct {

	// Wants
	WantTrue bool

	// Error flags for each method
	IsWritableError bool
	SetBooleanError bool
	GetBooleanError bool
	SetDoubleError  bool
	GetDoubleError  bool
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
		return false
	}
	return g.WantTrue
}

func (g GSettingsSubsetMock) SetDouble(key string, value float64) bool {
	if g.SetDoubleError {
		return false
	}
	testutils.WriteActionToFile("gsettings.SetDouble(key: " + key + ", value: " + strconv.FormatFloat(value, 'f', -1, 64) + ")\n")
	return true
}

func (g GSettingsSubsetMock) GetDouble(key string) float64 {
	if g.GetDoubleError {
		return 0
	}
	if g.WantTrue {
		return 1.25
	}
	return 1.0
}
