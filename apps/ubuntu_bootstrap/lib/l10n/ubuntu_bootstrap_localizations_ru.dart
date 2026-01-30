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
    return 'Что хотите сделать с $DISTRO?';
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
      'На вашем компьютере используется Intel RST (технология быстрого хранения). Вы можете отключить RST через:';

  @override
  String get rstDisableWindows =>
      'Windows, если у вас установлено несколько операционных систем, включая Windows';

  @override
  String get rstDisableBios => 'Настройки BIOS';

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
      'Какие приложения хотели бы установить для начала?';

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
      'Каждый раз при включении компьютера вам нужно будет вводить свою парольную фразу. Эта парольная фраза отличается от вашего пароля пользователя.';

  @override
  String get choosePassphraseInfoHeader =>
      'Убедитесь, что вы сохранили свою парольную фразу';

  @override
  String get choosePassphraseInfoBody =>
      'Если вы потеряете её, то потеряете все свои данные.';

  @override
  String get chooseOptionalPassphraseInfoHeader =>
      'Храните парольную фразу и ключ восстановления в безопасном месте';

  @override
  String get chooseOptionalPassphraseInfoBody =>
      'Если потеряете парольную фразу, Вы потеряете все свои данные. Парольная фраза не заменяет ключ восстановления или пароль пользователя.';

  @override
  String get passphrasePageTitle => 'Шифрование';

  @override
  String get passphrasePageHeaderPassphrase =>
      'Установить парольную фразу шифрования';

  @override
  String get passphrasePageHeaderPin => 'Установить PIN-код шифрования';

  @override
  String get passphrasePageBodyPassphrase =>
      'Каждый раз при включении компьютера вам нужно будет вводить свою парольную фразу. Эта парольная фраза отличается от вашего пароля пользователя. Вы сможете изменить её позже, но не отключить. Если вы забудете свою парольную фразу, то сможете восстановить доступ к диску, используя ключ восстановления.';

  @override
  String get passphrasePageBodyPin =>
      'Каждый раз при включении компьютера вам нужно будет вводить свой PIN-код. Этот PIN-код отличается от вашего пароля пользователя. Вы сможете изменить его позже, но не отключить. Если вы забудете свой PIN-код, то сможете восстановить доступ к диску, используя ключ восстановления.';

  @override
  String get passphrasePageChoosePassphraseHint => 'Парольная фраза';

  @override
  String get passphrasePageConfirmPassphraseHint =>
      'Подтвердить парольную фразу';

  @override
  String get passphrasePageRequiredPassphrase => 'Требуется парольная фраза';

  @override
  String get passphrasePageMismatchPassphrase => 'Парольные фразы не совпадают';

  @override
  String get passphrasePageChoosePinHint => 'PIN';

  @override
  String get passphrasePageConfirmPinHint => 'Подтвердить PIN-код';

  @override
  String get passphrasePageRequiredPin => 'Требуется PIN-код';

  @override
  String get passphrasePageMismatchPin => 'PIN-коды не совпадают';

  @override
  String get passphraseTypePassphraseTileTitle => 'Требовать парольную фразу';

  @override
  String get passphraseTypePassphraseTileSubTitle =>
      'Наиболее безопасно. Вам придётся вводить более длинную парольную фразу каждый раз при включении компьютера.';

  @override
  String get passphraseTypePinTileTitle => 'Требовать PIN-код';

  @override
  String get passphraseTypePinTileSubTitle =>
      'Наиболее безопасно. Вам придется вводить числовой PIN-код каждый раз при включении компьютера.';

  @override
  String get passphraseTypeNoneTileTitle => 'Разблокировать диск автоматически';

  @override
  String get passphraseTypePageHeader => 'Дополнительная безопасность';

  @override
  String get passphraseTypePageBody =>
      'По умолчанию Trusted Platform Module (TPM) компьютера разблокирует диск во время запуска. Однако у вас есть и другие варианты дополнительной защиты своих данных.';

  @override
  String get passphrasePagePassphraseEntropyBelowMin =>
      'Слабая парольная фраза, сделайте её длиннее или сложнее';

  @override
  String get passphrasePagePassphraseEntropyBelowOptimal =>
      'Подходящая парольная фраза, но для большей безопасности можете сделать её длиннее или более сложной';

  @override
  String get passphrasePagePassphraseEntropyOptimal =>
      'Надежная парольная фраза';

  @override
  String get passphrasePagePinEntropyBelowMin =>
      'Слабый PIN-код, сделайте его длиннее или менее предсказуемым';

  @override
  String get passphrasePagePinEntropyBelowOptimal =>
      'Подходящий PIN-код, но для большей безопасности можете сделать его длиннее или менее предсказуемым';

  @override
  String get passphrasePagePinEntropyOptimal => 'PIN-код достаточно длинный';

  @override
  String get installationTypeTitle => 'Настройка диска';

  @override
  String installationTypeHeader(String DISTRO) {
    return 'Как Вы хотите установить $DISTRO?';
  }

  @override
  String installationTypeOSDetected(String os) {
    return 'На этом компьютере установлена операционная система $os. Что хотите сделать?';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return 'На этом компьютере установлены $os1 и $os2. Что хотите сделать?';
  }

  @override
  String get installationTypeMultiOSDetected =>
      'На этом компьютере установлено несколько операционных систем. Что хотите сделать?';

  @override
  String get installationTypeNoOSDetected =>
      'На этом компьютере не обнаружено установленных операционных систем. Что хотите сделать?';

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
  String get confirmPageTitle => 'Всё готово к установке';

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
    return 'Создан и отформатирован как $format, использован для $mountpoint';
  }

  @override
  String confirmTableFormattedMounted(String format, String mountpoint) {
    return 'Отформатирован как $format, использован для $mountpoint';
  }

  @override
  String confirmTableMounted(String mountpoint) {
    return 'Использован для $mountpoint';
  }

  @override
  String confirmTableFormatted(String format) {
    return 'Отформатирован как $format';
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
      'Скорость, безопасность и новые функции';

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
  String get nextSlideSemanticLabel => 'Следующий слайд';

  @override
  String get previousSlideSemanticLabel => 'Предыдущий слайд';

  @override
  String get playSlideshowSemanticLabel => 'Начать показ слайдов';

  @override
  String get pauseSlideshowSemanticLabel => 'Приостановить показ слайдов';

  @override
  String get toggleLogsSemanticLabel => 'Включить ведение журнала установки';

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
  String get recoveryKeyTitle => 'Ключ восстановления';

  @override
  String get recoveryKeyTitleBadgeLabel => 'Важное';

  @override
  String get recoveryKeyHeader => 'Сохранить ваш ключ восстановления';

  @override
  String get recoveryKeyInfoHeader =>
      'Без ключа восстановления вы можете потерять все свои данные';

  @override
  String get recoveryKeyTextFieldLabel => 'Ключ восстановления';

  @override
  String get recoveryKeyStorageAdvice =>
      'Вам нужно будет предоставить этот ключ восстановления, если во время запуска не удаётся провести расшифровку. Без ключа вы потеряете доступ ко всем своим данным. Сохраните его в безопасном месте, например, в менеджере паролей.';

  @override
  String get recoveryKeyConfirmation =>
      'Я сохранил свой ключ восстановления в безопасном месте';

  @override
  String get recoveryKeyLinkLabel => 'Подробнее';

  @override
  String get recoveryKeySaveToFileLabel => 'Сохранить в файл';

  @override
  String get recoveryKeyShowQrCodeLabel => 'Показать QR-код';

  @override
  String recoveryKeyQrDialogTitle(String DISTRO) {
    return '$DISTRO Desktop - Ключ восстановления';
  }

  @override
  String get recoveryKeyQrDialogBody =>
      'Отсканируйте QR-код, чтобы скопировать ключ восстановления и сохранить его в безопасном месте, например, в менеджере паролей. Также вы можете сделать фотографию и использовать её позже.';

  @override
  String get recoveryKeyClipboardNotifiaction => 'Скопировано в буфер обмена';

  @override
  String get recoveryKeyExceptionFileSystemTitle =>
      'Файл ключа восстановления не сохранён';

  @override
  String get recoveryKeyExceptionDisallowedPathTitle =>
      'Файл ключа восстановления не может быть сохранён во временном месте';

  @override
  String get recoveryKeyExceptionUnknownTitle => 'Неизвестная ошибка';

  @override
  String get recoveryKeyExceptionFileSystemBody =>
      'У вас нет разрешения на запись в эту папку. Попробуйте другое место или воспользуйтесь другим способом.';

  @override
  String get recoveryKeyExceptionDisallowedPathBody =>
      'Попробуйте иное место, например съёмный диск, или воспользуйтесь другим способом.';

  @override
  String get recoveryKeyFilePickerTitle =>
      'Сохранить файл ключа восстановления';

  @override
  String get recoveryKeyFilePickerFilter => 'Текстовые файлы';

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
  String get successIconSemanticLabel => 'Успех';

  @override
  String get errorIconSemanticLabel => 'Ошибка';

  @override
  String get closeIconSemanticLabel => 'Закрыть';

  @override
  String get maximizeIconSemanticLabel => 'Развернуть';

  @override
  String get minimizeIconSemanticLabel => 'Свернуть';

  @override
  String get tpmActionPageTitle =>
      'Hardware-backed encryption could not be enabled';

  @override
  String get tpmActionBadgeLabel => 'Action required';

  @override
  String get tpmActionDetailsLabel => 'Technical details';

  @override
  String get tpmActionConfirmLabel => 'Confirm';

  @override
  String tpmActionSolutionLabel(int n, String text) {
    return 'Solution $n: $text';
  }

  @override
  String get tpmActionDocumentationLinkLabel => 'Link to documentation';

  @override
  String get tpmActionErrorSupportLabel =>
      'Try the solutions below, contact IT support, or choose a different encryption method.';

  @override
  String get tpmActionErrorSupportNoActionLabel =>
      'Contact IT support, or choose a different encryption method.';

  @override
  String get tpmActionErrorKindInternal => 'Internal';

  @override
  String get tpmActionErrorKindShutdownRequired => 'Shutdown Required';

  @override
  String get tpmActionErrorKindRebootRequired => 'Reboot Required';

  @override
  String get tpmActionErrorKindUnexpectedAction => 'Unexpected Action';

  @override
  String get tpmActionErrorKindMissingArgument => 'Missing Argument';

  @override
  String get tpmActionErrorKindInvalidArgument => 'Invalid Argument';

  @override
  String get tpmActionErrorKindActionFailed => 'Action Failed';

  @override
  String get tpmActionErrorKindRunningInVm =>
      'The current environment is a virtual machine.';

  @override
  String get tpmActionErrorKindSystemNotEfi =>
      'This computer is using older firmware (legacy BIOS) that is not compatible with this encryption method.';

  @override
  String get tpmActionErrorKindEfiVariableAccess =>
      'There is an issue with this computer\'s firmware settings.';

  @override
  String get tpmActionErrorKindNoSuitableTpm2Device =>
      'This computer does not have the required security hardware (TPM 2.0) for this encryption method.';

  @override
  String get tpmActionErrorKindTpmDeviceDisabled =>
      'This computer\'s TPM is disabled.';

  @override
  String get tpmActionErrorKindTpmHierarchiesOwned =>
      'This computer\'s TPM is already in use by another system or application.';

  @override
  String get tpmActionErrorKindTpmDeviceLockoutLockedOut =>
      'This computer\'s TPM is currently locked.';

  @override
  String get tpmActionErrorKindInsufficientTpmStorage =>
      'This computer\'s TPM does not have enough storage available.';

  @override
  String get tpmActionErrorKindUnsupportedPlatform =>
      'This computer is not compatible with hardware-backed encryption.';

  @override
  String get tpmActionErrorKindUefiDebuggingEnabled =>
      'UEFI debugging is enabled';

  @override
  String get tpmActionErrorKindInsufficientDmaProtection =>
      'This computer is missing a required security feature (DMA protection).';

  @override
  String get tpmActionErrorKindNoKernelIommu =>
      'This computer is missing a required security feature (kernel IOMMU).';

  @override
  String get tpmActionErrorKindHostSecurity =>
      'There is an issue with this computer\'s security settings.';

  @override
  String get tpmActionErrorKindSysPrepApplicationsPresent =>
      'There is software running at startup that may prevent a secure connection with the computer\'s TPM.';

  @override
  String get tpmActionErrorKindAbsolutePresent =>
      'Absolute Persistence Module is enabled in this computer.';

  @override
  String get tpmActionErrorKindInvalidSecureBootMode =>
      'Secure boot is disabled in this computer or is not configured in \"deployed\" mode.';

  @override
  String get tpmActionErrorKindWeakSecureBootAlgorithmDetected =>
      'Some of the certificates verifying components in this computer are outdated or use weak protection.';

  @override
  String get tpmActionErrorKindPreOsSecureBootAuthByEnrolledDigests =>
      'This computer is using a manual allowlist to verify software at startup.';

  @override
  String get tpmActionErrorKindAddonDriversPresent => 'Addon Drivers Present';

  @override
  String get tpmActionErrorKindGenericTpm =>
      'There is an issue with this computer\'s TPM.';

  @override
  String get tpmActionErrorKindGenericFirmware =>
      'There is an issue with this computer\'s firmware.';

  @override
  String get tpmActionFixActionReboot => 'Restart';

  @override
  String get tpmActionFixActionShutdown => 'Power off';

  @override
  String get tpmActionFixActionRebootToFwSettings =>
      'Restart to firmware settings';

  @override
  String get tpmActionFixActionRebootToFwSettingsInsufficientDmaProtection =>
      'Enable DMA protection manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsInsufficientTpmStorage =>
      'Clear TPM manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsInvalidSecureBootMode =>
      'Enable secure boot manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsNoKernelIommu =>
      'Enable DMA protection manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsNoSuitablePcrBank =>
      'Enable PCR banks manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmDeviceDisabled =>
      'Enable TPM manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmDeviceLockoutLockedOut =>
      'Clear TPM manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmHierarchiesOwned =>
      'Clear TPM manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsAbsolutePresent =>
      'Disable Absolute Persistence Module manually';

  @override
  String get tpmActionFixActionContactOem => 'Contact OEM';

  @override
  String get tpmActionFixActionContactOsVendor => 'Contact OS Vendor';

  @override
  String get tpmActionFixActionEnableTpmViaFirmware => 'Enable TPM on restart';

  @override
  String get tpmActionFixActionEnableAndClearTpmViaFirmware =>
      'Enable and clear TPM on restart';

  @override
  String get tpmActionFixActionClearTpmViaFirmware => 'Clear TPM on restart';

  @override
  String get tpmActionFixActionClearTpm => 'Clear TPM';

  @override
  String get tpmActionFixActionProceed => 'Ignore';

  @override
  String get tpmActionFixActionRebootDescription =>
      'Restart the computer to complete previous actions.';

  @override
  String get tpmActionFixActionRebootTpmDeviceFailureDescription =>
      'Restarting the computer may fix the issue.';

  @override
  String get tpmActionFixActionShutdownDescription =>
      'Power off the computer to complete previous actions.';

  @override
  String get tpmActionFixActionRebootToFwSettingsDescription =>
      'You can do this in you computer\'s firmware settings.';

  @override
  String get tpmActionFixActionRebootToFwSettingsWithDocsDescription =>
      'You may be able to do this in you computer\'s firmware settings. Check the documentation of the CPU vendor for guidance.';

  @override
  String get tpmActionFixActionProceedDescription =>
      'Ignoring the issue may result in a less secure installation.';

  @override
  String get tpmActionRestartLabel => 'Restart';

  @override
  String get tpmActionRestartAndEnableTpmLabel => 'Restart and enable TPM';

  @override
  String get tpmActionRestartAndClearTpmLabel => 'Restart and clear TPM';

  @override
  String get tpmActionIgnoreAndContinueLabel => 'Ignore and continue';

  @override
  String get tpmActionFixActionClearTpmWarningTitle =>
      'Clearing the TPM erases all encryption keys';

  @override
  String get tpmActionFixActionClearTpmWarningBody =>
      'You will lose access to all data in encrypted drives for which you do not have recovery keys. It will also break other features that depend on the TPM, such as authentication and certificates.';

  @override
  String get tpmActionFixActionClearTpmConfirmationLabel =>
      'I understand the consequences of clearing the TPM';

  @override
  String get tpmActionFixActionCaveatConfirm =>
      'You may be asked to confirm this action on restart.';

  @override
  String get tpmActionFixActionCaveatRetry =>
      'You will then have to retry installation from scratch.';

  @override
  String get tpmActionErrorTitle => 'This solution failed';

  @override
  String get tpmActionErrorDescription =>
      'Try a different solution or contact IT support';

  @override
  String get manualPartitioningWarningBody =>
      'Try something else. You may also <a href=\"\">send an error report</a>.';
}
