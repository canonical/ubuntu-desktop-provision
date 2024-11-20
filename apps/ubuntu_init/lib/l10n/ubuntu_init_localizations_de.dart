import 'ubuntu_init_localizations.dart';

// ignore_for_file: type=lint

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
    return 'Helfen Sie uns, $distro zu verbessern, indem Sie Ihre Systemdaten mit uns teilen. Dazu gehören Dinge wie Ihr Computermodell, installierte Software und der Ort, den Sie für Ihre Zeitzone gewählt haben.';
  }

  @override
  String telemetryLabelOn(Object distro) {
    return 'Ja, Systemdaten mit dem $distro-Team teilen';
  }

  @override
  String get telemetryLabelOff => 'Nein, keine Systemdaten teilen';

  @override
  String get telemetryReportLabel => 'Ersten Bericht anzeigen';

  @override
  String get telemetryReportTitle => 'Einzelheiten der Berichterstattung';

  @override
  String get telemetryLegalLabel => 'Rechtlicher Hinweis';

  @override
  String get telemetryCollectError => 'Fehler bei der Erfassung von Telemetriedaten';

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
  String ubuntuProMagicAttachInstructions(Object url) {
    return 'Magisches Anbinden mit diesem Code unter <a href=\"https://$url\">$url</a>';
  }

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';

  @override
  String get ubuntuProHeader => 'Diese Maschine anbinden';

  @override
  String get ubuntuProOrAddTokenManually => 'oder fügen Sie manuell ein Token hinzu';

  @override
  String get ubuntuProTokenTextfieldHint => 'Token';

  @override
  String get ubuntuProSubscriptionDescription => 'Holen Sie sich das umfassendste Abonnement für die Sicherheit von quelloffener Software';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(Object url) {
    return 'Immer kostenlos für den persönlichen Gebrauch. 30-Tage-Testversion für Unternehmen. <a href=\"https://$url\">Mehr erfahren</a>';
  }

  @override
  String get ubuntuProTokenAttachButton => 'Anbinden';

  @override
  String get ubuntuProTokenAttachError => 'Ungültiges Token';

  @override
  String get ubuntuProTokenAttachSucess => 'Gültiges Token';

  @override
  String get ubuntuProTokenAttachErrorVariant => 'Ungültiges Token, erneut versuchen';

  @override
  String get ubuntuProOnBoardingSkipForNow => 'Vorerst überspringen';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription => 'Sie können Ubuntu Pro jederzeit später über die Anwendung Software & Aktualisierungen aktivieren.';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => 'Ubuntu Pro aktivieren';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription => 'Binden Sie diesen Rechner an ein Ubuntu Pro-Abonnement an, um Sicherheitsaktualisierungen für eine größere Anzahl von Paketen bis 2032 zu erhalten.';

  @override
  String get ubuntuProSucessAttachHeader => 'Ubuntu Pro ist jetzt auf dieser Maschine aktiviert';

  @override
  String get ubuntuProSucessAttachDescription => 'Sie können Ihre Pro-Dienste in der Anwendung Software & Aktualisierungen verwalten.';
}
