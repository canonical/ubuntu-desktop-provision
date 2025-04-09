package daemon

import (
	"os"
	"path/filepath"
	"testing"

	"github.com/stretchr/testify/require"
	"gopkg.in/yaml.v3"
)

type (
	DaemonConfig   = daemonConfig
	SystemPaths    = systemPaths
	KeyringCommand = keyringCommand
)

func NewForTestsWithConfig(t *testing.T, conf *DaemonConfig, keyringCmd *keyringCommand, args ...string) *App {
	t.Helper()

	p := GenerateTestConfig(t, conf)
	argsWithConf := []string{"--config", p}
	argsWithConf = append(argsWithConf, args...)

	a := NewForTests(t, keyringCmd, args...)
	a.rootCmd.SetArgs(argsWithConf)

	return a
}

func NewForTests(t *testing.T, keyringCmd *keyringCommand, args ...string) *App {
	t.Helper()

	a := New()

	if keyringCmd != nil {
		a.keyringCmd = *keyringCmd
	} else {
		a.keyringCmd = keyringCommand{
			Start: func() error {
				return nil
			},
		}
	}
	return a
}

func GenerateTestConfig(t *testing.T, origConf *daemonConfig) string {
	t.Helper()

	var conf daemonConfig

	if origConf != nil {
		conf = *origConf
	}

	if conf.Paths.Socket == "" {
		conf.Paths.Socket = filepath.Join(t.TempDir(), "provd.socket")
	}
	d, err := yaml.Marshal(conf)
	require.NoError(t, err, "Setup: could not marshal configuration for tests")

	confPath := filepath.Join(t.TempDir(), "testconfig.yaml")
	err = os.WriteFile(confPath, d, 0600)
	require.NoError(t, err, "Setup: could not create configuration for tests")

	return confPath
}

// Config returns a DaemonConfig for tests.
func (a App) Config() DaemonConfig {
	return a.config
}

// SetArgs set some arguments on root command for tests.
func (a *App) SetArgs(args ...string) {
	a.rootCmd.SetArgs(args)
}
