package daemon

import (
	"context"
	"fmt"
	"time"

	"github.com/canonical/ubuntu-desktop-provision/provd/internal/daemon"
	"github.com/canonical/ubuntu-desktop-provision/provd/internal/provdservice"
	"github.com/spf13/cobra"
	"github.com/spf13/viper"
)

// CmdName is the binary name for the daemon.
const CmdName = "provd" // Provisioning Daemon

type App struct {
	rootCmd cobra.Command
	viper   *viper.Viper
	config  daemonConfig
	daemon  *daemon.Daemon // Define YourDaemonType or import it
	ready   chan struct{}
}

type daemonConfig struct {
	Verbose        int
	Socket         string
	ServiceTimeout int
}

type YourDaemonType struct{} // Define the type or import it

func New() *App {
	a := App{ready: make(chan struct{})}
	a.rootCmd = cobra.Command{
		Use: fmt.Sprintf("%s COMMAND", CmdName),
		PersistentPreRunE: func(cmd *cobra.Command, args []string) error {
			return nil
		},
		RunE: func(cmd *cobra.Command, args []string) error {
			provd, err := provdservice.New(context.Background()) // Include only relevant options
			if err != nil {
				close(a.ready)
				return err
			}

			// Initialize and run daemon
			d, err := daemon.New(provd.RegisterGRPCServer, "/tmp/test_socket.sock")
			if err != nil {
				close(a.ready)
				return err
			}
			a.daemon = d
			close(a.ready)
			return a.daemon.Listen()

		},
	}

	return &a
}

func (a *App) changeServerSocket(socket string) error {
	return nil
}

func (a *App) changeServiceTimeout(timeout time.Duration) {
}

func (a *App) Quit() {
}

func (a *App) Run() error {
	return a.rootCmd.Execute()
}
