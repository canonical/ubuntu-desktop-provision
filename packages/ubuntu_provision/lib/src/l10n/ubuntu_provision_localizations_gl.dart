// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_provision_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Galician (`gl`).
class UbuntuProvisionLocalizationsGl extends UbuntuProvisionLocalizations {
  UbuntuProvisionLocalizationsGl([String locale = 'gl']) : super(locale);

  @override
  String get accessibilityPageTitle => 'Accesibilidade';

  @override
  String accessibilityPageHeader(String DISTRO) {
    return 'Accesibilidade en $DISTRO';
  }

  @override
  String accessibilityPageBody(String DISTRO) {
    return 'Personalice $DISTRO segundo as súas necesidades antes da posta en marcha. Pode cambialo máis tarde na aplicación Preferencias.';
  }

  @override
  String get accessibilitySeeingLabel => 'Vendo';

  @override
  String get accessibilityHearingLabel => 'Ouvido';

  @override
  String get accessibilityTypingLabel => 'Escribindo';

  @override
  String get accessibilityPointingLabel => 'Sinalando e premendo';

  @override
  String get accessibilityZoomLabel => 'Ampliar';

  @override
  String get accessibilityHighContrastLabel => 'Contraste alto';

  @override
  String get accessibilityLargeTextLabel => 'Texto grande';

  @override
  String get accessibilityReduceAnimationLabel => 'Reduce animación';

  @override
  String get accessibilityScreenReaderLabel => 'Lector de pantaia';

  @override
  String get accessibilityVisualAlertsLabel => 'Alertas visuais';

  @override
  String get accessibilityStickKeysLabel => 'Chaves pegañentas';

  @override
  String get accessibilitySlowKeysLabel => 'Chaves lentas';

  @override
  String get accessibilityMouseKeysLabel => 'Chaves de rato';

  @override
  String get accessibilityDesktopZoomLabel => 'Ampliación do escritorio';

  @override
  String get errorPageTitle => 'Algo foi mal';

  @override
  String get errorPageUnexpected =>
      'Sentímolo, pero non estamos seguros de cal é o erro. Podes tentar reiniciar o ordenador e comezar o proceso de instalación de novo. Tamén podes <a>informar do problema</a>.';

  @override
  String errorPageUbuntuBug(String SNAP) {
    return 'Para enviar un informe de bechos automatizado que inclúa información de depuración relevante, execute <pre>sudo ubuntu-bug $SNAP</pre> nun terminal ou dende a consola de comandos (Alt+F2).';
  }

  @override
  String get errorPageShowLog => 'Amosar rexistro';

  @override
  String get errorPageHideLog => 'Agochar rexistro';

  @override
  String get errorPageTechnicalDetails => 'Detalles técnicos';

  @override
  String get restart => 'Reiniciar';

  @override
  String get close => 'Pechar';

  @override
  String get timezonePageTitle => 'Selecciona o teu fuso horario';

  @override
  String get timezoneLocationLabel => 'Localización';

  @override
  String get timezoneTimezoneLabel => 'Fuso horario';

  @override
  String get keyboardTitle => 'Disposición do teclado';

  @override
  String get keyboardHeader => 'Selecciona a túa disposición de teclado';

  @override
  String get keyboardTestHint => 'Escriba aquí para probar o teclado';

  @override
  String get keyboardDetectTitle => 'Detectar a disposición do teclado';

  @override
  String get keyboardDetectButton => 'Detectar';

  @override
  String get keyboardVariantLabel => 'Selecciona a variante de teclado:';

  @override
  String get keyboardPressKeyLabel => 'Prema algunha das seguintes teclas:';

  @override
  String get keyboardKeyPresentLabel =>
      'Existe a seguinte tecla no seu teclado?';

  @override
  String get themePageTitle => 'Escolla o tema';

  @override
  String get themePageHeader =>
      'Sempre podes mudar este despois nas preferencias de apariencia.';

  @override
  String get themeDark => 'Escuro';

  @override
  String get themeLight => 'Claro';

  @override
  String localePageTitle(String DISTRO) {
    return 'Benvido a $DISTRO';
  }

  @override
  String get localeHeader => 'Escolle o teu idioma:';

  @override
  String get identityPageTitle => 'Crea a túa conta';

  @override
  String get identityAutoLogin => 'Acceder automáticamente';

  @override
  String get identityRequirePassword =>
      'Requirir o meu contrasinal para inicar sesións';

  @override
  String get identityRealNameLabel => 'O teu nome';

  @override
  String get identityRealNameRequired => 'É necesario un nome';

  @override
  String get identityRealNameTooLong => 'Ese nome é demasiado longo.';

  @override
  String get identityHostnameLabel => 'O nome do teu equipo';

  @override
  String get identityHostnameInfo =>
      'O nome que usa cando se comunica con outros equipos.';

  @override
  String get identityHostnameRequired => 'Requírese un nome do equipo';

  @override
  String get identityHostnameTooLong => 'Ese nome de equipo é demasiado longo.';

  @override
  String get identityInvalidHostname => 'O nome do equipo non é válido';

  @override
  String get identityUsernameLabel => 'Escolla un nome de usuario';

  @override
  String get identityUsernameRequired => 'Requírese un nome de usuario';

  @override
  String get identityInvalidUsername => 'O nome de usuario non é válido';

  @override
  String get identityUsernameInUse => 'Xa existe un usuario con este nome.';

  @override
  String get identityUsernameSystemReserved =>
      'Ese nome está reservado para uso do sistema.';

  @override
  String get identityUsernameTooLong => 'Ese nome é demasiado longo.';

  @override
  String get identityUsernameInvalidChars =>
      'Ese nome contén caracteres nulos.';

  @override
  String get identityPasswordLabel => 'Contrasinal';

  @override
  String get identityPasswordRequired => 'Requírese un contrasinal';

  @override
  String get identityConfirmPasswordLabel => 'Confirma o contrasinal';

  @override
  String get identityPasswordMismatch => 'Os contrasinais non coinciden';

  @override
  String get identityPasswordShow => 'Amosar';

  @override
  String get identityPasswordHide => 'Agochar';

  @override
  String get identityActiveDirectoryOption => 'Empregar Active Directory';

  @override
  String get identityActiveDirectoryInfo =>
      'No paso seguinte vai introducir o dominio e demais detalles.';

  @override
  String get activeDirectoryTitle => 'Inicie sesión en Active Directory';

  @override
  String get activeDirectoryHeader => 'Iniciar sesión en Active Directory?';

  @override
  String activeDirectoryInfo(String DISTRO) {
    return '$DISTRO está deseñada para integrarse sen problemas con Active Directory para facilitar a administración.';
  }

  @override
  String get activeDirectoryTestConnection =>
      'Probar a conectividade do dominio';

  @override
  String get activeDirectoryDomainLabel => 'Dominio';

  @override
  String get activeDirectoryDomainEmpty => 'Requirido';

  @override
  String get activeDirectoryDomainTooLong => 'Demasiado tempo';

  @override
  String get activeDirectoryDomainInvalidChars => 'Caracteres non válidos';

  @override
  String get activeDirectoryDomainStartDot => 'Comeza con un punto (.)';

  @override
  String get activeDirectoryDomainEndDot => 'Remata con un punto (.)';

  @override
  String get activeDirectoryDomainStartHyphen => 'Comeza cun guión (-)';

  @override
  String get activeDirectoryDomainEndHyphen => 'Remata cun guión (-)';

  @override
  String get activeDirectoryDomainMultipleDots =>
      'Contén varios puntos secuenciados (..)';

  @override
  String get activeDirectoryDomainNotFound => 'Non se atopou o dominio';

  @override
  String get activeDirectoryAdminLabel => 'Usuario que se une ao dominio';

  @override
  String get activeDirectoryAdminEmpty => 'Requirido';

  @override
  String get activeDirectoryAdminInvalidChars => 'Caracteres non válidos';

  @override
  String get activeDirectoryPasswordLabel => 'Contrasinal';

  @override
  String get activeDirectoryPasswordEmpty => 'Requirido';

  @override
  String get activeDirectoryErrorTitle =>
      'Produciuse un erro ao configurar Active Directory';

  @override
  String get activeDirectoryErrorMessage =>
      'Sentímolo, non se pode configurar Active Directory neste momento. Unha vez que o sistema estea en funcionamento, visite <a href=\"https://help.ubuntu.com/activedirectory\">help.ubuntu.com/activedirectory</a> para obter axuda.';

  @override
  String get networkPageTitle => 'Conexión de internet';

  @override
  String get networkPageHeader => 'Conectar a internet';

  @override
  String get networkPageBody =>
      'Unha conexión a internet mellorará a instalación cunha comprobación de compatibilidade e paquetes de software adicionais.';

  @override
  String get networkWiredOption => 'Usar conexión por cable';

  @override
  String get networkWiredNone => 'Non se detectou conexión por cable';

  @override
  String get networkWiredOff => 'A conexión por cable está desactivada';

  @override
  String get networkWiredDisabled =>
      'Para utilizar Ethernet neste ordenador, debe estar activada unha conexión por cable';

  @override
  String get networkWiredEnable => 'Activar por cable';

  @override
  String get networkWifiOption => 'Conectarse a unha rede wifi';

  @override
  String get networkWifiOff => 'Conexión sen fíos desactivada';

  @override
  String get networkWifiNone => 'Non se detectaron dispositivos wifi';

  @override
  String get networkWifiDisabled =>
      'Para utilizar a wifi neste ordenador, a rede sen fíos debe estar activada';

  @override
  String get networkWifiEnable => 'Activar wifi';

  @override
  String get networkHiddenWifiOption => 'Conectarse a unha rede wifi oculta';

  @override
  String get networkHiddenWifiNameLabel => 'Nome de rede';

  @override
  String get networkHiddenWifiNameRequired => 'Requírese un nome de rede';

  @override
  String get networkNoneOption => 'Non te conectes á internet';

  @override
  String get eulaPageTitle => 'Acordo de licenza';

  @override
  String get eulaReviewTerms => 'Revisar os termos da licenza';

  @override
  String get eulaReadAndAcceptTerms =>
      'Para continuar coa configuración desta máquina, debes ler e aceptar os termos do acordo de licenza.';

  @override
  String get eulaAcceptTerms => 'Lin e acepto estos termos';

  @override
  String get successIconSemanticLabel => 'Éxito';

  @override
  String get closeIconSemanticLabel => 'Pechar';

  @override
  String get maximizeIconSemanticLabel => 'Maximizar';

  @override
  String get minimizeIconSemanticLabel => 'Minimizar';

  @override
  String get expandIconSemanticLabel => 'Despregar';

  @override
  String get collapseIconSemanticLabel => 'Contraer';
}
