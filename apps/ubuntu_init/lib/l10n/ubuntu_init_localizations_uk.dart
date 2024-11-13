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
    return 'Допоможіть нам покращити $distro, поділившись з нами даними вашої системи. Сюди входять такі речі, як модель вашого комп\'ютера, встановлене програмне забезпечення та місце, яке ви вибрали для свого часового поясу.';
  }

  @override
  String telemetryLabelOn(Object distro) {
    return 'Так, поділитись системними даними з командою $distro';
  }

  @override
  String get telemetryLabelOff => 'Ні, не ділиться даними системи';

  @override
  String get telemetryReportLabel => 'Показати перший звіт';

  @override
  String get telemetryReportTitle => 'Подробиці звіту';

  @override
  String get telemetryLegalLabel => 'Правові відомості';

  @override
  String get telemetryCollectError => 'Не вдалося зібрати телеметричні дані';

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
    return 'Магічне прикріплення з цим кодом за адресою <a href=\"https://$url\">$url</a>';
  }

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';

  @override
  String get ubuntuProHeader => 'Прикріпіть цю машину';

  @override
  String get ubuntuProOrAddTokenManually => 'або додайте токен вручну';

  @override
  String get ubuntuProTokenTextfieldHint => 'Токен';

  @override
  String get ubuntuProSubscriptionDescription => 'Придбайте найповнішу передплату на захист програмного забезпечення з відкритим кодом';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(Object url) {
    return 'Завжди безплатно для особистого користування. 30-денна пробна версія для підприємств. <a href=\"https://$url\">Докладніше</a>';
  }

  @override
  String get ubuntuProTokenAttachButton => 'Прикріпити';

  @override
  String get ubuntuProTokenAttachError => 'Недійсний токен';

  @override
  String get ubuntuProTokenAttachSucess => 'Дійсний токен';

  @override
  String get ubuntuProTokenAttachErrorVariant => 'Недійсний токен, спробуйте ще раз';

  @override
  String get ubuntuProOnBoardingSkipForNow => 'Поки що пропустити';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription => 'Ви зможете завжди увімкнути Ubuntu Pro за допомогою Програм та оновлення.';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => 'Увімкнути Ubuntu Pro';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription => 'Приєднайте цей комп\'ютер до передплати Ubuntu Pro, щоб отримати оновлення безпеки для ширшого кола пакунків до 2032 року.';

  @override
  String get ubuntuProSucessAttachHeader => 'На цьому комп\'ютері ввімкнено Ubuntu Pro';

  @override
  String get ubuntuProSucessAttachDescription => 'Ви можете керувати Pro-послугами у Програмах та оновленні.';
}
