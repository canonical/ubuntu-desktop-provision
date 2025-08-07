package telemetry

type Provider = provider

// WithProvider is a functional option to set the provider struct on the telemetry service for testing purposes.
func WithProvider(m Provider) Option {
	return func(s *Service) error {
		s.provider = m
		return nil
	}
}
