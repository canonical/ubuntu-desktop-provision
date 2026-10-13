// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_provision_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovak (`sk`).
class UbuntuProvisionLocalizationsSk extends UbuntuProvisionLocalizations {
  UbuntuProvisionLocalizationsSk([String locale = 'sk']) : super(locale);

  @override
  String get accessibilityPageTitle => 'Prístupnosť';

  @override
  String accessibilityPageHeader(String DISTRO) {
    return 'Prístupnosť v $DISTRO';
  }

  @override
  String accessibilityPageBody(String DISTRO) {
    return 'Prispôsobte si $DISTRO podľa svojich potrieb pred nastavením. Tieto nastavenia môžete neskôr zmeniť v aplikácii Nastavenia.';
  }

  @override
  String get accessibilitySeeingLabel => 'Videnie';

  @override
  String get accessibilityHearingLabel => 'Počutie';

  @override
  String get accessibilityTypingLabel => 'Písanie';

  @override
  String get accessibilityPointingLabel => 'Ukazovanie a klikanie';

  @override
  String get accessibilityZoomLabel => 'Priblíženie';

  @override
  String get accessibilityHighContrastLabel => 'Vysoký kontrast';

  @override
  String get accessibilityLargeTextLabel => 'Veľký text';

  @override
  String get accessibilityReduceAnimationLabel => 'Obmedziť animácie';

  @override
  String get accessibilityScreenReaderLabel => 'Čítačka obrazovky';

  @override
  String get accessibilityVisualAlertsLabel => 'Vizuálne upozornenia';

  @override
  String get accessibilityStickKeysLabel => 'Lepkavé klávesy';

  @override
  String get accessibilitySlowKeysLabel => 'Pomalé klávesy';

  @override
  String get accessibilityMouseKeysLabel => 'Klávesy myši';

  @override
  String get accessibilityDesktopZoomLabel => 'Priblíženie pracovnej plochy';

  @override
  String get errorPageTitle => 'Niečo sa pokazilo';

  @override
  String get errorPageUnexpected =>
      'Ospravedlňujeme sa, ale nie sme si istí, o akú chybu ide. Môžete skúsiť reštartovať počítač a spustiť inštaláciu znova. Môžete tiež <a>nahlásiť problém</a>.';

  @override
  String errorPageUbuntuBug(String SNAP) {
    return 'Ak chcete odoslať automatickú správu o chybe vrátane relevantných ladiacich informácií, spustite <pre>sudo ubuntu-bug $SNAP</pre> v termináli alebo z príkazového riadku (Alt+F2).';
  }

  @override
  String get errorPageShowLog => 'Zobraziť záznam';

  @override
  String get errorPageHideLog => 'Skryť záznam';

  @override
  String get errorPageTechnicalDetails => 'Technické detaily';

  @override
  String get restart => 'Reštartovať';

  @override
  String get close => 'Zavrieť';

  @override
  String get timezonePageTitle => 'Vyberte svoje časové pásmo';

  @override
  String get timezoneLocationLabel => 'Poloha';

  @override
  String get timezoneTimezoneLabel => 'Časové pásmo';

  @override
  String get keyboardTitle => 'Rozloženie klávesnice';

  @override
  String get keyboardHeader => 'Vyberte rozloženie klávesnice';

  @override
  String get keyboardTestHint => 'Píšte sem na otestovanie klávesnice';

  @override
  String get keyboardDetectTitle => 'Zistiť rozloženie klávesnice';

  @override
  String get keyboardDetectButton => 'Zistiť';

  @override
  String get keyboardVariantLabel => 'Vyberte variant klávesnice:';

  @override
  String get keyboardPressKeyLabel =>
      'Stlačte prosím jeden z nasledujúcich klávesov:';

  @override
  String get keyboardKeyPresentLabel =>
      'Je nasledujúci kláves na vašej klávesnici?';

  @override
  String get themePageTitle => 'Vyberte svoju tému';

  @override
  String get themePageHeader =>
      'Toto môžete neskôr vždy zmeniť v nastaveniach vzhľadu.';

  @override
  String get themeDark => 'Tmavá';

  @override
  String get themeLight => 'Svetlá';

  @override
  String localePageTitle(String DISTRO) {
    return 'Vitajte v $DISTRO';
  }

  @override
  String get localeHeader => 'Vyberte svoj jazyk:';

  @override
  String get identityPageTitle => 'Vytvorte si účet';

  @override
  String get identityAutoLogin => 'Prihlásiť sa automaticky';

  @override
  String get identityRequirePassword => 'Vyžadovať heslo na prihlásenie';

  @override
  String get identityRealNameLabel => 'Vaše meno';

  @override
  String get identityRealNameRequired => 'Meno je povinné';

  @override
  String get identityRealNameTooLong => 'Toto meno je príliš dlhé.';

  @override
  String get identityInvalidRealName => 'Meno je neplatné';

  @override
  String get identityHostnameLabel => 'Názov vášho počítača';

  @override
  String get identityHostnameInfo =>
      'Názov používaný pri komunikácii s inými počítačmi.';

  @override
  String get identityHostnameRequired => 'Názov počítača je povinný';

  @override
  String get identityHostnameTooLong => 'Tento názov počítača je príliš dlhý.';

  @override
  String get identityInvalidHostname => 'Názov počítača je neplatný';

  @override
  String get identityUsernameLabel => 'Vaše používateľské meno';

  @override
  String get identityUsernameRequired => 'Používateľské meno je povinné';

  @override
  String get identityInvalidUsername =>
      'Používateľské meno je neplatné: musí začínať malým písmenom a môže obsahovať iba malé písmená, číslice, pomlčky a podtržníky.';

  @override
  String get identityUsernameInUse => 'Toto používateľské meno už existuje.';

  @override
  String get identityUsernameSystemReserved =>
      'Tento názov je vyhradený pre systémové použitie.';

  @override
  String get identityUsernameTooLong => 'Tento názov je príliš dlhý.';

  @override
  String get identityUsernameInvalidChars =>
      'Tento názov obsahuje neplatné znaky.';

  @override
  String get identityPasswordLabel => 'Heslo';

  @override
  String get identityPasswordRequired => 'Heslo je povinné';

  @override
  String get identityConfirmPasswordLabel => 'Potvrďte heslo';

  @override
  String get identityPasswordMismatch => 'Heslá sa nezhodujú';

  @override
  String get identityPasswordShow => 'Zobraziť';

  @override
  String get identityPasswordHide => 'Skryť';

  @override
  String get identityActiveDirectoryOption => 'Použiť službu Active Directory';

  @override
  String get identityActiveDirectoryInfo =>
      'Doménu a ďalšie podrobnosti zadáte v ďalšom kroku.';

  @override
  String get activeDirectoryTitle => 'Prihlásiť sa do služby Active Directory';

  @override
  String get activeDirectoryHeader =>
      'Prihlásiť sa do služby Active Directory?';

  @override
  String activeDirectoryInfo(String DISTRO) {
    return '$DISTRO je navrhnutý na bezproblémovú integráciu so službou Active Directory pre jednoduchšiu správu.';
  }

  @override
  String get activeDirectoryTestConnection => 'Otestovať pripojenie k doméne';

  @override
  String get activeDirectoryDomainLabel => 'Doména';

  @override
  String get activeDirectoryDomainEmpty => 'Povinné';

  @override
  String get activeDirectoryDomainTooLong => 'Príliš dlhé';

  @override
  String get activeDirectoryDomainInvalidChars => 'Neplatné znaky';

  @override
  String get activeDirectoryDomainStartDot => 'Začína bodkou (.)';

  @override
  String get activeDirectoryDomainEndDot => 'Končí bodkou (.)';

  @override
  String get activeDirectoryDomainStartHyphen => 'Začína pomlčkou (-)';

  @override
  String get activeDirectoryDomainEndHyphen => 'Končí pomlčkou (-)';

  @override
  String get activeDirectoryDomainMultipleDots =>
      'Obsahuje viacero po sebe idúcich bodiek (..)';

  @override
  String get activeDirectoryDomainNotFound => 'Doména sa nenašla';

  @override
  String get activeDirectoryAdminLabel => 'Používateľ na pripojenie k doméne';

  @override
  String get activeDirectoryAdminEmpty => 'Povinné';

  @override
  String get activeDirectoryAdminInvalidChars => 'Neplatné znaky';

  @override
  String get activeDirectoryPasswordLabel => 'Heslo';

  @override
  String get activeDirectoryPasswordEmpty => 'Povinné';

  @override
  String get activeDirectoryErrorTitle =>
      'Chyba pri konfigurácii pripojenia k službe Active Directory';

  @override
  String get activeDirectoryErrorMessage =>
      'Ľutujeme, službu Active Directory momentálne nie je možné nastaviť. Keď bude váš systém spustený, navštívte <a href=\"https://help.ubuntu.com/activedirectory\">help.ubuntu.com/activedirectory</a> pre pomoc.';

  @override
  String get networkPageTitle => 'Pripojenie na internet';

  @override
  String get networkPageHeader => 'Pripojiť sa na internet';

  @override
  String get networkPageBody =>
      'Pripojenie na internet umožní kontrolu kompatibility a inštaláciu ďalších softvérových balíkov.';

  @override
  String get networkWiredOption => 'Použiť káblové pripojenie';

  @override
  String get networkWiredNone => 'Nebolo zistené žiadne káblové pripojenie';

  @override
  String get networkWiredOff => 'Káblové pripojenie je vypnuté';

  @override
  String get networkWiredDisabled =>
      'Ak chcete na tomto počítači používať sieť Ethernet, musí byť povolené káblové pripojenie';

  @override
  String get networkWiredEnable => 'Povoliť káblové';

  @override
  String get networkWifiOption => 'Pripojiť sa k sieti Wi-Fi';

  @override
  String get networkWifiOff => 'Bezdrôtové siete sú vypnuté';

  @override
  String get networkWifiNone => 'Neboli zistené žiadne zariadenia Wi-Fi';

  @override
  String get networkWifiDisabled =>
      'Ak chcete na tomto počítači používať Wi-Fi, musí byť povolené bezdrôtové pripojenie';

  @override
  String get networkWifiEnable => 'Povoliť Wi-Fi';

  @override
  String get networkHiddenWifiOption => 'Pripojiť sa k skrytej sieti Wi-Fi';

  @override
  String get networkHiddenWifiNameLabel => 'Názov siete';

  @override
  String get networkHiddenWifiNameRequired => 'Názov siete je povinný';

  @override
  String get networkNoneOption => 'Nepripájať sa na internet';

  @override
  String get eulaPageTitle => 'Licenčná zmluva';

  @override
  String get eulaReviewTerms => 'Skontrolovať licenčné podmienky';

  @override
  String get eulaReadAndAcceptTerms =>
      'Ak chcete pokračovať v nastavovaní tohto počítača, musíte si prečítať a prijať podmienky licenčnej zmluvy.';

  @override
  String get eulaAcceptTerms => 'Prečítal som si a prijímam tieto podmienky';

  @override
  String get successIconSemanticLabel => 'Úspech';

  @override
  String get closeIconSemanticLabel => 'Zavrieť';

  @override
  String get maximizeIconSemanticLabel => 'Maximalizovať';

  @override
  String get minimizeIconSemanticLabel => 'Minimalizovať';

  @override
  String get expandIconSemanticLabel => 'Rozbaliť';

  @override
  String get collapseIconSemanticLabel => 'Zbaliť';

  @override
  String get networkWifiSignalNone => 'Žiadny signál';

  @override
  String get networkWifiSignalWeak => 'Slabý signál';

  @override
  String get networkWifiSignalOk => 'Dostatočný signál';

  @override
  String get networkWifiSignalGood => 'Dobrý signál';

  @override
  String get networkWifiSignalExcellent => 'Výborný signál';

  @override
  String get networkWifiOpenNetwork => 'Otvorená sieť';

  @override
  String get networkWifiSecureNetwork => 'Zabezpečená sieť';

  @override
  String get networkWifiConnecting => 'Pripája sa…';

  @override
  String get networkWifiConnected => 'Pripojené';

  @override
  String get logViewSemanticLabel => 'Záznam';
}
