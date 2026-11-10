// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'factory_reset_tools_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class FactoryResetToolsLocalizationsDe extends FactoryResetToolsLocalizations {
  FactoryResetToolsLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle =>
      'Werkzeuge zum Zurücksetzen auf die Werkseinstellungen';

  @override
  String get windowTitle =>
      'Werkzeuge zum Zurücksetzen auf die Werkseinstellungen';

  @override
  String get homeTitle => 'Was würden Sie gerne machen?';

  @override
  String get createResetMedia => 'Rücksetzmedium erstellen';

  @override
  String get startFactoryReset => 'Zurücksetzen auf Werkseinstellungen starten';

  @override
  String get createUsbTitle => 'Erstellen eines USB-Rücksetzmediums';

  @override
  String get createUsbBody =>
      'Erstellen Sie ein USB-Rücksetzmedium, um das System wiederherzustellen und Ihre Ubuntu-Installationen anzupassen.';

  @override
  String get createUsbListExplanation =>
      'Wählen Sie ein USB-Flash-Laufwerk aus. Das Laufwerk muss **mindestens 16 GB Speicherplatz** haben.';

  @override
  String get createUsbWarning =>
      'Das Flash-Laufwerk wird neu formatiert und alle Daten auf dem Laufwerk gehen verloren.';

  @override
  String get resetMediaTitle => 'USB-Rücksetzmedium';

  @override
  String get noMediaDetected => 'Kein Wechseldatenträger erkannt';

  @override
  String get noMediaDetectedSubtitle =>
      'Sie benötigen einen USB-Speicher, um ein Medium für das Zurücksetzen auf die Werkseinstellungen zu erstellen.';

  @override
  String get factoryResetTitle =>
      'Wählen Sie eine Option zum Starten des Zurücksetzens auf die Werkseinstellungen';

  @override
  String get loadingDrives =>
      'Bitte warten Sie, während wir die Laufwerke abrufen.';

  @override
  String get resetMediaReadyTitle => 'USB-Rücksetzmedium ist bereit';

  @override
  String get resetMediaReadyBody =>
      'Wenn Sie es verwenden möchten, schließen Sie bitte das USB-Laufwerk an den Computer an, den Sie zurücksetzen möchten, und starten Sie ihn neu.';

  @override
  String get errorLoadingDrives =>
      'Beim Abrufen der Laufwerke ist ein Fehler aufgetreten.';

  @override
  String get resetMediaInitializing => 'Wird initialisiert';

  @override
  String get resetMediaCopying => 'Wird kopiert';

  @override
  String get resetMediaFinalizing => 'Wird fertiggestellt';

  @override
  String get resetMediaFinished => 'Fertiggestellt';

  @override
  String get resetMediaFailed => 'Fehlgeschlagen';

  @override
  String get error => 'Fehler';

  @override
  String get loading => 'Wird geladen ...';

  @override
  String get warning => 'Warnung';

  @override
  String get restore => 'Wiederherstellen';

  @override
  String get restart => 'Neustart';

  @override
  String get reformat => 'Neu formatieren';

  @override
  String get failed => 'Befehl konnte nicht ausgeführt werden';

  @override
  String get close => 'Schließen';

  @override
  String get ok => 'OK';

  @override
  String get closeIconSemanticLabel => 'Schließen';

  @override
  String get maximizeIconSemanticLabel => 'Maximieren';

  @override
  String get minimizeIconSemanticLabel => 'Minimieren';
}
