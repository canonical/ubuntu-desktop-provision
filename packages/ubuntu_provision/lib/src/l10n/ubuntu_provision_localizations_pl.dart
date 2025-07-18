// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_provision_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class UbuntuProvisionLocalizationsPl extends UbuntuProvisionLocalizations {
  UbuntuProvisionLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get accessibilityPageTitle => 'Ułatwienia dostępu';

  @override
  String accessibilityPageHeader(String DISTRO) {
    return 'Ułatwienia dostępu w $DISTRO';
  }

  @override
  String accessibilityPageBody(String DISTRO) {
    return 'Dostosuj $DISTRO do swoich potrzeb przed konfiguracją. Możesz później zmienić dostosowanie w ustawieniach systemu.';
  }

  @override
  String get accessibilitySeeingLabel => 'Wzrok';

  @override
  String get accessibilityHearingLabel => 'Słuch';

  @override
  String get accessibilityTypingLabel => 'Pisanie';

  @override
  String get accessibilityPointingLabel => 'Wskazywanie i klikanie';

  @override
  String get accessibilityZoomLabel => 'Powiększanie';

  @override
  String get accessibilityHighContrastLabel => 'Wysoki kontrast';

  @override
  String get accessibilityLargeTextLabel => 'Duży tekst';

  @override
  String get accessibilityReduceAnimationLabel => 'Ograniczenie animacji';

  @override
  String get accessibilityScreenReaderLabel => 'Czytnik ekranu';

  @override
  String get accessibilityVisualAlertsLabel => 'Powiadomienia wizualne';

  @override
  String get accessibilityStickKeysLabel => 'Lepkie klawisze';

  @override
  String get accessibilitySlowKeysLabel => 'Powolne klawisze';

  @override
  String get accessibilityMouseKeysLabel => 'Klawisze myszy';

  @override
  String get accessibilityDesktopZoomLabel => 'Powiększanie pulpitu';

  @override
  String get errorPageTitle => 'Wystąpił problem';

  @override
  String get errorPageUnexpected =>
      'Przepraszamy, ale nie jesteśmy pewni, na czym polega błąd. Możesz spróbować ponownie uruchomić komputer i jeszcze raz rozpocząć proces instalacji. Możesz także <a>zgłosić problem</a>.';

  @override
  String errorPageUbuntuBug(String SNAP) {
    return 'Aby wysłać zautomatyzowany raport o błędach, w tym odpowiednie informacje o debugowaniu, wykonaj polecenie <pre>sudo ubuntu-bug $SNAP</pre> w terminalu lub z konsoli poleceń (Alt+F2).';
  }

  @override
  String get errorPageShowLog => 'Pokaż dziennik';

  @override
  String get errorPageHideLog => 'Ukryj dziennik';

  @override
  String get restart => 'Uruchom ponownie';

  @override
  String get close => 'Zamknij';

  @override
  String get timezonePageTitle => 'Wybierz swoją strefę czasową';

  @override
  String get timezoneLocationLabel => 'Lokalizacja';

  @override
  String get timezoneTimezoneLabel => 'Strefa czasowa';

  @override
  String get keyboardTitle => 'Układ klawiatury';

  @override
  String get keyboardHeader => 'Wybierz układ klawiatury';

  @override
  String get keyboardTestHint => 'Wpisz tutaj, aby przetestować klawiaturę';

  @override
  String get keyboardDetectTitle => 'Wykryj układ klawiatury';

  @override
  String get keyboardDetectButton => 'Wykryj';

  @override
  String get keyboardVariantLabel => 'Wariant klawiatury:';

  @override
  String get keyboardPressKeyLabel =>
      'Naciśnij jeden z następujących klawiszy:';

  @override
  String get keyboardKeyPresentLabel =>
      'Czy ten klawisz występuje na klawiaturze?';

  @override
  String get themePageTitle => 'Wybierz swój motyw';

  @override
  String get themePageHeader =>
      'Zawsze możesz zmienić to później w ustawieniach wyglądu.';

  @override
  String get themeDark => 'Ciemny';

  @override
  String get themeLight => 'Jasny';

  @override
  String localePageTitle(String DISTRO) {
    return 'Witaj w $DISTRO';
  }

  @override
  String get localeHeader => 'Wybierz swój język:';

  @override
  String get identityPageTitle => 'Skonfiguruj swoje konto';

  @override
  String get identityAutoLogin => 'Automatyczne logowanie';

  @override
  String get identityRequirePassword => 'Wymaganie hasła do zalogowania';

  @override
  String get identityRealNameLabel => 'Twoje imię i nazwisko';

  @override
  String get identityRealNameRequired =>
      'Wymagane jest podanie imienia i nazwiska';

  @override
  String get identityRealNameTooLong => 'To imię i nazwisko jest za długie.';

  @override
  String get identityHostnameLabel => 'Nazwa tego komputera';

  @override
  String get identityHostnameInfo =>
      'Określa nazwę komputera używaną podczas komunikacji z innymi komputerami.';

  @override
  String get identityHostnameRequired =>
      'Wymagane jest podanie nazwy komputera';

  @override
  String get identityHostnameTooLong => 'Ta nazwa komputera jest za długa.';

  @override
  String get identityInvalidHostname => 'Nazwa komputera jest nieprawidłowa';

  @override
  String get identityUsernameLabel => 'Wybierz nazwę użytkownika';

  @override
  String get identityUsernameRequired =>
      'Wymagane jest podanie nazwy użytkownika';

  @override
  String get identityInvalidUsername => 'Nazwa użytkownika jest nieprawidłowa';

  @override
  String get identityUsernameInUse => 'Ta nazwa użytkownika już istnieje.';

  @override
  String get identityUsernameSystemReserved =>
      'Ta nazwa jest zarezerwowana na użytek systemu.';

  @override
  String get identityUsernameTooLong => 'Ta nazwa jest za długa.';

  @override
  String get identityUsernameInvalidChars =>
      'Ta nazwa zawiera nieprawidłowe znaki.';

  @override
  String get identityPasswordLabel => 'Hasło';

  @override
  String get identityPasswordRequired => 'Wymagane jest podanie hasła';

  @override
  String get identityConfirmPasswordLabel => 'Potwierdź swoje hasło';

  @override
  String get identityPasswordMismatch => 'Hasła nie są zgodne';

  @override
  String get identityPasswordShow => 'Pokaż';

  @override
  String get identityPasswordHide => 'Ukryj';

  @override
  String get identityActiveDirectoryOption => 'Użyj Active Directory';

  @override
  String get identityActiveDirectoryInfo =>
      'W kolejnym kroku podasz domenę i inne szczegóły.';

  @override
  String get activeDirectoryTitle => 'Konfigurowanie Active Directory';

  @override
  String get activeDirectoryHeader => 'Zalogować się do Active Directory?';

  @override
  String activeDirectoryInfo(String DISTRO) {
    return '$DISTRO zaprojektowano do bezproblemowej integracji z Active Directory w celu łatwiejszej administracji.';
  }

  @override
  String get activeDirectoryTestConnection => 'Przetestuj łączność domeny';

  @override
  String get activeDirectoryDomainLabel => 'Domena';

  @override
  String get activeDirectoryDomainEmpty => 'Wymagana';

  @override
  String get activeDirectoryDomainTooLong => 'Zbyt długa';

  @override
  String get activeDirectoryDomainInvalidChars => 'Nieprawidłowe znaki';

  @override
  String get activeDirectoryDomainStartDot => 'Zaczyna się od kropki (.)';

  @override
  String get activeDirectoryDomainEndDot => 'Kończy się kropką (.)';

  @override
  String get activeDirectoryDomainStartHyphen => 'Zaczyna się od łącznika (-)';

  @override
  String get activeDirectoryDomainEndHyphen => 'Kończy się łącznikiem (-)';

  @override
  String get activeDirectoryDomainMultipleDots =>
      'Zawiera wiele sekwencyjnych kropek (..)';

  @override
  String get activeDirectoryDomainNotFound => 'Nie znaleziono domeny';

  @override
  String get activeDirectoryAdminLabel => 'Użytkownik dołączający do domeny';

  @override
  String get activeDirectoryAdminEmpty => 'Wymagany';

  @override
  String get activeDirectoryAdminInvalidChars => 'Nieprawidłowe znaki';

  @override
  String get activeDirectoryPasswordLabel => 'Hasło';

  @override
  String get activeDirectoryPasswordEmpty => 'Wymagane';

  @override
  String get activeDirectoryErrorTitle =>
      'Błąd podczas konfigurowania połączenia z Active Directory';

  @override
  String get activeDirectoryErrorMessage =>
      'Przepraszamy, w tej chwili nie można skonfigurować usługi Active Directory. Gdy system będzie gotowy do pracy, odwiedź <a href=\"https://help.ubuntu.com/activedirectory\">help.ubuntu.com/activedirectory</a>, aby uzyskać pomoc.';

  @override
  String get networkPageTitle => 'Połącz się z siecią';

  @override
  String get networkPageHeader => 'Połącz się z Internetem';

  @override
  String get networkPageBody =>
      'Połączenie internetowe usprawni instalację dzięki sprawdzeniu zgodności i dodatkowym pakietom oprogramowania.';

  @override
  String get networkWiredOption => 'Użyj połączenia przewodowego';

  @override
  String get networkWiredNone => 'Nie wykryto połączenia przewodowego';

  @override
  String get networkWiredOff => 'Połączenie przewodowe jest wyłączone';

  @override
  String get networkWiredDisabled =>
      'Aby korzystać z sieci Ethernet na tym komputerze, musi być włączone połączenie przewodowe';

  @override
  String get networkWiredEnable => 'Włącz przewodowe';

  @override
  String get networkWifiOption => 'Połącz się z siecią Wi-Fi';

  @override
  String get networkWifiOff => 'Sieć bezprzewodowa wyłączona';

  @override
  String get networkWifiNone => 'Nie wykryto urządzeń Wi-Fi';

  @override
  String get networkWifiDisabled =>
      'Aby korzystać z sieci Wi-Fi na tym komputerze, musi być włączona sieć bezprzewodowa';

  @override
  String get networkWifiEnable => 'Włącz Wi-Fi';

  @override
  String get networkHiddenWifiOption => 'Połącz się z ukrytą siecią Wi-Fi';

  @override
  String get networkHiddenWifiNameLabel => 'Nazwa sieci';

  @override
  String get networkHiddenWifiNameRequired => 'Wymagana jest nazwa sieci';

  @override
  String get networkNoneOption => 'Nie łącz się z Internetem';

  @override
  String get eulaPageTitle => 'Umowa licencyjna';

  @override
  String get eulaReviewTerms => 'Przejrzyj warunki licencyjne';

  @override
  String get eulaReadAndAcceptTerms =>
      'Aby kontynuować konfigurowanie tego urządzenia, musisz przeczytać i zaakceptować warunki umowy licencyjnej.';

  @override
  String get eulaAcceptTerms =>
      'Akceptuję niniejsze warunki po ich przeczytaniu';

  @override
  String get successIconSemanticLabel => 'Success';
}
