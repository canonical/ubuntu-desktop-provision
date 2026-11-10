package privacy

type GSettingsBooleanSetter = gSettingsBooleanSetter

// WithLocationSettings is a functional option to set the gSettingsBooleanSetter object for testing purposes.
func WithLocationSettings(g gSettingsBooleanSetter) Option {
	return func(s *Service) error {
		s.locationSettings = g
		return nil
	}
}
