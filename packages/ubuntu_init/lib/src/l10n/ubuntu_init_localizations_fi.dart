import 'ubuntu_init_localizations.dart';

/// The translations for Finnish (`fi`).
class UbuntuInitLocalizationsFi extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsFi([String locale = 'fi']) : super(locale);

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
  String ubuntuProMagicAttachInstructions(Object url) {
    return 'Magic attach with this code at <a href=\"https://$url\">$url</a>';
  }

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';

  @override
  String get ubuntuProHeader => 'Attach this machine';

  @override
  String get ubuntuProOrAddTokenManually => 'or add a token manually';

  @override
  String get ubuntuProTokenTextfieldHint => 'Token';

  @override
  String get ubuntuProSubscriptionDescription => 'Get the most comprehensive subscription for open-source software security';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(Object url) {
    return 'Always free for personal use. 30-days trial for enterprises. <a href=\"https://$url\">Learn more</a>';
  }

  @override
  String get ubuntuProTokenAttachButton => 'Attach';

  @override
  String get ubuntuProTokenAttachError => 'Invalid token';

  @override
  String get ubuntuProTokenAttachSucess => 'Valid token';

  @override
  String get ubuntuProTokenAttachErrorVariant => 'Invalid token, retry';

  @override
  String get ubuntuProOnBoardingSkipForNow => 'Skip for now';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription => 'You can always enable Ubuntu Pro later via the Software & Updates application.';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => 'Enable Ubuntu Pro';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription => 'Attach this machine to an Ubuntu Pro subscription for security updates on a wider range of packages, until 2032.';

  @override
  String get ubuntuProSucessAttachHeader => 'Ubuntu Pro is now enabled in this machine';

  @override
  String get ubuntuProSucessAttachDescription => 'You can manage your Pro services in the Software & Updates application.';
}
