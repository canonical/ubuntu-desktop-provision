package main

import (
	"log/slog"
	"os"
	"os/signal"
	"sync"
	"syscall"

	"github.com/canonical/ubuntu-desktop-provision/provd/cmd/provd/daemon"
)

func main() {
	a := daemon.New()
	os.Exit(run(a))
}

type app interface {
	Run() error
	UsageError() bool
	Hup() bool
	Quit()
}

func run(a app) int {
	defer installSignalHandler(a)()

	if err := a.Run(); err != nil {
		slog.Error("application run failed", "errorDetail", err)

		if a.UsageError() {
			return 2
		}
		return 1
	}

	return 0
}

func installSignalHandler(a app) func() {
	c := make(chan os.Signal, 1)
	signal.Notify(c, syscall.SIGHUP, syscall.SIGINT, syscall.SIGTERM)

	wg := sync.WaitGroup{}
	wg.Add(1)
	go func() {
		defer wg.Done()
		for {
			switch v, ok := <-c; v {
			case syscall.SIGINT, syscall.SIGTERM:
				a.Quit()
				return
			case syscall.SIGHUP:
				if a.Hup() {
					a.Quit()
					return
				}
			default:
				// channel was closed: we exited
				if !ok {
					return
				}
			}
		}
	}()

	return func() {
		signal.Stop(c)
		close(c)
		wg.Wait()
	}
}
