package daemon

import (
	"errors"
	"fmt"
	"log/slog"
	"os"
	"path/filepath"
	"strings"

	"github.com/spf13/cobra"
	"github.com/spf13/viper"
	"github.com/ubuntu/decorate"
)

// initViperConfig adds config env variables and file support based on name prefix.
func initViperConfig(name string, cmd *cobra.Command, vip *viper.Viper) (err error) {
	defer decorate.OnError(&err, "can't load configuration")

	// Handle configuration.
	if v, err := cmd.Flags().GetString("config"); err == nil && v != "" {
		vip.SetConfigFile(v)
	} else {
		vip.SetConfigName(name)
		vip.AddConfigPath("./")
		vip.AddConfigPath("$HOME/")
		vip.AddConfigPath("/etc/provd/")
		// Add the executable path to the config search path.
		if binPath, err := os.Executable(); err != nil {
			slog.Warn("Failed to get current executable path, not adding it as a config dir", "errorDetail", err)
		} else {
			vip.AddConfigPath(filepath.Dir(binPath))
		}
	}

	if err := vip.ReadInConfig(); err != nil {
		var e viper.ConfigFileNotFoundError
		if errors.As(err, &e) {
			slog.Info("No configuration file.\nWe will only use the defaults, env variables or flags.", "errorDetail", e)
		} else {
			return fmt.Errorf("invalid configuration file: %w", err)
		}
	} else {
		slog.Info("Using configuration file", "pathToConfigFileUsed", vip.ConfigFileUsed())
	}

	// Handle environment.
	vip.SetEnvPrefix(name)
	vip.AutomaticEnv()

	// Visit manually env to bind every possibly related environment variable to be able to unmarshall
	// those into a struct.
	// More context on https://github.com/spf13/viper/pull/1429.
	prefix := strings.ToUpper(name) + "_"
	for _, e := range os.Environ() {
		if !strings.HasPrefix(e, prefix) {
			continue
		}

		s := strings.Split(e, "=")
		k := strings.ReplaceAll(strings.TrimPrefix(s[0], prefix), "_", ".")
		if err := vip.BindEnv(k, s[0]); err != nil {
			return fmt.Errorf("could not bind environment variable: %w", err)
		}
	}

	return nil
}

// installConfigFlag installs a --config option.
func installConfigFlag(cmd *cobra.Command) *string {
	return cmd.PersistentFlags().StringP("config", "c", "", "use a specific configuration file")
}
