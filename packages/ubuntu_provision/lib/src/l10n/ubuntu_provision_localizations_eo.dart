import 'ubuntu_provision_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Esperanto (`eo`).
class UbuntuProvisionLocalizationsEo extends UbuntuProvisionLocalizations {
  UbuntuProvisionLocalizationsEo([String locale = 'eo']) : super(locale);

  @override
  String get accessibilityPageTitle => 'Alirebleco';

  @override
  String accessibilityPageHeader(String DISTRO) {
    return 'Alirebleco en $DISTRO';
  }

  @override
  String accessibilityPageBody(String DISTRO) {
    return 'Adaptu $DISTRO al viaj bezonoj dum la instalado. Vi povas poste ŝanĝi la agordojn per Sistemaj Agordoj.';
  }

  @override
  String get accessibilitySeeingLabel => 'Vidado';

  @override
  String get accessibilityHearingLabel => 'Aŭdado';

  @override
  String get accessibilityTypingLabel => 'Tajpado';

  @override
  String get accessibilityPointingLabel => 'Montrado kaj alklakado';

  @override
  String get accessibilityZoomLabel => 'Zomo';

  @override
  String get accessibilityHighContrastLabel => 'Alta kontrasto';

  @override
  String get accessibilityLargeTextLabel => 'Granda teksto';

  @override
  String get accessibilityReduceAnimationLabel => 'Malpliigi movadon';

  @override
  String get accessibilityScreenReaderLabel => 'Ekranlegilo';

  @override
  String get accessibilityVisualAlertsLabel => 'Videblaj avertoj';

  @override
  String get accessibilityStickKeysLabel => 'Persistaj klavoj';

  @override
  String get accessibilitySlowKeysLabel => 'Malrapidaj klavoj';

  @override
  String get accessibilityMouseKeysLabel => 'Musklavoj';

  @override
  String get accessibilityDesktopZoomLabel => 'Labortabla zomo';

  @override
  String get errorPageTitle => 'Io fiaskis';

  @override
  String get errorPageUnexpected => 'Bedaŭrinde, ni ne konas la eraron. Vi povas provi restartigi vian komputilon kaj rekomenci la instalon. Vi ankaŭ povas <a>raporti la problemon</a>.';

  @override
  String errorPageUbuntuBug(String SNAP) {
    return 'Por sendi aŭtomatan cimraporton inkluzivantan rilatajn sistemajn informojn, bonvolu ruli <pre>sudo ubuntu-bug $SNAP</pre> en terminalo aŭ en la komandkonzolo (Alt+F2).';
  }

  @override
  String get errorPageShowLog => 'Montri protokolon';

  @override
  String get errorPageHideLog => 'Kaŝi protokolon';

  @override
  String get restart => 'Restartigi';

  @override
  String get close => 'Fermi';

  @override
  String get timezonePageTitle => 'Elektu vian horzonon';

  @override
  String get timezoneLocationLabel => 'Loko';

  @override
  String get timezoneTimezoneLabel => 'Horzono';

  @override
  String get keyboardTitle => 'Klavaranĝo';

  @override
  String get keyboardHeader => 'Elektu vian klavaranĝon';

  @override
  String get keyboardTestHint => 'Tajpu ĉi tie por provi vian klavaron';

  @override
  String get keyboardDetectTitle => 'Rekoni klavaranĝon';

  @override
  String get keyboardDetectButton => 'Identigi';

  @override
  String get keyboardVariantLabel => 'Klavara varianto:';

  @override
  String get keyboardPressKeyLabel => 'Bonvolu premi unu el la jenaj klavoj:';

  @override
  String get keyboardKeyPresentLabel => 'Ĉu la jena klavo troviĝas en via klavaro?';

  @override
  String get themePageTitle => 'Elektu vian etoson';

  @override
  String get themePageHeader => 'Vi povas ŝanĝi tion poste per la agordoj pri Aspekto.';

  @override
  String get themeDark => 'Malhela';

  @override
  String get themeLight => 'Hela';

  @override
  String localePageTitle(String DISTRO) {
    return 'Bonvenon al $DISTRO';
  }

  @override
  String get localeHeader => 'Elektu vian lingvon:';

  @override
  String get identityPageTitle => 'Agordu vian konton';

  @override
  String get identityAutoLogin => 'Aŭtomate saluti';

  @override
  String get identityRequirePassword => 'Postuli mian pasvorton por salutado';

  @override
  String get identityRealNameLabel => 'Via nomo';

  @override
  String get identityRealNameRequired => 'Nomo bezoniĝas';

  @override
  String get identityRealNameTooLong => 'Tiu nomo estas tro longa.';

  @override
  String get identityHostnameLabel => 'Nomo de via komputilo';

  @override
  String get identityHostnameInfo => 'La nomo, kiun ĝi uzas por alparoli aliajn komputilojn.';

  @override
  String get identityHostnameRequired => 'Nomo de komputilo bezoniĝas';

  @override
  String get identityHostnameTooLong => 'Tiu nomo estas tro longa.';

  @override
  String get identityInvalidHostname => 'La nomo de komputilo ne validas';

  @override
  String get identityUsernameLabel => 'Elektu salutnomon';

  @override
  String get identityUsernameRequired => 'Salutnomo bezoniĝas';

  @override
  String get identityInvalidUsername => 'La salutnomo ne validas';

  @override
  String get identityUsernameInUse => 'Tiu salutnomo jam ekzistas.';

  @override
  String get identityUsernameSystemReserved => 'Tiu salutnomo estas rezervita por sistema uzado.';

  @override
  String get identityUsernameTooLong => 'Tiu salutnomo estas tro longa.';

  @override
  String get identityUsernameInvalidChars => 'Tiu salutnomo enhavas nevalidajn signojn.';

  @override
  String get identityPasswordLabel => 'Elektu pasvorton';

  @override
  String get identityPasswordRequired => 'Pasvorto bezoniĝas';

  @override
  String get identityConfirmPasswordLabel => 'Konfirmu vian pasvorton';

  @override
  String get identityPasswordMismatch => 'La pasvortoj ne kongruas';

  @override
  String get identityPasswordShow => 'Malkaŝi';

  @override
  String get identityPasswordHide => 'Kaŝi';

  @override
  String get identityActiveDirectoryOption => 'Uzi Aktivan Dosierujon';

  @override
  String get identityActiveDirectoryInfo => 'Vi tajpos la domanion kaj aliajn detalojn dum la sekva paŝo.';

  @override
  String get activeDirectoryTitle => 'Agordi Aktivan Dosierujon';

  @override
  String get activeDirectoryHeader => 'Ĉu saluti en Aktivan Dosierujon?';

  @override
  String activeDirectoryInfo(String DISTRO) {
    return '$DISTRO plene integriĝas kun Aktiva Dosierujo por facila administrado.';
  }

  @override
  String get activeDirectoryTestConnection => 'Provi konekton al la domanio';

  @override
  String get activeDirectoryDomainLabel => 'Domanio';

  @override
  String get activeDirectoryDomainEmpty => 'Deviga';

  @override
  String get activeDirectoryDomainTooLong => 'Tro longa';

  @override
  String get activeDirectoryDomainInvalidChars => 'Nevalidaj signoj';

  @override
  String get activeDirectoryDomainStartDot => 'Komenciĝas per punkto (.)';

  @override
  String get activeDirectoryDomainEndDot => 'Finiĝas per punkto (.)';

  @override
  String get activeDirectoryDomainStartHyphen => 'Komenciĝas per dividstreko (-)';

  @override
  String get activeDirectoryDomainEndHyphen => 'Finiĝas per dividstreko (-)';

  @override
  String get activeDirectoryDomainMultipleDots => 'Enhavas plurajn sinsekvajn punktojn (..)';

  @override
  String get activeDirectoryDomainNotFound => 'Domanio ne troviĝis';

  @override
  String get activeDirectoryAdminLabel => 'Uzanto por aliĝi al la domanio';

  @override
  String get activeDirectoryAdminEmpty => 'Deviga';

  @override
  String get activeDirectoryAdminInvalidChars => 'Nevalidaj signoj';

  @override
  String get activeDirectoryPasswordLabel => 'Pasvorto';

  @override
  String get activeDirectoryPasswordEmpty => 'Deviga';

  @override
  String get activeDirectoryErrorTitle => 'Eraro agordante konekton al Aktiva Dosierujo';

  @override
  String get activeDirectoryErrorMessage => 'Pardonu, Aktiva Dosierujo ne estas agordebla nuntempe. Post kiam via sistemo funkcias, vizitu <a href=\"https://help.ubuntu.com/activedirectory\">help.ubuntu.com/activedirectory</a> por helpo.';

  @override
  String get networkPageTitle => 'Konekti al reto';

  @override
  String get networkPageHeader => 'Konekti al Interreto';

  @override
  String get networkPageBody => 'Interreta konekto plibonigos vian instalon per kontrolado de kongrueco kaj pliaj programoj.';

  @override
  String get networkWiredOption => 'Uzi dratan konekton';

  @override
  String get networkWiredNone => 'Neniu drata konekto troviĝis';

  @override
  String get networkWiredOff => 'Drataj retoj estas malŝaltitaj';

  @override
  String get networkWiredDisabled => 'Por uzi Eterreton kun ĉi tiu komputilo, vi devas ebligi dratajn retojn';

  @override
  String get networkWiredEnable => 'Ebligi dratajn retojn';

  @override
  String get networkWifiOption => 'Konekti al sendrata reto';

  @override
  String get networkWifiOff => 'Sendrataj retoj estas malŝaltitaj';

  @override
  String get networkWifiNone => 'Neniu sendratreta aparato troviĝis';

  @override
  String get networkWifiDisabled => 'Por uzi sendratajn retojn kun ĉi tiu komputilo, vi devas ebligi sendratajn retojn';

  @override
  String get networkWifiEnable => 'Ebligi sendratajn retojn';

  @override
  String get networkHiddenWifiOption => 'Konekti al kaŝita sendrata reto';

  @override
  String get networkHiddenWifiNameLabel => 'Nomo de reto';

  @override
  String get networkHiddenWifiNameRequired => 'Nomo de reto estas postulata';

  @override
  String get networkNoneOption => 'Mi ne volas konekti al Interreto nun';

  @override
  String get eulaPageTitle => 'Konsento pri licenco';

  @override
  String get eulaReviewTerms => 'Reviziu la licencajn kondiĉojn';

  @override
  String get eulaReadAndAcceptTerms => 'Por agordi ĉi tiun komputilon, vi devas legi kaj akcepti la licencajn kondiĉojn.';

  @override
  String get eulaAcceptTerms => 'Mi legis kaj akceptas la jenajn kondiĉojn';
}
