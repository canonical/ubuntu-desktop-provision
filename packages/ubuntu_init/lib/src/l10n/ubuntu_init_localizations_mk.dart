import 'ubuntu_init_localizations.dart';

/// The translations for Macedonian (`mk`).
class UbuntuInitLocalizationsMk extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsMk([String locale = 'mk']) : super(locale);

  @override
  String get privacyPageTitle => 'Location services';

  @override
  String get privacyLocationTitle => 'Enable location services?';

  @override
  String get privacyLocationSubtitle => 'Let applications know your geographical location.\nYou can change this anytime in System Settings.';

  @override
  String get privacyLocationEnable => 'Location services';

  @override
  String get privacyPolicyLink => 'Data Privacy';
}
