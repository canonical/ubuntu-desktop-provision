import 'ubuntu_init_localizations.dart';

/// The translations for French (`fr`).
class UbuntuInitLocalizationsFr extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String loadingPageTitle(Object DISTRO) {
    return 'Welcome to $DISTRO';
  }

  @override
  String loadingHeader(Object DISTRO) {
    return 'Preparing $DISTRO…';
  }

  @override
  String get welcomePageTitle => 'Bienvenue';

  @override
  String welcomePageHeader(Object distro) {
    return 'Bienvenue sur $distro';
  }

  @override
  String get welcomeWhatsNew => 'QUOI DE NEUF ?';

  @override
  String get welcomeStartTitle => 'Un démarrage simplifié';

  @override
  String get welcomeStartSubtitle => 'Supporting a cleaner setup experience.';

  @override
  String get welcomeStoreTitle => 'New look App Store';

  @override
  String get welcomeStoreSubtitle => 'It\'s never been easier to find your favourite software.';

  @override
  String get welcomeSecurityTitle => 'Sécurité renforcée';

  @override
  String get welcomeSecuritySubtitle => 'New options for hardware-backed or ZFS encryption.';

  @override
  String welcomeChangelogLabel(Object url) {
    return '<a href=\"$url\">View changelog</a>';
  }

  @override
  String get telemetryPageTitle => 'Télémétrie';

  @override
  String telemetryHeader(Object distro) {
    return 'Aider à améliorer $distro';
  }

  @override
  String telemetryDescription(Object distro) {
    return 'Share data anonymously with $distro so we can improve your experience.';
  }

  @override
  String telemetryLabelOn(Object distro) {
    return 'Oui, partager les données du système avec l\'équipe $distro';
  }

  @override
  String get telemetryLabelOff => 'Non, ne pas partager les données du système';

  @override
  String get telemetryReportLabel => 'Reporting details';

  @override
  String get telemetryReportTitle => 'Reporting details';

  @override
  String get telemetryLegalLabel => 'Legal';

  @override
  String get privacyPageTitle => 'Services de localisation';

  @override
  String get privacyLocationTitle => 'Activer les services de localisation ?';

  @override
  String get privacyLocationSubtitle => 'Let applications know your geographical location.\nYou can change this anytime in System Settings.';

  @override
  String get privacyLocationEnable => 'Services de localisation';

  @override
  String get privacyPolicyLink => 'Protection des données';

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';
}
