package daemon

import (
	"context"
	"fmt"
	"net"
	"sync"
	"time"

	log "github.com/sirupsen/logrus"
	"google.golang.org/grpc"
)

type Daemon struct {
	grpcserver         *grpc.Server
	idler              idler
	lis                chan net.Listener
	socketAddr         string
	socketMu           sync.RWMutex
	registerGRPCServer GRPCServerRegisterer
	serverQuit         func(context.Context)
}

type options struct {
	idlingTimeout time.Duration
	serverQuit    func(context.Context)
}

type option func(*options)

type GRPCServerRegisterer func(srv *Daemon) *grpc.Server

func New(registerGRPCServer GRPCServerRegisterer, socket string, opts ...option) (d *Daemon, err error) {
	args := options{
		serverQuit: func(context.Context) {},
	}

	d = &Daemon{
		registerGRPCServer: registerGRPCServer,
		serverQuit:         args.serverQuit,
		idler:              newIdler(args.idlingTimeout),
		lis:                make(chan net.Listener, 1),
	}

	if err = d.UseSocket(socket); err != nil {
		return nil, err
	}

	d.grpcserver = d.registerGRPCServer(d)

	return d, nil
}

func (d *Daemon) UseSocket(socket string) error {
	lis, err := net.Listen("unix", socket)
	if err != nil {
		return err
	}

	d.lis <- lis

	return nil
}

func (d *Daemon) Listen() (err error) {
	lis := <-d.lis
	d.socketMu.Lock()
	d.socketAddr = lis.Addr().String()
	d.socketMu.Unlock()

	for {
		log.Infof("Starting gRPC server on socket: %s", d.socketAddr)
		if err = (d.grpcserver.Serve(lis)); err != nil {
			return fmt.Errorf("unable to start GRPC server: %w", err)
		}

		var ok bool
		lis, ok = <-d.lis
		if !ok {
			// Remove every forwards in case we forced stop the daemon.
			break
		}
		d.socketMu.Lock()
		d.socketAddr = lis.Addr().String()
		d.socketMu.Unlock()
		d.grpcserver = d.registerGRPCServer(d)
	}

	d.serverQuit(context.Background())
	return nil
}

func (d *Daemon) Quit(force bool) {
	close(d.lis)
}

type idler struct{}

func newIdler(timeout time.Duration) idler {
	return idler{}
}
