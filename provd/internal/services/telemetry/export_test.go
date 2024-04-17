package telemetry

type Sysmetricer = sysmetricer

// WithSysmetricer is a functional option to set the systemmetrics struct on the telemetry service for testing purposes.
func WithSysmetricer(m Sysmetricer) Option {
	return func(s *Service) error {
		s.systemmetrics = m
		return nil
	}
}
