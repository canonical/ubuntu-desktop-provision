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
    return 'Dostupnosť v $DISTRO';
  }

  @override
  String accessibilityPageBody(String DISTRO) {
    return 'Pred nastavením si prispôsobte $DISTRO svojim potrebám. Neskôr ich môžete zmeniť v nastaveniach systému.';
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
  String get accessibilityZoomLabel => 'Lupa';

  @override
  String get accessibilityHighContrastLabel => 'Vysoký kontrast';

  @override
  String get accessibilityLargeTextLabel => 'Veľký text';

  @override
  String get accessibilityReduceAnimationLabel => 'Obmedziť animáciu';

  @override
  String get accessibilityScreenReaderLabel => 'Čítačka obrazovky';

  @override
  String get accessibilityVisualAlertsLabel => 'Vizuálne varovania';

  @override
  String get accessibilityStickKeysLabel => 'Lepkavé klávesy';

  @override
  String get accessibilitySlowKeysLabel => 'Pomalé klávesy';

  @override
  String get accessibilityMouseKeysLabel => 'Myš klávesmi';

  @override
  String get accessibilityDesktopZoomLabel => 'Priblíženie plochy';

  @override
  String get errorPageTitle => 'Niečo sa pokazilo';

  @override
  String get errorPageUnexpected =>
      'Ľutujeme, ale nie sme si istí, v čom je chyba. Môžete skúsiť reštartovať počítač a znova spustiť proces inštalácie. Môžete tiež <a>nahlásiť problém</a>.';

  @override
  String errorPageUbuntuBug(String SNAP) {
    return 'Ak chcete odoslať automatizované hlásenie o chybe vrátane relevantných informácií o ladení, spustite <pre>sudo ubuntu-bug $SNAP</pre> v termináli alebo z príkazovej konzoly (Alt+F2).';
  }

  @override
  String get errorPageShowLog => 'Zobraziť denník';

  @override
  String get errorPageHideLog => 'Skryť denník';

  @override
  String get restart => 'Reštartovať';

  @override
  String get close => 'Zavrieť';

  @override
  String get timezonePageTitle => 'Vyberte časové pásmo';

  @override
  String get timezoneLocationLabel => 'Umiestnenie';

  @override
  String get timezoneTimezoneLabel => 'Časové pásmo';

  @override
  String get keyboardTitle => 'Rozloženie klávesnice';

  @override
  String get keyboardHeader => 'Vyberte rozloženie klávesnice';

  @override
  String get keyboardTestHint =>
      'Správne fungovanie rozloženia môžete vyskúšať tu';

  @override
  String get keyboardDetectTitle => 'Zistiť rozloženie klávesnice';

  @override
  String get keyboardDetectButton => 'Zistiť';

  @override
  String get keyboardVariantLabel => 'Vyberte variant klávesnice:';

  @override
  String get keyboardPressKeyLabel =>
      'Prosím, stlačte niektorú z nasledujúcich kláves:';

  @override
  String get keyboardKeyPresentLabel =>
      'Máte na klávesnici nasledujúci kláves?';

  @override
  String get themePageTitle => 'Vyberte motív vzhľadu';

  @override
  String get themePageHeader =>
      'Môžete ho neskôr kedykoľvek zmeniť v nastaveniach vzhľadu.';

  @override
  String get themeDark => 'Tmavý';

  @override
  String get themeLight => 'Svetlý';

  @override
  String localePageTitle(String DISTRO) {
    return 'Vitajte v $DISTRO';
  }

  @override
  String get localeHeader => 'Vyberte svoj jazyk:';

  @override
  String get identityPageTitle => 'Vytvorenie vášho účtu';

  @override
  String get identityAutoLogin => 'Prihlásiť sa automaticky';

  @override
  String get identityRequirePassword => 'Pri prihlasovaní sa vyžadovať heslo';

  @override
  String get identityRealNameLabel => 'Vaše meno';

  @override
  String get identityRealNameRequired => 'Je potrebné zadať meno';

  @override
  String get identityRealNameTooLong => 'Meno je príliš dlhé.';

  @override
  String get identityHostnameLabel => 'Názov pre váš počítač';

  @override
  String get identityHostnameInfo =>
      'Tento názov slúži pri komunikácii s ostatnými počítačmi.';

  @override
  String get identityHostnameRequired => 'Je potrebné zadať názov pre počítač';

  @override
  String get identityHostnameTooLong => 'Takýto názov počítača je príliš dlhý.';

  @override
  String get identityInvalidHostname =>
      'Zadaný názov pre počítač nie je možné použiť';

  @override
  String get identityUsernameLabel => 'Vaše používateľské meno';

  @override
  String get identityUsernameRequired => 'Je potrebné zadať používateľské meno';

  @override
  String get identityInvalidUsername =>
      'Zadané používateľské meno nie je možné použiť';

  @override
  String get identityUsernameInUse => 'Také používateľské meno už existuje.';

  @override
  String get identityUsernameSystemReserved =>
      'Také meno je rezervované pre využitie systémom.';

  @override
  String get identityUsernameTooLong => 'Také meno je príliš dlhé.';

  @override
  String get identityUsernameInvalidChars =>
      'Také meno obsahuje neplatné znaky.';

  @override
  String get identityPasswordLabel => 'Heslo';

  @override
  String get identityPasswordRequired => 'Je potrebné zadať heslo';

  @override
  String get identityConfirmPasswordLabel => 'Zopakujte zadanie hesla';

  @override
  String get identityPasswordMismatch => 'Tieto heslá sa nezhodujú';

  @override
  String get identityPasswordShow => 'Zobraziť';

  @override
  String get identityPasswordHide => 'Skryť';

  @override
  String get identityActiveDirectoryOption => 'Použiť Active Directory';

  @override
  String get identityActiveDirectoryInfo =>
      'V ďalšom kroku zadáte doménu a ďalšie podrobnosti.';

  @override
  String get activeDirectoryTitle => 'Prihlásenie do Active Directory';

  @override
  String get activeDirectoryHeader => 'Prihlásiť sa do Active Directory?';

  @override
  String activeDirectoryInfo(String DISTRO) {
    return '$DISTRO je navrhnuté tak, aby sa bezproblémovo integrovalo s Active Directory pre jednoduchšiu správu.';
  }

  @override
  String get activeDirectoryTestConnection => 'Vyskúšať spojenie s doménou';

  @override
  String get activeDirectoryDomainLabel => 'Doména';

  @override
  String get activeDirectoryDomainEmpty => 'Vyžaduje sa';

  @override
  String get activeDirectoryDomainTooLong => 'Príliš dlhé';

  @override
  String get activeDirectoryDomainInvalidChars => 'Neplatné znaky';

  @override
  String get activeDirectoryDomainStartDot => 'Začína na bodku (.)';

  @override
  String get activeDirectoryDomainEndDot => 'Končí na bodku (.)';

  @override
  String get activeDirectoryDomainStartHyphen => 'Začína na pomlčku (-)';

  @override
  String get activeDirectoryDomainEndHyphen => 'Končí na pomlčku (-)';

  @override
  String get activeDirectoryDomainMultipleDots =>
      'Obsahuje niekoľko bodiek za sebou (..)';

  @override
  String get activeDirectoryDomainNotFound => 'Doména nenájdená';

  @override
  String get activeDirectoryAdminLabel =>
      'Používateľ s oprávnením pre pridanie do domény';

  @override
  String get activeDirectoryAdminEmpty => 'Vyžaduje sa';

  @override
  String get activeDirectoryAdminInvalidChars => 'Neplatné znaky';

  @override
  String get activeDirectoryPasswordLabel => 'Heslo';

  @override
  String get activeDirectoryPasswordEmpty => 'Vyžaduje sa';

  @override
  String get activeDirectoryErrorTitle =>
      'Chyba pri konfigurácii pripojenia k Active Directory';

  @override
  String get activeDirectoryErrorMessage =>
      'Ľutujeme, v tejto chvíli sa nedarí nastaviť službu Active Directory. Po spustení systému navštívte stránku <a href=\"https://help.ubuntu.com/activedirectory\">help.ubuntu.com/activedirectory</a>, kde získate ďalšie informácie.';

  @override
  String get networkPageTitle => 'Pripojenie k internetu';

  @override
  String get networkPageHeader => 'Pripojte sa na internet';

  @override
  String get networkPageBody =>
      'Internetové pripojenie vylepší vašu inštaláciu pomocou kontroly kompatibility a extra softvérových balíkov.';

  @override
  String get networkWiredOption => 'Použiť káblové pripojenie';

  @override
  String get networkWiredNone => 'Nezistilo sa žiadne káblové pripojenie';

  @override
  String get networkWiredOff => 'Káblové pripojenie je vypnuté';

  @override
  String get networkWiredDisabled =>
      'Ak chcete na tomto počítači používať Ethernet, je potrebné zapnúť káblové pripojenie';

  @override
  String get networkWiredEnable => 'Zapnúť káblové';

  @override
  String get networkWifiOption => 'Pripojiť sa k Wi-Fi sieti';

  @override
  String get networkWifiOff => 'Bezdrôtové pripojenie je vypnuté';

  @override
  String get networkWifiNone => 'Nezistili sa žiadne zariadenia Wi-Fi';

  @override
  String get networkWifiDisabled =>
      'Ak chcete na tomto počítači používať Wi-Fi, je potrebné zapnúť bezdrôtové pripojenie';

  @override
  String get networkWifiEnable => 'Zapnúť Wi-Fi';

  @override
  String get networkHiddenWifiOption => 'Pripojiť sa k skrytej Wi-Fi sieti';

  @override
  String get networkHiddenWifiNameLabel => 'Názov siete';

  @override
  String get networkHiddenWifiNameRequired => 'Vyžaduje sa názov siete';

  @override
  String get networkNoneOption =>
      'V tejto chvíli sa nechcem pripájať na Internet';

  @override
  String get eulaPageTitle => 'Licenčná zmluva';

  @override
  String get eulaReviewTerms => 'Prečítajte si licenčné podmienky';

  @override
  String get eulaReadAndAcceptTerms =>
      'Ak chcete pokračovať v nastavovaní tohto zariadenia, musíte si prečítať a prijať podmienky licenčnej zmluvy.';

  @override
  String get eulaAcceptTerms =>
      'Prečítal(a) som si tieto podmienky a súhlasím s nimi';

  @override
  String get successIconSemanticLabel => 'Success';

  @override
  String get closeIconSemanticLabel => 'Close';

  @override
  String get maximizeIconSemanticLabel => 'Maximize';

  @override
  String get minimizeIconSemanticLabel => 'Minimize';
}
