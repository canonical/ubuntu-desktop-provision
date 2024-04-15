import 'factory_reset_tools_localizations.dart';

/// The translations for French (`fr`).
class FactoryResetToolsLocalizationsFr extends FactoryResetToolsLocalizations {
  FactoryResetToolsLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Outils de réinitialisation usine';

  @override
  String get windowTitle => 'Outils de réinitialisation usine';

  @override
  String get homeTitle => 'Que voulez-vous faire ?';

  @override
  String get createResetMedia => 'Créer un média de réinitialisation';

  @override
  String get startFactoryReset => 'Commencer la réinitialisation usine';

  @override
  String get createUsbTitle => 'Créer un support USB de réinitialisation';

  @override
  String get createUsbBody => 'Create a USB reset media to restore the system, as well as customising your Ubuntu installations.';

  @override
  String get createUsbListExplanation => 'Select a USB flash drive. The drive must have **at least 16GB of space.**';

  @override
  String get createUsbWarning => 'The flash drive will be reformatted and all data on the drive will be lost.';

  @override
  String get resetMediaTitle => 'USB reset media';

  @override
  String get noMediaDetected => 'No removable storage is detected';

  @override
  String get noMediaDetectedSubtitle => 'You need a USB storage to create a Factory Reset Media.';

  @override
  String get factoryResetTitle => 'Sélectionnez une option pour démarrer la réinitialisation usine';

  @override
  String get loadingDrives => 'Please wait while we fetch the drives.';

  @override
  String get resetMediaReadyTitle => 'Support USB de réinitialisation est prêt';

  @override
  String get resetMediaReadyBody => 'When you want to use it, please insert the USB drive into the computer you want to reset and reboot it.';

  @override
  String get errorLoadingDrives => 'An error occurred while fetching the drives.';

  @override
  String get resetMediaInitializing => 'Initialisation';

  @override
  String get resetMediaCopying => 'Copying';

  @override
  String get resetMediaFinalizing => 'Finalisation';

  @override
  String get resetMediaFinished => 'Terminé';

  @override
  String get resetMediaFailed => 'Failed';

  @override
  String get error => 'Erreur';

  @override
  String get loading => 'Chargement …';

  @override
  String get warning => 'Avertissement';

  @override
  String get restore => 'Restaurer';

  @override
  String get restart => 'Restart';

  @override
  String get reformat => 'Reformat';

  @override
  String get failed => 'Failed to run command';

  @override
  String get close => 'Fermer';

  @override
  String get ok => 'OK';
}
