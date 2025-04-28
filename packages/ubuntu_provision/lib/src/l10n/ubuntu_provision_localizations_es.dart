// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_provision_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class UbuntuProvisionLocalizationsEs extends UbuntuProvisionLocalizations {
  UbuntuProvisionLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get accessibilityPageTitle => 'Accesibilidad';

  @override
  String accessibilityPageHeader(String DISTRO) {
    return 'Accesibilidad en $DISTRO';
  }

  @override
  String accessibilityPageBody(String DISTRO) {
    return 'Personalice $DISTRO según sus necesidades antes de la puesta en marcha. Puede cambiarlo más tarde en Configuración del sistema.';
  }

  @override
  String get accessibilitySeeingLabel => 'Visión';

  @override
  String get accessibilityHearingLabel => 'Audición';

  @override
  String get accessibilityTypingLabel => 'Mecanografía';

  @override
  String get accessibilityPointingLabel => 'Señalar y pulsar';

  @override
  String get accessibilityZoomLabel => 'Zum';

  @override
  String get accessibilityHighContrastLabel => 'Contraste alto';

  @override
  String get accessibilityLargeTextLabel => 'Texto grande';

  @override
  String get accessibilityReduceAnimationLabel => 'Reducir la animación';

  @override
  String get accessibilityScreenReaderLabel => 'Lector de pantalla';

  @override
  String get accessibilityVisualAlertsLabel => 'Alertas visuales';

  @override
  String get accessibilityStickKeysLabel => 'Teclas persistentes';

  @override
  String get accessibilitySlowKeysLabel => 'Teclas lentas';

  @override
  String get accessibilityMouseKeysLabel => 'Teclas de ratón';

  @override
  String get accessibilityDesktopZoomLabel => 'Zum de escritorio';

  @override
  String get errorPageTitle => 'Se produjo un problema';

  @override
  String get errorPageUnexpected => 'Lo sentimos, pero no estamos seguros de cuál es el error. Puede intentar reiniciar su computadora y comenzar el proceso de instalación nuevamente. También puede <a>informar del problema</a>.';

  @override
  String errorPageUbuntuBug(String SNAP) {
    return 'Para enviar un informe de error automatizado que incluya información de depuración relevante, ejecute <pre>sudo ubuntu-bug $SNAP</pre> en un terminal, o desde la consola de comandos (Alt+F2).';
  }

  @override
  String get errorPageShowLog => 'Mostrar registro';

  @override
  String get errorPageHideLog => 'Ocultar registro';

  @override
  String get restart => 'Reiniciar';

  @override
  String get close => 'Cerrar';

  @override
  String get timezonePageTitle => 'Seleccione su huso horario';

  @override
  String get timezoneLocationLabel => 'Ubicación';

  @override
  String get timezoneTimezoneLabel => 'Huso horario';

  @override
  String get keyboardTitle => 'Disposición del teclado';

  @override
  String get keyboardHeader => 'Elija la disposición del teclado';

  @override
  String get keyboardTestHint => 'Escriba aquí para probar el teclado';

  @override
  String get keyboardDetectTitle => 'Detectar disposición de teclado';

  @override
  String get keyboardDetectButton => 'Detectar';

  @override
  String get keyboardVariantLabel => 'Seleccione la variante del teclado:';

  @override
  String get keyboardPressKeyLabel => 'Pulse una de estas teclas:';

  @override
  String get keyboardKeyPresentLabel => '¿Está presente la siguiente tecla en su teclado?';

  @override
  String get themePageTitle => 'Elija su tema';

  @override
  String get themePageHeader => 'Puede cambiarlo después en la configuración de apariencia.';

  @override
  String get themeDark => 'Oscuro';

  @override
  String get themeLight => 'Claro';

  @override
  String localePageTitle(String DISTRO) {
    return 'Le damos la bienvenida a $DISTRO';
  }

  @override
  String get localeHeader => 'Elija su idioma:';

  @override
  String get identityPageTitle => 'Cree su cuenta';

  @override
  String get identityAutoLogin => 'Acceder automáticamente';

  @override
  String get identityRequirePassword => 'Solicitar mi contraseña para acceder';

  @override
  String get identityRealNameLabel => 'Su nombre';

  @override
  String get identityRealNameRequired => 'Se necesita un nombre';

  @override
  String get identityRealNameTooLong => 'Este nombre es demasiado largo.';

  @override
  String get identityHostnameLabel => 'El nombre del equipo';

  @override
  String get identityHostnameInfo => 'El nombre que utiliza al comunicarse con otros equipos.';

  @override
  String get identityHostnameRequired => 'Se necesita un nombre de equipo';

  @override
  String get identityHostnameTooLong => 'El nombre del equipo es demasiado largo.';

  @override
  String get identityInvalidHostname => 'El nombre del equipo no es válido';

  @override
  String get identityUsernameLabel => 'Elija un nombre de usuario';

  @override
  String get identityUsernameRequired => 'Se necesita un nombre de usuario';

  @override
  String get identityInvalidUsername => 'El nombre de usuario no es válido';

  @override
  String get identityUsernameInUse => 'Ese nombre de usuario ya existe.';

  @override
  String get identityUsernameSystemReserved => 'Ese nombre está reservado para uso del sistema.';

  @override
  String get identityUsernameTooLong => 'Ese nombre es demasiado extenso.';

  @override
  String get identityUsernameInvalidChars => 'Ese nombre contiene caracteres no válidos.';

  @override
  String get identityPasswordLabel => 'Elija una contraseña';

  @override
  String get identityPasswordRequired => 'Se requiere una contraseña';

  @override
  String get identityConfirmPasswordLabel => 'Confirme su contraseña';

  @override
  String get identityPasswordMismatch => 'Las contraseñas no coinciden';

  @override
  String get identityPasswordShow => 'Mostrar';

  @override
  String get identityPasswordHide => 'Ocultar';

  @override
  String get identityActiveDirectoryOption => 'Utilizar Active Directory';

  @override
  String get identityActiveDirectoryInfo => 'En el siguiente paso introducirá el dominio y otros datos.';

  @override
  String get activeDirectoryTitle => 'Acceder a Active Directory';

  @override
  String get activeDirectoryHeader => '¿Quiere acceder a Active Directory?';

  @override
  String activeDirectoryInfo(String DISTRO) {
    return '$DISTRO está diseñado para integrarse sin problemas con Active Directory para facilitar la administración.';
  }

  @override
  String get activeDirectoryTestConnection => 'Probar la conexión del dominio';

  @override
  String get activeDirectoryDomainLabel => 'Dominio';

  @override
  String get activeDirectoryDomainEmpty => 'Obligatorio';

  @override
  String get activeDirectoryDomainTooLong => 'Demasiado largo';

  @override
  String get activeDirectoryDomainInvalidChars => 'Caracteres incorrectos';

  @override
  String get activeDirectoryDomainStartDot => 'Empieza por punto (.)';

  @override
  String get activeDirectoryDomainEndDot => 'Termina en punto (.)';

  @override
  String get activeDirectoryDomainStartHyphen => 'Empieza por guion (-)';

  @override
  String get activeDirectoryDomainEndHyphen => 'Termina en guion (-)';

  @override
  String get activeDirectoryDomainMultipleDots => 'Contiene varios puntos seguidos (..)';

  @override
  String get activeDirectoryDomainNotFound => 'No se encontró el dominio';

  @override
  String get activeDirectoryAdminLabel => 'Usuario para unirse al dominio';

  @override
  String get activeDirectoryAdminEmpty => 'Obligatorio';

  @override
  String get activeDirectoryAdminInvalidChars => 'Caracteres incorrectos';

  @override
  String get activeDirectoryPasswordLabel => 'Contraseña';

  @override
  String get activeDirectoryPasswordEmpty => 'Obligatorio';

  @override
  String get activeDirectoryErrorTitle => 'Error al configurar la conexión con Active Directory';

  @override
  String get activeDirectoryErrorMessage => 'Lo sentimos, Active Directory no se puede configurar en este momento. Una vez que el sistema esté en funcionamiento, visite <a href=\"https://help.ubuntu.com/activedirectory\">help.ubuntu.com/activedirectory</a> para obtener ayuda.';

  @override
  String get networkPageTitle => 'Conectarse a una red';

  @override
  String get networkPageHeader => 'Conéctese a Internet';

  @override
  String get networkPageBody => 'Una conexión a Internet mejorará su instalación con la comprobación de la compatibilidad y los paquetes de software adicionales.';

  @override
  String get networkWiredOption => 'Utilizar conexión por cable';

  @override
  String get networkWiredNone => 'No se ha detectado una conexión por cable';

  @override
  String get networkWiredOff => 'La conexión por cable está desactivada';

  @override
  String get networkWiredDisabled => 'Para utilizar Ethernet en este ordenador, debe activarse una conexión por cable';

  @override
  String get networkWiredEnable => 'Activar por cable';

  @override
  String get networkWifiOption => 'Conectarse a una red Wi-Fi';

  @override
  String get networkWifiOff => 'Red inalámbrica desactivada';

  @override
  String get networkWifiNone => 'No se han detectado dispositivos Wi-Fi';

  @override
  String get networkWifiDisabled => 'Para utilizar Wi-Fi en este equipo, la red inalámbrica debe estar activada';

  @override
  String get networkWifiEnable => 'Activar Wi-Fi';

  @override
  String get networkHiddenWifiOption => 'Conectarse a una red Wi-Fi oculta';

  @override
  String get networkHiddenWifiNameLabel => 'Nombre de la red';

  @override
  String get networkHiddenWifiNameRequired => 'Se requiere un nombre de red';

  @override
  String get networkNoneOption => 'No quiero conectarme a internet ahora mismo';

  @override
  String get eulaPageTitle => 'Acuerdo de licencia';

  @override
  String get eulaReviewTerms => 'Revisar los términos de licencia';

  @override
  String get eulaReadAndAcceptTerms => 'Para continuar configurando el equipo, debe leer y aceptar los términos del acuerdo de licencia.';

  @override
  String get eulaAcceptTerms => 'He leído y acepto estos términos';
}
