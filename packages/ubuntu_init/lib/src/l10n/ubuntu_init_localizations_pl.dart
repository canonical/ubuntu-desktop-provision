import 'ubuntu_init_localizations.dart';

/// The translations for Polish (`pl`).
class UbuntuInitLocalizationsPl extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get welcomePageTitle => 'Witamy';

  @override
  String welcomePageHeader(Object distro) {
    return 'Witamy w $distro';
  }

  @override
  String get welcomeWhatsNew => 'CO NOWEGO?';

  @override
  String get welcomeStartTitle => 'Usprawniony początek';

  @override
  String get welcomeStartSubtitle => 'Obsługiwanie przejrzystszej konfiguracji.';

  @override
  String get welcomeStoreTitle => 'Nowy wygląd sklepu z aplikacjami';

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
  String get privacyLocationSubtitle => 'Informuj aplikacje o swojej lokalizacji geograficznej.\nZawsze możesz to zmienić w ustawieniach systemu.';

  @override
  String get privacyLocationEnable => 'Usługi lokalizacyjne';

  @override
  String get privacyPolicyLink => 'Prywatność danych';

  @override
  String get storeTitle => 'Sklep Ubuntu';

  @override
  String get storeHeader => 'Rozpocznij z większą liczbą aplikacji';

  @override
  String get storeDescription => 'Sklep Ubuntu oferuje szereg aplikacji, z którymi możesz zacząć od razu.';

  @override
  String get storeOpen => 'Otwórz sklep z aplikacjami';

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';
}
