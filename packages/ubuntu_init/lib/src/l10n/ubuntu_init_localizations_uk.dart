import 'ubuntu_init_localizations.dart';

/// The translations for Ukrainian (`uk`).
class UbuntuInitLocalizationsUk extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get welcomePageTitle => 'Ласкаво просимо';

  @override
  String welcomePageHeader(Object distro) {
    return 'Ласкаво просимо в $distro';
  }

  @override
  String get welcomeWhatsNew => 'ЩО НОВОГО?';

  @override
  String get welcomeStartTitle => 'Легкий початок';

  @override
  String get welcomeStartSubtitle => 'Підтримка простих налаштування.';

  @override
  String get welcomeStoreTitle => 'Новий вигляд магазину додатків';

  @override
  String get welcomeStoreSubtitle => 'Ще ніколи не було простіше знайти улюблене програмне забезпечення.';

  @override
  String get welcomeSecurityTitle => 'Підвищена безпека';

  @override
  String get welcomeSecuritySubtitle => 'Нові параметри для апаратного або ZFS шифрування.';

  @override
  String welcomeChangelogLabel(Object url) {
    return '<a href=\"$url\">Переглянути журнал змін</a>';
  }

  @override
  String get telemetryPageTitle => 'Телеметрія';

  @override
  String telemetryHeader(Object distro) {
    return 'Допомогти покращити $distro';
  }

  @override
  String telemetryDescription(Object distro) {
    return 'Діліться даними з $distro анонімно, щоб ми могли покращити ваш досвід.';
  }

  @override
  String telemetryLabelOn(Object distro) {
    return 'Так, поділитись системними даними з командою $distro';
  }

  @override
  String get telemetryLabelOff => 'Ні, не ділиться даними системи';

  @override
  String get telemetryReportLabel => 'Подробиці звіту';

  @override
  String get telemetryReportTitle => 'Подробиці звіту';

  @override
  String get telemetryLegalLabel => 'Правові відомості';

  @override
  String get privacyPageTitle => 'Сервіси визначення місцезнаходження';

  @override
  String get privacyLocationTitle => 'Увімкнути сервіси визначення місцезнаходження?';

  @override
  String get privacyLocationSubtitle => 'Дозволити додаткам отримувати інформацію про ваше географічне місцезнаходження.\nВи можете змінити це будь-який час в налаштуваннях системи.';

  @override
  String get privacyLocationEnable => 'Сервіси визначення місцезнаходження';

  @override
  String get privacyPolicyLink => 'Конфіденційність даних';

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
