import 'ubuntu_provision_localizations.dart';

/// The translations for Ukrainian (`uk`).
class UbuntuProvisionLocalizationsUk extends UbuntuProvisionLocalizations {
  UbuntuProvisionLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get accessibilityPageTitle => 'Доступність';

  @override
  String accessibilityPageHeader(String DISTRO) {
    return 'Доступність в $DISTRO';
  }

  @override
  String accessibilityPageBody(String DISTRO) {
    return 'Налаштуйте $DISTRO відповідно до ваших потреб перед початком роботи. Ви можете змінити це пізніше в Налаштуваннях системи.';
  }

  @override
  String get accessibilitySeeingLabel => 'Зір';

  @override
  String get accessibilityHearingLabel => 'Слух';

  @override
  String get accessibilityTypingLabel => 'Введення';

  @override
  String get accessibilityPointingLabel => 'Наведення та клацання';

  @override
  String get accessibilityZoomLabel => 'Масштабування';

  @override
  String get accessibilityHighContrastLabel => 'Висока контрастність';

  @override
  String get accessibilityLargeTextLabel => 'Великий текст';

  @override
  String get accessibilityReduceAnimationLabel => 'Скоротити анімацію';

  @override
  String get accessibilityScreenReaderLabel => 'Зчитувач з екрана';

  @override
  String get accessibilityVisualAlertsLabel => 'Візуальні попередження';

  @override
  String get accessibilityStickKeysLabel => 'Липкі клавіші';

  @override
  String get accessibilitySlowKeysLabel => 'Повільні клавіші';

  @override
  String get accessibilityMouseKeysLabel => 'Клавіші миші';

  @override
  String get accessibilityDesktopZoomLabel => 'Масштабування стільниці';

  @override
  String get errorPageTitle => 'Щось пішло не так';

  @override
  String get errorPageUnexpected => 'Вибачте, але ми не впевнені, в чому саме полягає помилка. Ви можете спробувати перезапустити комп\'ютер і почати процес встановлення заново. Ви також можете <a>повідомити про проблему</a>.';

  @override
  String errorPageUbuntuBug(String SNAP) {
    return 'Щоб надіслати автоматичний звіт про ваду з відповідною інформацією про налагодження, виконайте <pre>sudo ubuntu-bug $SNAP</pre> у терміналі або з командної консолі (Alt+F2).';
  }

  @override
  String get errorPageShowLog => 'Показати журнал';

  @override
  String get errorPageHideLog => 'Сховати журнал';

  @override
  String get restart => 'Перезапустити';

  @override
  String get close => 'Закрити';

  @override
  String get timezonePageTitle => 'Виберіть часовий пояс';

  @override
  String get timezoneLocationLabel => 'Місце розташування';

  @override
  String get timezoneTimezoneLabel => 'Часовий пояс';

  @override
  String get keyboardTitle => 'Розкладка клавіатури';

  @override
  String get keyboardHeader => 'Виберіть розкладку клавіатури';

  @override
  String get keyboardTestHint => 'Введіть що-небудь, щоб перевірити клавіатуру';

  @override
  String get keyboardDetectTitle => 'Визначити розкладку клавіатури';

  @override
  String get keyboardDetectButton => 'Визначити';

  @override
  String get keyboardVariantLabel => 'Варіант клавіатури:';

  @override
  String get keyboardPressKeyLabel => 'Будь ласка, натисніть одну з цих клавiш:';

  @override
  String get keyboardKeyPresentLabel => 'Чи присутня ця клавіша на клавіатурі?';

  @override
  String get themePageTitle => 'Оберіть зовнішній вигляд';

  @override
  String get themePageHeader => 'Ви завжди можете змінити це пізніше в налаштуваннях зовнішнього вигляду.';

  @override
  String get themeDark => 'Темний';

  @override
  String get themeLight => 'Світлий';

  @override
  String localePageTitle(String DISTRO) {
    return 'Ласкаво просимо до $DISTRO';
  }

  @override
  String get localeHeader => 'Оберіть мову:';

  @override
  String get identityPageTitle => 'Налаштуйте обліковий запис';

  @override
  String get identityAutoLogin => 'Входити автоматично';

  @override
  String get identityRequirePassword => 'Для входу потрібен пароль';

  @override
  String get identityRealNameLabel => 'Ваше ім\'я';

  @override
  String get identityRealNameRequired => 'Потрібно вказати ім\'я';

  @override
  String get identityRealNameTooLong => 'Це ім\'я занадто довге.';

  @override
  String get identityHostnameLabel => 'Iм\'я вашого комп\'ютера';

  @override
  String get identityHostnameInfo => 'Iм\'я, яке використовується для зв\'язку з іншими комп\'ютерами.';

  @override
  String get identityHostnameRequired => 'Потрібно вказати ім\'я комп\'ютера';

  @override
  String get identityHostnameTooLong => 'Ім\'я комп\'ютера занадто довге.';

  @override
  String get identityInvalidHostname => 'Ім\'я комп\'ютера вказано невірно';

  @override
  String get identityUsernameLabel => 'Оберіть ім\'я користувача';

  @override
  String get identityUsernameRequired => 'Потрібно ввести ім\'я користувача';

  @override
  String get identityInvalidUsername => 'Ім\'я користувача вказано невірно';

  @override
  String get identityUsernameInUse => 'Таке ім\'я користувача вже існує.';

  @override
  String get identityUsernameSystemReserved => 'Це ім\'я зарезервоване для використання в системі.';

  @override
  String get identityUsernameTooLong => 'Це ім\'я занадто довге.';

  @override
  String get identityUsernameInvalidChars => 'Це ім\'я містить недопустимі символи.';

  @override
  String get identityPasswordLabel => 'Оберіть пароль';

  @override
  String get identityPasswordRequired => 'Потрібно ввести пароль';

  @override
  String get identityConfirmPasswordLabel => 'Підтвердить пароль';

  @override
  String get identityPasswordMismatch => 'Паролі не збігаються';

  @override
  String get identityPasswordShow => 'Показати';

  @override
  String get identityPasswordHide => 'Сховати';

  @override
  String get identityActiveDirectoryOption => 'Скористатися Active Directory';

  @override
  String get identityActiveDirectoryInfo => 'На наступному кроці ви введете назву домену та інші подробиці.';

  @override
  String get activeDirectoryTitle => 'Налаштування Active Directory';

  @override
  String get activeDirectoryHeader => 'Увійти в Active Directory?';

  @override
  String activeDirectoryInfo(String DISTRO) {
    return '$DISTRO розроблено для безперешкодної інтеграції з Active Directory для полегшення адміністрування.';
  }

  @override
  String get activeDirectoryTestConnection => 'Тестування з\'єднання з доменом';

  @override
  String get activeDirectoryDomainLabel => 'Домен';

  @override
  String get activeDirectoryDomainEmpty => 'Обов\'язково заповнити';

  @override
  String get activeDirectoryDomainTooLong => 'Цей домен занадто довгий';

  @override
  String get activeDirectoryDomainInvalidChars => 'Заборонені символи';

  @override
  String get activeDirectoryDomainStartDot => 'Починається з крапки (.)';

  @override
  String get activeDirectoryDomainEndDot => 'Закінчується крапкою (.)';

  @override
  String get activeDirectoryDomainStartHyphen => 'Починається з тире (-)';

  @override
  String get activeDirectoryDomainEndHyphen => 'Закінчується дефісом (-)';

  @override
  String get activeDirectoryDomainMultipleDots => 'Містить кілька послідовних крапок (.)';

  @override
  String get activeDirectoryDomainNotFound => 'Домен не знайдено';

  @override
  String get activeDirectoryAdminLabel => 'Користувач домену';

  @override
  String get activeDirectoryAdminEmpty => 'Обов\'язково заповнити';

  @override
  String get activeDirectoryAdminInvalidChars => 'Заборонені символи';

  @override
  String get activeDirectoryPasswordLabel => 'Пароль';

  @override
  String get activeDirectoryPasswordEmpty => 'Обов\'язково заповнити';

  @override
  String get activeDirectoryErrorTitle => 'Помилка при налаштовуванні з\'єднання із Active Directory';

  @override
  String get activeDirectoryErrorMessage => 'На жаль, зараз неможливо налаштувати Active Directory. Коли ваша система буде запущена, відвідайте <a href=\"https://help.ubuntu.com/activedirectory\">help.ubuntu.com/activedirectory</a>, щоб отримати допомогу.';

  @override
  String get networkPageTitle => 'З\'єднання з інтернетом';

  @override
  String get networkPageHeader => 'Під\'єднання до інтернету';

  @override
  String get networkPageBody => 'З\'єднання з інтернетом поліпшить встановлення завдяки перевірці сумісності та додатковим пакункам програмного забезпечення.';

  @override
  String get networkWiredOption => 'Використовувати дротове підключення';

  @override
  String get networkWiredNone => 'Дротового підключення не виявлено';

  @override
  String get networkWiredOff => 'Дротове підключення вимкнено';

  @override
  String get networkWiredDisabled => 'Для використання Ethernet на цьому комп\'ютері повинно бути включено дротове підключення';

  @override
  String get networkWiredEnable => 'Увімкнути дротове підключення';

  @override
  String get networkWifiOption => 'Підключитися до Wi-Fi мережі';

  @override
  String get networkWifiOff => 'Бездротове підключення вимкнено';

  @override
  String get networkWifiNone => 'Не знайдено жодного Wi-Fi пристрою';

  @override
  String get networkWifiDisabled => 'Для використання Wi-Fi на цьому комп\'ютері має бути ввімкнений бездротовий зв’язок';

  @override
  String get networkWifiEnable => 'Ввімкнути Wi-Fi';

  @override
  String get networkHiddenWifiOption => 'Підключитися до прихованої Wi-Fi мережі';

  @override
  String get networkHiddenWifiNameLabel => 'Назва мережі';

  @override
  String get networkHiddenWifiNameRequired => 'Необхідно вказати назву мережі';

  @override
  String get networkNoneOption => 'Я не хочу зараз підключатися до Інтернету';

  @override
  String get eulaPageTitle => 'Ліцензійна угода';

  @override
  String get eulaReviewTerms => 'Переглянути умови ліцензії';

  @override
  String get eulaReadAndAcceptTerms => 'Щоб продовжити налаштування цього пристрою, ви повинні прочитати та прийняти умови ліцензійної угоди.';

  @override
  String get eulaAcceptTerms => 'Я прочитав і приймаю ці умови';
}
