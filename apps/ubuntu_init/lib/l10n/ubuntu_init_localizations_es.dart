// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_init_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class UbuntuInitLocalizationsEs extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get welcomePageTitle => 'Le damos la bienvenida';

  @override
  String welcomePageHeader(String distro) {
    return 'Le damos la bienvenida a $distro';
  }

  @override
  String get welcomeWhatsNew => '¿QUÉ HAY DE NUEVO?';

  @override
  String get welcomeStartTitle => 'Un comienzo simplificado';

  @override
  String get welcomeStartSubtitle =>
      'A favor de una experiencia de puesta en marcha más prolija.';

  @override
  String get welcomeStoreTitle =>
      'Un nuevo aspecto para la Tienda de Aplicaciones';

  @override
  String get welcomeStoreSubtitle =>
      'Nunca ha sido tan fácil encontrar sus programas favoritos.';

  @override
  String get welcomeSecurityTitle => 'Mayor seguridad';

  @override
  String get welcomeSecuritySubtitle =>
      'Nuevas opciones de cifrado por hardware o ZFS.';

  @override
  String welcomeChangelogLabel(String url) {
    return '<a href=\"$url\">Ver registro de cambios</a>';
  }

  @override
  String get telemetryPageTitle => 'Telemetría';

  @override
  String telemetryHeader(String distro) {
    return 'Ayude a mejorar $distro';
  }

  @override
  String telemetryDescription(String distro) {
    return 'Ayúdenos a mejorar $distro compartiendo los datos de su sistema con nosotros. Esto incluye cosas como el modelo de su máquina, el software instalado y la ubicación que eligió para su zona horaria.';
  }

  @override
  String telemetryLabelOn(String distro) {
    return 'Sí, compartir datos del sistema con el equipo de $distro';
  }

  @override
  String get telemetryLabelOff => 'No, no compartir datos del sistema';

  @override
  String get telemetryReportLabel => 'Mostrar el primer informe';

  @override
  String get telemetryReportTitle => 'Detalles del informe';

  @override
  String get telemetryLegalLabel => 'Aviso legal';

  @override
  String get telemetryCollectError => 'Error al recopilar datos de telemetría';

  @override
  String get privacyPageTitle => 'Servicios de ubicación';

  @override
  String get privacyLocationTitle =>
      '¿Quiere activar los servicios de ubicación?';

  @override
  String get privacyLocationSubtitle =>
      'Permita que las aplicaciones conozcan su ubicación geográfica.\nPuede cambiar esto en cualquier momento en la Configuración del sistema.';

  @override
  String get privacyLocationEnable => 'Servicios de ubicación';

  @override
  String get privacyPolicyLink => 'Protección de los datos';

  @override
  String ubuntuProMagicAttachInstructions(String url) {
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
  String get ubuntuProSubscriptionDescription =>
      'Obtenga la suscripción más completa para la seguridad del software de código abierto';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(String url) {
    return 'Siempre gratuito para uso personal. Prueba de 30 días para empresas.<a href=\"https://$url\"> Más información</a>';
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
  String get ubuntuProOnBoardingSkipForNowDescription =>
      'Siempre puede activar Ubuntu Pro más adelante a través de la aplicación Programas y actualizaciones.';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => 'Activar Ubuntu Pro';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription =>
      'Vincule esta máquina a una suscripción de Ubuntu Pro para recibir actualizaciones de seguridad para una mayor cantidad de paquetes hasta 2032.';

  @override
  String get ubuntuProSucessAttachHeader =>
      'Ubuntu Pro ya está activado en esta máquina';

  @override
  String get ubuntuProSucessAttachDescription =>
      'Puedes administrar tus servicios de Ubuntu Pro en Software y Actualizaciones.';

  @override
  String get successIconSemanticLabel => 'Success';

  @override
  String get closeIconSemanticLabel => 'Close';

  @override
  String get maximizeIconSemanticLabel => 'Maximize';

  @override
  String get minimizeIconSemanticLabel => 'Minimize';
}
