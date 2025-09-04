// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_bootstrap_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class UbuntuBootstrapLocalizationsRu extends UbuntuBootstrapLocalizations {
  UbuntuBootstrapLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'Установщик Ubuntu Desktop';

  @override
  String windowTitle(String RELEASE) {
    return 'Установить $RELEASE';
  }

  @override
  String get autoinstallDirectTitle => 'Автоматизированая установка';

  @override
  String get autoinstallDirectHeader => 'Импортировать файл autoinstall';

  @override
  String get autoinstallDirectUrlLabel =>
      'Вы можете ввести URL-адрес файла autoinstall:';

  @override
  String get autoinstallDirectFileLabel => 'Или выбрать локальный файл:';

  @override
  String get autoinstallDirectFileButtonLabel => 'Выбрать файл…';

  @override
  String get autoinstallDirectFileClearButtonLabel => 'Очистить файл';

  @override
  String get autoinstallDirectFilePickerTitle => 'Выберите файл';

  @override
  String get autoinstallDirectFilePickerFilterLabel => 'Файлы YAML';

  @override
  String get autoinstallDirectImportButtonLabel => 'Импортировать';

  @override
  String get autoinstallDirectErrorNetworkTitle =>
      'Файл автоматической установки недоступен';

  @override
  String get autoinstallDirectErrorNetworkBody =>
      'Проверьте правильность URL-адреса, проверьте подключение к Интернету или попробуйте позже.';

  @override
  String get autoinstallDirectErrorInvalidUrlTitle => 'Недопустимый URL';

  @override
  String get autoinstallDirectErrorInvalidUrlBody =>
      'Проверьте правильность URL-адреса или выберите локальный файл.';

  @override
  String get autoinstallDirectErrorInvalidContentTitle =>
      'Неверный файл автоустановки';

  @override
  String get autoinstallDirectErrorInvalidContentBody =>
      'Проверьте файл или предоставьте другой.';

  @override
  String get autoinstallDirectErrorFileSystemTitle =>
      'Файл автоустановки не доступен для чтения';

  @override
  String get autoinstallDirectErrorFileSystemBody =>
      'Проверьте права доступа или предоставьте другой файл.';

  @override
  String get autoinstallDirectErrorUnkownTitle => 'Неизвестная ошибка';

  @override
  String get autoinstallTitle => 'Тип установки';

  @override
  String autoinstallHeader(String DISTRO) {
    return 'Как Вы хотели бы установить $DISTRO?';
  }

  @override
  String get autoinstallInstructions =>
      'Введите URL-адрес autoinstall.yaml или путь к локальному файлу:';

  @override
  String get autoinstallInteractiveOption => 'Интерактивная установка';

  @override
  String get autoinstallInteractiveDescription =>
      'Для пользователей, которые хотят получить пошаговое руководство по установке.';

  @override
  String get autoinstallDirectOption =>
      'Автоматизировано с помощью файла автоустановки';

  @override
  String get autoinstallDirectDescription =>
      'Для опытных пользователей, у которых есть autoinstall.yaml для последовательной и повторяемой настройки системы.';

  @override
  String get autoinstallLandscapeOption => 'Автоматизированный с Landscape';

  @override
  String get autoinstallLandscapeDescription =>
      'Для пользователей организаций, которые предоставляют файл автоматической установки через Landscape.';

  @override
  String get changeButtonText => 'Изменить';

  @override
  String get quitButtonText => 'Отменить установку';

  @override
  String loadingPageTitle(String DISTRO) {
    return 'Добро пожаловать в $DISTRO';
  }

  @override
  String loadingHeader(String DISTRO) {
    return 'Подготовка $DISTRO…';
  }

  @override
  String get warningLabel => 'Предупреждение:';

  @override
  String tryOrInstallTitle(String DISTRO) {
    return 'Попробовать или установить $DISTRO';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return 'Что вы хотите сделать с $DISTRO?';
  }

  @override
  String get tryOrInstallRepairOption => 'Исправить установку';

  @override
  String get tryOrInstallRepairDescription =>
      'Исправление повторно устанавливает все установленные программы, не трогая документы и настройки.';

  @override
  String tryOption(String RELEASE) {
    return 'Попробовать $RELEASE';
  }

  @override
  String tryDescription(String RELEASE) {
    return 'Вы можете попробовать $RELEASE без каких-либо изменений на вашем компьютере.';
  }

  @override
  String installOption(String RELEASE) {
    return 'Установить $RELEASE';
  }

  @override
  String installDescription(String RELEASE) {
    return 'Установить $RELEASE рядом (или вместо) вашей текущей операционной системы. Это не займёт много времени.';
  }

  @override
  String tryOrInstallReleaseNotesLabel(String url) {
    return 'Вы также можете прочитать <a href=\"$url\">заметки о выпуске</a>.';
  }

  @override
  String get rstTitle => 'Обнаружен RST';

  @override
  String get rstHeader => 'Для продолжения установки отключите RST';

  @override
  String get rstDisable =>
      'На вашем компьютере используется технология Intel RST (технология быстрого хранения). Вы можете отключить RST в:';

  @override
  String get rstDisableWindows =>
      'Windows, если у вас установлено несколько операционных систем, включая Windows';

  @override
  String get rstDisableBios => 'Настройках BIOS';

  @override
  String rstInstructions(String url) {
    return 'Для получения справки отсканируйте QR-код на другом устройстве или посетите: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'Настройте Secure Boot';

  @override
  String get configureSecureBootDescription =>
      'Вы выбрали установку стороннего драйвера. Для этого необходимо отключить Secure Boot.\nДля этого вам нужно сейчас выбрать ключ безопасности и ввести его при перезагрузке системы.';

  @override
  String get configureSecureBootOption => 'Настроить Secure Boot';

  @override
  String get chooseSecurityKey => 'Выберите ключ безопасности';

  @override
  String get confirmSecurityKey => 'Подтвердите ключ безопасности';

  @override
  String get dontInstallDriverSoftwareNow => 'Пока не устанавливать драйверы';

  @override
  String get dontInstallDriverSoftwareNowDescription =>
      'Вы можете установить их позже в приложении «Программы и обновления».';

  @override
  String get configureSecureBootSecurityKeyRequired =>
      'Требуется ключ безопасности';

  @override
  String get secureBootSecurityKeysDontMatch =>
      'Ключи безопасности не совпадают';

  @override
  String get showSecurityKey => 'Показать';

  @override
  String get hideSecurityKey => 'Скрыть';

  @override
  String get updatesOtherSoftwarePageTitle => 'Приложения';

  @override
  String get updatesOtherSoftwarePageDescription =>
      'Какие приложения вы хотели бы установить для начала?';

  @override
  String get codecsAndDriversPageTitle => 'Оптимизируйте свой компьютер';

  @override
  String get codecsAndDriversPageDescription =>
      'Установить рекомендованное проприетарное ПО?';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return 'По умолчанию $DISTRO поставляется без проприетарного программного обеспечения. Установка дополнительного ПО может повысить производительность компьютера.';
  }

  @override
  String get codecsAndDriversNvidiaNote => 'Обнаружена видеокарта NVIDIA';

  @override
  String get codecsAndDriversNvidiaBody =>
      'Для достижения максимальной производительности графических карт NVIDIA настоятельно рекомендуется установить доп. драйверы.';

  @override
  String get fullInstallationTitle => 'Расширенная установка';

  @override
  String get fullInstallationSubtitle =>
      'Удобный для работы в автономном режиме набор офисных инструментов, утилит и веб-браузер.';

  @override
  String get minimalInstallationTitle => 'Стандартная установка';

  @override
  String get minimalInstallationSubtitle =>
      'Только некоторые инструменты, веб-браузер и базовые утилиты.';

  @override
  String get otherOptions => 'Другие опции';

  @override
  String get installThirdPartyTitle =>
      'Установка стороннего программного обеспечения для графики и Wi-Fi, а также дополнительные форматы мультимедиа';

  @override
  String get installThirdPartySubtitle =>
      'На это программное обеспечение распространяются условиями лицензии, содержащиеся в документации. Часть из них является проприетарной.';

  @override
  String get installDriversTitle =>
      'Установка программного обеспечения сторонних производителей для графики и Wi-Fi оборудования';

  @override
  String get installDriversSubtitle =>
      'Включая, но не ограничиваясь драйверами NVIDIA и другими подобными устройствами';

  @override
  String get installCodecsTitle =>
      'Загрузить и установить поддержку дополнительных медиаформатов';

  @override
  String get installCodecsSubtitle =>
      'Включая, но не ограничиваясь, MP3, MP4, MOV и подобными им';

  @override
  String get batteryWarning => 'Компьютер не подключён к источнику питания.';

  @override
  String get offlineWarning => 'Вы сейчас не в сети';

  @override
  String get choosePassphraseHeader => 'Создание парольной фразы';

  @override
  String get choosePassphraseBody =>
      'Для шифрования файлов необходима парольная фраза. При каждом включении компьютера Вам будет предложено ввести её.';

  @override
  String get choosePassphraseInfoHeader =>
      'Сохраните свою парольную фразу в надёжном месте';

  @override
  String get choosePassphraseInfoBody =>
      'Если вы потеряете парольную фразу, то потеряете все свои данные.';

  @override
  String get chooseOptionalPassphraseInfoHeader =>
      'Храните парольную фразу и ключ восстановления в безопасном месте';

  @override
  String get chooseOptionalPassphraseInfoBody =>
      'Если потеряете парольную фразу, Вы потеряете все свои данные. Парольная фраза не заменяет ключ восстановления или пароль пользователя.';

  @override
  String get passphrasePageTitle => 'Encryption';

  @override
  String get passphrasePageHeaderPassphrase => 'Set an encryption passphrase';

  @override
  String get passphrasePageHeaderPin => 'Set an encryption PIN';

  @override
  String get passphrasePageBodyPassphrase =>
      'You will need to enter your passphrase every time you turn on your computer. This passphrase is different from your user password. You will be able to change it later, but not disable it. If you forget your passphrase, you can regain access to the disk by using the recovery key.';

  @override
  String get passphrasePageBodyPin =>
      'You will need to enter your PIN every time you turn on your computer. This PIN is different from your user password. You will be able to change it later, but not disable it. If you forget your PIN, you can regain access to the disk by using the recovery key.';

  @override
  String get passphrasePageChoosePassphraseHint => 'Passphrase';

  @override
  String get passphrasePageConfirmPassphraseHint => 'Confirm passphrase';

  @override
  String get passphrasePageRequiredPassphrase => 'A passphrase is required';

  @override
  String get passphrasePageMismatchPassphrase => 'The passphrases do not match';

  @override
  String get passphrasePageChoosePinHint => 'PIN';

  @override
  String get passphrasePageConfirmPinHint => 'Confirm PIN';

  @override
  String get passphrasePageRequiredPin => 'A PIN is required';

  @override
  String get passphrasePageMismatchPin => 'The PINs do not match';

  @override
  String get passphraseTypePassphraseTileTitle => 'Require a passphrase';

  @override
  String get passphraseTypePassphraseTileSubTitle =>
      'Most secure. You will need to enter a longer passphrase every time you turn on your computer.';

  @override
  String get passphraseTypePinTileTitle => 'Require a PIN';

  @override
  String get passphraseTypePinTileSubTitle =>
      'More secure. You will need to enter a numeric PIN every time you turn on your computer.';

  @override
  String get passphraseTypeNoneTileTitle => 'Unlock disk automatically';

  @override
  String get passphraseTypePageHeader => 'Additional security';

  @override
  String get passphraseTypePageBody =>
      'By default, the computer’s Trusted Platform Module (TPM) will unlock the disk during startup. You also have options to better protect your data.';

  @override
  String get passphrasePagePassphraseEntropyBelowMin =>
      'Weak passphrase, make it longer or more complex';

  @override
  String get passphrasePagePassphraseEntropyBelowOptimal =>
      'Fair passphrase, make it longer or more complex for better security';

  @override
  String get passphrasePagePassphraseEntropyOptimal => 'Strong passphrase';

  @override
  String get passphrasePagePinEntropyBelowMin =>
      'Weak PIN, make it longer or less predictable';

  @override
  String get passphrasePagePinEntropyBelowOptimal =>
      'Fair PIN, make it longer or less predictable for better security';

  @override
  String get passphrasePagePinEntropyOptimal => 'PIN is long enough';

  @override
  String get installationTypeTitle => 'Настройка диска';

  @override
  String installationTypeHeader(String DISTRO) {
    return 'Как Вы хотите установить $DISTRO?';
  }

  @override
  String installationTypeOSDetected(String os) {
    return 'На этом компьютере установлена операционная система $os. Что вы хотите сделать?';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return 'На этом компьютере установлены $os1 и $os2. Что вы хотите сделать?';
  }

  @override
  String get installationTypeMultiOSDetected =>
      'На этом компьютере установлено несколько операционных систем. Что вы хотите сделать?';

  @override
  String get installationTypeNoOSDetected =>
      'На этом компьютере не обнаружено установленных операционных систем. Что вы хотите сделать?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'Стереть диск и установить $DISTRO';
  }

  @override
  String get installationTypeEraseInfo =>
      'Будут удалены все данные и разделы на диске, в том числе операционные системы.';

  @override
  String get installationTypeAdvancedLabel => 'Дополнительные возможности...';

  @override
  String get installationTypeAdvancedTitle => 'Файловая система и шифрование';

  @override
  String get installationTypeExperimental => 'Экспериментально';

  @override
  String get installationTypeNone => 'Без шифрования';

  @override
  String get installationTypeNoneInfo =>
      'Стандартная файловая система без шифрования.';

  @override
  String get installationTypeNoneSelected => 'Ничего не выбрано';

  @override
  String get installationTypeLVM => 'Использовать LVM без шифрования';

  @override
  String get installationTypeLVMSelected => 'Выбран LVM';

  @override
  String get installationTypeLVMEncryption =>
      'Использовать шифрование с паролем';

  @override
  String get installationTypeLVMEncryptionInfo =>
      'Вам нужно будет вводить пароль каждый раз при включении компьютера. Эта функция использует шифрование LUKS с LVM.';

  @override
  String get installationTypeLVMEncryptionSelected =>
      'LVM и шифрование выбраны';

  @override
  String get installationTypeEncryptInfo =>
      'На следующем шаге выберите ключ безопасности.';

  @override
  String get installationTypeZFS => 'Использовать ZFS без шифрования';

  @override
  String get installationTypeZFSEncryption =>
      'Зашифровать с паролем, используя ZFS';

  @override
  String get installationTypeZFSEncryptionInfo =>
      'Встроенное шифрование с помощью ZFS. Вам нужно будет вводить кодовую фразу каждый раз при включении компьютера.';

  @override
  String get installationTypeZFSSelected => 'Выбрана ZFS';

  @override
  String get installationTypeZFSEncryptionSelected =>
      'Выбраны ZFS и шифрование';

  @override
  String get installationTypeTPM => 'Использовать аппаратное шифрование диска';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return '<a href=\"$url\">Прочитайте о шифровании TPM</a>, прежде чем выбрать эту опцию. Она может не работать с вашим оборудованием или в будущих выпусках $DISTRO.';
  }

  @override
  String get installationTypeTPMSelected => 'TPM выбран';

  @override
  String installationTypeReinstall(String os) {
    return 'Удалить $os и переустановить';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">Внимание:</font> При этом будут удалены все имевшиеся в $os программы, документы, фото, музыка и другие файлы.';
  }

  @override
  String installationTypeAlongside(String product, String os) {
    return 'Установить $product вместе с $os';
  }

  @override
  String installationTypeAlongsideDual(String product, String os1, String os2) {
    return 'Установить $product вместе с $os1 и $os2';
  }

  @override
  String installationTypeAlongsideMulti(String product) {
    return 'Установить $product вместе с другими ОС';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return 'Установить $product рядом с другими разделами';
  }

  @override
  String installationTypeAlongsideInfo(String product) {
    return 'Выберите раздел для выделения места под $product. Вы сможете выбирать операционную систему во время загрузки.';
  }

  @override
  String installationTypeEraseAndInstall(String os, String product) {
    return 'Стереть $os и установить $product';
  }

  @override
  String installationTypeEraseAndInstallInfo(String os) {
    return 'Будут навсегда удалены все данные с существующей системы $os.';
  }

  @override
  String get installationTypeManual => 'Ручная установка';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'Для опытных пользователей, которым требуется особая настройка дисков.';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'Стереть диск и установить $DISTRO';
  }

  @override
  String get selectGuidedStorageInfo => 'Начните с нуля на выбранном диске.';

  @override
  String get selectGuidedStorageDriveDropdownLabel => 'Выберите диск:';

  @override
  String get selectGuidedStoragePartitionDropdownLabel => 'Выберите раздел:';

  @override
  String get selectGuidedStorageInfoLabel => 'Диск будет использован целиком:';

  @override
  String get selectGuidedStorageInstallNow => 'Установить сейчас';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return 'Выберите, куда установить $DISTRO';
  }

  @override
  String get installAlongsideSpaceDivider =>
      'Выделите место на диске, переместив разделитель:';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return '$num более мелких разделов скрыто, для большего контроля используйте <a href=\"$url\">расширенный инструмент для разбиения на разделы</a>';
  }

  @override
  String get installAlongsideResizePartition => 'Изменить размер раздела';

  @override
  String get installAlongsideAllocateSpace => 'Выделить место';

  @override
  String get installAlongsideFiles => 'Файлы';

  @override
  String get installAlongsidePartition => 'Раздел:';

  @override
  String get installAlongsideSize => 'Размер:';

  @override
  String get installAlongsideAvailable => 'Доступно:';

  @override
  String get allocateDiskSpace => 'Создание разделов вручную';

  @override
  String get allocateDiskSpaceInvalidMountPointSlash =>
      'Точки монтирования должны начинаться с «/»';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace =>
      'Точки монтирования не могут содержать пробелы';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(
      String mountpoint, String format) {
    return '$format не является поддерживаемой файловой системой для $mountpoint';
  }

  @override
  String get diskHeadersDevice => 'Устройство';

  @override
  String get diskHeadersType => 'Тип';

  @override
  String get diskHeadersMountPoint => 'Точка монтирования';

  @override
  String get diskHeadersSize => 'Размер';

  @override
  String get diskHeadersUsed => 'Использовано';

  @override
  String get diskHeadersSystem => 'Система';

  @override
  String get diskHeadersFormat => 'Формат';

  @override
  String get freeDiskSpace => 'Свободное место';

  @override
  String get newPartitionTable => 'Новая таблица разделов';

  @override
  String get newPartitionTableConfirmationTitle => 'Новый пустой раздел';

  @override
  String get newPartitionTableConfirmationMessage =>
      'Создание новой таблицы разделов на этом устройстве удалит все его текущие разделы. При необходимости эту операцию можно отменить.';

  @override
  String get tooManyPrimaryPartitions => 'Слишком много первичных разделов';

  @override
  String get partitionLimitReached => 'Достигнут предел';

  @override
  String get bootLoaderDevice => 'Устройство для установки загрузчика';

  @override
  String get partitionCreateTitle => 'Создать раздел';

  @override
  String get partitionEditTitle => 'Изменить раздел';

  @override
  String get partitionSizeLabel => 'Размер:';

  @override
  String get partitionTypeLabel => 'Тип нового раздела:';

  @override
  String get partitionTypePrimary => 'Первичный';

  @override
  String get partitionTypeLogical => 'Логический';

  @override
  String get partitionLocationLabel => 'Расположение нового раздела:';

  @override
  String get partitionLocationBeginning => 'Начало этого пространства';

  @override
  String get partitionLocationEnd => 'Конец этого пространства';

  @override
  String get partitionFormatLabel => 'Исп. как:';

  @override
  String get partitionFormatNone => 'Оставить неформатированным';

  @override
  String partitionFormatKeep(String format) {
    return 'Оставить в формате $format';
  }

  @override
  String get partitionErase => 'Форматировать раздел';

  @override
  String get partitionMountPointLabel => 'Точка монтирования:';

  @override
  String get confirmPageTitle => 'Готово к установке';

  @override
  String get confirmHeader => 'Просмотрите свой выбор';

  @override
  String get confirmDiskEncryptionLVM => 'LUKS (LVM)';

  @override
  String get confirmDiskEncryptionZFS => 'LUKS (ZFS)';

  @override
  String get confirmDiskEncryptionTPM => 'TPM';

  @override
  String get confirmDiskEncryptionNone => 'Нет';

  @override
  String get confirmDevicesTitle => 'Устройства';

  @override
  String get confirmEntryApplications => 'Приложения';

  @override
  String get confirmEntryDiskSetup => 'Тип установки';

  @override
  String get confirmEntryDiskEncryption => 'Шифрование дисков';

  @override
  String get confirmEntryInstallationDisk => 'Установочный диск';

  @override
  String get confirmEntryProprietarySoftware => 'Проприетарное ПО';

  @override
  String get confirmSectionGeneralTitle => 'Общие';

  @override
  String get confirmSectionSecurityAndMoreTitle => 'Безопасность и другое';

  @override
  String get confirmPartitionsTitle => 'Разделы';

  @override
  String get confirmPartitionTables =>
      'Изменены таблицы разделов на следующих устройствах:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmProprietarySoftwareCodecs => 'Кодеки';

  @override
  String get confirmProprietarySoftwareCodecsDrivers => 'Кодеки и драйверы';

  @override
  String get confirmProprietarySoftwareDrivers => 'Драйверы';

  @override
  String get confirmInstallButton => 'Установить';

  @override
  String get confirmTableErased => 'Очищено';

  @override
  String get confirmTableUnchanged => 'Без изменений';

  @override
  String confirmTableResized(String oldsize, String newsize) {
    return 'Размер изменён с $oldsize на $newsize';
  }

  @override
  String confirmTableCreatedFormattedMounted(String format, String mountpoint) {
    return 'Создано и отформатировано как $format, использовано для $mountpoint';
  }

  @override
  String confirmTableFormattedMounted(String format, String mountpoint) {
    return 'Отформатировано как $format, использовано для $mountpoint';
  }

  @override
  String confirmTableMounted(String mountpoint) {
    return 'Использовано для $mountpoint';
  }

  @override
  String confirmTableFormatted(String format) {
    return 'Отформатировано как $format';
  }

  @override
  String get installationCompleteTitle => 'Установка завершена';

  @override
  String readyToUse(String system) {
    return '$system установлена и готова к использованию';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system** была скопирована на диск';
  }

  @override
  String restartInto(String system) {
    return 'Перезагрузка в $system';
  }

  @override
  String get restartWarningBody =>
      'Перезагрузите устройство, чтобы завершить установку, или продолжайте тестирование.\nЛюбые внесенные вами изменения не будут сохранены.';

  @override
  String get rebootToConfigureWarning =>
      'Чтобы продолжить процесс установки, необходимо перезагрузить компьютер.';

  @override
  String get shutdown => 'Выключить';

  @override
  String get restartNow => 'Перезагрузить';

  @override
  String get continueTesting => 'Продолжить тестирование';

  @override
  String get bitlockerInfoTitle => 'BitLocker обнаружен';

  @override
  String get bitlockerInfoDescription =>
      'Один или несколько разделов зашифрованы с помощью Bitlocker.';

  @override
  String get bitlockerInfoDisable =>
      'Чтобы выполнить установку рядом с Windows, отключите в Windows функцию Bitlocker.';

  @override
  String get bitlockerInfoRecovery =>
      'Windows может запросить ключи восстановления во время загрузки после завершения установки.';

  @override
  String bitlockerInfoInstructions(String url) {
    return 'Инструкции можно найти в <a href=\"$url\">Руководство по использованию BitLocker</a>.';
  }

  @override
  String get bitlockerWarningTitle =>
      'Без ключей восстановления BitLocker вы можете потерять все свои данные';

  @override
  String get restartComputer => 'Перезагрузить компьютер';

  @override
  String get restartComputerTitle => 'Перезагрузить компьютер?';

  @override
  String get restartIntoWindows => 'Перезагрузить в Windows';

  @override
  String get restartIntoWindowsTitle => 'Перезагрузить в Windows?';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return 'Вы уверены, что хотите перезагрузить компьютер? Вам потребуется позже перезапустить установку $DISTRO, чтобы завершить установку $DISTRO.';
  }

  @override
  String installationSlidesTitle(String RELEASE) {
    return 'Добро пожаловать в $RELEASE';
  }

  @override
  String get installationSlidesAvailable => 'Доступно:';

  @override
  String get installationSlidesIncluded => 'Включено:';

  @override
  String get installationSlidesWelcomeTitle =>
      'Быстрая, свободная и полная новых возможностей';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return 'Последняя версия $DISTRO делает использование вашего компьютера проще, чем когда-либо.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'Независимо от того, являетесь ли вы разработчиком, создателем, игроком или администратором, $RELEASE предлагает новые инструменты для повышения вашей производительности и опыта.';
  }

  @override
  String get installationSlidesSoftwareTitle => 'Все необходимые приложения';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'Устанавливайте, управляйте и обновляйте все свои приложения в Ubuntu Software, включая тысячи приложений из Snap Store и архива $DISTRO.';
  }

  @override
  String get installationSlidesDevelopmentTitle =>
      'Разрабатывайте с использованием лучшего из открытого исходного кода';

  @override
  String installationSlidesDevelopmentBody(String DISTRO) {
    return '$DISTRO - это идеальная рабочая станция для разработки приложений и веб-приложений, data science и AI/ML, а также devops и администрирования. Каждый выпуск $DISTRO включает новейшие инструментальные цепочки и поддерживает все основные IDE.';
  }

  @override
  String get installationSlidesCreativityTitle => 'Повышайте свою креативность';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return 'Если вы аниматор, дизайнер, создатель видео или разработчик игр, вам будет легко перенести свои рабочие процессы в $DISTRO благодаря поддержке программного обеспечения и приложений с открытым исходным кодом и промышленных стандартов.';
  }

  @override
  String get installationSlidesGamingTitle => 'Отлично подходит для игр';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return '$DISTRO поддерживает последние версии драйверов NVIDIA и Mesa для повышения производительности и совместимости. Тысячи игр для Windows отлично воспроизводятся на $DISTRO через такие приложения, как Steam, без дополнительной настройки.';
  }

  @override
  String get installationSlidesSecurityTitle =>
      'Конфиденциальность и безопасность';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return '$DISTRO предоставляет все инструменты, необходимые для обеспечения конфиденциальности и безопасности в Интернете. Благодаря встроенному брандмауэру и поддержке VPN, а также множеству приложений, ориентированных на конфиденциальность, вы полностью контролируете свои данные.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return 'Все выпуски $DISTRO LTS предоставляют исправления безопасности в течение пяти лет, которые могут быть продлены до десяти лет с подпиской Ubuntu Pro.';
  }

  @override
  String get installationSlidesProductivityTitle =>
      'Повысьте свою производительность';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return '$DISTRO Рабочий стол включает LibreOffice, набор совместимых с Microsoft Office приложений с открытым исходным кодом для работы с документами, электронными таблицами и презентациями. Также доступны популярные инструменты для совместной работы.';
  }

  @override
  String get installationSlidesAccessibilityTitle => 'Доступна для каждого';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return 'В основе философии $DISTRO лежит убеждение в том, что компьютер - для всех. Благодаря расширенным инструментам доступности и возможности изменения языка, цветов и размера текста, $DISTRO делает работу с компьютером простой - где бы и кем бы вы ни были.';
  }

  @override
  String get installationSlidesAccessibilityOrca =>
      'Программа чтения с экрана Orca';

  @override
  String get installationSlidesAccessibilityLanguages => 'Языковая поддержка';

  @override
  String get installationSlidesSupportTitle => 'Помощь и поддержка';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return 'Официальная документация $DISTRO доступна как в Интернете, так и через значок справки в док-панели.';
  }

  @override
  String get installationSlidesSupportCommunity =>
      'Ask Ubuntu охватывает ряд вопросов и ответов, а Ubuntu Discourse содержит руководства и обсуждения для новых и опытных пользователей.';

  @override
  String get installationSlidesSupportEnterprise =>
      'Для корпоративных пользователей Canonical предоставляет коммерческую поддержку, чтобы упростить внедрение и безопасное управление Ubuntu на рабочем месте.';

  @override
  String get installationSlidesSupportResources => 'Полезные ресурсы:';

  @override
  String get installationSlidesSupportDocumentation =>
      'Официальная документация';

  @override
  String get installationSlidesSupportUbuntuPro =>
      'Поддержка корпоративных пользователей в режиме 24/7 в Ubuntu Pro';

  @override
  String get nextSlideSemanticLabel => 'Next slide';

  @override
  String get previousSlideSemanticLabel => 'Previous slide';

  @override
  String get playSlideshowSemanticLabel => 'Play slideshow';

  @override
  String get pauseSlideshowSemanticLabel => 'Pause slideshow';

  @override
  String get toggleLogsSemanticLabel => 'Toggle install logs';

  @override
  String get copyingFiles => 'Копирование файлов…';

  @override
  String get installingSystem => 'Установка системы…';

  @override
  String get configuringSystem => 'Настройка системы…';

  @override
  String get installationFailed => 'Ошибка установки';

  @override
  String get notEnoughDiskSpaceTitle => 'Недостаточно места на диске';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return 'Недостаточно места на диске для установки $DISTRO';
  }

  @override
  String notEnoughDiskSpaceBody(String DISTRO) {
    return 'На выбранном диске недостаточно места для установки $DISTRO. Выйдите из программы установки и освободите место, или выберите другой диск.';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'Доступно:';

  @override
  String get notEnoughDiskSpaceRequired => 'Требуется:';

  @override
  String get refreshPageTitle => 'Доступно обновление';

  @override
  String get refreshHeader => 'Доступно обновление для программы установки';

  @override
  String get refreshUpdateNow => 'Обновить сейчас';

  @override
  String get refreshInfo =>
      'Выполните обновление, чтобы повысить надёжность и расширить возможности.';

  @override
  String get refreshReady => 'Обновление готово';

  @override
  String refreshCurrent(String snap, String version) {
    return 'Текущей версией $snap является $version.';
  }

  @override
  String refreshInstall(String version) {
    return 'Обновить до версии $version';
  }

  @override
  String refreshUpToDate(String version) {
    return 'Текущая версия ($version) является последней.';
  }

  @override
  String refreshUpdating(String snap) {
    return 'Обновление $snap…';
  }

  @override
  String get refreshRestart =>
      'Закройте и перезапустите установщик, чтобы продолжить';

  @override
  String get refreshCloseLabel => 'Закрыть установщик';

  @override
  String refreshSnapPrerequisites(String snap) {
    return 'Обеспечение предварительных условий $snap...';
  }

  @override
  String refreshSnapRefresh(String snap) {
    return 'Обновление данных $snap…';
  }

  @override
  String refreshSnapCheckRerefresh(String snap) {
    return 'Проверка обновления данных $snap…';
  }

  @override
  String refreshSnapPrepare(String snap) {
    return 'Подготовка $snap…';
  }

  @override
  String refreshSnapDownload(String snap) {
    return 'Скачивание $snap…';
  }

  @override
  String refreshSnapValidate(String snap) {
    return 'Проверка $snap…';
  }

  @override
  String refreshSnapMount(String snap) {
    return 'Монтирование $snap…';
  }

  @override
  String refreshSnapStopServices(String snap) {
    return 'Остановка сервисов $snap…';
  }

  @override
  String refreshSnapRemoveAliases(String snap) {
    return 'Удаление псевдонимов $snap...';
  }

  @override
  String refreshSnapUnlink(String snap) {
    return 'Отсоединение $snap...';
  }

  @override
  String refreshSnapUpdateAssets(String snap) {
    return 'Обновление ассетов $snap…';
  }

  @override
  String refreshSnapUpdateKernelCommandLine(String snap) {
    return 'Обновление командной строки ядра $snap...';
  }

  @override
  String refreshSnapCopyData(String snap) {
    return 'Копирование данных $snap…';
  }

  @override
  String refreshSnapSetupProfiles(String snap) {
    return 'Настройка профилей безопасности $snap…';
  }

  @override
  String refreshSnapLink(String snap) {
    return 'Соединение $snap…';
  }

  @override
  String refreshSnapAutoConnect(String snap) {
    return 'Подключение вилок и слотов $snap...';
  }

  @override
  String refreshSnapSetAutoAliases(String snap) {
    return 'Настройка автоматических псевдонимов $snap...';
  }

  @override
  String refreshSnapSetupAliases(String snap) {
    return 'Настройка псевдонимов $snap...';
  }

  @override
  String refreshSnapStartServices(String snap) {
    return 'Запуск сервисов $snap…';
  }

  @override
  String refreshSnapCleanup(String snap) {
    return 'Очистка $snap…';
  }

  @override
  String get recoveryKeyTitle => 'Ключ восстановления TPM';

  @override
  String get recoveryKeyTitleBadgeLabel => 'Important';

  @override
  String get recoveryKeyHeader => 'Получить ключ восстановления';

  @override
  String get recoveryKeyInfoHeader =>
      'Без ключа восстановления вы можете потерять все свои данные';

  @override
  String get recoveryKeyTextFieldLabel => 'Recovery key';

  @override
  String get recoveryKeyStorageAdvice =>
      'Храните ключ восстановления в безопасном месте. Используйте его для расшифровки диска в случае некоторых изменений в системе. Например, он может понадобиться при замене компонентов в компьютере или обновлении прошивки.';

  @override
  String get recoveryKeyConfirmation =>
      'Я понимаю, что могу потерять все свои данные, если у меня нет ключа восстановления';

  @override
  String get recoveryKeyLinkLabel => 'Узнать больше';

  @override
  String get recoveryKeySaveToFileLabel => 'Save to file';

  @override
  String get recoveryKeyShowQrCodeLabel => 'Show QR code';

  @override
  String recoveryKeyQrDialogTitle(String DISTRO) {
    return '$DISTRO Desktop - Recovery key';
  }

  @override
  String get recoveryKeyQrDialogBody =>
      'Scan the QR code to copy the recovery key and save it somewhere safe, such as a password manager. You can also take a photo for later use.';

  @override
  String get recoveryKeyClipboardNotifiaction => 'Copied to clipboard';

  @override
  String get recoveryKeyExceptionFileSystemTitle =>
      'Recovery key file not saved';

  @override
  String get recoveryKeyExceptionDisallowedPathTitle =>
      'Recovery key file cannot be saved in a temporary location';

  @override
  String get recoveryKeyExceptionUnknownTitle => 'Unknown error';

  @override
  String get recoveryKeyExceptionFileSystemBody =>
      'You do not have permission to write to that folder. Try a different location or use another method.';

  @override
  String get recoveryKeyExceptionDisallowedPathBody =>
      'Try a different location, such as a removable drive, or use another method.';

  @override
  String get recoveryKeyFilePickerTitle => 'Save recovery key file';

  @override
  String get recoveryKeyFilePickerFilter => 'Text files';

  @override
  String landscapeMagicAttachInstructions(String url) {
    return 'Отсканируйте QR-код или введите код ниже на сайте <a href=\"https://$url\">$url</a>';
  }

  @override
  String get landscapePageTitle => 'Автоматическая установка';

  @override
  String get landscapeHeader => 'Войдите в систему, чтобы узнать о Landscape';

  @override
  String get landscapeDomainHeader => 'Введите домен Landscape (FQDN)';

  @override
  String get landscapeDomainHintText => 'Домен Landscape (FQDN)';

  @override
  String get landscapeDomainInstructions =>
      'Укажите домен Landscape вашей организации для входа в систему и получения файла автоматической установки. FQDN можно получить в службе технической поддержки.';

  @override
  String get landscapeDomainTextField => 'Домен Landscape (FQDN)';

  @override
  String get next => 'Следующий';

  @override
  String get landscapeDomainInvalidDomainWarning =>
      'Неверный домен, проверьте или обратитесь в службу технической поддержки';

  @override
  String get landscapeDomainNoInternetTitleWarning =>
      'Подключитесь к Интернету, чтобы продолжить';

  @override
  String get landscapeDomainNoInternetDescriptionWarning =>
      'Интернет необходим для получения файла автоустановки из Landscape';

  @override
  String get landscapeCodeExpiredWarning =>
      'Код устарел, пожалуйста, попробуйте ещё раз';

  @override
  String get landscapeLoginFailedWarning =>
      'Вход в систему не удался, попробуйте ещё раз';

  @override
  String get landscapeErrorPageTitle =>
      'Автоматическая установка недоступна для вашей учётной записи';

  @override
  String get landscapeErrorPageBody =>
      'Обратитесь в службу технической поддержки или попробуйте другой вариант установки.';

  @override
  String landscapeErrorPageCode(String code) {
    return 'Код ошибки: $code';
  }

  @override
  String get landscapeConfirmPageSuccessInfoTitle =>
      'Ubuntu будет установлена с конфигурацией, предоставленной вашей организацией';

  @override
  String get landscapeConfirmPageSuccessInfoContent =>
      'Ниже вы можете просмотреть файл автоматической установки, импортированный из Landscape.';

  @override
  String get successIconSemanticLabel => 'Success';

  @override
  String get errorIconSemanticLabel => 'Error';

  @override
  String get closeIconSemanticLabel => 'Close';

  @override
  String get maximizeIconSemanticLabel => 'Maximize';

  @override
  String get minimizeIconSemanticLabel => 'Minimize';
}
