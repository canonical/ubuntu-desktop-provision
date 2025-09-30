// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_provision_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Catalan Valencian (`ca`).
class UbuntuProvisionLocalizationsCa extends UbuntuProvisionLocalizations {
  UbuntuProvisionLocalizationsCa([String locale = 'ca']) : super(locale);

  @override
  String get accessibilityPageTitle => 'Accessibilitat';

  @override
  String accessibilityPageHeader(String DISTRO) {
    return 'Accessibilitat a $DISTRO';
  }

  @override
  String accessibilityPageBody(String DISTRO) {
    return 'Personalitzeu $DISTRO a les vostres necessitats abans de la posada en marxa. Podeu fer canvis més tard a la Configuració del Sistema.';
  }

  @override
  String get accessibilitySeeingLabel => 'Visió';

  @override
  String get accessibilityHearingLabel => 'Audició';

  @override
  String get accessibilityTypingLabel => 'Escriptura';

  @override
  String get accessibilityPointingLabel => 'Apuntar i fer clic';

  @override
  String get accessibilityZoomLabel => 'Escala';

  @override
  String get accessibilityHighContrastLabel => 'Contrast alt';

  @override
  String get accessibilityLargeTextLabel => 'Text gran';

  @override
  String get accessibilityReduceAnimationLabel => 'Redueix l\'animació';

  @override
  String get accessibilityScreenReaderLabel => 'Lector de pantalla';

  @override
  String get accessibilityVisualAlertsLabel => 'Alertes visuals';

  @override
  String get accessibilityStickKeysLabel => 'Tecles permanents';

  @override
  String get accessibilitySlowKeysLabel => 'Tecles lentes';

  @override
  String get accessibilityMouseKeysLabel => 'Tecles del ratolí';

  @override
  String get accessibilityDesktopZoomLabel => 'Ampliació de l\'escriptori';

  @override
  String get errorPageTitle => 'S\'ha produït un error';

  @override
  String get errorPageUnexpected =>
      'No estem segurs de quin és l\'error. Podeu provar de reiniciar l\'ordinador i tornar a iniciar el procés d\'instal·lació. També podeu <a>informar del problema</a>.';

  @override
  String errorPageUbuntuBug(String SNAP) {
    return 'Per enviar un informe d\'error automatitzat que inclogui informació de depuració rellevant, executeu <pre>sudo ubuntu-bug $SNAP</pre> en un terminal, o des de la línia d\'ordres (Alt+F2).';
  }

  @override
  String get errorPageShowLog => 'Mostra el registre';

  @override
  String get errorPageHideLog => 'Amaga el registre';

  @override
  String get restart => 'Reinicia';

  @override
  String get close => 'Tanca';

  @override
  String get timezonePageTitle => 'On sou?';

  @override
  String get timezoneLocationLabel => 'Ubicació';

  @override
  String get timezoneTimezoneLabel => 'Fus horari';

  @override
  String get keyboardTitle => 'Disposició de teclat';

  @override
  String get keyboardHeader => 'Trieu la vostra distribució de teclat';

  @override
  String get keyboardTestHint => 'Escriviu aquí per provar el vostre teclat';

  @override
  String get keyboardDetectTitle => 'Detecta la disposició del teclat';

  @override
  String get keyboardDetectButton => 'Detecta';

  @override
  String get keyboardVariantLabel => 'Seleccioneu la variant del teclat:';

  @override
  String get keyboardPressKeyLabel => 'Premeu una de les tecles següents:';

  @override
  String get keyboardKeyPresentLabel =>
      'Teniu la tecla següent al vostre teclat?';

  @override
  String get themePageTitle => 'Trieu l’aspecte';

  @override
  String get themePageHeader =>
      'Podeu canviar-ho més endavant a la configuració de l\'aparença.';

  @override
  String get themeDark => 'Fosc';

  @override
  String get themeLight => 'Clar';

  @override
  String localePageTitle(String DISTRO) {
    return 'Us donem la benvinguda a $DISTRO';
  }

  @override
  String get localeHeader => 'Trieu la vostra llengua:';

  @override
  String get identityPageTitle => 'Qui sou?';

  @override
  String get identityAutoLogin => 'Entra de manera automàtica';

  @override
  String get identityRequirePassword =>
      'Fes que calgui una contrasenya per a entrar';

  @override
  String get identityRealNameLabel => 'El vostre nom';

  @override
  String get identityRealNameRequired => 'Cal un nom';

  @override
  String get identityRealNameTooLong => 'Aquest nom és massa llarg.';

  @override
  String get identityHostnameLabel => 'El nom de l\'ordinador';

  @override
  String get identityHostnameInfo =>
      'El nom que utilitza quan es comunica amb altres ordinadors.';

  @override
  String get identityHostnameRequired => 'Cal un nom per a l\'ordinador';

  @override
  String get identityHostnameTooLong =>
      'El nom de l\'ordinador és massa llarg.';

  @override
  String get identityInvalidHostname => 'El nom de l\'ordinador no és vàlid';

  @override
  String get identityUsernameLabel => 'Trieu un nom d\'usuari';

  @override
  String get identityUsernameRequired => 'Cal un nom d\'usuari';

  @override
  String get identityInvalidUsername => 'El nom d\'usuari no és vàlid';

  @override
  String get identityUsernameInUse => 'Aquest nom d\'usuari ja existeix.';

  @override
  String get identityUsernameSystemReserved =>
      'Aquest nom està reservat per a ús del sistema.';

  @override
  String get identityUsernameTooLong => 'Aquest nom és massa llarg.';

  @override
  String get identityUsernameInvalidChars =>
      'Aquest nom conté caràcters no vàlids.';

  @override
  String get identityPasswordLabel => 'Trieu una contrasenya';

  @override
  String get identityPasswordRequired => 'Cal una contrasenya';

  @override
  String get identityConfirmPasswordLabel => 'Confirmeu la contrasenya';

  @override
  String get identityPasswordMismatch => 'Les contrasenyes no coincideixen';

  @override
  String get identityPasswordShow => 'Mostra';

  @override
  String get identityPasswordHide => 'Amaga';

  @override
  String get identityActiveDirectoryOption => 'Fes servir l\'Active Directory';

  @override
  String get identityActiveDirectoryInfo =>
      'En el següent pas introduireu el domini i altres detalls.';

  @override
  String get activeDirectoryTitle => 'Inicia la sessió a l\'Active Directory';

  @override
  String get activeDirectoryHeader =>
      'Voleu iniciar sessió a l\'Active Directory?';

  @override
  String activeDirectoryInfo(String DISTRO) {
    return '$DISTRO està dissenyat per a integrar-se perfectament amb l\'Active Directory per a una administració més fàcil.';
  }

  @override
  String get activeDirectoryTestConnection =>
      'Prova la connectivitat del domini';

  @override
  String get activeDirectoryDomainLabel => 'Domini';

  @override
  String get activeDirectoryDomainEmpty => 'Obligatori';

  @override
  String get activeDirectoryDomainTooLong => 'Massa llarg';

  @override
  String get activeDirectoryDomainInvalidChars => 'Caràcters no vàlids';

  @override
  String get activeDirectoryDomainStartDot => 'Comença amb un punt (.)';

  @override
  String get activeDirectoryDomainEndDot => 'Acaba amb un punt (.)';

  @override
  String get activeDirectoryDomainStartHyphen => 'Comença amb un guionet (-)';

  @override
  String get activeDirectoryDomainEndHyphen => 'Acaba amb un guionet (-)';

  @override
  String get activeDirectoryDomainMultipleDots =>
      'Conté múltiples punts seguits (..)';

  @override
  String get activeDirectoryDomainNotFound => 'No s\'ha trobat el domini';

  @override
  String get activeDirectoryAdminLabel => 'Usuari a unir al domini';

  @override
  String get activeDirectoryAdminEmpty => 'Obligatori';

  @override
  String get activeDirectoryAdminInvalidChars => 'Caràcters no vàlids';

  @override
  String get activeDirectoryPasswordLabel => 'Contrasenya';

  @override
  String get activeDirectoryPasswordEmpty => 'Obligatori';

  @override
  String get activeDirectoryErrorTitle =>
      'S\'ha produït un error en configurar la connexió a l\'Active Directory';

  @override
  String get activeDirectoryErrorMessage =>
      'L\'Active Directory no es pot configurar en aquest moment. Un cop el sistema estigui en funcionament, visiteu <a href=\"https://help.ubuntu.com/activedirectory\">help.ubuntu.com/activedirectory</a> per obtenir ajuda.';

  @override
  String get networkPageTitle => 'Connecta a internet';

  @override
  String get networkPageHeader => 'Connecteu-vos a Internet';

  @override
  String get networkPageBody =>
      'Una connexió a internet millorarà la vostra instal·lació amb la verificació de compatibilitat i paquets de programari addicionals.';

  @override
  String get networkWiredOption => 'Utilitza la connexió per cable';

  @override
  String get networkWiredNone => 'No s\'ha detectat cap connexió per cable';

  @override
  String get networkWiredOff => 'La connexió per cable està desactivada';

  @override
  String get networkWiredDisabled =>
      'Per poder fer servir Ethernet a aquest ordinador, la connexió cablejada ha d\'estar habilitada';

  @override
  String get networkWiredEnable => 'Habilita la connexió per cable';

  @override
  String get networkWifiOption => 'Connectar a una xarxa Wi-Fi';

  @override
  String get networkWifiOff => 'Xarxa sense fils deshabilitada';

  @override
  String get networkWifiNone => 'No s\'ha detectat cap dispositiu Wi-Fi';

  @override
  String get networkWifiDisabled =>
      'Per utilitzar Wi-Fi en aquest ordinador, cal habilitar la xarxa sense fils';

  @override
  String get networkWifiEnable => 'Habilita Wi-Fi';

  @override
  String get networkHiddenWifiOption => 'Connecta a una xarxa Wi-Fi oculta';

  @override
  String get networkHiddenWifiNameLabel => 'Nom a la xarxa';

  @override
  String get networkHiddenWifiNameRequired => 'Cal un nom de xarxa';

  @override
  String get networkNoneOption => 'Ara mateix no vull connectar-me a Internet';

  @override
  String get eulaPageTitle => 'Acord de llicència';

  @override
  String get eulaReviewTerms => 'Reviseu els termes de la llicència';

  @override
  String get eulaReadAndAcceptTerms =>
      'Per continuar configurant aquesta màquina, heu de llegir i acceptar els termes de l\'acord de llicència.';

  @override
  String get eulaAcceptTerms => 'He llegit i accepto aquests termes';

  @override
  String get successIconSemanticLabel => 'Èxit';

  @override
  String get closeIconSemanticLabel => 'Tanca';

  @override
  String get maximizeIconSemanticLabel => 'Maximitza';

  @override
  String get minimizeIconSemanticLabel => 'Minimitza';

  @override
  String get expandIconSemanticLabel => 'Expand';

  @override
  String get collapseIconSemanticLabel => 'Collapse';
}
