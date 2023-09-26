import 'ubuntu_init_localizations.dart';

/// The translations for Russian (`ru`).
class UbuntuInitLocalizationsRu extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get welcomePageTitle => 'Добро пожаловать';

  @override
  String welcomePageHeader(Object distro) {
    return 'Добро пожаловать в $distro';
  }

  @override
  String get welcomeWhatsNew => 'ЧТО НОВОГО?';

  @override
  String get welcomeStartTitle => 'Оптимизированный запуск';

  @override
  String get welcomeStartSubtitle => 'Поддержка более чистой настройки.';

  @override
  String get welcomeStoreTitle => 'Новый внешний вид центра приложений';

  @override
  String get welcomeStoreSubtitle => 'Поиск любимого программного обеспечения ещё никогда не был таким простым.';

  @override
  String get welcomeSecurityTitle => 'Повышенная безопасность';

  @override
  String get welcomeSecuritySubtitle => 'Новые параметры для аппаратного или ZFS шифрования.';

  @override
  String welcomeChangelogLabel(Object url) {
    return '<a href=\"$url\">Посмотреть список изменений</a>';
  }

  @override
  String get telemetryPageTitle => 'Сбор данных';

  @override
  String telemetryHeader(Object distro) {
    return 'Помочь улучшить $distro';
  }

  @override
  String telemetryDescription(Object distro) {
    return 'Длитесь данными $distro анонимно, чтобы мы могли улучшить ваш опыт.';
  }

  @override
  String telemetryLabelOn(Object distro) {
    return 'Да, поделиться системными данными с командой $distro';
  }

  @override
  String get telemetryLabelOff => 'Нет, не делиться системными данными';

  @override
  String get telemetryReportLabel => 'Детали отчёта';

  @override
  String get telemetryReportTitle => 'Детали отчёта';

  @override
  String get telemetryLegalLabel => 'Правовая информация';

  @override
  String get privacyPageTitle => 'Сервисы определения местоположения';

  @override
  String get privacyLocationTitle => 'Включить сервисы определения местоположения?';

  @override
  String get privacyLocationSubtitle => 'Сообщите приложениям о вашем географическом местоположении.\nЭтот параметр вы можете изменить в любое время в системных настройках.';

  @override
  String get privacyLocationEnable => 'Сервисы определения местоположения';

  @override
  String get privacyPolicyLink => 'Конфиденциальность данных';

  @override
  String get storeTitle => 'Центр приложений Ubuntu';

  @override
  String get storeHeader => 'Начните работу с другими приложениями';

  @override
  String get storeDescription => 'Центр приложений Ubuntu предлагает целый ряд приложений, с которыми вы можете начать работу с самого начала.';

  @override
  String get storeOpen => 'Открыть центр приложений';

  @override
  String get launchsessionTitle => 'Setup complete';

  @override
  String get launchsessionHeader => 'All done!';

  @override
  String get launchsessionDescription => 'You can now begin using Ubuntu Core Desktop.';
}
