import 'factory_reset_tools_localizations.dart';

/// The translations for Ukrainian (`uk`).
class FactoryResetToolsLocalizationsUk extends FactoryResetToolsLocalizations {
  FactoryResetToolsLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get appTitle => 'Інструменти скидання до заводських налаштувань';

  @override
  String get windowTitle => 'Інструменти скидання до заводських налаштувань';

  @override
  String get homeTitle => 'Що б ви хотіли зробити?';

  @override
  String get createResetMedia => 'Створити носій для скидання';

  @override
  String get startFactoryReset => 'Почати скидання до заводських налаштувань';

  @override
  String get createUsbTitle => 'Створити USB-носій для скидання налаштувань';

  @override
  String get createUsbBody => 'Створити USB-носій для відновлення системи, а також налаштувати ваші установки Ubuntu.';

  @override
  String get createUsbListExplanation => 'Вибрати USB-накопичувач. На диску повинно бути **принаймні 16 ГБ вільного місця.**';

  @override
  String get createUsbWarning => 'Флешка буде переформатована і всі дані на ній будуть втрачені.';

  @override
  String get resetMediaTitle => 'USB-носій для скидання налаштувань';

  @override
  String get noMediaDetected => 'Не виявлено знімного накопичувача';

  @override
  String get noMediaDetectedSubtitle => 'Для створення носія зі скиданням до заводських налаштувань вам знадобиться USB-накопичувач.';

  @override
  String get factoryResetTitle => 'Виберіть опцію для запуску скидання до заводських налаштувань';

  @override
  String get loadingDrives => 'Зачекайте, будь ласка, поки ми отримуємо диски.';

  @override
  String get resetMediaReadyTitle => 'USB-носій для скидання готовий';

  @override
  String get resetMediaReadyBody => 'Коли ви захочете ним скористатися, вставте USB-накопичувач у комп\'ютер, який ви хочете скинути, і перезапустіть його.';

  @override
  String get errorLoadingDrives => 'Виникла помилка під час отримання дисків.';

  @override
  String get resetMediaInitializing => 'Ініціалізація';

  @override
  String get resetMediaCopying => 'Копіювання';

  @override
  String get resetMediaFinalizing => 'Завершення';

  @override
  String get resetMediaFinished => 'Завершено';

  @override
  String get resetMediaFailed => 'Не вдалося';

  @override
  String get error => 'Помилка';

  @override
  String get loading => 'Завантаження...';

  @override
  String get warning => 'Попередження';

  @override
  String get restore => 'Відновити';

  @override
  String get restart => 'Перезапустити';

  @override
  String get reformat => 'Переформатувати';

  @override
  String get failed => 'Не вдалося запустити команду';

  @override
  String get close => 'Закрити';

  @override
  String get ok => 'OK';
}
