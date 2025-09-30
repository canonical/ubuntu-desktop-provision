// ignore: unused_import
import 'package:intl/intl.dart' as intl;
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
    return 'Enne paigaldamist säti $DISTRO vastavaks oma eelistustele. Neid saad alati hiljem muuta süsteemi seadistustest.';
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
  String get errorPageUnexpected =>
      'Vabandust, aga me ei tea, mis veaga on tegemist. Sa võid proovida, kas arvuti uuesti käivitamine ja paigalduse uuesti alustamine parandab selle vea. Lisaks saad sa veast <a>ka meile teada anda</a>.';

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
  String get keyboardKeyPresentLabel =>
      'Kas järgnev klahv leidub klahvistikul?';

  @override
  String get themePageTitle => 'Vali kujundus';

  @override
  String get themePageHeader =>
      'Saad seda alati hiljem muuta välimuse seadistustest.';

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
  String get identityHostnameInfo =>
      'Selle arvuti nimi teiste arvutitega suhtlemisel.';

  @override
  String get identityHostnameRequired =>
      'Arvuti nime sisestamine on kohustuslik';

  @override
  String get identityHostnameTooLong => 'See arvutinimi on liiga pikk.';

  @override
  String get identityInvalidHostname => 'See arvutinimi on vigane';

  @override
  String get identityUsernameLabel => 'Sinu kasutajanimi';

  @override
  String get identityUsernameRequired =>
      'Kasutajanime sisestamine on kohustuslik';

  @override
  String get identityInvalidUsername => 'See kasutajanimi on vigane';

  @override
  String get identityUsernameInUse => 'Selline kasutajanimi on juba olemas.';

  @override
  String get identityUsernameSystemReserved =>
      'Selline kasutajanimi on reserveeritud vaid operatsioonisüsteemi jaoks.';

  @override
  String get identityUsernameTooLong => 'See nimi on liiga pikk.';

  @override
  String get identityUsernameInvalidChars =>
      'Selles nimes on keelatud tähemärke.';

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
  String get identityActiveDirectoryOption =>
      'Kasuta Active Directory teenuseid';

  @override
  String get identityActiveDirectoryInfo =>
      'Sa sisestad domeeni ja muud andmed järgmises sammus.';

  @override
  String get activeDirectoryTitle => 'Logi sisse Active Directory teenusega';

  @override
  String get activeDirectoryHeader =>
      'Kas logime sisse Active Directory teenusega?';

  @override
  String activeDirectoryInfo(String DISTRO) {
    return 'Lihtsama haldamise nimel on $DISTRO loodud sujuvalt liidestuma Active Directory teenusega.';
  }

  @override
  String get activeDirectoryTestConnection => 'Testi domeeni ühenduvust';

  @override
  String get activeDirectoryDomainLabel => 'Domeen';

  @override
  String get activeDirectoryDomainEmpty => 'Nõutav';

  @override
  String get activeDirectoryDomainTooLong => 'Liiga pikk';

  @override
  String get activeDirectoryDomainInvalidChars => 'Vigased tähemärgid';

  @override
  String get activeDirectoryDomainStartDot => 'Algab punktiga (.)';

  @override
  String get activeDirectoryDomainEndDot => 'Lõppeb punktiga (.)';

  @override
  String get activeDirectoryDomainStartHyphen => 'Algab sidekriipsuga (-)';

  @override
  String get activeDirectoryDomainEndHyphen => 'Lõppeb sidekriipsuga (-)';

  @override
  String get activeDirectoryDomainMultipleDots =>
      'Sisaldab mitut järjestikku punkti (..)';

  @override
  String get activeDirectoryDomainNotFound => 'Domeeni ei leidu';

  @override
  String get activeDirectoryAdminLabel =>
      'Kasutajanimi arvuti lisamiseks domeeni';

  @override
  String get activeDirectoryAdminEmpty => 'Nõutav';

  @override
  String get activeDirectoryAdminInvalidChars => 'Vigased tähemärgid';

  @override
  String get activeDirectoryPasswordLabel => 'Salasõna';

  @override
  String get activeDirectoryPasswordEmpty => 'Nõutav';

  @override
  String get activeDirectoryErrorTitle =>
      'Viga Active Directory teenuse ühenduse seadistamisel';

  @override
  String get activeDirectoryErrorMessage =>
      'Vabandust, Active Directory teenuse ühendust ei õnnestu praegu seadistada. Kui arvuti paigaldus on lõppenud, siis palun loe abiteavet <a href=\"https://help.ubuntu.com/activedirectory\">help.ubuntu.com/activedirectory</a> lehelt.';

  @override
  String get networkPageTitle => 'Internetiühendus';

  @override
  String get networkPageHeader => 'Lisa internetiühendus';

  @override
  String get networkPageBody =>
      'Internetiühendus võimaldab võrgust laadida andmeid ühilduvuskontrolli jaoks ja täiendavaid tarkvarapakette.';

  @override
  String get networkWiredOption => 'Kasuta kaabliga internetiühendust';

  @override
  String get networkWiredNone =>
      'Ühtegi kaabliga internetiühendust ei õnnestunud tuvastada';

  @override
  String get networkWiredOff => 'Kaabliga internetiühendus on välja lülitatud';

  @override
  String get networkWiredDisabled =>
      'Kui soovid siin arvutis Etherneti-võrku kasutada, siis kaabliga võrguühendus peab olema sisse lülitatud';

  @override
  String get networkWiredEnable => 'Lülita kaabliga internetiühendus sisse';

  @override
  String get networkWifiOption => 'Lisa ühendus WiFi-võrguga';

  @override
  String get networkWifiOff => 'Traadita võrguühendus on välja lülitatud';

  @override
  String get networkWifiNone => 'Ühtegi WiFi-võrku ei õnnestunud tuvastada';

  @override
  String get networkWifiDisabled =>
      'Kui soovid siin arvutis WiFi-võrku kasutada, siis traadita võrguühendus peab olema sisse lülitatud';

  @override
  String get networkWifiEnable => 'Lülita WiFi sisse';

  @override
  String get networkHiddenWifiOption => 'Lisa ühendus peidetud WiFi-võrguga';

  @override
  String get networkHiddenWifiNameLabel => 'WiFi-võrgu nimi';

  @override
  String get networkHiddenWifiNameRequired => 'WiFi-võrgu nimi on nõutav';

  @override
  String get networkNoneOption => 'Ära lisa internetiühendust';

  @override
  String get eulaPageTitle => 'Litsentsileping';

  @override
  String get eulaReviewTerms => 'Tutvu litsentsilepingu tingimustega';

  @override
  String get eulaReadAndAcceptTerms =>
      'Jätkamaks paigaldust selles arvutis pead sa olema lugenud litsentsilepingut ja nõustunud tema tingimustega.';

  @override
  String get eulaAcceptTerms =>
      'Ma olen lugenud litsentsilepingut ja nõustun tema tingimustega';

  @override
  String get successIconSemanticLabel => 'Õnnestus';

  @override
  String get closeIconSemanticLabel => 'Sulge';

  @override
  String get maximizeIconSemanticLabel => 'Maksimeeri';

  @override
  String get minimizeIconSemanticLabel => 'Minimeeri';

  @override
  String get expandIconSemanticLabel => 'Expand';

  @override
  String get collapseIconSemanticLabel => 'Collapse';
}
