// Package services mediates all the business logic of the application via a manager.
package services

import (
	"context"
	"errors"
	"fmt"
	"log/slog"

	"github.com/canonical/ubuntu-desktop-provision/provd/internal/services/accessibility"
	"github.com/canonical/ubuntu-desktop-provision/provd/internal/services/gdm"
	"github.com/canonical/ubuntu-desktop-provision/provd/internal/services/keyboard"
	"github.com/canonical/ubuntu-desktop-provision/provd/internal/services/locale"
	"github.com/canonical/ubuntu-desktop-provision/provd/internal/services/privacy"
	"github.com/canonical/ubuntu-desktop-provision/provd/internal/services/telemetry/v1"
	telemetryV2 "github.com/canonical/ubuntu-desktop-provision/provd/internal/services/telemetry/v2"
	"github.com/canonical/ubuntu-desktop-provision/provd/internal/services/timezone"
	"github.com/canonical/ubuntu-desktop-provision/provd/internal/services/user"
	pb "github.com/canonical/ubuntu-desktop-provision/provd/protos"
	pbV2 "github.com/canonical/ubuntu-desktop-provision/provd/protos/v2"
	"github.com/godbus/dbus/v5"
	"github.com/ubuntu/decorate"
	"google.golang.org/grpc"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

// Manager mediates the whole business logic of the application.
type Manager struct {
	userService          user.Service
	localeService        locale.Service
	keyboardSerivce      keyboard.Service
	privacyService       privacy.Service
	timezoneService      timezone.Service
	accessibilityService accessibility.Service
	telemetryService     telemetry.Service
	telemetryServiceV2   telemetryV2.Service
	gdmService           *gdm.Service
	bus                  *dbus.Conn
}

// NewManager returns a new manager after creating all necessary items for our business logic.
func NewManager(ctx context.Context) (m *Manager, e error) {
	defer decorate.OnError(&e, "can't create provd object")

	var errs error

	bus, err := dbus.ConnectSystemBus(
		dbus.WithIncomingInterceptor(func(msg *dbus.Message) {
			slog.Debug(fmt.Sprintf("DBUS: %s", msg))
		}))
	if err != nil {
		errs = errors.Join(errs, fmt.Errorf("failed to connect to system bus: %s", err))
	}

	userService, err := user.New(bus)
	if err != nil {
		errs = errors.Join(errs, fmt.Errorf("failed to create user service: %s", err))
	}

	localeService, err := locale.New(bus)
	if err != nil {
		errs = errors.Join(errs, fmt.Errorf("failed to create locale service: %s", err))
	}

	keyboardService, err := keyboard.New(bus)
	if err != nil {
		errs = errors.Join(errs, fmt.Errorf("failed to create keyboard service: %s", err))
	}

	privacyService, err := privacy.New()
	if err != nil {
		errs = errors.Join(errs, fmt.Errorf("failed to create privacy service: %s", err))
	}

	timezoneService, err := timezone.New(bus)
	if err != nil {
		errs = errors.Join(errs, fmt.Errorf("failed to create timezone service: %s", err))
	}

	accessibilityService, err := accessibility.New()
	if err != nil {
		errs = errors.Join(errs, fmt.Errorf("failed to create accessibility service: %s", err))
	}

	gdmService, err := gdm.New(bus)
	if err != nil {
		slog.Warn(fmt.Sprintf("GDM service failed to initiate: %s", err))
	}

	if errs != nil {
		return nil, status.Errorf(codes.Internal, "%s", errs)
	}

	telemetryService, err := telemetry.New()
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to create telemetry service: %s", err)
	}

	telemetryServiceV2, err := telemetryV2.New()
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to create telemetry v2 service: %s", err)
	}

	return &Manager{
		userService:          *userService,
		localeService:        *localeService,
		keyboardSerivce:      *keyboardService,
		privacyService:       *privacyService,
		timezoneService:      *timezoneService,
		accessibilityService: *accessibilityService,
		telemetryService:     *telemetryService,
		telemetryServiceV2:   *telemetryServiceV2,
		gdmService:           gdmService,
		bus:                  bus,
	}, nil
}

// RegisterGRPCServices returns a new grpc Server.
func (m Manager) RegisterGRPCServices(ctx context.Context) *grpc.Server {
	slog.Debug("Registering GRPC services")

	grpcServer := grpc.NewServer()

	pb.RegisterUserServiceServer(grpcServer, &m.userService)
	pb.RegisterLocaleServiceServer(grpcServer, &m.localeService)
	pb.RegisterKeyboardServiceServer(grpcServer, &m.keyboardSerivce)
	pb.RegisterPrivacyServiceServer(grpcServer, &m.privacyService)
	pb.RegisterTimezoneServiceServer(grpcServer, &m.timezoneService)
	pb.RegisterAccessibilityServiceServer(grpcServer, &m.accessibilityService)
	pb.RegisterTelemetryServiceServer(grpcServer, &m.telemetryService)

	if m.gdmService != nil {
		pb.RegisterGdmServiceServer(grpcServer, m.gdmService)
	}

	pbV2.RegisterTelemetryServiceServer(grpcServer, &m.telemetryServiceV2)

	return grpcServer
}

// Stop closes the dbus connection.
func (m *Manager) Stop() error {
	slog.Debug("Closing grpc manager and dbus connection")

	if m.gdmService != nil {
		m.gdmService.Close()
	}
	return m.bus.Close()
}
