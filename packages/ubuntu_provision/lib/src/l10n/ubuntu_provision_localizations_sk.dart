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
    return 'Prístupnosť v systéme $DISTRO';
  }

  @override
  String accessibilityPageBody(String DISTRO) {
    return 'Prispôsobte si systém $DISTRO podľa svojich potrieb ešte pred nastavením. Tieto nastavenia môžete neskôr zmeniť v aplikácii Nastavenia.';
  }

  @override
  String get accessibilitySeeingLabel => 'Zrak';

  @override
  String get accessibilityHearingLabel => 'Sluch';

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
  String get accessibilityStickKeysLabel => 'Lepivé klávesy';

  @override
  String get accessibilitySlowKeysLabel => 'Pomalé klávesy';

  @override
  String get accessibilityMouseKeysLabel => 'Klávesy myši';

  @override
  String get accessibilityDesktopZoomLabel => 'Priblíženie plochy';

  @override
  String get errorPageTitle => 'Niečo sa pokazilo';

  @override
  String get errorPageUnexpected =>
      'Ospravedlňujeme sa, ale nevieme, aká chyba nastala. Skúste reštartovať počítač a spustiť inštaláciu znova. Môžete tiež <a>nahlásiť problém</a>.';

  @override
  String errorPageUbuntuBug(String SNAP) {
    return 'Ak chcete odoslať automatizované hlásenie o chybe vrátane relevantných ladených informácií, spustite v termináli alebo z príkazového riadku (Alt+F2) príkaz <pre>sudo ubuntu-bug $SNAP</pre>.';
  }

  @override
  String get errorPageShowLog => 'Zobraziť protokol';

  @override
  String get errorPageHideLog => 'Skryť protokol';

  @override
  String get errorPageTechnicalDetails => 'Technické detaily';

  @override
  String get restart => 'Reštartovať';

  @override
  String get close => 'Zavrieť';

  @override
  String get timezonePageTitle => 'Vyberte svoje časové pásmo';

  @override
  String get timezoneLocationLabel => 'Lokalita';

  @override
  String get timezoneTimezoneLabel => 'Časové pásmo';

  @override
  String get keyboardTitle => 'Rozloženie klávesnice';

  @override
  String get keyboardHeader => 'Vyberte rozloženie klávesnice';

  @override
  String get keyboardTestHint => 'Sem napíšte text pre otestovanie klávesnice';

  @override
  String get keyboardDetectTitle => 'Zistiť rozloženie klávesnice';

  @override
  String get keyboardDetectButton => 'Zistiť';

  @override
  String get keyboardVariantLabel => 'Vyberte variantu klávesnice:';

  @override
  String get keyboardPressKeyLabel =>
      'Prosím, stlačte jeden z nasledujúcich klávesov:';

  @override
  String get keyboardKeyPresentLabel => 'Je na klávesnici nasledujúci kláves?';

  @override
  String get themePageTitle => 'Vyberte si tému';

  @override
  String get themePageHeader =>
      'Toto nastavenie môžete kedykoľvek neskôr zmeniť v nastaveniach vzhľadu.';

  @override
  String get themeDark => 'Tmavá';

  @override
  String get themeLight => 'Svetlá';

  @override
  String localePageTitle(String DISTRO) {
    return 'Vitajte v systéme $DISTRO';
  }

  @override
  String get localeHeader => 'Vyberte jazyk:';

  @override
  String get identityPageTitle => 'Vytvorte si účet';

  @override
  String get identityAutoLogin => 'Prihlásiť sa automaticky';

  @override
  String get identityRequirePassword => 'Vyžadovať heslo pri prihlásení';

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
      'Názov, ktorý počítač používa pri komunikácii s inými počítačmi.';

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
      'Používateľské meno je neplatné: musí začínať malým písmenom a môže obsahovať iba malé písmená, číslice, pomlčky a podčiarkovníky.';

  @override
  String get identityUsernameInUse => 'Toto používateľské meno už existuje.';

  @override
  String get identityUsernameSystemReserved =>
      'Tento názov je vyhradený pre systémové použitie.';

  @override
  String get identityUsernameTooLong => 'Toto meno je príliš dlhé.';

  @override
  String get identityUsernameInvalidChars =>
      'Toto meno obsahuje neplatné znaky.';

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
  String get identityActiveDirectoryOption => 'Použiť Active Directory';

  @override
  String get identityActiveDirectoryInfo =>
      'Doménu a ďalšie podrobnosti zadáte v ďalšom kroku.';

  @override
  String get activeDirectoryTitle => 'Prihlásiť sa do Active Directory';

  @override
  String get activeDirectoryHeader => 'Prihlásiť sa do Active Directory?';

  @override
  String activeDirectoryInfo(String DISTRO) {
    return 'Systém $DISTRO je navrhnutý tak, aby sa bezproblémovo integroval s Active Directory pre jednoduchšiu správu.';
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
  String get activeDirectoryDomainNotFound => 'Doména nenájdená';

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
      'Chyba pri konfigurácii pripojenia k Active Directory';

  @override
  String get activeDirectoryErrorMessage =>
      'Ospravedlňujeme sa, ale Active Directory sa momentálne nedá nastaviť. Po spustení systému navštívte stránku <a href=\"https://help.ubuntu.com/activedirectory\">help.ubuntu.com/activedirectory</a> pre pomoc.';

  @override
  String get networkPageTitle => 'Pripojenie na internet';

  @override
  String get networkPageHeader => 'Pripojiť sa na internet';

  @override
  String get networkPageBody =>
      'Pripojenie na internet zlepšuje inštaláciu pomocou kontroly kompatibility a dodatočných balíkov softvéru.';

  @override
  String get networkWiredOption => 'Použiť káblové pripojenie';

  @override
  String get networkWiredNone => 'Nebolo zistené žiadne káblové pripojenie';

  @override
  String get networkWiredOff => 'Káblové pripojenie je vypnuté';

  @override
  String get networkWiredDisabled =>
      'Ak chcete na tomto počítači použiť Ethernet, musí byť povolené káblové pripojenie';

  @override
  String get networkWiredEnable => 'Povoliť káblové pripojenie';

  @override
  String get networkWifiOption => 'Pripojiť sa k sieti Wi-Fi';

  @override
  String get networkWifiOff => 'Bezdrôtové siete sú zakázané';

  @override
  String get networkWifiNone => 'Neboli zistené žiadne zariadenia Wi-Fi';

  @override
  String get networkWifiDisabled =>
      'Ak chcete na tomto počítači použiť Wi-Fi, musí byť povolené bezdrôtové pripojenie';

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
  String get eulaReviewTerms => 'Oboznámiť sa s podmienkami licencie';

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
  String get networkWifiSignalNone => 'Bez signálu';

  @override
  String get networkWifiSignalWeak => 'Slabý signál';

  @override
  String get networkWifiSignalOk => 'OK signál';

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
