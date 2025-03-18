import 'ubuntu_provision_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Estonian (`et`).
class UbuntuProvisionLocalizationsEt extends UbuntuProvisionLocalizations {
  UbuntuProvisionLocalizationsEt([String locale = 'et']) : super(locale);

  @override
  String get accessibilityPageTitle => 'Hõlpsus';

  @override
  String accessibilityPageHeader(String DISTRO) {
    return 'Hõlpsus, juurdepääsetavus ja $DISTRO';
  }

  @override
  String accessibilityPageBody(String DISTRO) {
    return 'Enne paigaldaamist säti $DISTRO vastavaks oma eelistustele. Neid saad alati hiljem muuta süsteemi seadistustest.';
  }

  @override
  String get accessibilitySeeingLabel => 'Nägemine';

  @override
  String get accessibilityHearingLabel => 'Kuulmine';

  @override
  String get accessibilityTypingLabel => 'Trükkimine ja kirjutamine';

  @override
  String get accessibilityPointingLabel => 'Osutamine ja klõpsimine';

  @override
  String get accessibilityZoomLabel => 'Suumimine';

  @override
  String get accessibilityHighContrastLabel => 'Väga kontrastne';

  @override
  String get accessibilityLargeTextLabel => 'Suur tekst';

  @override
  String get accessibilityReduceAnimationLabel => 'Vähenda animatsioone';

  @override
  String get accessibilityScreenReaderLabel => 'Ekraanivaate ettelugeja';

  @override
  String get accessibilityVisualAlertsLabel => 'Visuaalsed hoiatused';

  @override
  String get accessibilityStickKeysLabel => 'Kleepuvad klahvid';

  @override
  String get accessibilitySlowKeysLabel => 'Aeglased klahvid';

  @override
  String get accessibilityMouseKeysLabel => 'Hiireklahvid';

  @override
  String get accessibilityDesktopZoomLabel => 'Töölaua suurendamine';

  @override
  String get errorPageTitle => 'Midagi läks valesti';

  @override
  String get errorPageUnexpected => 'Vabandust, aga me ei tea, mis veaga on tegemist. Sa võid proovida, kas arvuti uuesti käivitamine ja paigalduse uuesti alustamine parandab selle vea. Lisaks saad sa veast <a>ka meile teada anda</a>.';

  @override
  String errorPageUbuntuBug(String SNAP) {
    return 'Automaatse veateate koostamiseks koos asjakohase lisainfoga palun käivita terminalis või käsureapõhisest konsoolist (Alt+F2) <pre>sudo ubuntu-bug $SNAP</pre>.';
  }

  @override
  String get errorPageShowLog => 'Näita logi';

  @override
  String get errorPageHideLog => 'Peida logi';

  @override
  String get restart => 'Käivita arvuti uuesti';

  @override
  String get close => 'Sulge';

  @override
  String get timezonePageTitle => 'Vali oma ajavöönd';

  @override
  String get timezoneLocationLabel => 'Asukoht';

  @override
  String get timezoneTimezoneLabel => 'Ajavöönd';

  @override
  String get keyboardTitle => 'Klahvistiku paigutus';

  @override
  String get keyboardHeader => 'Vali sobilik klahvistiku paigutus';

  @override
  String get keyboardTestHint => 'Klahvistiku proovimiseks kirjuta siia';

  @override
  String get keyboardDetectTitle => 'Tuvasta klahvistiku paigutus';

  @override
  String get keyboardDetectButton => 'Tuvasta';

  @override
  String get keyboardVariantLabel => 'Vali oma klaviatuuri variant:';

  @override
  String get keyboardPressKeyLabel => 'Vajuta ühte järgnevatest klahvidest:';

  @override
  String get keyboardKeyPresentLabel => 'Kas järgnev klahv leidub klahvistikul?';

  @override
  String get themePageTitle => 'Vali kujundus';

  @override
  String get themePageHeader => 'Saad seda alati hiljem muuta välimuse seadistustest.';

  @override
  String get themeDark => 'Tume kujundus';

  @override
  String get themeLight => 'Hele kujundus';

  @override
  String localePageTitle(String DISTRO) {
    return 'Tere tulemast, see on $DISTRO';
  }

  @override
  String get localeHeader => 'Vali oma keel:';

  @override
  String get identityPageTitle => 'Loo oma kasutajakonto';

  @override
  String get identityAutoLogin => 'Logi sisse automaatselt';

  @override
  String get identityRequirePassword => 'Sisselogimiseks küsi salasõna';

  @override
  String get identityRealNameLabel => 'Sinu nimi';

  @override
  String get identityRealNameRequired => 'Nime sisestamine on kohustuslik';

  @override
  String get identityRealNameTooLong => 'See nimi on liiga pikk.';

  @override
  String get identityHostnameLabel => 'Sinu arvuti nimi';

  @override
  String get identityHostnameInfo => 'Selle arvuti nimi teiste arvutitega suhtlemisel.';

  @override
  String get identityHostnameRequired => 'Arvuti nime sisestamine on kohustuslik';

  @override
  String get identityHostnameTooLong => 'See arvutinimi on liiga pikk.';

  @override
  String get identityInvalidHostname => 'See arvutinimi on vigane';

  @override
  String get identityUsernameLabel => 'Sinu kasutajanimi';

  @override
  String get identityUsernameRequired => 'Kasutajanime sisestamine on kohustuslik';

  @override
  String get identityInvalidUsername => 'See kasutajanimi on vigane';

  @override
  String get identityUsernameInUse => 'Selline kasutajanimi on juba olemas.';

  @override
  String get identityUsernameSystemReserved => 'Selline kasutajanimi on reserveeritud vaid operatsioonisüsteemi jaoks.';

  @override
  String get identityUsernameTooLong => 'See nimi on liiga pikk.';

  @override
  String get identityUsernameInvalidChars => 'Selles nimes on keelatud tähemärke.';

  @override
  String get identityPasswordLabel => 'Salasõna';

  @override
  String get identityPasswordRequired => 'Salasõna on kohustuslik';

  @override
  String get identityConfirmPasswordLabel => 'Korda salasõna';

  @override
  String get identityPasswordMismatch => 'Salasõnad ei klapi';

  @override
  String get identityPasswordShow => 'Näita';

  @override
  String get identityPasswordHide => 'Peida';

  @override
  String get identityActiveDirectoryOption => 'Kasuta Active Directory teenuseid';

  @override
  String get identityActiveDirectoryInfo => 'Sa sisestad domeeni ja muud andmed järgmises sammus.';

  @override
  String get activeDirectoryTitle => 'Log into Active Directory';

  @override
  String get activeDirectoryHeader => 'Log into Active Directory?';

  @override
  String activeDirectoryInfo(String DISTRO) {
    return '$DISTRO is designed to integrate seamlessly with Active Directory for easier administration.';
  }

  @override
  String get activeDirectoryTestConnection => 'Test domain connectivity';

  @override
  String get activeDirectoryDomainLabel => 'Domain';

  @override
  String get activeDirectoryDomainEmpty => 'Required';

  @override
  String get activeDirectoryDomainTooLong => 'Too long';

  @override
  String get activeDirectoryDomainInvalidChars => 'Invalid characters';

  @override
  String get activeDirectoryDomainStartDot => 'Starts with a dot (.)';

  @override
  String get activeDirectoryDomainEndDot => 'Ends with a dot (.)';

  @override
  String get activeDirectoryDomainStartHyphen => 'Starts with a hyphen (-)';

  @override
  String get activeDirectoryDomainEndHyphen => 'Ends with a hyphen (-)';

  @override
  String get activeDirectoryDomainMultipleDots => 'Contains multiple sequenced dots (..)';

  @override
  String get activeDirectoryDomainNotFound => 'Domain not found';

  @override
  String get activeDirectoryAdminLabel => 'Domain join user';

  @override
  String get activeDirectoryAdminEmpty => 'Required';

  @override
  String get activeDirectoryAdminInvalidChars => 'Invalid characters';

  @override
  String get activeDirectoryPasswordLabel => 'Password';

  @override
  String get activeDirectoryPasswordEmpty => 'Required';

  @override
  String get activeDirectoryErrorTitle => 'Error configuring connection to Active Directory';

  @override
  String get activeDirectoryErrorMessage => 'Sorry, Active Directory can\'t be set up at the moment. Once your system is up and running, visit <a href=\"https://help.ubuntu.com/activedirectory\">help.ubuntu.com/activedirectory</a> for help.';

  @override
  String get networkPageTitle => 'Internet connection';

  @override
  String get networkPageHeader => 'Connect to the internet';

  @override
  String get networkPageBody => 'An internet connection will improve your installation with compatibility check and extra software packages.';

  @override
  String get networkWiredOption => 'Use wired connection';

  @override
  String get networkWiredNone => 'No wired connection detected';

  @override
  String get networkWiredOff => 'Wired connection is turned off';

  @override
  String get networkWiredDisabled => 'To use Ethernet on this computer, a wired connection must be enabled';

  @override
  String get networkWiredEnable => 'Enable wired';

  @override
  String get networkWifiOption => 'Connect to a Wi-Fi network';

  @override
  String get networkWifiOff => 'Wireless networking disabled';

  @override
  String get networkWifiNone => 'No Wi-Fi devices detected';

  @override
  String get networkWifiDisabled => 'To use Wi-Fi on this computer, wireless networking must be enabled';

  @override
  String get networkWifiEnable => 'Enable Wi-Fi';

  @override
  String get networkHiddenWifiOption => 'Connect to a hidden Wi-Fi network';

  @override
  String get networkHiddenWifiNameLabel => 'Network name';

  @override
  String get networkHiddenWifiNameRequired => 'A network name is required';

  @override
  String get networkNoneOption => 'Do not connect to the internet';

  @override
  String get eulaPageTitle => 'Litsentsileping';

  @override
  String get eulaReviewTerms => 'Tutvu litsentsilepingu tingimustega';

  @override
  String get eulaReadAndAcceptTerms => 'Jätkamaks paigaldust selles arvutis pead sa olema lugenud litsentsilepingut ja nõustunud tema tingimustega.';

  @override
  String get eulaAcceptTerms => 'Ma olen lugenud litsentsilepingut ja nõustun tema tingimustega';
}
