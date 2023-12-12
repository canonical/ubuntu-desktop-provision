import 'ubuntu_init_localizations.dart';

/// The translations for Spanish Castilian (`es`).
class UbuntuInitLocalizationsEs extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get welcomePageTitle => 'Bienvenido';

  @override
  String welcomePageHeader(Object distro) {
    return 'Bienvenido a $distro';
  }

  @override
  String get welcomeWhatsNew => '¿QUÉ HAY DE NUEVO?';

  @override
  String get welcomeStartTitle => 'Un comienzo simplificado';

  @override
  String get welcomeStartSubtitle => 'Apoya una experiencia de configuración más limpia.';

  @override
  String get welcomeStoreTitle => 'Un nuevo aspecto para la Tienda de Aplicaciones';

  @override
  String get welcomeStoreSubtitle => 'Nunca ha sido tan fácil encontrar tu software favorito.';

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
    return 'Ayuda a mejorar $distro';
  }

  @override
  String telemetryDescription(Object distro) {
    return 'Comparte datos de forma anónima con $distro para que podamos mejorar tu experiencia.';
  }

  @override
  String telemetryLabelOn(Object distro) {
    return 'Sí, comparte los datos del sistema con el equipo $distro';
  }

  @override
  String get telemetryLabelOff => 'No, no compartir datos del sistema';

  @override
  String get telemetryReportLabel => 'Detalles del informe';

  @override
  String get telemetryReportTitle => 'Detalles del informe';

  @override
  String get telemetryLegalLabel => 'Información Legal';

  @override
  String get privacyPageTitle => 'Servicios de ubicación';

  @override
  String get privacyLocationTitle => '¿Habilitar los servicios de ubicación?';

  @override
  String get privacyLocationSubtitle => 'Permite que las aplicaciones conozcan tu ubicación geográfica.\nPuedes cambiar esto en cualquier momento en los Ajustes del sistema.';

  @override
  String get privacyLocationEnable => 'Servicios de ubicación';

  @override
  String get privacyPolicyLink => 'Protección de los datos';

  @override
  String get storeTitle => 'Tienda de Ubuntu';

  @override
  String get storeHeader => 'Comienza con más aplicaciones';

  @override
  String get storeDescription => 'La Tienda de aplicaciones de Ubuntu ofrece una serie de aplicaciones con las que puedes empezar desde el primer momento.';

  @override
  String get storeOpen => 'Abrir la Tienda de Aplicaciones';

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';
}
