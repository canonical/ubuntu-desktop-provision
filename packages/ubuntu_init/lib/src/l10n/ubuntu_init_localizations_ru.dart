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
  String ubuntuProMagicAttachInstructions(Object url) {
    return 'Magic attach with this code at <a href=\"https://$url\">$url</a>';
  }

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';

  @override
  String get ubuntuProHeader => 'Attach this machine';

  @override
  String get ubuntuProOrAddTokenManually => 'or add a token manually';

  @override
  String get ubuntuProTokenTextfieldHint => 'Token';

  @override
  String get ubuntuProSubscriptionDescription => 'Get the most comprehensive subscription for open-source software security';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(Object url) {
    return 'Always free for personal use. 30-days trial for enterprises. <a href=\"https://$url\">Learn more</a>';
  }

  @override
  String get ubuntuProTokenAttachButton => 'Attach';

  @override
  String get ubuntuProTokenAttachError => 'Invalid token';

  @override
  String get ubuntuProTokenAttachSucess => 'Valid token';

  @override
  String get ubuntuProTokenAttachErrorVariant => 'Invalid token, retry';

  @override
  String get ubuntuProOnBoardingSkipForNow => 'Skip for now';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription => 'You can always enable Ubuntu Pro later via the Software & Updates application.';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => 'Enable Ubuntu Pro';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription => 'Attach this machine to an Ubuntu Pro subscription for security updates on a wider range of packages, until 2032.';

  @override
  String get ubuntuProSucessAttachHeader => 'Ubuntu Pro is now enabled in this machine';

  @override
  String get ubuntuProSucessAttachDescription => 'You can manage your Pro services in the Software & Updates application.';
}
