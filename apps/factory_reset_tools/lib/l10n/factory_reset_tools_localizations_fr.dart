// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'factory_reset_tools_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class FactoryResetToolsLocalizationsFr extends FactoryResetToolsLocalizations {
  FactoryResetToolsLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Outils de réinitialisation d\'usine';

  @override
  String get windowTitle => 'Outils de réinitialisation d\'usine';

  @override
  String get homeTitle => 'Que voulez-vous faire ?';

  @override
  String get createResetMedia => 'Créer un média de réinitialisation';

  @override
  String get startFactoryReset => 'Commencer la réinitialisation usine';

  @override
  String get createUsbTitle => 'Créer un support USB de réinitialisation';

  @override
  String get createUsbBody =>
      'Crée un support de réinitialisation USB pour restaurer le système et personnaliser vos installations Ubuntu.';

  @override
  String get createUsbListExplanation =>
      'Sélectionnez une clé USB. Le lecteur doit disposer d\'**au moins 16 Go d\'espace.**';

  @override
  String get createUsbWarning =>
      'Le lecteur flash sera reformaté et toutes les données du lecteur seront perdues.';

  @override
  String get resetMediaTitle => 'Support de réinitialisation USB';

  @override
  String get noMediaDetected => 'Aucun stockage amovible n\'est détecté';

  @override
  String get noMediaDetectedSubtitle =>
      'Vous avez besoin d\'un stockage USB pour créer un support de réinitialisation d\'usine.';

  @override
  String get factoryResetTitle =>
      'Sélectionnez une option pour démarrer la réinitialisation usine';

  @override
  String get loadingDrives =>
      'Veuillez patienter pendant que nous récupérons les disques.';

  @override
  String get resetMediaReadyTitle => 'Support USB de réinitialisation est prêt';

  @override
  String get resetMediaReadyBody =>
      'Lorsque vous souhaitez l\'utiliser, veuillez insérer la clé USB dans l\'ordinateur que vous souhaitez réinitialiser puis redémarrer.';

  @override
  String get errorLoadingDrives =>
      'Une erreur s\'est produite lors de la récupération des lecteurs.';

  @override
  String get resetMediaInitializing => 'Initialisation';

  @override
  String get resetMediaCopying => 'Copie';

  @override
  String get resetMediaFinalizing => 'Finalisation';

  @override
  String get resetMediaFinished => 'Terminé';

  @override
  String get resetMediaFailed => 'Échoué';

  @override
  String get error => 'Erreur';

  @override
  String get loading => 'Chargement …';

  @override
  String get warning => 'Avertissement';

  @override
  String get restore => 'Restaurer';

  @override
  String get restart => 'Redémarrer';

  @override
  String get reformat => 'Reformater';

  @override
  String get failed => 'Échec de l\'exécution de la commande';

  @override
  String get close => 'Fermer';

  @override
  String get ok => 'OK';

  @override
  String get closeIconSemanticLabel => 'Fermer';

  @override
  String get maximizeIconSemanticLabel => 'Maximiser';

  @override
  String get minimizeIconSemanticLabel => 'Minimiser';
}
