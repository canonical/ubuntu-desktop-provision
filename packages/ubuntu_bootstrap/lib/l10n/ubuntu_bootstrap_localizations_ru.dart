import 'ubuntu_bootstrap_localizations.dart';

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
  String get autoinstallTitle => 'Type of installation';

  @override
  String autoinstallHeader(String DISTRO) {
    return 'How would you like to install $DISTRO?';
  }

  @override
  String get autoinstallInstructions => 'Enter the autoinstall.yaml URL:';

  @override
  String get autoinstallInteractiveOption => 'Interactive installation';

  @override
  String get autoinstallInteractiveDescription => 'For users who want to be guided step by step through the installation.';

  @override
  String get autoinstallAutomatedOption => 'Automated installation';

  @override
  String get autoinstallAutomatedDescription => 'For advanced users who have an autoinstall.yaml for consistent and repeatable system setups.';

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
  String get warningLabel => 'Warning:';

  @override
  String tryOrInstallTitle(String DISTRO) {
    return 'Попробовать или установить $DISTRO';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return 'What do you want to do with $DISTRO?';
  }

  @override
  String get tryOrInstallRepairOption => 'Исправить установку';

  @override
  String get tryOrInstallRepairDescription => 'Исправление повторно устанавливает все установленные программы, не трогая документы и настройки.';

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
  String get rstTitle => 'RST включён';

  @override
  String get rstHeader => 'Для продолжения отключите RST';

  @override
  String rstDescription(String DISTRO) {
    return 'Двнный компьютер использует Intel RST (Rapid Storage Technology). Перед тем, как продолжить установку Ubuntu, необходимо отключить RST в Windows.';
  }

  @override
  String rstInstructions(String url) {
    return 'Для получения справки отсканируйте QR-код на другом устройстве или посетите: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'Настроить Secure Boot';

  @override
  String get configureSecureBootDescription => 'Вы выбрали установку стороннего драйвера. Для этого необходимо отключить Secure Boot.\nДля этого вам нужно сейчас выбрать ключ безопасности и ввести его при перезагрузке системы.';

  @override
  String get configureSecureBootOption => 'Настроить Secure Boot';

  @override
  String get chooseSecurityKey => 'Выберите ключ безопасности';

  @override
  String get confirmSecurityKey => 'Подтвердите ключ безопасности';

  @override
  String get dontInstallDriverSoftwareNow => 'Пока не устанавливать драйверы';

  @override
  String get dontInstallDriverSoftwareNowDescription => 'Вы можете установить их позже в приложении «Программы и обновления».';

  @override
  String get configureSecureBootSecurityKeyRequired => 'Требуется ключ безопасности';

  @override
  String get secureBootSecurityKeysDontMatch => 'Ключи безопасности не совпадают';

  @override
  String get showSecurityKey => 'Показать ключ безопасности';

  @override
  String get hideSecurityKey => 'Hide';

  @override
  String get updatesOtherSoftwarePageTitle => 'Приложения и обновления';

  @override
  String get updatesOtherSoftwarePageDescription => 'Какие приложения вы хотели бы установить для начала?';

  @override
  String get codecsAndDriversPageTitle => 'Optimise your computer';

  @override
  String get codecsAndDriversPageDescription => 'Install recommended proprietary software?';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return '$DISTRO ships with no proprietary software by default. Installing additional software may improve your computer\'s performance.';
  }

  @override
  String get codecsAndDriversNvidiaNote => 'NVIDIA graphics card detected';

  @override
  String get codecsAndDriversNvidiaBody => 'For the best performance of NVIDIA graphic cards, installing additional drivers is strongly recommended.';

  @override
  String get fullInstallationTitle => 'Полная установка';

  @override
  String get fullInstallationSubtitle => 'Удобный для работы в автономном режиме набор офисных инструментов, утилит, веб-браузера и игр.';

  @override
  String get minimalInstallationTitle => 'Минимальная установка';

  @override
  String get minimalInstallationSubtitle => 'Только самое необходимое, веб-браузер и базовые утилиты.';

  @override
  String get otherOptions => 'Другие опции';

  @override
  String get installThirdPartyTitle => 'Установка стороннего программного обеспечения для графики и Wi-Fi, а также дополнительные форматы мультимедиа';

  @override
  String get installThirdPartySubtitle => 'На это программное обеспечение распространяются условиями лицензии, содержащиеся в документации. Часть из них является проприетарной.';

  @override
  String get installDriversTitle => 'Установка программного обеспечения сторонних производителей для графики и Wi-Fi оборудования';

  @override
  String get installDriversSubtitle => 'На эти драйверы распространяются лицензионные условия, прилагаемые к их документации. Они являются проприетарными.';

  @override
  String get installCodecsTitle => 'Загрузить и установить поддержку дополнительных медиаформатов';

  @override
  String get installCodecsSubtitle => 'На это программное обеспечение распространяются лицензионные условия, прилагаемые к его документации. Некоторые из них являются проприетарными.';

  @override
  String get batteryWarning => 'The computer is not plugged in to a power source.';

  @override
  String get offlineWarning => 'Вы сейчас не в сети';

  @override
  String get choosePassphraseTitle => 'Disk passphrase';

  @override
  String get choosePassphraseHeader => 'Create a passphrase';

  @override
  String get choosePassphraseBody => 'You need a passphrase to encrypt your files. You will be prompted for your passphrase every time you turn on your computer.';

  @override
  String get choosePassphraseHint => 'Choose a passphrase';

  @override
  String get choosePassphraseConfirmHint => 'Confirm the passphrase';

  @override
  String get choosePassphraseRequired => 'A passphrase is required';

  @override
  String get choosePassphraseMismatch => 'The passphrases do not match';

  @override
  String get choosePassphraseInfoHeader => 'Make sure you save your passphrase';

  @override
  String get choosePassphraseInfoBody => 'If you lose your passphrase, you will lose all of your data.';

  @override
  String get createPassphrase => 'Create a passphrase';

  @override
  String get confirmPassphrase => 'Confirm the passphrase';

  @override
  String get installationTypeTitle => 'Тип установки';

  @override
  String installationTypeHeader(String DISTRO) {
    return 'How do you want to install $DISTRO?';
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
  String get installationTypeMultiOSDetected => 'На этом компьютере установлено несколько операционных систем. Что вы хотите сделать?';

  @override
  String get installationTypeNoOSDetected => 'На этом компьютере не обнаружено установленных операционных систем. Что вы хотите сделать?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'Стереть диск и установить $DISTRO';
  }

  @override
  String get installationTypeEraseInfo => 'Start from scratch on your selected disk.';

  @override
  String get installationTypeAdvancedLabel => 'Дополнительные возможности...';

  @override
  String get installationTypeAdvancedTitle => 'Дополнительные возможности';

  @override
  String get installationTypeExperimental => 'Experimental';

  @override
  String get installationTypeNone => 'Ничего';

  @override
  String get installationTypeNoneSelected => 'Ничего не выбрано';

  @override
  String get installationTypeLVM => 'Use LVM';

  @override
  String get installationTypeLVMSelected => 'Выбран LVM';

  @override
  String get installationTypeLVMEncryption => 'Use LVM and encryption';

  @override
  String get installationTypeLVMEncryptionSelected => 'LVM и шифрование выбраны';

  @override
  String get installationTypeEncryptInfo => 'На следующем шаге выберите ключ безопасности.';

  @override
  String get installationTypeZFS => 'ЭКСПЕРИМЕНТАЛЬНОЕ: Стереть диск и использовать ZFS';

  @override
  String get installationTypeZFSEncryption => 'Erase disk and use ZFS with encryption';

  @override
  String get installationTypeZFSSelected => 'Выбрана ZFS';

  @override
  String get installationTypeZFSEncryptionSelected => 'ZFS and encryption selected';

  @override
  String get installationTypeTPM => 'ЭКСПЕРИМЕНТАЛЬНО: Включить аппаратное шифрование диска';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return 'This is an experimental feature. It may not work with your hardware of future $DISTRO releases. <a href=\"$url\">Read about TPM encryption</a> before your choose this option.';
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
    return 'Установить $product вместе с ними';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return 'Установите $product рядом с другими разделами';
  }

  @override
  String get installationTypeAlongsideInfo => 'Документы, музыка и другие личные файлы будут сохранены. Вы сможете выбрать нужную операционную систему для загрузки при каждом запуске компьютера.';

  @override
  String get installationTypeManual => 'Создание разделов вручную';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'Вы можете создать или изменить разделы самостоятельно, или выбрать для $DISTRO несколько разделов';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'Стереть диск и установить $DISTRO';
  }

  @override
  String get selectGuidedStorageInfo => 'Start from scratch on your selected disk.';

  @override
  String get selectGuidedStorageDropdownLabel => 'Выберите диск:';

  @override
  String get selectGuidedStorageInfoLabel => 'Диск будет использован целиком:';

  @override
  String get selectGuidedStorageInstallNow => 'Установить сейчас';

  @override
  String get installAlongsideSpaceDivider => 'Выделите место на диске, переместив разделитель:';

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
  String get allocateDiskSpaceInvalidMountPointSlash => 'Точки монтирования должны начинаться с «/»';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace => 'Точки монтирования не могут содержать пробелы';

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
  String get newPartitionTableConfirmationMessage => 'Создание новой таблицы разделов на этом устройстве удалит все его текущие разделы. При необходимости эту операцию можно отменить.';

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
  String get partitionFormatLabel => 'Использовано:';

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
  String get confirmHeader => 'Если вы продолжите, перечисленные ниже изменения будут записаны на диски. Дальнейшие изменения вы сможете внести вручную.';

  @override
  String get confirmDiskEncryptionLVM => 'LUKS (LVM)';

  @override
  String get confirmDiskEncryptionZFS => 'LUKS (ZFS)';

  @override
  String get confirmDiskEncryptionTPM => 'TPM';

  @override
  String get confirmDiskEncryptionNone => 'None';

  @override
  String get confirmDevicesTitle => 'Устройства';

  @override
  String get confirmEntryApplications => 'Applications';

  @override
  String get confirmEntryDiskSetup => 'Disk setup';

  @override
  String get confirmEntryDiskEncryption => 'Disk encryption';

  @override
  String get confirmEntryInstallationDisk => 'Installation disk';

  @override
  String get confirmEntryProprietarySoftware => 'Proprietary software';

  @override
  String get confirmSectionGeneralTitle => 'General';

  @override
  String get confirmSectionSecurityAndMoreTitle => 'Security & more';

  @override
  String get confirmPartitionsTitle => 'Разделы';

  @override
  String get confirmPartitionTables => 'Изменены таблицы разделов на следующих устройствах:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmPartitionChanges => 'Будут применены следующие изменения разделов:';

  @override
  String confirmPartitionResize(String sysname, String oldsize, String newsize) {
    return 'размер раздела <b>$sysname</b> изменён с <b>$oldsize</b> на <b>$newsize</b>';
  }

  @override
  String confirmPartitionFormatMount(String sysname, String format, String mount) {
    return 'раздел <b>$sysname</b> отформатирован как <b>$format</b> и использован для <b>$mount</b>';
  }

  @override
  String confirmPartitionFormat(String sysname, String format) {
    return 'раздел <b>$sysname</b> отформатирован как <b>$format</b>';
  }

  @override
  String confirmPartitionMount(String sysname, String mount) {
    return 'раздел <b>$sysname</b> использован для <b>$mount</b>';
  }

  @override
  String confirmPartitionCreate(String sysname) {
    return 'раздел <b>$sysname</b> создан';
  }

  @override
  String get confirmProprietarySoftwareCodecs => 'Codecs';

  @override
  String get confirmProprietarySoftwareCodecsDrivers => 'Codecs & drivers';

  @override
  String get confirmProprietarySoftwareDrivers => 'Drivers';

  @override
  String get confirmInstallButton => 'Установить';

  @override
  String get installationCompleteTitle => 'Установка завершена';

  @override
  String readyToUse(String system) {
    return '**$system** установлена и готова к использованию';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system** has been copied to the disk';
  }

  @override
  String restartInto(String system) {
    return 'Перезагрузка в $system';
  }

  @override
  String get restartWarningBody => 'Restart to complete the installation or continue testing.\nAny changes you make not be saved.';

  @override
  String get rebootToConfigureWarning => 'You have to restart the computer to continue the installation process.';

  @override
  String get shutdown => 'Отключить';

  @override
  String get restartNow => 'Перезагрузить';

  @override
  String get continueTesting => 'Продолжить тестирование';

  @override
  String get bitlockerTitle => 'BitLocker включён';

  @override
  String get bitlockerHeader => 'Для продолжения отключите BitLocker';

  @override
  String bitlockerDescription(String option) {
    return 'Этот компьютер использует шифрование с помощью Windows BitLocker.\nВам необходимо использовать Windows для создания свободного места или выбрать \'$option\' для продолжения.';
  }

  @override
  String bitlockerInstructions(String url) {
    return 'Чтобы получить инструкции, отсканируйте QR-код на другом устройстве или посетите: <a href=\"https://$url\">$url</a>';
  }

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
  String get installationSlidesWelcomeTitle => 'Быстрый, бесплатный и полный новых возможностей';

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
  String get installationSlidesDevelopmentTitle => 'Разрабатывайте с использованием лучшего из открытого исходного кода';

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
  String get installationSlidesSecurityTitle => 'Конфиденциальность и безопасность';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return '$DISTRO предоставляет все инструменты, необходимые для обеспечения конфиденциальности и безопасности в Интернете. Благодаря встроенному брандмауэру и поддержке VPN, а также множеству приложений, ориентированных на конфиденциальность, вы полностью контролируете свои данные.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return 'Все выпуски $DISTRO LTS предоставляют исправления безопасности в течение пяти лет, которые могут быть продлены до десяти лет при подписке на Ubuntu Pro.';
  }

  @override
  String get installationSlidesProductivityTitle => 'Повысьте свою производительность';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return '$DISTRO Рабочий стол включает LibreOffice, набор совместимых с Microsoft Office приложений с открытым исходным кодом для работы с документами, электронными таблицами и презентациями. Также доступны популярные инструменты для совместной работы.';
  }

  @override
  String get installationSlidesAccessibilityTitle => 'Доступно для каждого';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return 'В основе философии $DISTRO лежит убеждение в том, что компьютер - для всех. Благодаря расширенным инструментам доступности и возможности изменения языка, цветов и размера текста, $DISTRO делает работу с компьютером простой - где бы и кем бы вы ни были.';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'Программа чтения с экрана Orca';

  @override
  String get installationSlidesAccessibilityLanguages => 'Языковая поддержка';

  @override
  String get installationSlidesSupportTitle => 'Помощь и поддержка';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return 'Официальная поддержка $DISTRO доступна как в Интернете, так и через значок справки в док-панели.';
  }

  @override
  String get installationSlidesSupportCommunity => 'Ask Ubuntu охватывает ряд вопросов и ответов, а Ubuntu Discourse содержит руководства и обсуждения для новых и опытных пользователей.';

  @override
  String get installationSlidesSupportEnterprise => 'Для корпоративных пользователей Canonical предоставляет коммерческую поддержку, чтобы упростить внедрение и безопасное управление Ubuntu на рабочем месте.';

  @override
  String get installationSlidesSupportResources => 'Полезные ресурсы:';

  @override
  String get installationSlidesSupportDocumentation => 'Официальная документация';

  @override
  String get installationSlidesSupportUbuntuPro => 'Поддержка корпоративных пользователей в режиме 24/7 в Ubuntu Pro';

  @override
  String get copyingFiles => 'Копирование файлов…';

  @override
  String get installingSystem => 'Установка системы…';

  @override
  String get configuringSystem => 'Настройка системы…';

  @override
  String get installationFailed => 'Ошибка установки';

  @override
  String get notEnoughDiskSpaceTitle => 'Недостаточно места';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return 'Недостаточно места на диске для установки $DISTRO';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'Доступно:';

  @override
  String get notEnoughDiskSpaceRequired => 'Требуется:';

  @override
  String get refreshPageTitle => 'Доступно обновление';

  @override
  String get refreshHeader => 'An update is available for the installer';

  @override
  String get refreshUpdateNow => 'Update now';

  @override
  String get refreshInfo => 'Update to the latest version for improved reliability and more features.';

  @override
  String get refreshReady => 'Update ready';

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
  String get refreshRestart => 'Пожалуйста перезапустите установщик.';

  @override
  String get refreshCloseLabel => 'Close installer';

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
  String get recoveryKeyCommand => 'Вы можете получить доступ к ключу восстановления после установки с помощью следующей команды:';

  @override
  String recoveryKeyWarning(String color) {
    return '<font color=\"$color\">Предупреждение:</font> Если вы потеряете этот ключ безопасности, то все данные будут потеряны. Если вам нужно, запишите свой ключ и храните его в любом безопасном месте.';
  }

  @override
  String get validate => 'Validate';
}
