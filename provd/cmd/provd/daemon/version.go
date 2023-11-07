package daemon

import (
	"fmt"

	"github.com/canonical/ubuntu-desktop-provision/provd/internal/consts"
	"github.com/spf13/cobra"
)

func (a *App) installVersion() {
	cmd := &cobra.Command{
		Use:   "version",
		Short: "Returns version of daemon and exits",
		Args:  cobra.NoArgs,
		RunE:  func(cmd *cobra.Command, args []string) error { return getVersion() },
	}
	a.rootCmd.AddCommand(cmd)
}

// getVersion returns the current service version.
func getVersion() (err error) {
	fmt.Printf("%s\t%s"+"\n", cmdName, consts.Version)
	return nil
}
