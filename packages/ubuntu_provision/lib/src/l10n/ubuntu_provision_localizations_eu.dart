// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_provision_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Basque (`eu`).
class UbuntuProvisionLocalizationsEu extends UbuntuProvisionLocalizations {
  UbuntuProvisionLocalizationsEu([String locale = 'eu']) : super(locale);

  @override
  String get accessibilityPageTitle => 'Erabilerraztasuna';

  @override
  String accessibilityPageHeader(String DISTRO) {
    return 'Erabilerraztasuna ${DISTRO}n';
  }

  @override
  String accessibilityPageBody(String DISTRO) {
    return 'Pertsonalizatu $DISTRO zure beharretara egokitzeko, dena martxan jarri aurretik. Gero ere izango duzu hau aldatzeko aukera Sistemaren ezarpenetan.';
  }

  @override
  String get accessibilitySeeingLabel => 'Ikusmena';

  @override
  String get accessibilityHearingLabel => 'Entzumena';

  @override
  String get accessibilityTypingLabel => 'Idazketa';

  @override
  String get accessibilityPointingLabel => 'Erakustea eta klik egitea';

  @override
  String get accessibilityZoomLabel => 'Zooma';

  @override
  String get accessibilityHighContrastLabel => 'Kontraste handia';

  @override
  String get accessibilityLargeTextLabel => 'Testu handia';

  @override
  String get accessibilityReduceAnimationLabel => 'Gutxitu animazioak';

  @override
  String get accessibilityScreenReaderLabel => 'Pantaila irakurlea';

  @override
  String get accessibilityVisualAlertsLabel => 'Abisu bisualak';

  @override
  String get accessibilityStickKeysLabel => 'Tekla itsaskorrak';

  @override
  String get accessibilitySlowKeysLabel => 'Tekla motelak';

  @override
  String get accessibilityMouseKeysLabel => 'Sagu-teklak';

  @override
  String get accessibilityDesktopZoomLabel => 'Mahaigainaren zooma';

  @override
  String get errorPageTitle => 'Arazo bat egon da';

  @override
  String get errorPageUnexpected =>
      'Sentitzen dugu, baina ez dakigu ziur zein izan den errorea. Ordenagailua berrabiarazi eta instalazio prozesua berriro abiatzen saia zaitezke. Nahi baduzu, <a>arazoaren berri eman</a> dezakezu.';

  @override
  String errorPageUbuntuBug(String SNAP) {
    return 'Errore-txosten automatizatua bidaltzeko (arazteko beharrezko informazioarekin), exekutatu <pre>sudo ubuntu-bug $SNAP</pre> terminal batean, edo komando-kontsolan (Alt+F2).';
  }

  @override
  String get errorPageShowLog => 'Erakutsi erregistroa';

  @override
  String get errorPageHideLog => 'Ezkutatu erregistroa';

  @override
  String get errorPageTechnicalDetails => 'Technical details';

  @override
  String get restart => 'Berrabiarazi';

  @override
  String get close => 'Itxi';

  @override
  String get timezonePageTitle => 'Hautatu zure ordu-eremua';

  @override
  String get timezoneLocationLabel => 'Kokalekua';

  @override
  String get timezoneTimezoneLabel => 'Ordu-eremua';

  @override
  String get keyboardTitle => 'Teklatuaren diseinua';

  @override
  String get keyboardHeader => 'Hautatu teklatuaren diseinua';

  @override
  String get keyboardTestHint => 'Idatzi hemen zure teklatua probatzeko';

  @override
  String get keyboardDetectTitle => 'Detektatu teklatuaren diseinua';

  @override
  String get keyboardDetectButton => 'Antzeman';

  @override
  String get keyboardVariantLabel => 'Hautatu teklatuaren aldaera:';

  @override
  String get keyboardPressKeyLabel =>
      'Mesedez, sakatu hurrengo tekletariko bat:';

  @override
  String get keyboardKeyPresentLabel =>
      'Hurrengo tekla zure teklatuan al dago?';

  @override
  String get themePageTitle => 'Aukeratu gaia';

  @override
  String get themePageHeader =>
      'Edozein unetan alda dezakezu hau itxura ezarpenetan.';

  @override
  String get themeDark => 'Iluna';

  @override
  String get themeLight => 'Argia';

  @override
  String localePageTitle(String DISTRO) {
    return 'Ongi etorri ${DISTRO}ra';
  }

  @override
  String get localeHeader => 'Aukeratu zure hizkuntza:';

  @override
  String get identityPageTitle => 'Sortu kontua';

  @override
  String get identityAutoLogin => 'Hasi saioa automatikoki';

  @override
  String get identityRequirePassword => 'Eskatu pasahitza saioa hasteko';

  @override
  String get identityRealNameLabel => 'Zure izena';

  @override
  String get identityRealNameRequired => 'Izena beharrezkoa da';

  @override
  String get identityRealNameTooLong => 'Izena luzeegia da.';

  @override
  String get identityHostnameLabel => 'Ordenagailuaren izena';

  @override
  String get identityHostnameInfo =>
      'Beste ordenagailuekin komunikatzean erabiliko duen izena.';

  @override
  String get identityHostnameRequired => 'Ordenagailuaren izena beharrezkoa da';

  @override
  String get identityHostnameTooLong => 'Ordenagailuaren izena luzeegia da.';

  @override
  String get identityInvalidHostname => 'Ordenagailuaren izena baliogabea da';

  @override
  String get identityUsernameLabel => 'Erabiltzaile-izena';

  @override
  String get identityUsernameRequired => 'Erabiltzaile-izena beharrezkoa da';

  @override
  String get identityInvalidUsername => 'Erabiltzaile-izena baliogabea da';

  @override
  String get identityUsernameInUse =>
      'Dagoeneko existitzen da erabiltzaile-izen hori.';

  @override
  String get identityUsernameSystemReserved =>
      'Izen hori sistemak erabiltzeko erreserbatuta dago.';

  @override
  String get identityUsernameTooLong => 'Izen hori luzeegia da.';

  @override
  String get identityUsernameInvalidChars =>
      'Izen horrek karaktere baliogabeak ditu.';

  @override
  String get identityPasswordLabel => 'Pasahitza';

  @override
  String get identityPasswordRequired => 'Pasahitza beharrezkoa da';

  @override
  String get identityConfirmPasswordLabel => 'Berretsi pasahitza';

  @override
  String get identityPasswordMismatch => 'Pasahitzak ez datoz bat';

  @override
  String get identityPasswordShow => 'Erakutsi';

  @override
  String get identityPasswordHide => 'Ezkutatu';

  @override
  String get identityActiveDirectoryOption => 'Erabili Active Directory';

  @override
  String get identityActiveDirectoryInfo =>
      'Domeinua eta bestelako xehetasunak hurrengo urratsean sartuko dituzu.';

  @override
  String get activeDirectoryTitle => 'Hasi saioa Active Directoryn';

  @override
  String get activeDirectoryHeader => 'Active Directoryn saioa hasi?';

  @override
  String activeDirectoryInfo(String DISTRO) {
    return '$DISTRO Active Directoryrekin oztoporik gabe integratzeko diseinatuta dago, administrazioa errazteko.';
  }

  @override
  String get activeDirectoryTestConnection =>
      'Probatu domeinuaren konektagarritasuna';

  @override
  String get activeDirectoryDomainLabel => 'Domeinua';

  @override
  String get activeDirectoryDomainEmpty => 'Beharrezkoa';

  @override
  String get activeDirectoryDomainTooLong => 'Luzeegia';

  @override
  String get activeDirectoryDomainInvalidChars => 'Karaktere baliogabeak';

  @override
  String get activeDirectoryDomainStartDot => 'Puntu (.) batekin hasten da';

  @override
  String get activeDirectoryDomainEndDot => 'Puntu (.) batekin amaitzen da';

  @override
  String get activeDirectoryDomainStartHyphen =>
      'Marratxo (-) batekin hasten da';

  @override
  String get activeDirectoryDomainEndHyphen =>
      'Marratxo (-) batekin amaitzen da';

  @override
  String get activeDirectoryDomainMultipleDots =>
      'Puntu bat baino gehiago ditu jarraian (..)';

  @override
  String get activeDirectoryDomainNotFound => 'Ez da domeinua aurkitu';

  @override
  String get activeDirectoryAdminLabel => 'Domeinura batzeko erabiltzailea';

  @override
  String get activeDirectoryAdminEmpty => 'Beharrezkoa';

  @override
  String get activeDirectoryAdminInvalidChars => 'Karaktere baliogabeak';

  @override
  String get activeDirectoryPasswordLabel => 'Pasahitza';

  @override
  String get activeDirectoryPasswordEmpty => 'Beharrezkoa';

  @override
  String get activeDirectoryErrorTitle =>
      'Errorea Active Directoryrako konexioa konfiguratzean';

  @override
  String get activeDirectoryErrorMessage =>
      'Une honetan ezin da Active Directory konfiguratu. Sistema martxan dagoenean, bisitatu <a href=\"https://help.ubuntu.com/activedirectory\">help.ubuntu.com/activedirectory</a> laguntza lortzeko.';

  @override
  String get networkPageTitle => 'Konektatu internetera';

  @override
  String get networkPageHeader => 'Konektatu Internetera';

  @override
  String get networkPageBody =>
      'Interneterako konexioak instalazioa hobetuko du, bateragarritasun-egiaztatzeak eginez eta software pakete gehigarria instalatuz.';

  @override
  String get networkWiredOption => 'Erabili kable bidezko konexioa';

  @override
  String get networkWiredNone => 'Ez da kable bidezko konexiorik hauteman';

  @override
  String get networkWiredOff => 'Kable bidezko konexioa desaktibatuta dago';

  @override
  String get networkWiredDisabled =>
      'Ordenagailu honetan Ethernet erabiltzeko, kable bidezko konexioa gaitu behar da';

  @override
  String get networkWiredEnable => 'Gaitu kable bidezko konexioa';

  @override
  String get networkWifiOption => 'Konektatu Wi-Fi sare batera';

  @override
  String get networkWifiOff => 'Haririk habeko sarea desgaituta dago';

  @override
  String get networkWifiNone => 'Ez da Wi-Fi gailurik hauteman';

  @override
  String get networkWifiDisabled =>
      'Ordenagailu honetan Wi-Fia erabiltzeko, haririk gabeko sareak gaitu behar dira';

  @override
  String get networkWifiEnable => 'Gaitu Wi-Fia';

  @override
  String get networkHiddenWifiOption => 'Konektatu ezkutuko Wi-Fi sare batera';

  @override
  String get networkHiddenWifiNameLabel => 'Sarearen izena';

  @override
  String get networkHiddenWifiNameRequired => 'Sare-izena behar da';

  @override
  String get networkNoneOption => 'Ez dut internetera konektatu nahi oraingoz';

  @override
  String get eulaPageTitle => 'Lizentziaren onarpena';

  @override
  String get eulaReviewTerms => 'Berrikusi lizentziaren baldintzak';

  @override
  String get eulaReadAndAcceptTerms =>
      'Makina hau konfiguratzen jarraitzeko, aurrena lizentziaren baldintzak irakurri eta onartu behar dituzu.';

  @override
  String get eulaAcceptTerms => 'Baldintza hauek irakurri eta onartzen ditut';

  @override
  String get successIconSemanticLabel => 'Dena ondo joan da';

  @override
  String get closeIconSemanticLabel => 'Itxi';

  @override
  String get maximizeIconSemanticLabel => 'Maximizatu';

  @override
  String get minimizeIconSemanticLabel => 'Txikitu';

  @override
  String get expandIconSemanticLabel => 'Zabaldu';

  @override
  String get collapseIconSemanticLabel => 'Tolestu';
}
