// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'factory_reset_tools_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class FactoryResetToolsLocalizationsEs extends FactoryResetToolsLocalizations {
  FactoryResetToolsLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Herramientas de restablecimiento de fábrica';

  @override
  String get windowTitle => 'Herramientas de restablecimiento de fábrica';

  @override
  String get homeTitle => '¿Qué quiere hacer?';

  @override
  String get createResetMedia => 'Crear soporte de restablecimiento';

  @override
  String get startFactoryReset => 'Iniciar restablecimiento de fábrica';

  @override
  String get createUsbTitle => 'Crear un soporte USB de restablecimiento';

  @override
  String get createUsbBody => 'Cree un soporte USB de restablecimiento para restaurar el sistema y personalizar sus instalaciones de Ubuntu.';

  @override
  String get createUsbListExplanation => 'Seleccione una unidad de almacenamiento USB. La unidad debe tener **al menos 16 GB de espacio.**';

  @override
  String get createUsbWarning => 'La unidad de almacenamiento se reformateará y se perderán todos los datos que contenga.';

  @override
  String get resetMediaTitle => 'Soporte USB de restablecimiento';

  @override
  String get noMediaDetected => 'No se detectó ningún almacenamiento extraíble';

  @override
  String get noMediaDetectedSubtitle => 'Necesita un almacenamiento USB para crear un soporte de restablecimiento de fábrica.';

  @override
  String get factoryResetTitle => 'Seleccione una opción para comenzar el restablecimiento de fábrica';

  @override
  String get loadingDrives => 'Espere mientras se recuperan las unidades.';

  @override
  String get resetMediaReadyTitle => 'El soporte USB de restablecimiento está preparado';

  @override
  String get resetMediaReadyBody => 'Cuando necesite usar la unidad USB, insértela en el equipo que quiera restablecer y reinícielo.';

  @override
  String get errorLoadingDrives => 'Se produjo un error al recuperar las unidades.';

  @override
  String get resetMediaInitializing => 'Inicializando';

  @override
  String get resetMediaCopying => 'Copiando';

  @override
  String get resetMediaFinalizing => 'Finalizando';

  @override
  String get resetMediaFinished => 'Finalizado';

  @override
  String get resetMediaFailed => 'Falló';

  @override
  String get error => 'Error';

  @override
  String get loading => 'Cargando…';

  @override
  String get warning => 'Atención';

  @override
  String get restore => 'Restaurar';

  @override
  String get restart => 'Reiniciar';

  @override
  String get reformat => 'Volver a formatear';

  @override
  String get failed => 'No se pudo ejecutar la orden';

  @override
  String get close => 'Cerrar';

  @override
  String get ok => 'Aceptar';
}
