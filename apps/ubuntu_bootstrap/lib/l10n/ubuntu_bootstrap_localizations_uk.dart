// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_bootstrap_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class UbuntuBootstrapLocalizationsUk extends UbuntuBootstrapLocalizations {
  UbuntuBootstrapLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get appTitle => 'Встановлювач Ubuntu Desktop';

  @override
  String windowTitle(String RELEASE) {
    return 'Встановити $RELEASE';
  }

  @override
  String get autoinstallDirectTitle => 'Автоматизоване встановлення';

  @override
  String get autoinstallDirectHeader => 'Імпорт файлу автоматичного встановлення';

  @override
  String get autoinstallDirectUrlLabel => 'Ви можете ввести URL-адресу файлу автоматичного встановлення:';

  @override
  String get autoinstallDirectFileLabel => 'Або виберіть локальний файл:';

  @override
  String get autoinstallDirectFileButtonLabel => 'Вибрати файл...';

  @override
  String get autoinstallDirectFileClearButtonLabel => 'Очистити файл';

  @override
  String get autoinstallDirectFilePickerTitle => 'Обрати файл';

  @override
  String get autoinstallDirectFilePickerFilterLabel => 'Файли YAML';

  @override
  String get autoinstallDirectImportButtonLabel => 'Імпорт';

  @override
  String get autoinstallDirectErrorNetworkTitle => 'Файл автоматичного встановлення недоступний';

  @override
  String get autoinstallDirectErrorNetworkBody => 'Перевірте правильність URL-адреси, перевірте інтернет-з\'єднання або спробуйте пізніше.';

  @override
  String get autoinstallDirectErrorInvalidUrlTitle => 'Недійсна URL-адреса';

  @override
  String get autoinstallDirectErrorInvalidUrlBody => 'Перевірте правильність URL-адреси або виберіть локальний файл.';

  @override
  String get autoinstallDirectErrorInvalidContentTitle => 'Неправильний файл автоматичного встановлення';

  @override
  String get autoinstallDirectErrorInvalidContentBody => 'Перевірте файл або надайте інший.';

  @override
  String get autoinstallDirectErrorFileSystemTitle => 'Файл автовстановлення нечитабельний';

  @override
  String get autoinstallDirectErrorFileSystemBody => 'Перевірте права доступу або надайте інший файл.';

  @override
  String get autoinstallDirectErrorUnkownTitle => 'Невідома помилка';

  @override
  String get autoinstallTitle => 'Тип встановлення';

  @override
  String autoinstallHeader(String DISTRO) {
    return 'Як ви хочете встановити $DISTRO?';
  }

  @override
  String get autoinstallInstructions => 'Введіть URL-адресу autoinstall.yaml або шлях до локального файлу:';

  @override
  String get autoinstallInteractiveOption => 'Інтерактивне встановлення';

  @override
  String get autoinstallInteractiveDescription => 'Для користувачів, які хочуть отримати покрокову інструкцію зі встановлення.';

  @override
  String get autoinstallDirectOption => 'Автоматизовано за допомогою файлу автоматичного встановлення';

  @override
  String get autoinstallDirectDescription => 'Для досвідчених користувачів, які мають файл autoinstall.yaml для послідовного та повторюваного налаштування системи.';

  @override
  String get autoinstallLandscapeOption => 'Автоматизовано за допомогою Landscape';

  @override
  String get autoinstallLandscapeDescription => 'Для користувачів в організаціях, які надають файл автоматичного встановлення через Landscape.';

  @override
  String get changeButtonText => 'Змінити';

  @override
  String get quitButtonText => 'Скасувати встановлення';

  @override
  String loadingPageTitle(String DISTRO) {
    return 'Ласкаво просимо в $DISTRO';
  }

  @override
  String loadingHeader(String DISTRO) {
    return 'Підготовка $DISTRO…';
  }

  @override
  String get warningLabel => 'Попередження:';

  @override
  String tryOrInstallTitle(String DISTRO) {
    return 'Спробувати або встановити $DISTRO';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return 'Що ви хочете зробити з $DISTRO?';
  }

  @override
  String get tryOrInstallRepairOption => 'Виправити встановлення';

  @override
  String get tryOrInstallRepairDescription => 'Під час виправлення буде перевстановлено все програмне забезпечення, не торкаючись документів чи налаштувань.';

  @override
  String tryOption(String RELEASE) {
    return 'Спробувати $RELEASE';
  }

  @override
  String tryDescription(String RELEASE) {
    return 'Ви можете спробувати $RELEASE, не роблячи ніяких змін на вашому комп\'ютері.';
  }

  @override
  String installOption(String RELEASE) {
    return 'Встановити $RELEASE';
  }

  @override
  String installDescription(String RELEASE) {
    return 'Встановити $RELEASE поряд (або замість) вашої поточної операційної системи. Це не повинно зайняти занадто багато часу.';
  }

  @override
  String tryOrInstallReleaseNotesLabel(String url) {
    return 'Можливо, ви захочете прочитати <a href=\"$url\">примітки до випуску</a>.';
  }

  @override
  String get rstTitle => 'Вимкнути RST';

  @override
  String get rstHeader => 'Ви повинні вимкнути RST, щоб продовжити встановлення';

  @override
  String get rstDisable => 'Ваш комп\'ютер використовує технологію Intel RST (Rapid Storage Technology). Ви можете вимкнути RST або в:';

  @override
  String get rstDisableWindows => 'Windows, якщо ви використовуєте подвійне завантаження з Windows';

  @override
  String get rstDisableBios => 'Налаштування BIOS';

  @override
  String rstInstructions(String url) {
    return 'Для отримання інструкцій відкрийте цю сторінку на телефоні або іншому пристрої: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'Налаштувати безпечне завантаження';

  @override
  String get configureSecureBootDescription => 'Ви вирішили встановити стороннє програмне забезпечення для драйверів. Для цього необхідно вимкнути безпечне завантаження.\nДля цього потрібно вибрати ключ безпеки зараз, та ввести його після перезавантаженні системи.';

  @override
  String get configureSecureBootOption => 'Налаштувати безпечне завантаження';

  @override
  String get chooseSecurityKey => 'Оберіть ключ безпеки';

  @override
  String get confirmSecurityKey => 'Підтвердить ключ безпеки';

  @override
  String get dontInstallDriverSoftwareNow => 'Наразі не встановлювати програмне забезпечення драйвера';

  @override
  String get dontInstallDriverSoftwareNowDescription => 'Ви можете встановити його пізніше з розділу \"Програми та оновлення\".';

  @override
  String get configureSecureBootSecurityKeyRequired => 'Потрібен ключ безпеки';

  @override
  String get secureBootSecurityKeysDontMatch => 'Не збігаються ключі захисту';

  @override
  String get showSecurityKey => 'Показати ключ безпеки';

  @override
  String get hideSecurityKey => 'Сховати';

  @override
  String get updatesOtherSoftwarePageTitle => 'Оновлення та інше програмне забезпечення';

  @override
  String get updatesOtherSoftwarePageDescription => 'Які програми ви хотіли б встановити для початку?';

  @override
  String get codecsAndDriversPageTitle => 'Оптимізуйте свій комп\'ютер';

  @override
  String get codecsAndDriversPageDescription => 'Встановити рекомендоване власницьке програмне забезпечення?';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return '$DISTRO усталено постачається без власницького програмного забезпечення. Встановлення додаткового програмного забезпечення може підвищити швидкодію вашого комп\'ютера.';
  }

  @override
  String get codecsAndDriversNvidiaNote => 'Виявлено відеокарту NVIDIA';

  @override
  String get codecsAndDriversNvidiaBody => 'Для найкращої швидкодії відеокарт NVIDIA наполегливо радимо встановити додаткові драйвери.';

  @override
  String get fullInstallationTitle => 'Повна установка';

  @override
  String get fullInstallationSubtitle => 'Зручний для роботи в автономному режимі набір офісних інструментів, утиліт, веб-браузера та ігор.';

  @override
  String get minimalInstallationTitle => 'Мінімальна установка';

  @override
  String get minimalInstallationSubtitle => 'Тільки найнеобхідніше, веб-браузер та базові утиліти.';

  @override
  String get otherOptions => 'Інші параметри';

  @override
  String get installThirdPartyTitle => 'Встановити стороннє програмне забезпечення для графічного та Wi-Fi обладнання, а також додаткових медіа-форматів';

  @override
  String get installThirdPartySubtitle => 'На це програмне забезпечення поширюються ліцензійні умови, що додаються до його документації. Деякі з них є запатентованими.';

  @override
  String get installDriversTitle => 'Встановити стороннє програмне забезпечення для графіки та обладнання Wi-Fi';

  @override
  String get installDriversSubtitle => 'Включаючи, але не обмежуючись драйверами NVIDIA та подібними';

  @override
  String get installCodecsTitle => 'Встановити підтримку додаткових медіа-форматів';

  @override
  String get installCodecsSubtitle => 'Включаючи, але не обмежуючись MP3, MP4, MOV та подібними';

  @override
  String get batteryWarning => 'Комп\'ютер не підключено до джерела живлення.';

  @override
  String get offlineWarning => 'Ви зараз не в мережі';

  @override
  String get choosePassphraseTitle => 'Парольна фраза диска';

  @override
  String get choosePassphraseHeader => 'Створити парольну фразу';

  @override
  String get choosePassphraseBody => 'Щоб зашифрувати ваші файли, вам потрібна парольна фраза. Вам буде запропоновано ввести парольну фразу щоразу, коли ви вмикатимете комп\'ютер.';

  @override
  String get choosePassphraseHint => 'Вибрати парольну фразу';

  @override
  String get choosePassphraseConfirmHint => 'Підтвердити парольну фразу';

  @override
  String get choosePassphraseRequired => 'Необхідна парольна фраза';

  @override
  String get choosePassphraseMismatch => 'Парольні фрази не збігаються';

  @override
  String get choosePassphraseInfoHeader => 'Зберігайте свою парольну фразу в безпечному місці';

  @override
  String get choosePassphraseInfoBody => 'Якщо ви втратите парольну фразу, ви втратите всі свої дані.';

  @override
  String get chooseOptionalPassphraseHeader => 'Створити парольну фразу (необов\'язково)';

  @override
  String get chooseOptionalPassphraseBody => 'Парольна фраза може допомогти захистити ваші дані, навіть якщо ваше обладнання буде скомпрометовано. Вам потрібно буде вводити парольну фразу щоразу, коли ви вмикатимете комп\'ютер. Ви не зможете вилучити її пізніше';

  @override
  String get chooseOptionalPassphraseInfoHeader => 'Зберігайте пароль і ключ відновлення в безпечному місці';

  @override
  String get chooseOptionalPassphraseInfoBody => 'Якщо ви втратите парольну фразу, ви втратите всі свої дані. Парольна фраза не замінює ключ відновлення або пароль користувача.';

  @override
  String get createPassphrase => 'Створіть парольну фразу';

  @override
  String get confirmPassphrase => 'Підтвердьте парольну фразу';

  @override
  String get installationTypeTitle => 'Тип встановлення';

  @override
  String installationTypeHeader(String DISTRO) {
    return 'Як ви бажаєте встановити $DISTRO?';
  }

  @override
  String installationTypeOSDetected(String os) {
    return 'На цьому комп\'ютері зараз встановлено $os. Що б ви хотіли зробити?';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return 'На цьому комп\'ютері зараз знаходяться $os1 та $os2. Що ви хочете зробити?';
  }

  @override
  String get installationTypeMultiOSDetected => 'На Вашому комп\'ютері встановлено декілька операційних систем. Що Ви бажаєте зробити?';

  @override
  String get installationTypeNoOSDetected => 'На Вашому комп\'ютері не виявлено жодної операційної системи. Що Ви бажаєте зробити?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'Стерти диск і встановити $DISTRO';
  }

  @override
  String get installationTypeEraseInfo => 'Всі дані та розділи на диску будуть стерті, включно з операційними системами.';

  @override
  String get installationTypeAdvancedLabel => 'Показати додаткові параметри...';

  @override
  String get installationTypeAdvancedTitle => 'Шифрування та файлова система';

  @override
  String get installationTypeExperimental => 'Експериментально';

  @override
  String get installationTypeNone => 'Немає шифрування';

  @override
  String get installationTypeNoneInfo => 'Стандартна файлова система без шифрування.';

  @override
  String get installationTypeNoneSelected => 'Нічого не вибрано';

  @override
  String get installationTypeLVM => 'Використовувати LVM без шифрування';

  @override
  String get installationTypeLVMSelected => 'LVM обрано';

  @override
  String get installationTypeLVMEncryption => 'Шифрування за допомогою парольної фрази';

  @override
  String get installationTypeLVMEncryptionInfo => 'Вам потрібно буде вводити парольну фразу щоразу, коли ви вмикаєте комп\'ютер. Для цього використовується шифрування LUKS за допомогою LVM.';

  @override
  String get installationTypeLVMEncryptionSelected => 'LVM та шифрування обрано';

  @override
  String get installationTypeEncryptInfo => 'Ключ захисту можна буде вибрати на наступному кроці.';

  @override
  String get installationTypeZFS => 'Використовувати ZFS без шифрування';

  @override
  String get installationTypeZFSEncryption => 'Шифрування за допомогою ключової фрази за допомогою ZFS';

  @override
  String get installationTypeZFSEncryptionInfo => 'Нативне шифрування за допомогою ZFS. Вам потрібно буде вводити парольну фразу щоразу, коли ви вмикаєте комп\'ютер.';

  @override
  String get installationTypeZFSSelected => 'Обрано ZFS';

  @override
  String get installationTypeZFSEncryptionSelected => 'Вибрано ZFS та шифрування';

  @override
  String get installationTypeTPM => 'Використовувати апаратне шифрування';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return '<a href=\"$url\">Прочитайте про шифрування TPM</a>, перш ніж вибрати цей параметр. Це може не працювати на вашому обладнанні або у майбутніх випусках $DISTRO.';
  }

  @override
  String get installationTypeTPMSelected => 'TPM обрано';

  @override
  String installationTypeReinstall(String os) {
    return 'Видалити $os і встановити заново';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">Попередження:</font> це призведе до видалення всіх ваших $os програм, документів, фотографій, музики та будь-яких інших файлів.';
  }

  @override
  String installationTypeAlongside(String product, String os) {
    return 'Встановити $product поряд з $os';
  }

  @override
  String installationTypeAlongsideDual(String product, String os1, String os2) {
    return 'Встановити $product поряд з $os1 та $os2';
  }

  @override
  String installationTypeAlongsideMulti(String product) {
    return 'Встановити $product разом з наявними операційними системами';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return 'Встановити $product поряд з іншими розділами';
  }

  @override
  String installationTypeAlongsideInfo(String product) {
    return 'Вибрати розділ для зміни розміру та створення простору для $product. Ви можете вибрати операційну систему під час завантаження.';
  }

  @override
  String installationTypeEraseAndInstall(String os, String product) {
    return 'Стерти $os і встановити $product';
  }

  @override
  String installationTypeEraseAndInstallInfo(String os) {
    return 'Усі файли та дані з наявної установки $os буде видалено назавжди.';
  }

  @override
  String get installationTypeManual => 'Щось інше';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'Для досвідчених користувачів, які шукають індивідуальні налаштування дисків.';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'Стерти диск і встановити $DISTRO';
  }

  @override
  String get selectGuidedStorageInfo => 'Почніть з нуля на вашому обраному диску.';

  @override
  String get selectGuidedStorageDriveDropdownLabel => 'Виберіть диск:';

  @override
  String get selectGuidedStoragePartitionDropdownLabel => 'Виберіть розділ:';

  @override
  String get selectGuidedStorageInfoLabel => 'Буде використано весь диск:';

  @override
  String get selectGuidedStorageInstallNow => 'Встановити зараз';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return 'Виберіть, куди встановити $DISTRO';
  }

  @override
  String get installAlongsideSpaceDivider => 'Розподіліть місце на диску, перетягнувши розділювач:';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return '$num менших розділів приховано, скористайтеся <a href=\"$url\">розширеним інструментом розбиття на розділи</a> для більшого контролю';
  }

  @override
  String get installAlongsideResizePartition => 'Змінити розмір розділу';

  @override
  String get installAlongsideAllocateSpace => 'Виділити простір';

  @override
  String get installAlongsideFiles => 'Файли';

  @override
  String get installAlongsidePartition => 'Розділ:';

  @override
  String get installAlongsideSize => 'Розмір:';

  @override
  String get installAlongsideAvailable => 'Вільно:';

  @override
  String get allocateDiskSpace => 'Виділити дисковий простір';

  @override
  String get allocateDiskSpaceInvalidMountPointSlash => 'Точки монтування повинні починатися з \"/\"';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace => 'Точки монтування не можуть містити пробілів';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(String mountpoint, String format) {
    return '$format не є підтримуваною файловою системою для $mountpoint';
  }

  @override
  String get diskHeadersDevice => 'Пристрій';

  @override
  String get diskHeadersType => 'Тип';

  @override
  String get diskHeadersMountPoint => 'Точка монтування';

  @override
  String get diskHeadersSize => 'Розмір';

  @override
  String get diskHeadersUsed => 'Використано';

  @override
  String get diskHeadersSystem => 'Система';

  @override
  String get diskHeadersFormat => 'Формат';

  @override
  String get freeDiskSpace => 'Вільний простір';

  @override
  String get newPartitionTable => 'Нова таблиця розділів';

  @override
  String get newPartitionTableConfirmationTitle => 'Новий порожній розділ';

  @override
  String get newPartitionTableConfirmationMessage => 'Створення нової таблиці розділів на всьому пристрої призведе до вилучення всіх поточних розділів. Цю операцію можна скасувати за потреби.';

  @override
  String get tooManyPrimaryPartitions => 'Забагато первинних розділів';

  @override
  String get partitionLimitReached => 'Ліміт досягнуто';

  @override
  String get bootLoaderDevice => 'Пристрій для встановлення завантажувача';

  @override
  String get partitionCreateTitle => 'Створити розділ';

  @override
  String get partitionEditTitle => 'Редагувати розділ';

  @override
  String get partitionSizeLabel => 'Розмір:';

  @override
  String get partitionTypeLabel => 'Тип нового розділу:';

  @override
  String get partitionTypePrimary => 'Основний';

  @override
  String get partitionTypeLogical => 'Додатковий';

  @override
  String get partitionLocationLabel => 'Розташування нового розділу:';

  @override
  String get partitionLocationBeginning => 'Початок цього простору';

  @override
  String get partitionLocationEnd => 'Кінець цього простору';

  @override
  String get partitionFormatLabel => 'Використовується як:';

  @override
  String get partitionFormatNone => 'Залишити без форматування';

  @override
  String partitionFormatKeep(String format) {
    return 'Залиште у форматі $format';
  }

  @override
  String get partitionErase => 'Відформатувати розділ';

  @override
  String get partitionMountPointLabel => 'Точка монтування:';

  @override
  String get confirmPageTitle => 'Записати зміни на диск';

  @override
  String get confirmHeader => 'Переглянути свій вибір';

  @override
  String get confirmDiskEncryptionLVM => 'LUKS (LVM)';

  @override
  String get confirmDiskEncryptionZFS => 'LUKS (ZFS)';

  @override
  String get confirmDiskEncryptionTPM => 'TPM';

  @override
  String get confirmDiskEncryptionNone => 'Нічого';

  @override
  String get confirmDevicesTitle => 'Пристрої';

  @override
  String get confirmEntryApplications => 'Застосунки';

  @override
  String get confirmEntryDiskSetup => 'Тип встановлення';

  @override
  String get confirmEntryDiskEncryption => 'Шифрування диска';

  @override
  String get confirmEntryInstallationDisk => 'Інсталяційний диск';

  @override
  String get confirmEntryProprietarySoftware => 'Власницьке програмне забезпечення';

  @override
  String get confirmSectionGeneralTitle => 'Загальне';

  @override
  String get confirmSectionSecurityAndMoreTitle => 'Безпека та інше';

  @override
  String get confirmPartitionsTitle => 'Розділи';

  @override
  String get confirmPartitionTables => 'Змінено таблиці розділів наступних пристроїв:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmProprietarySoftwareCodecs => 'Кодеки';

  @override
  String get confirmProprietarySoftwareCodecsDrivers => 'Кодеки та драйвери';

  @override
  String get confirmProprietarySoftwareDrivers => 'Драйвери';

  @override
  String get confirmInstallButton => 'Почати встановлення';

  @override
  String get confirmTableErased => 'Стерто';

  @override
  String get confirmTableUnchanged => 'Не змінено';

  @override
  String confirmTableResized(String oldsize, String newsize) {
    return 'Змінено розмір з $oldsize на $newsize';
  }

  @override
  String confirmTableCreatedFormattedMounted(String format, String mountpoint) {
    return 'Створено та відформатовано як $format, що використовується для $mountpoint';
  }

  @override
  String confirmTableFormattedMounted(String format, String mountpoint) {
    return 'Відформатовано як $format, що використовується для $mountpoint';
  }

  @override
  String confirmTableMounted(String mountpoint) {
    return 'Використано для $mountpoint';
  }

  @override
  String confirmTableFormatted(String format) {
    return 'Відформатовано як $format';
  }

  @override
  String get installationCompleteTitle => 'Встановлення завершено';

  @override
  String readyToUse(String system) {
    return '$system встановлена та готова до користування';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system** було скопійовано на диск';
  }

  @override
  String restartInto(String system) {
    return 'Перезавантажитися в $system';
  }

  @override
  String get restartWarningBody => 'Перезапустіть, щоб завершити встановлення або продовжити тестування.\nБудь-які внесені вами зміни не будуть збережені.';

  @override
  String get rebootToConfigureWarning => 'Щоб продовжити процес встановлення, потрібно перезапустити комп\'ютер.';

  @override
  String get shutdown => 'Вимкнути';

  @override
  String get restartNow => 'Перезапустити зараз';

  @override
  String get continueTesting => 'Продовжити ознайомлення';

  @override
  String get bitlockerInfoTitle => 'Виявлено BitLocker';

  @override
  String get bitlockerInfoDescription => 'Один або декілька розділів зашифровано за допомогою BitLocker.';

  @override
  String get bitlockerInfoDisable => 'Щоб встановити разом з Windows, вимкніть BitLocker у Windows.';

  @override
  String get bitlockerInfoRecovery => 'Windows може запитувати ключі відновлення під час завантаження після встановлення.';

  @override
  String bitlockerInfoInstructions(String url) {
    return 'Для отримання інструкцій відвідайте <a href=\"$url\">Довідник BitLocker</a>.';
  }

  @override
  String get bitlockerWarningTitle => 'Без ключів відновлення BitLocker ви можете втратити всі свої дані';

  @override
  String get restartComputer => 'Перезапустити комп\'ютер';

  @override
  String get restartComputerTitle => 'Перезапустити комп\'ютер?';

  @override
  String get restartIntoWindows => 'Перезапустити у Windows';

  @override
  String get restartIntoWindowsTitle => 'Перезапустити у Windows?';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return 'Ви впевнені, що хочете перезапустити комп\'ютер? Вам потрібно буде перезапустити встановлення $DISTRO пізніше, щоб завершити встановлення $DISTRO.';
  }

  @override
  String installationSlidesTitle(String RELEASE) {
    return 'Ласкаво просимо до $RELEASE';
  }

  @override
  String get installationSlidesAvailable => 'Доступно:';

  @override
  String get installationSlidesIncluded => 'Включено:';

  @override
  String get installationSlidesWelcomeTitle => 'Швидка, вільна та повна нових функцій';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return 'Найновіша версія $DISTRO робить обчислення простішими, ніж будь-коли.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'Незалежно від того, чи ви розробник, творець, геймер або адміністратор, у $RELEASE ви знайдете нові інструменти для поліпшення продуктивності та зручності роботи.';
  }

  @override
  String get installationSlidesSoftwareTitle => 'Усі необхідні вам застосунки';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'Встановлюйте, оновлюйте усі свої застосунки та керуйте ними в Ubuntu Software, включно з тисячами застосунків зі Snap Store та архіву $DISTRO.';
  }

  @override
  String get installationSlidesDevelopmentTitle => 'Розробляйте з найкращим відкритим кодом';

  @override
  String installationSlidesDevelopmentBody(String DISTRO) {
    return '$DISTRO — ідеальна робоча станція для розробки застосунків та веб, науки про дані та AI/ML, а також для devops та адміністрування. Кожен випуск $DISTRO містить найновіші набори інструментів та підтримує усі основні IDE.';
  }

  @override
  String get installationSlidesCreativityTitle => 'Розширте творчі можливості';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return 'Якщо ви аніматор, дизайнер, відеоредактор або розробник ігор, ви можете з легкістю перенести свої робочі процеси в $DISTRO з підтримкою програмного забезпечення з відкритим кодом та галузевих стандартів.';
  }

  @override
  String get installationSlidesGamingTitle => 'Чудово підходить для ігор';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return '$DISTRO підтримує найновіші драйвери NVIDIA та Mesa для поліпшення швидкодії та сумісності. Тисячі ігор для Windows чудово запускаються на $DISTRO через такі застосунки як Steam без додаткових налаштувань.';
  }

  @override
  String get installationSlidesSecurityTitle => 'Приватно та безпечно';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return '$DISTRO надає всі інструменти, необхідні для збереження приватності й безпеки в інтернеті. Вбудований брандмауер і підтримка VPN, а також безліч застосунків, орієнтованих на приватність, гарантують повний контроль над вашими даними.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return 'Усі випуски $DISTRO LTS постачаються матимуть п\'ять років виправлень безпеки, які можна продовжити до десяти років за допомогою передплати Ubuntu Pro.';
  }

  @override
  String get installationSlidesProductivityTitle => 'Підвищуйте свою продуктивність';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return '$DISTRO Desktop містить LibreOffice — набір застосунків з відкритим кодом для роботи з документами, електронними таблицями та презентаціями, сумісними з Microsoft Office. Також доступні популярні інструменти для спільної роботи.';
  }

  @override
  String get installationSlidesAccessibilityTitle => 'Доступна для всіх';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return 'В основі філософії $DISTRO лежить віра в те, що комп\'ютеризація призначена для всіх. Завдяки вдосконаленим інструментам доступності та опціям зміни мови, кольорів і розміру тексту, $DISTRO полегшує роботу з комп\'ютером — ким би ви не були та де б не перебували.';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'Зчитувач з екрана Orca';

  @override
  String get installationSlidesAccessibilityLanguages => 'Мовна підтримка';

  @override
  String get installationSlidesSupportTitle => 'Довідка та підтримка';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return 'Офіційна документація $DISTRO доступна як онлайн, так і за допомогою піктограми Довідка у доку.';
  }

  @override
  String get installationSlidesSupportCommunity => 'Ask Ubuntu охоплює широкий спектр питань і відповідей, а Ubuntu Discourse містить посібники та обговорення для нових і досвідчених користувачів.';

  @override
  String get installationSlidesSupportEnterprise => 'Для корпоративних користувачів Canonical надає комерційну підтримку, щоб полегшити встановлення та безпечне керування Ubuntu на робочому місці.';

  @override
  String get installationSlidesSupportResources => 'Корисні ресурси:';

  @override
  String get installationSlidesSupportDocumentation => 'Офіційна документація';

  @override
  String get installationSlidesSupportUbuntuPro => 'Підтримка корпоративного рівня 24/7 з Ubuntu Pro';

  @override
  String get copyingFiles => 'Копіювання файлів…';

  @override
  String get installingSystem => 'Встановлення системи…';

  @override
  String get configuringSystem => 'Налаштування системи…';

  @override
  String get installationFailed => 'Встановлення не вдалося';

  @override
  String get notEnoughDiskSpaceTitle => 'Недостатньо простору на диску';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return 'Недостатньо простору на диску, щоб установити $DISTRO';
  }

  @override
  String notEnoughDiskSpaceBody(String DISTRO) {
    return 'На вибраному диску недостатньо місця для встановлення $DISTRO. Завершіть роботу програми встановлення, щоб звільнити місце, або виберіть інший диск.';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'Доступно:';

  @override
  String get notEnoughDiskSpaceRequired => 'Потрібно:';

  @override
  String get refreshPageTitle => 'Доступне оновлення';

  @override
  String get refreshHeader => 'Доступне оновлення встановлювача';

  @override
  String get refreshUpdateNow => 'Оновити зараз';

  @override
  String get refreshInfo => 'Оновіть до останньої версії для підвищення надійності та розширення можливостей.';

  @override
  String get refreshReady => 'Оновлення готове';

  @override
  String refreshCurrent(String snap, String version) {
    return 'Поточна версія $snap — $version.';
  }

  @override
  String refreshInstall(String version) {
    return 'Оновлення до версії $version';
  }

  @override
  String refreshUpToDate(String version) {
    return 'Поточна версія $version актуальна.';
  }

  @override
  String refreshUpdating(String snap) {
    return 'Оновлення $snap...';
  }

  @override
  String get refreshRestart => 'Будь ласка, закрийте встановлювач і перезапустіть, щоб продовжити';

  @override
  String get refreshCloseLabel => 'Закрити встановлювач';

  @override
  String refreshSnapPrerequisites(String snap) {
    return 'Забезпечення передумов $snap...';
  }

  @override
  String refreshSnapRefresh(String snap) {
    return 'Оновлення $snap...';
  }

  @override
  String refreshSnapCheckRerefresh(String snap) {
    return 'Перевірка повторного оновлення $snap...';
  }

  @override
  String refreshSnapPrepare(String snap) {
    return 'Готуємо $snap...';
  }

  @override
  String refreshSnapDownload(String snap) {
    return 'Завантаження $snap...';
  }

  @override
  String refreshSnapValidate(String snap) {
    return 'Підтвердження $snap...';
  }

  @override
  String refreshSnapMount(String snap) {
    return 'Монтування $snap...';
  }

  @override
  String refreshSnapStopServices(String snap) {
    return 'Зупинка служб $snap...';
  }

  @override
  String refreshSnapRemoveAliases(String snap) {
    return 'Вилучення псевдонімів $snap...';
  }

  @override
  String refreshSnapUnlink(String snap) {
    return 'Від\'єднання $snap...';
  }

  @override
  String refreshSnapUpdateAssets(String snap) {
    return 'Оновлення активів $snap...';
  }

  @override
  String refreshSnapUpdateKernelCommandLine(String snap) {
    return 'Оновлення командного рядка ядра $snap...';
  }

  @override
  String refreshSnapCopyData(String snap) {
    return 'Копіювання даних $snap...';
  }

  @override
  String refreshSnapSetupProfiles(String snap) {
    return 'Налаштування $snap профілів безпеки...';
  }

  @override
  String refreshSnapLink(String snap) {
    return 'Зв\'язування $snap...';
  }

  @override
  String refreshSnapAutoConnect(String snap) {
    return 'З\'єднання штепсельних роз\'ємів і гнізд $snap...';
  }

  @override
  String refreshSnapSetAutoAliases(String snap) {
    return 'Налаштування автоматичних псевдонімів $snap...';
  }

  @override
  String refreshSnapSetupAliases(String snap) {
    return 'Налаштування псевдонімів $snap...';
  }

  @override
  String refreshSnapStartServices(String snap) {
    return 'Запуск служб $snap...';
  }

  @override
  String refreshSnapCleanup(String snap) {
    return 'Очищення $snap...';
  }

  @override
  String get recoveryKeyTitle => 'Ключ відновлення TPM';

  @override
  String get recoveryKeyHeader => 'Отримати ключ відновлення';

  @override
  String get recoveryKeyInfoHeader => 'Без ключа відновлення ви можете втратити всі свої дані';

  @override
  String get recoveryKeyTextFieldLabel => 'Recovery key';

  @override
  String get recoveryKeyStorageAdvice => 'Зберігайте ключ відновлення в надійному місці. Використовуйте його, щоб розшифрувати диск у разі певних змін у системі. Наприклад, він може знадобитися, якщо ви заміните компоненти в комп\'ютері або оновите прошивку.';

  @override
  String get recoveryKeyConfirmation => 'Я розумію, що можу втратити всі свої дані, якщо у мене немає ключа відновлення';

  @override
  String get recoveryKeyLinkLabel => 'Докладніше';

  @override
  String get recoveryKeySaveToFileLabel => 'Save to file';

  @override
  String get recoveryKeyShowQrCodeLabel => 'Show QR code';

  @override
  String recoveryKeyQrDialogTitle(String DISTRO) {
    return '$DISTRO Desktop - Recovery key';
  }

  @override
  String get recoveryKeyQrDialogBody => 'Scan the QR code to copy the recovery key and save it somewhere safe and accessible, such as a password manager. You can also take a photo for later use.';

  @override
  String landscapeMagicAttachInstructions(String url) {
    return 'Скануйте QR-код або введіть код нижче за посиланням <a href=\"https://$url\">$url</a>';
  }

  @override
  String get landscapePageTitle => 'Автоматизоване встановлення';

  @override
  String get landscapeHeader => 'Увійдіть до Landscape';

  @override
  String get landscapeDomainHeader => 'Введіть домен Landscape (FQDN)';

  @override
  String get landscapeDomainHintText => 'Домен Landscape (FQDN)';

  @override
  String get landscapeDomainInstructions => 'Вкажіть домен Landscape вашої організації для входу та отримання файлу автоматичного встановлення. Ви можете отримати FQDN від своєї ІТ-підтримки.';

  @override
  String get landscapeDomainTextField => 'Домен Landscape (FQDN)';

  @override
  String get next => 'Далі';

  @override
  String get landscapeDomainInvalidDomainWarning => 'Недійсний домен, перевірте або зверніться до служби ІТ-підтримки';

  @override
  String get landscapeDomainNoInternetTitleWarning => 'Щоб продовжити, під\'єднайтеся до інтернету';

  @override
  String get landscapeDomainNoInternetDescriptionWarning => 'Щоб отримати файл автоматичного встановлення з Landscape потрібен доступ до інтернету';

  @override
  String get landscapeCodeExpiredWarning => 'Термін дії коду закінчився, спробуйте ще раз';

  @override
  String get landscapeLoginFailedWarning => 'Не вдалося ввійти, повторіть спробу';

  @override
  String get landscapeErrorPageTitle => 'Автоматичне встановлення недоступне для вашого облікового запису';

  @override
  String get landscapeErrorPageBody => 'Зверніться до служби ІТ-підтримки або спробуйте інший варіант встановлення.';

  @override
  String landscapeErrorPageCode(String code) {
    return 'Код помилки: $code';
  }

  @override
  String get landscapeConfirmPageSuccessInfoTitle => 'Ubuntu буде встановлено з конфігурацією, наданою вашою організацією';

  @override
  String get landscapeConfirmPageSuccessInfoContent => 'Нижче ви можете переглянути файл автоматичного встановлення, імпортований з Landscape.';
}
