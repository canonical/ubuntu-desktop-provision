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
    return 'Comparta datos de forma anónima con $distro para que podamos mejorar su experiencia.';
  }

  @override
  String telemetryLabelOn(Object distro) {
    return 'Sí, compartir datos del sistema con el equipo de $distro';
  }

  @override
  String get telemetryLabelOff => 'No, no compartir datos del sistema';

  @override
  String get telemetryReportLabel => 'Detalles del informe';

  @override
  String get telemetryReportTitle => 'Detalles del informe';

  @override
  String get telemetryLegalLabel => 'Información legal';

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
  String get ubuntuProPageTitle => 'Ubuntu Pro';
}
