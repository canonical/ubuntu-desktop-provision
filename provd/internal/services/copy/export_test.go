package copy

type ICopier = iCopier

// WithCopier is a functional option to set the copier to use for testing.
func WithCopier(c ICopier) Option {
	return func(s *Service) error {
		s.copier = c
		return nil
	}
}
