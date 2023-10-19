package main

import (
	"os"
	"os/signal"
	"sync"
	"syscall"

	"github.com/canonical/ubuntu-desktop-provision/provd/cmd/provd/daemon"
	log "github.com/sirupsen/logrus"
)

func main() {
	var a app
	a = daemon.New()
	exitCode := run(a)

	log.Errorf("Exiting with code: %d", exitCode)
	os.Exit(exitCode)
}

type app interface {
	Run() error
	Quit()
}

func run(a app) int {
	if err := a.Run(); err != nil {
		log.Errorf("Run error: %v", err) // Added log
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
				log.Info("Received SIGINT/SIGTERM, quitting")
				a.Quit()
				return
			default:
				if !ok {
					log.Info("Signal channel closed, exiting goroutine")
					return
				}
			}
		}
	}()

	return func() {
		log.Info("Cleaning up signal handlers") // Added log

		signal.Stop(c)
		close(c)
		wg.Wait()
	}
}
