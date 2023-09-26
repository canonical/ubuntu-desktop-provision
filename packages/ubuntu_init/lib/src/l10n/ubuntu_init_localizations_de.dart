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
  String get storeTitle => 'Ubuntu Store';

  @override
  String get storeHeader => 'Loslegen mit mehr Anwendungen';

  @override
  String get storeDescription => 'Der App Store von Ubuntu bietet eine Reihe von Apps, die Sie von Anfang an nutzen können.';

  @override
  String get storeOpen => 'App Store öffnen';

  @override
  String get launchsessionTitle => 'Setup complete';

  @override
  String get launchsessionHeader => 'All done!';

  @override
  String get launchsessionDescription => 'You can now begin using Ubuntu Core Desktop.';
}
