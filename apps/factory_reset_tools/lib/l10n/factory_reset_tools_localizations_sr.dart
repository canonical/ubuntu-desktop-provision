// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'factory_reset_tools_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Serbian (`sr`).
class FactoryResetToolsLocalizationsSr extends FactoryResetToolsLocalizations {
  FactoryResetToolsLocalizationsSr([String locale = 'sr']) : super(locale);

  @override
  String get appTitle => 'Алатке за фабричко ресетовање';

  @override
  String get windowTitle => 'Алатке за фабричко ресетовање';

  @override
  String get homeTitle => 'Шта желите да урадите?';

  @override
  String get createResetMedia => 'Креирај медиј за ресетовање';

  @override
  String get startFactoryReset => 'Покрени фабричко ресетовање';

  @override
  String get createUsbTitle => 'Креирај USB медиј за ресетовање';

  @override
  String get createUsbBody =>
      'Креирај USB медиј за ресетовање да бисте вратили систем, као и прилагодили своје Ubuntu инсталације.';

  @override
  String get createUsbListExplanation =>
      'Изаберите USB флеш диск. Диск мора имати **најмање 16GB простора.**';

  @override
  String get createUsbWarning =>
      'Флеш диск ће бити реформатиран и сви подаци на диску ће бити изгубљени.';

  @override
  String get resetMediaTitle => 'USB медиј за ресетовање';

  @override
  String get noMediaDetected => 'Није откривен преносиви уређај за складиштење';

  @override
  String get noMediaDetectedSubtitle =>
      'Потребан вам је USB уређај за складиштење да бисте креирали медиј за фабричко ресетовање.';

  @override
  String get factoryResetTitle =>
      'Изаберите опцију за покретање фабричког ресетовања';

  @override
  String get loadingDrives => 'Молимо сачекајте док преузимамо дискове.';

  @override
  String get resetMediaReadyTitle => 'USB медиј за ресетовање је спреман';

  @override
  String get resetMediaReadyBody =>
      'Када желите да га користите, уметните USB диск у рачунар који желите да ресетујете и поново га покрените.';

  @override
  String get errorLoadingDrives =>
      'Дошло је до грешке приликом преузимања дискова.';

  @override
  String get resetMediaInitializing => 'Иницијализација';

  @override
  String get resetMediaCopying => 'Копирање';

  @override
  String get resetMediaFinalizing => 'Финализација';

  @override
  String get resetMediaFinished => 'Завршено';

  @override
  String get resetMediaFailed => 'Неуспешно';

  @override
  String get error => 'Грешка';

  @override
  String get loading => 'Учитавање...';

  @override
  String get warning => 'Упозорење';

  @override
  String get restore => 'Враћање';

  @override
  String get restart => 'Поново покрени';

  @override
  String get reformat => 'Реформатирај';

  @override
  String get failed => 'Неуспешно покретање команде';

  @override
  String get close => 'Затвори';

  @override
  String get ok => 'У реду';
}
