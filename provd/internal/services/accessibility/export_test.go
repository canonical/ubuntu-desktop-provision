package accessibility

func WithA11ySettings(g GSettingsSubset) Option {
	return func(s *Service) error {
		s.a11ySettings = g
		return nil
	}
}

func WithInterfaceSettings(g GSettingsSubset) Option {
	return func(s *Service) error {
		s.interfaceSettings = g
		return nil
	}
}

func WithWMSettings(g GSettingsSubset) Option {
	return func(s *Service) error {
		s.wmSettings = g
		return nil
	}
}

func WithKeyboardSettings(g GSettingsSubset) Option {
	return func(s *Service) error {
		s.keyboardSettings = g
		return nil
	}
}

func WithApplicationSettings(g GSettingsSubset) Option {
	return func(s *Service) error {
		s.applicationSettings = g
		return nil
	}
}
