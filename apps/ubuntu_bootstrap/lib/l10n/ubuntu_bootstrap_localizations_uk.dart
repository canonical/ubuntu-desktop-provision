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
  String get autoinstallDirectErrorNetworkBody => 'Check the URL is correct, test your internet connection, or try later.';

  @override
  String get autoinstallDirectErrorInvalidUrlTitle => 'Invalid URL';

  @override
  String get autoinstallDirectErrorInvalidUrlBody => 'Check the URL is correct or select a local file.';

  @override
  String get autoinstallDirectErrorInvalidContentTitle => 'Invalid autoinstall file';

  @override
  String get autoinstallDirectErrorInvalidContentBody => 'Check the file or provide a different one.';

  @override
  String get autoinstallDirectErrorFileSystemTitle => 'Autoinstall file is not readable';

  @override
  String get autoinstallDirectErrorFileSystemBody => 'Check your permissions or provide a different file.';

  @override
  String get autoinstallDirectErrorUnkownTitle => 'Unknown error';

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
  String get autoinstallDirectOption => 'Automated with autoinstall file';

  @override
  String get autoinstallDirectDescription => 'For advanced users who have an autoinstall.yaml for consistent and repeatable system setups.';

  @override
  String get autoinstallLandscapeOption => 'Automated with Landscape';

  @override
  String get autoinstallLandscapeDescription => 'For users in organizations that provide an autoinstall file via Landscape.';

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
  String get rstHeader => 'Вимкніть RST для продовженя';

  @override
  String get rstDisable => 'Your computer uses Intel RST (Rapid Storage Technology). You can disable RST either in:';

  @override
  String get rstDisableWindows => 'Windows, if you are using a dual boot setup with Windows';

  @override
  String get rstDisableBios => 'The BIOS settings';

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
  String get choosePassphraseInfoHeader => 'Переконайтеся, що ви зберегли парольну фразу';

  @override
  String get choosePassphraseInfoBody => 'Якщо ви втратите парольну фразу, ви втратите всі свої дані.';

  @override
  String get chooseOptionalPassphraseHeader => 'Create a passphrase (optional)';

  @override
  String get chooseOptionalPassphraseBody => 'A passphrase can help protect your data even if your hardware gets compromised. You will need to enter the passphrase every time you turn on your computer. You will not be able to remove it later';

  @override
  String get chooseOptionalPassphraseInfoHeader => 'Store your passphrase and recovery key somewhere safe';

  @override
  String get chooseOptionalPassphraseInfoBody => 'If you lose your passphrase, you will lose all your data. The passphrase does not replace the recovery key or your user password.';

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
  String get installationTypeEraseInfo => 'Почніть з нуля на вашому обраному диску.';

  @override
  String get installationTypeAdvancedLabel => 'Додаткові можливості...';

  @override
  String get installationTypeAdvancedTitle => 'Додаткові можливості';

  @override
  String get installationTypeExperimental => 'Експериментально';

  @override
  String get installationTypeNone => 'Немає';

  @override
  String get installationTypeNoneInfo => 'Standard file system without encryption.';

  @override
  String get installationTypeNoneSelected => 'Нічого не вибрано';

  @override
  String get installationTypeLVM => 'Використати LVM';

  @override
  String get installationTypeLVMSelected => 'LVM обрано';

  @override
  String get installationTypeLVMEncryption => 'Використовуйте LVM та шифрування';

  @override
  String get installationTypeLVMEncryptionInfo => 'You will need to enter a passphrase every time you turn on your computer. This uses LUKS encryption with LVM.';

  @override
  String get installationTypeLVMEncryptionSelected => 'LVM та шифрування обрано';

  @override
  String get installationTypeEncryptInfo => 'Ключ захисту можна буде вибрати на наступному кроці.';

  @override
  String get installationTypeZFS => 'ЕКСПЕРИМЕНТАЛЬНО: Витерти диск і скористатися ZFS';

  @override
  String get installationTypeZFSEncryption => 'Очистіть диск і використовуйте ZFS з шифруванням';

  @override
  String get installationTypeZFSEncryptionInfo => 'Native encryption with ZFS. You will need to enter a passphrase every time you turn on your computer.';

  @override
  String get installationTypeZFSSelected => 'Обрано ZFS';

  @override
  String get installationTypeZFSEncryptionSelected => 'Вибрано ZFS та шифрування';

  @override
  String get installationTypeTPM => 'ЕКСПЕРИМЕНТАЛЬНО: Увімкнути апаратне шифрування диска';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return 'Це експериментальна функція. Вона може не працювати на вашому обладнанні або у майбутніх випусках $DISTRO. <a href=\"$url\">Прочитайте про шифрування TPM</a> перед тим, як вибрати цю опцію.';
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
    return 'Встановити $product поряд з ними';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return 'Встановити $product поряд з іншими розділами';
  }

  @override
  String installationTypeAlongsideInfo(String product) {
    return 'Документи, музика та інші особисті файли будуть збережені. Ви можете вибрати, яку операційну систему ви бажаєте використовувати при кожному запуску комп\'ютера.';
  }

  @override
  String installationTypeEraseAndInstall(String os, String product) {
    return 'Erase $os and install $product';
  }

  @override
  String installationTypeEraseAndInstallInfo(String os) {
    return 'All files and data from the existing $os installation will be permanently deleted.';
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
  String allocateDiskSpaceInvalidMountPointFormat(Object format, Object mountpoint) {
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
  String get confirmEntryDiskSetup => 'Налаштування диска';

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
  String get confirmTableErased => 'Erased';

  @override
  String get confirmTableUnchanged => 'Unchanged';

  @override
  String confirmTableResized(String oldsize, String newsize) {
    return 'Resized from $oldsize to $newsize';
  }

  @override
  String confirmTableCreatedFormattedMounted(String format, String mountpoint) {
    return 'Created and formatted as $format used for $mountpoint';
  }

  @override
  String confirmTableFormattedMounted(String format, String mountpoint) {
    return 'Formatted as $format used for $mountpoint';
  }

  @override
  String confirmTableMounted(String mountpoint) {
    return 'Used for $mountpoint';
  }

  @override
  String confirmTableFormatted(String format) {
    return 'Formatted as $format';
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
  String get bitlockerInfoTitle => 'BitLocker detected';

  @override
  String get bitlockerInfoDescription => 'One or more partitions are encrypted with BitLocker.';

  @override
  String get bitlockerInfoDisable => 'To install alongside Windows, disable BitLocker in Windows.';

  @override
  String get bitlockerInfoRecovery => 'Windows may request recovery keys on boot after installation.';

  @override
  String bitlockerInfoInstructions(String url) {
    return 'For instructions, visit the <a href=\"$url\">BitLocker guide</a>.';
  }

  @override
  String get bitlockerWarningTitle => 'You may lose all your data without BitLocker recovery keys';

  @override
  String get restartComputer => 'Restart computer';

  @override
  String get restartComputerTitle => 'Restart computer?';

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
  String get recoveryKeyHeader => 'Get a recovery key';

  @override
  String get recoveryKeyInfoHeader => 'You may lose all your data without a recovery key';

  @override
  String recoveryKeyInfoBody(String distro) {
    return 'Get a recovery key as soon as you first log into $distro and store it somewhere safe.';
  }

  @override
  String get recoveryKeyCommand => 'Ви можете отримати доступ до ключа відновлення після встановлення за допомогою такої команди:';

  @override
  String get recoveryKeyStorageAdvice => 'Store the recovery key somewhere safe. Use it to decrypt the disk in case of certain system changes. For example, you may need it if you change the components in your computer or update firmware.';

  @override
  String get recoveryKeyConfirmation => 'I understand I may lose all my data if I don\'t have a recovery key';

  @override
  String landscapeMagicAttachInstructions(Object url) {
    return 'Scan the QR code or enter the code below at <a href=\"https://$url\">$url</a>';
  }

  @override
  String get landscapePageTitle => 'Automated installation';

  @override
  String get landscapeHeader => 'Log in to Landscape';

  @override
  String get landscapeDomainHeader => 'Enter Landscape domain (FQDN)';

  @override
  String get landscapeDomainHintText => 'Landscape domain (FQDN)';

  @override
  String get landscapeDomainInstructions => 'Provide your organization\'s Landscape domain to log in and fetch an autoinstall file. You can get the FQDN from your IT support.';

  @override
  String get landscapeDomainTextField => 'Landscape domain (FQDN)';

  @override
  String get next => 'Next';

  @override
  String get landscapeDomainInvalidDomainWarning => 'Invalid domain, please check or contact your IT support';

  @override
  String get landscapeDomainNoInternetTitleWarning => 'Connect to the internet to continue';

  @override
  String get landscapeDomainNoInternetDescriptionWarning => 'Internet is needed to fetch the autoinstall file from Landscape';

  @override
  String get landscapeCodeExpiredWarning => 'Code expired, please try again';

  @override
  String get landscapeLoginFailedWarning => 'Login failed, please try again';

  @override
  String get landscapeErrorPageTitle => 'Automated install is not available for your account';

  @override
  String get landscapeErrorPageBody => 'Contact your IT support or try a different installation option.';

  @override
  String landscapeErrorPageCode(String code) {
    return 'Error code: $code';
  }

  @override
  String get landscapeConfirmPageSuccessInfoTitle => 'Ubuntu will install with the configuration provided by your organization';

  @override
  String get landscapeConfirmPageSuccessInfoContent => 'You can review the autoinstall file imported from Landscape below.';
}
