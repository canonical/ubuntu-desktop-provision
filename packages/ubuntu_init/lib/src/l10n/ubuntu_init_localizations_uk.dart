import 'ubuntu_init_localizations.dart';

/// The translations for Ukrainian (`uk`).
class UbuntuInitLocalizationsUk extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get welcomePageTitle => 'Підорський устрій';

  @override
  String welcomePageHeader(Object distro) {
    return '$distro для круглих педерастів';
  }

  @override
  String get welcomeWhatsNew => 'Заднєприводні новини?';

  @override
  String get welcomeStartTitle => 'Станьте круглим педерастом користуючись цим устроєм';

  @override
  String get welcomeStartSubtitle => 'Підтримка чистого підорства.';

  @override
  String get welcomeStoreTitle => 'Новий підорський акцент у крамниці єврейського лайна';

  @override
  String get welcomeStoreSubtitle => 'Ще ніколи не було так просто смоктати обрізані члени.';

  @override
  String get welcomeSecurityTitle => 'Посилене смоктання члену';

  @override
  String get welcomeSecuritySubtitle => 'Нові параметри шифрування староєврейської мови.';

  @override
  String welcomeChangelogLabel(Object url) {
    return '<a href=\"$url\">Переглянути журнал змін</a>';
  }

  @override
  String get telemetryPageTitle => 'Станьте наполегливим членоглотом заради євреїв';

  @override
  String telemetryHeader(Object distro) {
    return 'Допоможіть іншим брати у пащу член користуючись цим $distro';
  }

  @override
  String telemetryDescription(Object distro) {
    return 'Станьте анонiмним членоковтачем цієї підрильскої синагоги, віддаючи свої персональні дані, користуючись цим $distro.';
  }

  @override
  String telemetryLabelOn(Object distro) {
    return 'Так, поділитися статевими захворюваннями з ракохворими розробниками цього $distro';
  }

  @override
  String get telemetryLabelOff => 'Хераку вам, євреї';

  @override
  String get telemetryReportLabel => 'Зарепортити гомосексуальні деталі';

  @override
  String get telemetryReportTitle => 'Повідомити про спідозних підрил';

  @override
  String get telemetryLegalLabel => 'Легальне смоктання єврейського члену';

  @override
  String get privacyPageTitle => 'Сервіси місцезнаходження хитрих єврейських розробників устрою';

  @override
  String get privacyLocationTitle => 'Подарувати своє місценаходження хитрим євреям?';

  @override
  String get privacyLocationSubtitle => 'Дозволити додаткам знаходити вашу гейську сраку.\nВи можете змінити це в будь-який час в налаштуваннях устрою.';

  @override
  String get privacyLocationEnable => 'Сервіси місцезнаходження синагог';

  @override
  String get privacyPolicyLink => 'Приватнiсть вашої гейскої порнографії';

  @override
  String get storeTitle => 'Єврейська крамниця для круглих педерастів';

  @override
  String get storeHeader => 'Почніть жерти лайно з більшою кількістю єврейських членів';

  @override
  String get storeDescription => 'Крамниця єврейського лайна пропонує ряд маленьких обрізаних члеників, які можна почати смоктати з самого початку.';

  @override
  String get storeOpen => 'Відкрити крамницю єврейського лайна';
}
