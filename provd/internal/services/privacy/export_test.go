package privacy

type GSettingsSubset = gSettingsSubset

// WithGSettingsSubset is a functional option to set the GSettingsSubset object for testing purposes.
func WithLocationSettings(g gSettingsSubset) Option {
	return func(s *Service) error {
		s.locationSettings = g
		return nil
	}
}
