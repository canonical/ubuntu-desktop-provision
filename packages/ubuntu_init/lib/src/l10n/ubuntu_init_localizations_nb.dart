import 'ubuntu_init_localizations.dart';

/// The translations for Norwegian Bokmål (`nb`).
class UbuntuInitLocalizationsNb extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsNb([String locale = 'nb']) : super(locale);

  @override
  String get welcomePageTitle => 'Velkommen';

  @override
  String welcomePageHeader(Object distro) {
    return 'Velkommen til $distro';
  }

  @override
  String get welcomeWhatsNew => 'Hva er nytt?';

  @override
  String get welcomeStartTitle => 'En strømlinjeformet start';

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
  String get telemetryPageTitle => 'Telemetry';

  @override
  String telemetryHeader(Object distro) {
    return 'Help improve $distro';
  }

  @override
  String telemetryDescription(Object distro) {
    return 'Share data anonymously with $distro so we can improve your experience.';
  }

  @override
  String telemetryLabelOn(Object distro) {
    return 'Yes, share system data with the $distro team';
  }

  @override
  String get telemetryLabelOff => 'Nei, ikke del systemdata';

  @override
  String get telemetryReportLabel => 'Reporting details';

  @override
  String get telemetryReportTitle => 'Reporting details';

  @override
  String get telemetryLegalLabel => 'Legal';

  @override
  String get privacyPageTitle => 'Location services';

  @override
  String get privacyLocationTitle => 'Enable location services?';

  @override
  String get privacyLocationSubtitle => 'Let applications know your geographical location.\nYou can change this anytime in System Settings.';

  @override
  String get privacyLocationEnable => 'Location services';

  @override
  String get privacyPolicyLink => 'Databeskyttelse';

  @override
  String get storeTitle => 'Ubuntu-butikken';

  @override
  String get storeHeader => 'Get started with more applications';

  @override
  String get storeDescription => 'Ubuntu\'s App Store offers a range of apps you can get started with from the get-go.';

  @override
  String get storeOpen => 'Open App Store';

  @override
  String get launchsessionTitle => 'Setup complete';

  @override
  String get launchsessionHeader => 'All done!';

  @override
  String get launchsessionDescription => 'You can now begin using Ubuntu Core Desktop.';
}
