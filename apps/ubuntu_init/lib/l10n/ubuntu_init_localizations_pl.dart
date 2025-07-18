// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_init_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class UbuntuInitLocalizationsPl extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get welcomePageTitle => 'Witamy';

  @override
  String welcomePageHeader(String distro) {
    return 'Witaj w $distro';
  }

  @override
  String get welcomeWhatsNew => 'CO NOWEGO?';

  @override
  String get welcomeStartTitle => 'Usprawniony początek';

  @override
  String get welcomeStartSubtitle =>
      'Obsługiwanie przejrzystszej konfiguracji.';

  @override
  String get welcomeStoreTitle => 'Nowy wygląd Centrum oprogramowania';

  @override
  String get welcomeStoreSubtitle =>
      'Znalezienie ulubionego oprogramowania nigdy nie było łatwiejsze.';

  @override
  String get welcomeSecurityTitle => 'Zwiększone bezpieczeństwo';

  @override
  String get welcomeSecuritySubtitle =>
      'Nowe opcje szyfrowania sprzętowego lub ZFS.';

  @override
  String welcomeChangelogLabel(String url) {
    return '<a href=\"$url\">Zobacz listę zmian</a>';
  }

  @override
  String get telemetryPageTitle => 'Telemetria';

  @override
  String telemetryHeader(String distro) {
    return 'Pomóż ulepszyć $distro';
  }

  @override
  String telemetryDescription(String distro) {
    return 'Pomóż nam ulepszyć $distro, udostępniając nam swoje dane systemowe. Obejmuje to takie elementy jak model urządzenia, zainstalowane oprogramowanie i lokalizację wybraną dla strefy czasowej.';
  }

  @override
  String telemetryLabelOn(String distro) {
    return 'Tak, udostępniaj dane systemowe zespołowi $distro';
  }

  @override
  String get telemetryLabelOff => 'Nie, nie udostępniaj danych systemowych';

  @override
  String get telemetryReportLabel => 'Pokaż pierwszy raport';

  @override
  String get telemetryReportTitle => 'Szczegóły raportowania';

  @override
  String get telemetryLegalLabel => 'Informacje prawne';

  @override
  String get telemetryCollectError =>
      'Nie udało się zebrać danych telemetrycznych';

  @override
  String get privacyPageTitle => 'Usługi lokalizacyjne';

  @override
  String get privacyLocationTitle => 'Włączyć usługi lokalizacyjne?';

  @override
  String get privacyLocationSubtitle =>
      'Informuj programy o swojej lokalizacji geograficznej.\nZawsze możesz to zmienić w ustawieniach systemu.';

  @override
  String get privacyLocationEnable => 'Usługi lokalizacyjne';

  @override
  String get privacyPolicyLink => 'Prywatność danych';

  @override
  String ubuntuProMagicAttachInstructions(String url) {
    return 'Podłącz szybko z tym kodem pod adresem <a href=\"https://$url\">$url</a>';
  }

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';

  @override
  String get ubuntuProHeader => 'Podłącz to urządzenie';

  @override
  String get ubuntuProOrAddTokenManually => 'lub dodaj token ręcznie';

  @override
  String get ubuntuProTokenTextfieldHint => 'Token';

  @override
  String get ubuntuProSubscriptionDescription =>
      'Uzyskaj najbardziej kompleksową subskrypcję zabezpieczeń oprogramowania typu open source';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(String url) {
    return 'Zawsze bezpłatnie do użytku osobistego. 30-dniowy okres próbny dla przedsiębiorstw. <a href=\"https://$url\">Dowiedz się więcej</a>';
  }

  @override
  String get ubuntuProTokenAttachButton => 'Podłącz';

  @override
  String get ubuntuProTokenAttachError => 'Token nieprawidłowy';

  @override
  String get ubuntuProTokenAttachSucess => 'Token prawidłowy';

  @override
  String get ubuntuProTokenAttachErrorVariant => 'Token nieprawidłowy, ponów';

  @override
  String get ubuntuProOnBoardingSkipForNow => 'Pomiń na razie';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription =>
      'Zawsze możesz włączyć Ubuntu Pro później za pomocą aplikacji Oprogramowanie i aktualizacje.';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => 'Włącz Ubuntu Pro';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription =>
      'Podłącz to urządzenie do subskrypcji Ubuntu Pro, aby otrzymywać aktualizacje zabezpieczeń w szerszej gamie pakietów do 2032 roku.';

  @override
  String get ubuntuProSucessAttachHeader =>
      'Ubuntu Pro włączono teraz w tym urządzeniu';

  @override
  String get ubuntuProSucessAttachDescription =>
      'Usługami Pro możesz zarządzać w aplikacji Oprogramowanie i aktualizacje.';

  @override
  String get successIconSemanticLabel => 'Success';

  @override
  String get closeIconSemanticLabel => 'Close';

  @override
  String get maximizeIconSemanticLabel => 'Maximize';

  @override
  String get minimizeIconSemanticLabel => 'Minimize';
}
