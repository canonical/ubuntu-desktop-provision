import 'ubuntu_bootstrap_localizations.dart';

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
  String get warningLabel => 'Warning:';

  @override
  String tryOrInstallTitle(String DISTRO) {
    return 'Спробувати або встановити';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return 'What do you want to do with $DISTRO?';
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
  String rstDescription(String DISTRO) {
    return 'Цей комп’ютер використовує технологію Intel RST (Rapid Storage Technology). Перед встановленням Ubuntu вам потрібно вимкнути RST у Windows.';
  }

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
  String get hideSecurityKey => 'Hide';

  @override
  String get updatesOtherSoftwarePageTitle => 'Оновлення та інше програмне забезпечення';

  @override
  String get updatesOtherSoftwarePageDescription => 'Які програми ви хотіли б встановити для початку?';

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
  String get installDriversSubtitle => 'Ці драйвери підпадають під дію ліцензійних умов, включених до їх документації. Вони є пропрієтарними..';

  @override
  String get installCodecsTitle => 'Встановити підтримку додаткових медіа-форматів';

  @override
  String get installCodecsSubtitle => 'На це програмне забезпечення поширюються ліцензійні умови, що додаються до його документації. Деякі з них є пропрієтарними.';

  @override
  String get batteryWarning => 'The computer is not plugged in to a power source.';

  @override
  String get offlineWarning => 'Ви зараз не в мережі';

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
  String get installationTypeTitle => 'Тип встановлення';

  @override
  String installationTypeHeader(String DISTRO) {
    return 'How do you want to install $DISTRO?';
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
  String get installationTypeEraseInfo => 'Start from scratch on your selected disk.';

  @override
  String get installationTypeAdvancedLabel => 'Додаткові можливості...';

  @override
  String get installationTypeAdvancedTitle => 'Додаткові можливості';

  @override
  String get installationTypeExperimental => 'Experimental';

  @override
  String get installationTypeNone => 'Немає';

  @override
  String get installationTypeNoneSelected => 'Нічого не вибрано';

  @override
  String get installationTypeLVM => 'Use LVM';

  @override
  String get installationTypeLVMSelected => 'LVM обрано';

  @override
  String get installationTypeLVMEncryption => 'Use LVM and encryption';

  @override
  String get installationTypeLVMEncryptionSelected => 'LVM та шифрування обрано';

  @override
  String get installationTypeEncryptInfo => 'Ключ захисту можна буде вибрати на наступному кроці.';

  @override
  String get installationTypeZFS => 'ЕКСПЕРИМЕНТАЛЬНО: Витерти диск і скористатися ZFS';

  @override
  String get installationTypeZFSEncryption => 'Erase disk and use ZFS with encryption';

  @override
  String get installationTypeZFSSelected => 'Обрано ZFS';

  @override
  String get installationTypeZFSEncryptionSelected => 'ZFS and encryption selected';

  @override
  String get installationTypeTPM => 'ЕКСПЕРИМЕНТАЛЬНО: Увімкнути апаратне шифрування диска';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return 'This is an experimental feature. It may not work with your hardware of future $DISTRO releases. <a href=\"$url\">Read about TPM encryption</a> before your choose this option.';
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
  String get installationTypeAlongsideInfo => 'Документи, музика та інші особисті файли будуть збережені. Ви можете вибрати, яку операційну систему ви бажаєте використовувати при кожному запуску комп\'ютера.';

  @override
  String get installationTypeManual => 'Щось інше';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'Ви можете створити або змінити розмір розділів самостійно, або вибрати кілька розділів для $DISTRO';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'Стерти диск і встановити $DISTRO';
  }

  @override
  String get selectGuidedStorageInfo => 'Start from scratch on your selected disk.';

  @override
  String get selectGuidedStorageDriveDropdownLabel => 'Select drive:';

  @override
  String get selectGuidedStoragePartitionDropdownLabel => 'Select partition:';

  @override
  String get selectGuidedStorageInfoLabel => 'Буде використано весь диск:';

  @override
  String get selectGuidedStorageInstallNow => 'Встановити зараз';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return 'Choose where to install $DISTRO';
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
  String get allocateDiskSpaceInvalidMountPointSlash => 'Mount points must start with \"/\"';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace => 'Mount points cannot contain spaces';

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
  String get newPartitionTableConfirmationTitle => 'Створити нову порожню таблицю розділів на цьому пристрої?';

  @override
  String get newPartitionTableConfirmationMessage => 'Ви вибрали весь пристрій для розбиття на розділи. Якщо ви продовжите створення нової таблиці розділів на ньому, всі поточні розділи будуть видалені.\n\nЗауважте, що ви зможете скасувати цю операцію пізніше, якщо захочете.';

  @override
  String get tooManyPrimaryPartitions => 'Too many primary partitions';

  @override
  String get partitionLimitReached => 'Limit reached';

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
  String get partitionFormatNone => 'Leave unformatted';

  @override
  String partitionFormatKeep(String format) {
    return 'Leave formatted as $format';
  }

  @override
  String get partitionErase => 'Відформатувати розділ';

  @override
  String get partitionMountPointLabel => 'Точка монтування:';

  @override
  String get confirmPageTitle => 'Записати зміни на диск';

  @override
  String get confirmHeader => 'Якщо ви продовжите, перелічені нижче зміни будуть записані на диски. Ви зможете внести подальші зміни вручну.';

  @override
  String get confirmDiskEncryptionLVM => 'LUKS (LVM)';

  @override
  String get confirmDiskEncryptionZFS => 'LUKS (ZFS)';

  @override
  String get confirmDiskEncryptionTPM => 'TPM';

  @override
  String get confirmDiskEncryptionNone => 'None';

  @override
  String get confirmDevicesTitle => 'Devices';

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
  String get confirmPartitionsTitle => 'Partitions';

  @override
  String get confirmPartitionTables => 'Змінено таблиці розділів наступних пристроїв:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmPartitionChanges => 'Будуть застосовані наступні зміни розділів:';

  @override
  String confirmPartitionResize(String sysname, String oldsize, String newsize) {
    return 'розмір розділу #$sysname змінено з $oldsize на $newsize';
  }

  @override
  String confirmPartitionFormatMount(String sysname, String format, String mount) {
    return 'розділ #$sysname, відформатований як $format, використано для $mount';
  }

  @override
  String confirmPartitionFormat(String sysname, String format) {
    return 'розділ #$sysname відформатовано як $format';
  }

  @override
  String confirmPartitionMount(String sysname, String mount) {
    return 'розділ #$sysname використано для $mount';
  }

  @override
  String confirmPartitionCreate(String sysname) {
    return 'створено розділ #$sysname';
  }

  @override
  String get confirmProprietarySoftwareCodecs => 'Codecs';

  @override
  String get confirmProprietarySoftwareCodecsDrivers => 'Codecs & drivers';

  @override
  String get confirmProprietarySoftwareDrivers => 'Drivers';

  @override
  String get confirmInstallButton => 'Почати встановлення';

  @override
  String get installationCompleteTitle => 'Встановлення завершено';

  @override
  String readyToUse(String system) {
    return '$system встановлена та готова до використання.';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system** has been copied to the disk';
  }

  @override
  String restartInto(String system) {
    return 'Перезавантажитися в $system';
  }

  @override
  String get restartWarningBody => 'Restart to complete the installation or continue testing.\nAny changes you make not be saved.';

  @override
  String get rebootToConfigureWarning => 'You have to restart the computer to continue the installation process.';

  @override
  String get shutdown => 'Вимкнути';

  @override
  String get restartNow => 'Restart now';

  @override
  String get continueTesting => 'Continue testing';

  @override
  String get bitlockerTitle => 'Вимкнути BitLocker';

  @override
  String get bitlockerHeader => 'Turn off BitLocker to continue';

  @override
  String bitlockerDescription(String option) {
    return 'На цьому комп\'ютері використовується шифрування Windows BitLocker.\nПеред встановленням Ubuntu потрібно вимкнути BitLocker у Windows.';
  }

  @override
  String bitlockerInstructions(String url) {
    return 'Для отримання інструкцій відкрийте цю сторінку на телефоні або іншому пристрої: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get restartIntoWindows => 'Перезавантажити в Windows';

  @override
  String get restartIntoWindowsTitle => 'Restart into Windows?';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return 'Are you sure you want to restart your computer? You will need to restart the $DISTRO installation later to finish installing $DISTRO.';
  }

  @override
  String installationSlidesTitle(String RELEASE) {
    return 'Welcome to $RELEASE';
  }

  @override
  String get installationSlidesAvailable => 'Available:';

  @override
  String get installationSlidesIncluded => 'Included:';

  @override
  String get installationSlidesWelcomeTitle => 'Fast, free and full of new features';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return 'The latest version of $DISTRO makes computing easier than ever.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'Whether you\'re a developer, creator, gamer or administrator you\'ll find new tools to improve your productivity and enhance your experience in $RELEASE.';
  }

  @override
  String get installationSlidesSoftwareTitle => 'All the applications you need';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'Install, manage and update all your apps in Ubuntu Software, including thousands of applications from both the Snap Store and $DISTRO archive.';
  }

  @override
  String get installationSlidesDevelopmentTitle => 'Develop with the best of open source';

  @override
  String installationSlidesDevelopmentBody(String DISTRO) {
    return '$DISTRO is the ideal workstation for app or web development, data science and AI/ML as well as devops and administration. Every $DISTRO release includes the latest toolchains and supports all major IDEs.';
  }

  @override
  String get installationSlidesCreativityTitle => 'Enhance your creativity';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return 'If you\'re an animator, designer, video creator or game developer it\'s easy to bring your workflows to $DISTRO with support for open source and industry standard software and applications.';
  }

  @override
  String get installationSlidesGamingTitle => 'Great for gaming';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return '$DISTRO supports the latest NVIDIA and Mesa drivers to improve performance and compatibility. Thousands of Windows titles play great on $DISTRO via applications like Steam with no additional configuration.';
  }

  @override
  String get installationSlidesSecurityTitle => 'Private and secure';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return '$DISTRO provides all of the tools you need to stay private and secure online. With built in firewall and VPN support and a host of privacy-centric applications to ensure you are in full control of your data.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return 'All $DISTRO LTS releases come with five years of security patching included, extending to ten years with an Ubuntu Pro subscription.';
  }

  @override
  String get installationSlidesProductivityTitle => 'Power up your productivity';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return '$DISTRO Desktop includes LibreOffice, a suite of Microsoft Office compatible open source applications for documents, spreadsheets and presentations. Popular collaboration tools are also available.';
  }

  @override
  String get installationSlidesAccessibilityTitle => 'Access for everyone';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return 'At the heart of the $DISTRO philosophy is the belief that computing is for everyone. With advanced accessibility tools and options to change language, colours and text size, $DISTRO makes computing easy - whoever and wherever you are.';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'Orca Screen Reader';

  @override
  String get installationSlidesAccessibilityLanguages => 'Language support';

  @override
  String get installationSlidesSupportTitle => 'Help and support';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return 'The official $DISTRO documentation is available both online and via the Help icon in the dock.';
  }

  @override
  String get installationSlidesSupportCommunity => 'Ask Ubuntu covers a range of questions and responses and the Ubuntu Discourse provides guides and discussions for new and experienced users.';

  @override
  String get installationSlidesSupportEnterprise => 'For enterprise users Canonical provides commercial support to make it easy to onboard and manage Ubuntu securely in the workplace.';

  @override
  String get installationSlidesSupportResources => 'Helpful resources:';

  @override
  String get installationSlidesSupportDocumentation => 'Official documentation';

  @override
  String get installationSlidesSupportUbuntuPro => 'Enterprise-grade 24/7 support with Ubuntu Pro';

  @override
  String get copyingFiles => 'Копіювання файлів…';

  @override
  String get installingSystem => 'Встановлення системи…';

  @override
  String get configuringSystem => 'Налаштування системи…';

  @override
  String get installationFailed => 'Встановлення не вдалося';

  @override
  String get notEnoughDiskSpaceTitle => 'Вибачте';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return 'Not enough disk space to install $DISTRO';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'Available:';

  @override
  String get notEnoughDiskSpaceRequired => 'Required:';

  @override
  String get refreshPageTitle => 'Update available';

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
    return 'The current $snap version is $version.';
  }

  @override
  String refreshInstall(String version) {
    return 'Update to version $version';
  }

  @override
  String refreshUpToDate(String version) {
    return 'The current version $version is up-to-date.';
  }

  @override
  String refreshUpdating(String snap) {
    return 'Updating $snap...';
  }

  @override
  String get refreshRestart => 'Please close the installer and relaunch to continue';

  @override
  String get refreshCloseLabel => 'Close installer';

  @override
  String refreshSnapPrerequisites(String snap) {
    return 'Ensuring $snap prerequisites...';
  }

  @override
  String refreshSnapRefresh(String snap) {
    return 'Refreshing $snap...';
  }

  @override
  String refreshSnapCheckRerefresh(String snap) {
    return 'Checking $snap re-refresh...';
  }

  @override
  String refreshSnapPrepare(String snap) {
    return 'Preparing $snap...';
  }

  @override
  String refreshSnapDownload(String snap) {
    return 'Downloading $snap...';
  }

  @override
  String refreshSnapValidate(String snap) {
    return 'Validating $snap...';
  }

  @override
  String refreshSnapMount(String snap) {
    return 'Mounting $snap...';
  }

  @override
  String refreshSnapStopServices(String snap) {
    return 'Stopping $snap services...';
  }

  @override
  String refreshSnapRemoveAliases(String snap) {
    return 'Removing $snap aliases...';
  }

  @override
  String refreshSnapUnlink(String snap) {
    return 'Unlinking $snap...';
  }

  @override
  String refreshSnapUpdateAssets(String snap) {
    return 'Updating $snap assets...';
  }

  @override
  String refreshSnapUpdateKernelCommandLine(String snap) {
    return 'Updating $snap kernel command line...';
  }

  @override
  String refreshSnapCopyData(String snap) {
    return 'Copying $snap data...';
  }

  @override
  String refreshSnapSetupProfiles(String snap) {
    return 'Setting up $snap security profiles...';
  }

  @override
  String refreshSnapLink(String snap) {
    return 'Linking $snap...';
  }

  @override
  String refreshSnapAutoConnect(String snap) {
    return 'Connecting $snap plugs and slots...';
  }

  @override
  String refreshSnapSetAutoAliases(String snap) {
    return 'Setting automatic $snap aliases...';
  }

  @override
  String refreshSnapSetupAliases(String snap) {
    return 'Setting up $snap aliases...';
  }

  @override
  String refreshSnapStartServices(String snap) {
    return 'Starting $snap services...';
  }

  @override
  String refreshSnapCleanup(String snap) {
    return 'Cleaning up $snap...';
  }

  @override
  String get recoveryKeyTitle => 'TPM recovery key';

  @override
  String get recoveryKeyCommand => 'You can access your recovery key after installation with the following command:';

  @override
  String recoveryKeyWarning(String color) {
    return '<font color=\"$color\">Warning:</font> If you lose this security key, all data will be lost. If you need to, write down your key and keep it in a safe place elsewhere.';
  }

  @override
  String get validate => 'Validate';
}
