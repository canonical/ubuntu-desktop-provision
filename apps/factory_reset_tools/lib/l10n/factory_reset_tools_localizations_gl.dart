// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'factory_reset_tools_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Galician (`gl`).
class FactoryResetToolsLocalizationsGl extends FactoryResetToolsLocalizations {
  FactoryResetToolsLocalizationsGl([String locale = 'gl']) : super(locale);

  @override
  String get appTitle => 'Ferramentas de restablecemento de fábrica';

  @override
  String get windowTitle => 'Ferramentas de restablecemento de fábrica';

  @override
  String get homeTitle => 'Que che gustaría facer?';

  @override
  String get createResetMedia => 'Crear un soporte de restablecemento';

  @override
  String get startFactoryReset => 'Iniciar restablecemento de fábrica';

  @override
  String get createUsbTitle => 'Crear unha unidade de restablecemento USB';

  @override
  String get createUsbBody =>
      'Crea unha unidade USB de reinicio para restaurar o sistema, así como para personalizar as túas instalacións de Ubuntu.';

  @override
  String get createUsbListExplanation =>
      'Selecciona unha unidade flash USB. A unidade debe ter **polo menos 16 GB de espazo.**';

  @override
  String get createUsbWarning =>
      'A unidade flash formatearase e perderanse todos os datos que conteña.';

  @override
  String get resetMediaTitle => 'Medio de restablecemento USB';

  @override
  String get noMediaDetected =>
      'Non se detectou ningún almacenamento extraíble';

  @override
  String get noMediaDetectedSubtitle =>
      'Necesitas un dispositivo de almacenamento USB para crear un soporte de restablecemento de fábrica.';

  @override
  String get factoryResetTitle =>
      'Selecciona unha opción para iniciar o restablecemento de fábrica';

  @override
  String get loadingDrives => 'Agarde mentres recuperamos as unidades.';

  @override
  String get resetMediaReadyTitle =>
      'O soporte USB de restablecemento está listo';

  @override
  String get resetMediaReadyBody =>
      'Cando queiras usalo, insire a unidade USB no ordenador que queres restablecer e reiníciao.';

  @override
  String get errorLoadingDrives => 'Ocorreu un erro ao recuperar as unidades.';

  @override
  String get resetMediaInitializing => 'Iniciando';

  @override
  String get resetMediaCopying => 'Copiando';

  @override
  String get resetMediaFinalizing => 'Finalizando';

  @override
  String get resetMediaFinished => 'Finalizado';

  @override
  String get resetMediaFailed => 'Fallou';

  @override
  String get error => 'Erro';

  @override
  String get loading => 'Cargando...';

  @override
  String get warning => 'Aviso';

  @override
  String get restore => 'Restaurar';

  @override
  String get restart => 'Reiniciar';

  @override
  String get reformat => 'Reformatar';

  @override
  String get failed => 'Fallou a execución do comando';

  @override
  String get close => 'Pechar';

  @override
  String get ok => 'Aceptar';

  @override
  String get closeIconSemanticLabel => 'Pechar';

  @override
  String get maximizeIconSemanticLabel => 'Maximizar';

  @override
  String get minimizeIconSemanticLabel => 'Minimizar';
}
