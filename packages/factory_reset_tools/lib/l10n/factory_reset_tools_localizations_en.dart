import 'factory_reset_tools_localizations.dart';

/// The translations for English (`en`).
class FactoryResetToolsLocalizationsEn extends FactoryResetToolsLocalizations {
  FactoryResetToolsLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Factory Reset Tools';

  @override
  String get windowTitle => 'Factory Reset Tools';

  @override
  String get createUsbTitle => 'Create a USB reset media';

  @override
  String get createUsbBody => 'Create a USB reset media to restore the system, as well as customising your Ubuntu installations.';

  @override
  String get createUsbListExplanation => 'Select a USB flash drive. The drive must have at least 16GB of space';

  @override
  String get createUsbWarning => 'The flash drive will be reformatted and all data on the drive will be lost.';

  @override
  String get resetMediaTitle => 'USB reset media';

  @override
  String get warning => 'Warning';
}
