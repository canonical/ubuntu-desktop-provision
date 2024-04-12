import 'ubuntu_init_localizations.dart';

/// The translations for Polish (`pl`).
class UbuntuInitLocalizationsPl extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get welcomePageTitle => 'Witamy';

  @override
  String welcomePageHeader(Object distro) {
    return 'Witaj w $distro';
  }

  @override
  String get welcomeWhatsNew => 'CO NOWEGO?';

  @override
  String get welcomeStartTitle => 'Usprawniony początek';

  @override
  String get welcomeStartSubtitle => 'Obsługiwanie przejrzystszej konfiguracji.';

  @override
  String get welcomeStoreTitle => 'Nowy wygląd Centrum oprogramowania';

  @override
  String get welcomeStoreSubtitle => 'Znalezienie ulubionego oprogramowania nigdy nie było łatwiejsze.';

  @override
  String get welcomeSecurityTitle => 'Zwiększone bezpieczeństwo';

  @override
  String get welcomeSecuritySubtitle => 'Nowe opcje szyfrowania sprzętowego lub ZFS.';

  @override
  String welcomeChangelogLabel(Object url) {
    return '<a href=\"$url\">Zobacz listę zmian</a>';
  }

  @override
  String get telemetryPageTitle => 'Telemetria';

  @override
  String telemetryHeader(Object distro) {
    return 'Pomóż ulepszyć $distro';
  }

  @override
  String telemetryDescription(Object distro) {
    return 'Udostępniaj anonimowo dane $distro, abyśmy mogli poprawić Twoje wrażenia.';
  }

  @override
  String telemetryLabelOn(Object distro) {
    return 'Tak, udostępniaj dane systemowe zespołowi $distro';
  }

  @override
  String get telemetryLabelOff => 'Nie, nie udostępniaj danych systemowych';

  @override
  String get telemetryReportLabel => 'Szczegóły raportowania';

  @override
  String get telemetryReportTitle => 'Szczegóły raportowania';

  @override
  String get telemetryLegalLabel => 'Informacje prawne';

  @override
  String get privacyPageTitle => 'Usługi lokalizacyjne';

  @override
  String get privacyLocationTitle => 'Włączyć usługi lokalizacyjne?';

  @override
  String get privacyLocationSubtitle => 'Informuj programy o swojej lokalizacji geograficznej.\nZawsze możesz to zmienić w ustawieniach systemu.';

  @override
  String get privacyLocationEnable => 'Usługi lokalizacyjne';

  @override
  String get privacyPolicyLink => 'Prywatność danych';

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
