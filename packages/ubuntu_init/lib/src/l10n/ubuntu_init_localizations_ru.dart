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
    return 'Помогите улучшить $distro';
  }

  @override
  String telemetryDescription(Object distro) {
    return 'Помогите нам улучшить $distro, поделившись с нами данными о системе. Сюда входят такие данные, как модель вашего компьютера, установленное программное обеспечение и выбранный часовой пояс.';
  }

  @override
  String telemetryLabelOn(Object distro) {
    return 'Да, поделиться системными данными с командой $distro';
  }

  @override
  String get telemetryLabelOff => 'Нет, не делиться системными данными';

  @override
  String get telemetryReportLabel => 'Показать первый отчет';

  @override
  String get telemetryReportTitle => 'Детали отчёта';

  @override
  String get telemetryLegalLabel => 'Правовая информация';

  @override
  String get telemetryCollectError => 'Failed to collect telemetry data';

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
  String ubuntuProMagicAttachInstructions(Object url) {
    return 'Быстрое подключение с помощью этого кода на <a href=\"https://$url\">$url</a>';
  }

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';

  @override
  String get ubuntuProHeader => 'Подключите это устройство';

  @override
  String get ubuntuProOrAddTokenManually => 'или добавьте токен вручную';

  @override
  String get ubuntuProTokenTextfieldHint => 'Токен';

  @override
  String get ubuntuProSubscriptionDescription => 'Получите самую полную подписку по безопасности программного обеспечения с открытым исходным кодом';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(Object url) {
    return 'Всегда бесплатно для личного использования. 30-дневный пробный период для коммерческих целей. <a href=\"https://$url\">Узнать больше</a>';
  }

  @override
  String get ubuntuProTokenAttachButton => 'Подключить';

  @override
  String get ubuntuProTokenAttachError => 'Недействительный токен';

  @override
  String get ubuntuProTokenAttachSucess => 'Действительный токен';

  @override
  String get ubuntuProTokenAttachErrorVariant => 'Недействительный токен, повторите попытку';

  @override
  String get ubuntuProOnBoardingSkipForNow => 'Пока пропустить';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription => 'Вы всегда можете включить Ubuntu Pro позже через приложение «Программы и обновления».';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => 'Включить Ubuntu Pro';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription => 'Подключите это устройство к подписке Ubuntu Pro, чтобы получать обновления безопасности для широкого списка пакетов до 2032 года.';

  @override
  String get ubuntuProSucessAttachHeader => 'Подписка Ubuntu Pro теперь задействована на этой машине';

  @override
  String get ubuntuProSucessAttachDescription => 'Вы можете управлять услугами Pro в приложении «Программы и обновления».';
}
