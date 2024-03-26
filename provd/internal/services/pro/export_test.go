package pro

type IProExecutable = iProExecutable
type ProAPIResponse = proAPIResponse
type ProAPIErrors = proAPIErrors
type ProAPIError = proAPIError

// Option is a functional option to set the pro executable for testing.
func WithProExecutable(p IProExecutable) Option {
	return func(s *Service) error {
		s.proExecutable = p
		return nil
	}
}
