import 'ubuntu_init_localizations.dart';

/// The translations for Bengali Bangla (`bn`).
class UbuntuInitLocalizationsBn extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get welcomePageTitle => 'Welcome';

  @override
  String welcomePageHeader(Object distro) {
    return 'Welcome to $distro';
  }

  @override
  String get welcomeWhatsNew => 'WHAT\'S NEW?';

  @override
  String get welcomeStartTitle => 'A streamlined start';

  @override
  String get welcomeStartSubtitle => 'Supporting a cleaner setup experience.';

  @override
  String get welcomeStoreTitle => 'New look App Store';

  @override
  String get welcomeStoreSubtitle => 'It\'s never been easier to find your favourite software.';

  @override
  String get welcomeSecurityTitle => 'Enhanced security';

  @override
  String get welcomeSecuritySubtitle => 'New options for hardware-backed or ZFS encryption.';

  @override
  String welcomeChangelogLabel(Object url) {
    return '<a href=\"$url\">View changelog</a>';
  }

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

  @override
  String get storeTitle => 'Ubuntu Store';

  @override
  String get storeHeader => 'Get started with more applications';

  @override
  String get storeDescription => 'Ubuntu\'s App Store offers a range of apps you can get started with from the get-go.';

  @override
  String get storeOpen => 'Open App Store';
}
