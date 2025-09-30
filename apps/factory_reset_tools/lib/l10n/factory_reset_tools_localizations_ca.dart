// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'factory_reset_tools_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Catalan Valencian (`ca`).
class FactoryResetToolsLocalizationsCa extends FactoryResetToolsLocalizations {
  FactoryResetToolsLocalizationsCa([String locale = 'ca']) : super(locale);

  @override
  String get appTitle => 'Eines de restabliment de fàbrica';

  @override
  String get windowTitle => 'Eines de restabliment de fàbrica';

  @override
  String get homeTitle => 'Què voleu fer?';

  @override
  String get createResetMedia => 'Crea un mitjà de restabliment';

  @override
  String get startFactoryReset => 'Inicia el restabliment de fàbrica';

  @override
  String get createUsbTitle => 'Crea un mitjà USB de restabliment';

  @override
  String get createUsbBody =>
      'Creeu un mitjà USB de restabliment per restaurar el sistema i personalitzar les seves instal·lacions de l\'Ubuntu.';

  @override
  String get createUsbListExplanation =>
      'Seleccioneu una unitat d\'emmagatzematge USB. La unitat ha de tenir **almenys 16 GB d\'espai.**';

  @override
  String get createUsbWarning =>
      'Es reformatarà la unitat d\'emmagatzematge i es perdran totes les dades que contingui.';

  @override
  String get resetMediaTitle => 'Suport USB de restabliment';

  @override
  String get noMediaDetected => 'No es va detectar cap unitat extraïble';

  @override
  String get noMediaDetectedSubtitle =>
      'Cal un emmagatzematge USB per crear un mitjà de restabliment de fàbrica.';

  @override
  String get factoryResetTitle =>
      'Seleccioneu una opció per començar el restabliment de fàbrica';

  @override
  String get loadingDrives => 'Espereu mentre es recuperen les unitats.';

  @override
  String get resetMediaReadyTitle =>
      'El suport USB de restabliment està preparat';

  @override
  String get resetMediaReadyBody =>
      'Quan us calgui usar la unitat USB, inseriu-la a l\'equip que vulgueu restablit i reinicieu-lo.';

  @override
  String get errorLoadingDrives =>
      'S\'ha produït un error en recuperar les unitats.';

  @override
  String get resetMediaInitializing => 'S\'està inicialitzant';

  @override
  String get resetMediaCopying => 'Copiant';

  @override
  String get resetMediaFinalizing => 'S\'està finalitzant';

  @override
  String get resetMediaFinished => 'Finalitzat';

  @override
  String get resetMediaFailed => 'S\'ha produït una fallada';

  @override
  String get error => 'Error';

  @override
  String get loading => 'S\'està carregant...';

  @override
  String get warning => 'Advertiment';

  @override
  String get restore => 'Restaura';

  @override
  String get restart => 'Reinicia';

  @override
  String get reformat => 'Reformata';

  @override
  String get failed => 'No s\'ha pogut executar l\'ordre';

  @override
  String get close => 'Tanca';

  @override
  String get ok => 'D\'acord';

  @override
  String get closeIconSemanticLabel => 'Tanca';

  @override
  String get maximizeIconSemanticLabel => 'Maximitza';

  @override
  String get minimizeIconSemanticLabel => 'Minimitza';
}
