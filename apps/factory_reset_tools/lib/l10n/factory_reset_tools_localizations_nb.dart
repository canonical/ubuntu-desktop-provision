import 'factory_reset_tools_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Norwegian Bokmål (`nb`).
class FactoryResetToolsLocalizationsNb extends FactoryResetToolsLocalizations {
  FactoryResetToolsLocalizationsNb([String locale = 'nb']) : super(locale);

  @override
  String get appTitle => 'Verktøy for fabrikktilbakestilling';

  @override
  String get windowTitle => 'Verktøy for fabrikktilbakestilling';

  @override
  String get homeTitle => 'Hva ønsker du å gjøre?';

  @override
  String get createResetMedia => 'Opprett tilbakestillingsmedia';

  @override
  String get startFactoryReset => 'Start factory reset';

  @override
  String get createUsbTitle => 'Create a USB reset media';

  @override
  String get createUsbBody => 'Create a USB reset media to restore the system, as well as customising your Ubuntu installations.';

  @override
  String get createUsbListExplanation => 'Select a USB flash drive. The drive must have **at least 16GB of space.**';

  @override
  String get createUsbWarning => 'The flash drive will be reformatted and all data on the drive will be lost.';

  @override
  String get resetMediaTitle => 'USB-tilbakestillingsmedia';

  @override
  String get noMediaDetected => 'No removable storage is detected';

  @override
  String get noMediaDetectedSubtitle => 'You need a USB storage to create a Factory Reset Media.';

  @override
  String get factoryResetTitle => 'Select an option to start factory reset';

  @override
  String get loadingDrives => 'Please wait while we fetch the drives.';

  @override
  String get resetMediaReadyTitle => 'USB-tilbakestillingsmedia er klar';

  @override
  String get resetMediaReadyBody => 'When you want to use it, please insert the USB drive into the computer you want to reset and restart it.';

  @override
  String get errorLoadingDrives => 'An error occurred while fetching the drives.';

  @override
  String get resetMediaInitializing => 'Initializing';

  @override
  String get resetMediaCopying => 'Kopierer …';

  @override
  String get resetMediaFinalizing => 'Fullfører …';

  @override
  String get resetMediaFinished => 'Fullført';

  @override
  String get resetMediaFailed => 'Mislyktes';

  @override
  String get error => 'Feil';

  @override
  String get loading => 'Laster inn …';

  @override
  String get warning => 'Advarsel';

  @override
  String get restore => 'Gjenopprett';

  @override
  String get restart => 'Restart';

  @override
  String get reformat => 'Reformater';

  @override
  String get failed => 'Failed to run command';

  @override
  String get close => 'Lukk';

  @override
  String get ok => 'OK';
}
