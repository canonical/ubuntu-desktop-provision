import 'ubuntu_init_localizations.dart';

/// The translations for Estonian (`et`).
class UbuntuInitLocalizationsEt extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsEt([String locale = 'et']) : super(locale);

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
