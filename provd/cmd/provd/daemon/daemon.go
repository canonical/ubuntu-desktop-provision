package daemon

import (
	"context"
	"fmt"
	"log/slog"
	"runtime"

	"github.com/canonical/ubuntu-desktop-provision/provd/internal/daemon"
	"github.com/canonical/ubuntu-desktop-provision/provd/internal/services"
	"github.com/spf13/cobra"
	"github.com/spf13/viper"
)

// cmdName is the binary name for the agent.
const cmdName = "provd"

// App encapsulate commands and options of the daemon, which can be controlled by env variables and config files.
type App struct {
	rootCmd cobra.Command
	viper   *viper.Viper
	config  daemonConfig

	daemon *daemon.Daemon

	ready chan struct{}
}

// only overridable for tests.
type systemPaths struct {
	Socket string
}

// daemonConfig defines configuration parameters of the daemon.
type daemonConfig struct {
	Paths systemPaths
}

// New registers commands and return a new App.
func New() *App {
	a := App{ready: make(chan struct{})}
	a.rootCmd = cobra.Command{
		Use:   fmt.Sprintf("%s COMMAND", cmdName),
		Short: "Provisioning daemon",
		Long:  "Ubuntu Desktop Provisioning daemon.",
		Args:  cobra.NoArgs,
		PersistentPreRunE: func(cmd *cobra.Command, args []string) error {
			// Command parsing has been successful. Returns to not print usage anymore.
			a.rootCmd.SilenceUsage = true

			// Set config defaults
			a.config = daemonConfig{
				Paths: systemPaths{
					// Empty by default for socket activation
					Socket: "",
				},
			}

			// Install and unmarshall configuration
			if err := initViperConfig(cmdName, &a.rootCmd, a.viper); err != nil {
				return err
			}
			if err := a.viper.Unmarshal(&a.config); err != nil {
				return fmt.Errorf("unable to decode configuration into struct: %w", err)
			}

			slog.Debug("Debug mode is enabled")

			return nil
		},
		RunE: func(cmd *cobra.Command, args []string) error {
			return a.serve(a.config)
		},
		// We display usage error ourselves
		SilenceErrors: true,
	}
	viper := viper.New()

	a.viper = viper

	installConfigFlag(&a.rootCmd)

	// subcommands
	a.installVersion()

	return &a
}

// serve creates new GRPC services and listen on a TCP socket. This call is blocking until we quit it.
func (a *App) serve(config daemonConfig) error {
	ctx := context.Background()

	m, err := services.NewManager(ctx)
	if err != nil {
		close(a.ready)
		return err
	}

	socketPath := config.Paths.Socket
	var daemonopts []daemon.Option
	if socketPath != "" {
		daemonopts = append(daemonopts, daemon.WithSocketPath(socketPath))
	}

	daemon, err := daemon.New(ctx, m.RegisterGRPCServices, daemonopts...)
	if err != nil {
		close(a.ready)
		return err
	}

	a.daemon = daemon
	close(a.ready)

	return daemon.Serve(ctx)
}

// Run executes the command and associated process. It returns an error on syntax/usage error.
func (a *App) Run() error {
	return a.rootCmd.Execute()
}

// UsageError returns if the error is a command parsing or runtime one.
func (a App) UsageError() bool {
	return !a.rootCmd.SilenceUsage
}

// Hup prints all goroutine stack traces and return false to signal you shouldn't quit.
func (a App) Hup() (shouldQuit bool) {
	buf := make([]byte, 1<<16)
	runtime.Stack(buf, true)
	fmt.Printf("%s", buf)
	return false
}

// Quit gracefully shutdown the service.
func (a *App) Quit() {
	a.WaitReady()
	if a.daemon == nil {
		return
	}
	a.daemon.Quit(context.Background(), false)
}

// WaitReady signals when the daemon is ready
// Note: we need to use a pointer to not copy the App object before the daemon is ready, and thus, creates a data race.
func (a *App) WaitReady() {
	<-a.ready
}

// RootCmd returns a copy of the root command for the app. Shouldn't be in general necessary apart when running generators.
func (a App) RootCmd() cobra.Command {
	return a.rootCmd
}
