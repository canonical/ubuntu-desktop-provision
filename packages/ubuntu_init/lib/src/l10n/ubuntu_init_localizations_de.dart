import 'ubuntu_init_localizations.dart';

/// The translations for German (`de`).
class UbuntuInitLocalizationsDe extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get welcomePageTitle => 'Willkommen';

  @override
  String welcomePageHeader(Object distro) {
    return 'Willkommen bei $distro';
  }

  @override
  String get welcomeWhatsNew => 'WAS IST NEU?';

  @override
  String get welcomeStartTitle => 'Ein optimierter Start';

  @override
  String get welcomeStartSubtitle => 'Unterstützung einer saubereren Einrichtung.';

  @override
  String get welcomeStoreTitle => 'Neues Aussehen des App Store';

  @override
  String get welcomeStoreSubtitle => 'Es war noch nie so einfach, Ihre Lieblingssoftware zu finden.';

  @override
  String get welcomeSecurityTitle => 'Erhöhte Sicherheit';

  @override
  String get welcomeSecuritySubtitle => 'Neue Optionen für hardwaregestützte oder ZFS-Verschlüsselung.';

  @override
  String welcomeChangelogLabel(Object url) {
    return '<a href=\"$url\">Änderungsprotokoll ansehen</a>';
  }

  @override
  String get telemetryPageTitle => 'Telemetrie';

  @override
  String telemetryHeader(Object distro) {
    return 'Helfen Sie mit, $distro zu verbessern';
  }

  @override
  String telemetryDescription(Object distro) {
    return 'Teilen Sie Ihre Daten anonym mit $distro, damit wir Ihr Erlebnis verbessern können.';
  }

  @override
  String telemetryLabelOn(Object distro) {
    return 'Ja, Systemdaten mit dem $distro-Team teilen';
  }

  @override
  String get telemetryLabelOff => 'Nein, keine Systemdaten teilen';

  @override
  String get telemetryReportLabel => 'Einzelheiten der Berichterstattung';

  @override
  String get telemetryReportTitle => 'Einzelheiten der Berichterstattung';

  @override
  String get telemetryLegalLabel => 'Rechtliches';

  @override
  String get privacyPageTitle => 'Standortbezogene Dienste';

  @override
  String get privacyLocationTitle => 'Standortbezogene Dienste aktivieren?';

  @override
  String get privacyLocationSubtitle => 'Lassen Sie Anwendungen Ihren geografischen Aufenthaltsort kennen.\nSie können dies jederzeit in den Systemeinstellungen ändern.';

  @override
  String get privacyLocationEnable => 'Standortbezogene Dienste';

  @override
  String get privacyPolicyLink => 'Datenschutz';

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';
}
