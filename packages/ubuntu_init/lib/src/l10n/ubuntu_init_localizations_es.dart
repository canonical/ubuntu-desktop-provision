import 'ubuntu_init_localizations.dart';

/// The translations for Spanish Castilian (`es`).
class UbuntuInitLocalizationsEs extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get welcomePageTitle => 'Le damos la bienvenida';

  @override
  String welcomePageHeader(Object distro) {
    return 'Le damos la bienvenida a $distro';
  }

  @override
  String get welcomeWhatsNew => '¿QUÉ HAY DE NUEVO?';

  @override
  String get welcomeStartTitle => 'Un comienzo simplificado';

  @override
  String get welcomeStartSubtitle => 'A favor de una experiencia de puesta en marcha más prolija.';

  @override
  String get welcomeStoreTitle => 'Un nuevo aspecto para la Tienda de Aplicaciones';

  @override
  String get welcomeStoreSubtitle => 'Nunca ha sido tan fácil encontrar sus programas favoritos.';

  @override
  String get welcomeSecurityTitle => 'Mayor seguridad';

  @override
  String get welcomeSecuritySubtitle => 'Nuevas opciones de cifrado por hardware o ZFS.';

  @override
  String welcomeChangelogLabel(Object url) {
    return '<a href=\"$url\">Ver registro de cambios</a>';
  }

  @override
  String get telemetryPageTitle => 'Telemetría';

  @override
  String telemetryHeader(Object distro) {
    return 'Ayude a mejorar $distro';
  }

  @override
  String telemetryDescription(Object distro) {
    return 'Ayúdenos a mejorar $distro compartiendo los datos de su sistema con nosotros. Esto incluye cosas como el modelo de su máquina, el software instalado y la ubicación que eligió para su zona horaria.';
  }

  @override
  String telemetryLabelOn(Object distro) {
    return 'Sí, compartir datos del sistema con el equipo de $distro';
  }

  @override
  String get telemetryLabelOff => 'No, no compartir datos del sistema';

  @override
  String get telemetryReportLabel => 'Mostrar el primer informe';

  @override
  String get telemetryReportTitle => 'Detalles del informe';

  @override
  String get telemetryLegalLabel => 'Aviso Legal';

  @override
  String get telemetryCollectError => 'Failed to collect telemetry data';

  @override
  String get privacyPageTitle => 'Servicios de ubicación';

  @override
  String get privacyLocationTitle => '¿Quiere activar los servicios de ubicación?';

  @override
  String get privacyLocationSubtitle => 'Permita que las aplicaciones conozcan su ubicación geográfica.\nPuede cambiar esto en cualquier momento en la Configuración del sistema.';

  @override
  String get privacyLocationEnable => 'Servicios de ubicación';

  @override
  String get privacyPolicyLink => 'Protección de los datos';

  @override
  String ubuntuProMagicAttachInstructions(Object url) {
    return 'Adjunte magia con este código en<a href=\"https://$url\">$url</a>';
  }

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';

  @override
  String get ubuntuProHeader => 'Conecte esta máquina';

  @override
  String get ubuntuProOrAddTokenManually => 'o agregar un token manualmente';

  @override
  String get ubuntuProTokenTextfieldHint => 'Token';

  @override
  String get ubuntuProSubscriptionDescription => 'Consiga la suscripción más completa para la seguridad del software de código abierto';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(Object url) {
    return 'Siempre gratuito para uso personal. 30 días de prueba para empresas. <a href=\"https://$url\">Más información</a>';
  }

  @override
  String get ubuntuProTokenAttachButton => 'Adjuntar';

  @override
  String get ubuntuProTokenAttachError => 'Token no válido';

  @override
  String get ubuntuProTokenAttachSucess => 'Token válido';

  @override
  String get ubuntuProTokenAttachErrorVariant => 'Token no válido, reintentar';

  @override
  String get ubuntuProOnBoardingSkipForNow => 'Omitir por ahora';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription => 'Siempre puede activar Ubuntu Pro más adelante a través de la aplicación Programas y actualizaciones.';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => 'Activar Ubuntu Pro';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription => 'Conecte esta máquina a una suscripción de Ubuntu Pro para obtener actualizaciones de seguridad en una gama más amplia de paquetes, hasta 2032.';

  @override
  String get ubuntuProSucessAttachHeader => 'Ubuntu Pro ya está activado en esta máquina';

  @override
  String get ubuntuProSucessAttachDescription => 'Puede gestionar sus servicios Pro en la aplicación Programas y actualizaciones.';
}
