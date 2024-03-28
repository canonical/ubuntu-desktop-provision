package chown

type IChownExecutable = iChownExecutable

// Option is a functional option to set the chown executable for testing.
func WithChownExecutable(c IChownExecutable) Option {
	return func(s *Service) error {
		s.chownExecutable = c
		return nil
	}
}
