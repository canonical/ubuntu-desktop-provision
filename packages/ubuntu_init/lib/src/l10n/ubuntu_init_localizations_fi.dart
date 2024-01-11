import 'ubuntu_init_localizations.dart';

/// The translations for Finnish (`fi`).
class UbuntuInitLocalizationsFi extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsFi([String locale = 'fi']) : super(locale);

  @override
  String loadingPageTitle(Object DISTRO) {
    return 'Welcome to $DISTRO';
  }

  @override
  String loadingHeader(Object DISTRO) {
    return 'Preparing $DISTRO…';
  }

  @override
  String get welcomePageTitle => 'Tervetuloa';

  @override
  String welcomePageHeader(Object distro) {
    return 'Tervetuloa, tämä on $distro';
  }

  @override
  String get welcomeWhatsNew => 'MITÄ UUTTA?';

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
    return '<a href=\"$url\">Näytä muutosloki</a>';
  }

  @override
  String get telemetryPageTitle => 'Telemetria';

  @override
  String telemetryHeader(Object distro) {
    return 'Auta parantamaan ${distro}a';
  }

  @override
  String telemetryDescription(Object distro) {
    return 'Jaa tietoja anonyymisti ${distro}n kanssa, jotta voimme parantaa kokemustasi.';
  }

  @override
  String telemetryLabelOn(Object distro) {
    return 'Kyllä, jaa järjestelmän tietoja $distro-tiimille';
  }

  @override
  String get telemetryLabelOff => 'Ei, älä jaa järjestelmän tietoja';

  @override
  String get telemetryReportLabel => 'Reporting details';

  @override
  String get telemetryReportTitle => 'Reporting details';

  @override
  String get telemetryLegalLabel => 'Legal';

  @override
  String get privacyPageTitle => 'Sijaintipalvelut';

  @override
  String get privacyLocationTitle => 'Otetaanko sijaintipalvelut käyttöön?';

  @override
  String get privacyLocationSubtitle => 'Let applications know your geographical location.\nYou can change this anytime in System Settings.';

  @override
  String get privacyLocationEnable => 'Sijaintipalvelut';

  @override
  String get privacyPolicyLink => 'Data Privacy';

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';
}
