// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'factory_reset_tools_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class FactoryResetToolsLocalizationsAr extends FactoryResetToolsLocalizations {
  FactoryResetToolsLocalizationsAr([String locale = 'ar']) : super(locale);

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
  String get createUsbBody =>
      'Create a USB reset media to restore the system, as well as customising your Ubuntu installations.';

  @override
  String get createUsbListExplanation =>
      'Select a USB flash drive. The drive must have **at least 16GB of space.**';

  @override
  String get createUsbWarning =>
      'The flash drive will be reformatted and all data on the drive will be lost.';

  @override
  String get resetMediaTitle => 'USB reset media';

  @override
  String get noMediaDetected => 'No removable storage is detected';

  @override
  String get noMediaDetectedSubtitle =>
      'You need a USB storage to create a Factory Reset Media.';

  @override
  String get factoryResetTitle => 'Select an option to start factory reset';

  @override
  String get loadingDrives => 'Please wait while we fetch the drives.';

  @override
  String get resetMediaReadyTitle => 'USB reset media is ready';

  @override
  String get resetMediaReadyBody =>
      'When you want to use it, please insert the USB drive into the computer you want to reset and restart it.';

  @override
  String get errorLoadingDrives =>
      'An error occurred while fetching the drives.';

  @override
  String get resetMediaInitializing => 'Initializing';

  @override
  String get resetMediaCopying => 'Copying';

  @override
  String get resetMediaFinalizing => 'Finalizing';

  @override
  String get resetMediaFinished => 'Finished';

  @override
  String get resetMediaFailed => 'Failed';

  @override
  String get error => 'Error';

  @override
  String get loading => 'Loading...';

  @override
  String get warning => 'Warning';

  @override
  String get restore => 'Restore';

  @override
  String get restart => 'Restart';

  @override
  String get reformat => 'Reformat';

  @override
  String get failed => 'Failed to run command';

  @override
  String get close => 'Close';

  @override
  String get ok => 'OK';

  @override
  String get closeIconSemanticLabel => 'Close';

  @override
  String get maximizeIconSemanticLabel => 'Maximize';

  @override
  String get minimizeIconSemanticLabel => 'Minimize';
}
