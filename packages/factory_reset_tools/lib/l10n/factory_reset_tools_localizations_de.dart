import 'factory_reset_tools_localizations.dart';

/// The translations for German (`de`).
class FactoryResetToolsLocalizationsDe extends FactoryResetToolsLocalizations {
  FactoryResetToolsLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'Factory reset tools';

  @override
  String get windowTitle => 'Factory reset tools';

  @override
  String get homeTitle => 'What would you like to do?';

  @override
  String get createResetMedia => 'Create reset media';

  @override
  String get startFactoryReset => 'Start factory reset';

  @override
  String get createUsbTitle => 'Create a USB reset media';

  @override
  String get createUsbBody => 'Create a USB reset media to restore the system, as well as customising your Ubuntu installations.';

  @override
  String get createUsbListExplanation => 'Select a USB flash drive. The drive must have **at least 16GB of space.**';

  @override
  String get createUsbWarning => 'Das Flash-Laufwerk wird neu formatiert und alle Daten auf dem Laufwerk gehen verloren.';

  @override
  String get resetMediaTitle => 'USB reset media';

  @override
  String get noMediaDetected => 'Kein Wechseldatenträger erkannt';

  @override
  String get noMediaDetectedSubtitle => 'You need a USB storage to create a Factory Reset Media.';

  @override
  String get factoryResetTitle => 'Select an option to start factory reset';

  @override
  String get loadingDrives => 'Bitte warten Sie, während wir die Laufwerke abrufen.';

  @override
  String get resetMediaReadyTitle => 'USB reset media is ready';

  @override
  String get resetMediaReadyBody => 'When you want to use it, please insert the USB drive into the computer you want to reset and restart it.';

  @override
  String get errorLoadingDrives => 'Beim Abrufen der Laufwerke ist ein Fehler aufgetreten.';

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
  String get loading => 'Wird geladen...';

  @override
  String get warning => 'Warnung';

  @override
  String get restore => 'Wiederherstellen';

  @override
  String get restart => 'Neustart';

  @override
  String get reformat => 'Reformat';

  @override
  String get failed => 'Failed to run command';

  @override
  String get close => 'Schließen';

  @override
  String get ok => 'OK';
}
