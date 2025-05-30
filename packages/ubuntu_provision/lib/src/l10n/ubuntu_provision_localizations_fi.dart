// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_provision_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Finnish (`fi`).
class UbuntuProvisionLocalizationsFi extends UbuntuProvisionLocalizations {
  UbuntuProvisionLocalizationsFi([String locale = 'fi']) : super(locale);

  @override
  String get accessibilityPageTitle => 'Esteettömyys';

  @override
  String accessibilityPageHeader(String DISTRO) {
    return 'Esteettömyys ja $DISTRO';
  }

  @override
  String accessibilityPageBody(String DISTRO) {
    return 'Mukauta ${DISTRO}a vastaamaan tarpeitasi ennen asentamista. Voit muuttaa asetuksia myöhemmin järjestelmän asetuksista.';
  }

  @override
  String get accessibilitySeeingLabel => 'Näkeminen';

  @override
  String get accessibilityHearingLabel => 'Kuuleminen';

  @override
  String get accessibilityTypingLabel => 'Kirjoittaminen';

  @override
  String get accessibilityPointingLabel => 'Osoittaminen ja napsauttaminen';

  @override
  String get accessibilityZoomLabel => 'Suurentaminen';

  @override
  String get accessibilityHighContrastLabel => 'Suuri kontrasti';

  @override
  String get accessibilityLargeTextLabel => 'Suuri teksti';

  @override
  String get accessibilityReduceAnimationLabel => 'Vähennä animaatiota';

  @override
  String get accessibilityScreenReaderLabel => 'Näytönlukija';

  @override
  String get accessibilityVisualAlertsLabel => 'Visuaaliset hälytykset';

  @override
  String get accessibilityStickKeysLabel => 'Pohjaan jäävät näppäimet';

  @override
  String get accessibilitySlowKeysLabel => 'Hitaat näppäimet';

  @override
  String get accessibilityMouseKeysLabel => 'Hiirinäppäimet';

  @override
  String get accessibilityDesktopZoomLabel => 'Työpöydän suurennus';

  @override
  String get errorPageTitle => 'Jokin meni pieleen';

  @override
  String get errorPageUnexpected => 'Valitettavasti emme ole varmoja, mikä aiheutti ongelman. Voit käynnistää tietokoneen uudelleen ja käynnistää asennuksen uudelleen. Voit myös <a>ilmoittaa kohtaamastasi ongelmasta</a>.';

  @override
  String errorPageUbuntuBug(String SNAP) {
    return 'Suorita komento <pre>sudo ubuntu-bug $SNAP</pre> päätteessä tai komentokonsolissa (Alt+F2) lähettääksesi automaattisen virheraportin, joka sisältää myös virheenjäljitystiedot.';
  }

  @override
  String get errorPageShowLog => 'Näytä loki';

  @override
  String get errorPageHideLog => 'Piilota loki';

  @override
  String get restart => 'Käynnistä uudelleen';

  @override
  String get close => 'Sulje';

  @override
  String get timezonePageTitle => 'Valitse aikavyöhyke';

  @override
  String get timezoneLocationLabel => 'Sijainti';

  @override
  String get timezoneTimezoneLabel => 'Aikavyöhyke';

  @override
  String get keyboardTitle => 'Näppäimistön asettelu';

  @override
  String get keyboardHeader => 'Valitse näppäimistön asettelu';

  @override
  String get keyboardTestHint => 'Kokeile näppäimistön asetuksia kirjoittamalla tähän';

  @override
  String get keyboardDetectTitle => 'Tunnista näppäimistön asettelu';

  @override
  String get keyboardDetectButton => 'Tunnista';

  @override
  String get keyboardVariantLabel => 'Näppäimistömuunnelma:';

  @override
  String get keyboardPressKeyLabel => 'Paina yhtä seuraavista näppäimistä:';

  @override
  String get keyboardKeyPresentLabel => 'Löytyykö seuraava näppäin näppäimistöstäsi?';

  @override
  String get themePageTitle => 'Valitse teema';

  @override
  String get themePageHeader => 'Voit vaihtaa ulkoasua milloin tahansa asetusten kautta.';

  @override
  String get themeDark => 'Tumma';

  @override
  String get themeLight => 'Vaalea';

  @override
  String localePageTitle(String DISTRO) {
    return 'Tervetuloa, tämä on $DISTRO';
  }

  @override
  String get localeHeader => 'Valitse kieli:';

  @override
  String get identityPageTitle => 'Määritä tili';

  @override
  String get identityAutoLogin => 'Kirjaudu sisään automaattisesti';

  @override
  String get identityRequirePassword => 'Vaadi salasana sisäänkirjautumiseen';

  @override
  String get identityRealNameLabel => 'Nimi';

  @override
  String get identityRealNameRequired => 'Nimi vaaditaan';

  @override
  String get identityRealNameTooLong => 'Nimi on liian pitkä.';

  @override
  String get identityHostnameLabel => 'Tietokoneen nimi';

  @override
  String get identityHostnameInfo => 'Nimi, jolla tietokone tunnistautuu toisille tietokoneille.';

  @override
  String get identityHostnameRequired => 'Tietokoneen nimi vaaditaan';

  @override
  String get identityHostnameTooLong => 'Tietokoneen nimi on liian pitkä.';

  @override
  String get identityInvalidHostname => 'Tietokoneen nimi on virheellinen';

  @override
  String get identityUsernameLabel => 'Valitse käyttäjätunnus';

  @override
  String get identityUsernameRequired => 'Käyttäjätunnus vaaditaan';

  @override
  String get identityInvalidUsername => 'Käyttäjätunnus on virheellinen';

  @override
  String get identityUsernameInUse => 'Kyseinen käyttäjänimi on jo olemassa.';

  @override
  String get identityUsernameSystemReserved => 'Kyseinen nimi on varattu järjestelmän käytettäväksi.';

  @override
  String get identityUsernameTooLong => 'Kyseinen nimi on liian pitkä.';

  @override
  String get identityUsernameInvalidChars => 'Kyseinen nimi sisältää virheellisiä merkkejä.';

  @override
  String get identityPasswordLabel => 'Salasana';

  @override
  String get identityPasswordRequired => 'Salasana vaaditaan';

  @override
  String get identityConfirmPasswordLabel => 'Vahvista salasana';

  @override
  String get identityPasswordMismatch => 'Salasanat eivät täsmää';

  @override
  String get identityPasswordShow => 'Näytä';

  @override
  String get identityPasswordHide => 'Piilota';

  @override
  String get identityActiveDirectoryOption => 'Käytä Active Directorya';

  @override
  String get identityActiveDirectoryInfo => 'Kirjoita toimialue ja muut tiedot seuraavassa vaiheessa.';

  @override
  String get activeDirectoryTitle => 'Kirjaudu Active Directoryyn';

  @override
  String get activeDirectoryHeader => 'Haluatko kirjautua Active Directoryyn?';

  @override
  String activeDirectoryInfo(String DISTRO) {
    return '$DISTRO on suunniteltu integroitavaksi Active Directoryyn ylläpidon helpottamiseksi.';
  }

  @override
  String get activeDirectoryTestConnection => 'Testaa toimialueen yhdistettävyyttä';

  @override
  String get activeDirectoryDomainLabel => 'Toimialue';

  @override
  String get activeDirectoryDomainEmpty => 'Vaadittu';

  @override
  String get activeDirectoryDomainTooLong => 'Liian pitkä';

  @override
  String get activeDirectoryDomainInvalidChars => 'Virheellisiä merkkejä';

  @override
  String get activeDirectoryDomainStartDot => 'Alkaa pisteellä (.)';

  @override
  String get activeDirectoryDomainEndDot => 'Päättyy pisteeseen (.)';

  @override
  String get activeDirectoryDomainStartHyphen => 'Alkaa tavuviivalla (-)';

  @override
  String get activeDirectoryDomainEndHyphen => 'Päättyy tavuviivaan (-)';

  @override
  String get activeDirectoryDomainMultipleDots => 'Sisältää lukuisia peräkkäisiä pisteitä (..)';

  @override
  String get activeDirectoryDomainNotFound => 'Toimialuetta ei löydy';

  @override
  String get activeDirectoryAdminLabel => 'Toimialueeseen liittävä käyttäjä';

  @override
  String get activeDirectoryAdminEmpty => 'Vaadittu';

  @override
  String get activeDirectoryAdminInvalidChars => 'Virheellisiä merkkejä';

  @override
  String get activeDirectoryPasswordLabel => 'Salasana';

  @override
  String get activeDirectoryPasswordEmpty => 'Vaadittu';

  @override
  String get activeDirectoryErrorTitle => 'Virhe määrittäessä yhteyttä Active Directoryyn';

  @override
  String get activeDirectoryErrorMessage => 'Valitettavasti Active Directorya ei voi määrittää tällä hetkellä. Kun tietokoneesi on valmis ja käynnissä, käy osoitteessa <a href=\"https://help.ubuntu.com/activedirectory\">help.ubuntu.com/activedirectory</a> saadaksesi ohjeita.';

  @override
  String get networkPageTitle => 'Yhdistä verkkoon';

  @override
  String get networkPageHeader => 'Yhdistä internetiin';

  @override
  String get networkPageBody => 'Internetyhteys parantaa asennuskokemusta tarkistamalla yhteensopivuuden ja lisäohjelmistopaketit.';

  @override
  String get networkWiredOption => 'Käytä langallista yhteyttä';

  @override
  String get networkWiredNone => 'Langallista yhteyttä ei havaittu';

  @override
  String get networkWiredOff => 'Langallinen yhteys on kytketty pois päältä';

  @override
  String get networkWiredDisabled => 'Jos haluat käyttää Ethernet-yhteyttä tässä tietokoneessa, langallinen yhteys on otettava käyttöön';

  @override
  String get networkWiredEnable => 'Ota langallinen yhteys käyttöön';

  @override
  String get networkWifiOption => 'Yhdistä Wi-Fi-verkkoon';

  @override
  String get networkWifiOff => 'Langaton verkko ei käytössä';

  @override
  String get networkWifiNone => 'Wi-Fi-laitteita ei havaittu';

  @override
  String get networkWifiDisabled => 'Jos haluat käyttää Wi-Fi-yhteyttä tällä tietokoneella, langaton verkko on otettava käyttöön';

  @override
  String get networkWifiEnable => 'Ota Wi-Fi käyttöön';

  @override
  String get networkHiddenWifiOption => 'Yhdistä piilotettuun wifi-verkkoon';

  @override
  String get networkHiddenWifiNameLabel => 'Verkon nimi';

  @override
  String get networkHiddenWifiNameRequired => 'Verkon nimi vaaditaan';

  @override
  String get networkNoneOption => 'En halua muodostaa yhteyttä internetiin juuri nyt';

  @override
  String get eulaPageTitle => 'Lisenssin hyväksyntä';

  @override
  String get eulaReviewTerms => 'Lue lisenssiehdot';

  @override
  String get eulaReadAndAcceptTerms => 'Sinun täytyy lukea ja hyväksyä lisenssiehdot jatkaaksesi tämän koneen määritystä.';

  @override
  String get eulaAcceptTerms => 'Olen lukenut lisenssiehdot ja hyväksyn ne';
}
