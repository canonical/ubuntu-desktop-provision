import 'ubuntu_bootstrap_localizations.dart';

/// The translations for Serbian (`sr`).
class UbuntuBootstrapLocalizationsSr extends UbuntuBootstrapLocalizations {
  UbuntuBootstrapLocalizationsSr([String locale = 'sr']) : super(locale);

  @override
  String get appTitle => 'Убунту десктоп инсталација';

  @override
  String windowTitle(String RELEASE) {
    return 'Инсталирај $RELEASE';
  }

  @override
  String get autoinstallTitle => 'Тип инсталације';

  @override
  String autoinstallHeader(String DISTRO) {
    return 'Како желите да инсталирате $DISTRO?';
  }

  @override
  String get autoinstallInstructions => 'Унесите URL или локалну путању до autoinstall.yaml:';

  @override
  String get autoinstallInteractiveOption => 'Интерактивна инсталација';

  @override
  String get autoinstallInteractiveDescription => 'За кориснике који желе да буду вођени корак по корак кроз инсталацију.';

  @override
  String get autoinstallAutomatedOption => 'Automated installation';

  @override
  String get autoinstallAutomatedDescription => 'For advanced users who have an autoinstall.yaml for consistent and repeatable system setups.';

  @override
  String get changeButtonText => 'Измени';

  @override
  String get quitButtonText => 'Напусти инсталацију';

  @override
  String loadingPageTitle(String DISTRO) {
    return 'Добродошли у $DISTRO';
  }

  @override
  String loadingHeader(String DISTRO) {
    return 'Припрема $DISTRO…';
  }

  @override
  String get warningLabel => 'Упозорење:';

  @override
  String tryOrInstallTitle(String DISTRO) {
    return 'Испробајте или инсталирајте $DISTRO';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return 'Шта желите да урадите са $DISTRO?';
  }

  @override
  String get tryOrInstallRepairOption => 'Поправи инсталацију';

  @override
  String get tryOrInstallRepairDescription => 'Поправка ће поново инсталирати све програме без дирања докумената или подешавања.';

  @override
  String tryOption(String RELEASE) {
    return 'Испробај $RELEASE';
  }

  @override
  String tryDescription(String RELEASE) {
    return 'Можете испробати $RELEASE без прављења измена на вашем рачунару.';
  }

  @override
  String installOption(String RELEASE) {
    return 'Инсталирај $RELEASE';
  }

  @override
  String installDescription(String RELEASE) {
    return 'Инсталирај $RELEASE поред (или уместо) вашег тренутног оперативног система. За ово неће требати пуно времена.';
  }

  @override
  String tryOrInstallReleaseNotesLabel(String url) {
    return 'Можда желите да прочитате <a href=\"$url\">напомене о издању</a>.';
  }

  @override
  String get rstTitle => 'Искључи RST';

  @override
  String get rstHeader => 'Turn off RST to continue';

  @override
  String rstDescription(String DISTRO) {
    return 'This computer uses Intel RST (Rapid Storage Technology). You need to turn off RST in Windows before installing $DISTRO.';
  }

  @override
  String rstInstructions(String url) {
    return 'За инструкције, отворите ову страницу на телефону или другом уређају: <a href=\"https://$url\"></a>';
  }

  @override
  String get configureSecureBootTitle => 'Конфигуришите Secure Boot';

  @override
  String get configureSecureBootDescription => 'Изабрали сте да инсталирате софтвер за управљачке програме треће стране. Ово захтева искључивање Secure Boot-а.\nДа бисте то урадили, потребно је да сада изаберете безбедносни кључ и унесете га када се систем поново покрене.';

  @override
  String get configureSecureBootOption => 'Конфигуришите Secure Boot';

  @override
  String get chooseSecurityKey => 'Изаберите безбедносни кључ';

  @override
  String get confirmSecurityKey => 'Потврдите безбедносни кључ';

  @override
  String get dontInstallDriverSoftwareNow => 'Не инсталирајте софтвер за управљачке програме за сада';

  @override
  String get dontInstallDriverSoftwareNowDescription => 'Можете га инсталирати касније из Software & Updates.';

  @override
  String get configureSecureBootSecurityKeyRequired => 'Потребан је безбедносни кључ';

  @override
  String get secureBootSecurityKeysDontMatch => 'Безбедносни кључеви се не поклапају';

  @override
  String get showSecurityKey => 'Прикажи';

  @override
  String get hideSecurityKey => 'Сакриј';

  @override
  String get updatesOtherSoftwarePageTitle => 'Апликације';

  @override
  String get updatesOtherSoftwarePageDescription => 'Које апликације желите да инсталирате за почетак?';

  @override
  String get codecsAndDriversPageTitle => 'Оптимизујте свој рачунар';

  @override
  String get codecsAndDriversPageDescription => 'Инсталирати препоручени власнички софтвер?';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return '$DISTRO не долази са власничким софтвером по подразумеваним подешавањима. Инсталирање додатног софтвера може побољшати перформансе вашег рачунара.';
  }

  @override
  String get codecsAndDriversNvidiaNote => 'Откривена је NVIDIA графичка картица';

  @override
  String get codecsAndDriversNvidiaBody => 'За најбоље перформансе NVIDIA графичких картица, препоручује се инсталирање додатних управљачких програма.';

  @override
  String get fullInstallationTitle => 'Проширени избор';

  @override
  String get fullInstallationSubtitle => 'Избор алата за канцеларију, услужних програма и веб прегледача који су прилагођени за рад ван мреже.';

  @override
  String get minimalInstallationTitle => 'Подразумевани избор';

  @override
  String get minimalInstallationSubtitle => 'Само основне ствари, веб прегледач и основни услужни програми.';

  @override
  String get otherOptions => 'Друге опције';

  @override
  String get installThirdPartyTitle => 'Инсталирајте софтвер треће стране за графику и Wi-Fi хардвер, као и додатне медијске формате';

  @override
  String get installThirdPartySubtitle => 'Овај софтвер подлеже условима лиценце који су укључени у његову документацију. Неки су власнички.';

  @override
  String get installDriversTitle => 'Инсталирајте софтвер треће стране за графику и Wi-Fi хардвер';

  @override
  String get installDriversSubtitle => 'Укључујући, али не ограничавајући се на NVIDIA управљачке програме и слично';

  @override
  String get installCodecsTitle => 'Преузмите и инсталирајте подршку за додатне медијске формате';

  @override
  String get installCodecsSubtitle => 'Укључујући, али не ограничавајући се на MP3, MP4, MOV и слично';

  @override
  String get batteryWarning => 'Рачунар није прикључен на извор напајања.';

  @override
  String get offlineWarning => 'Тренутно сте ван мреже';

  @override
  String get choosePassphraseTitle => 'Disk passphrase';

  @override
  String get choosePassphraseHeader => 'Направите лозинку';

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
  String get installationTypeTitle => 'Подешавање диска';

  @override
  String installationTypeHeader(String DISTRO) {
    return 'Како желите да инсталирате $DISTRO?';
  }

  @override
  String installationTypeOSDetected(String os) {
    return 'Овај рачунар тренутно има $os. Шта желите да урадите?';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return 'Овај рачунар тренутно има $os1 и $os2. Шта желите да урадите?';
  }

  @override
  String get installationTypeMultiOSDetected => 'Овај рачунар тренутно има више оперативних система. Шта желите да урадите?';

  @override
  String get installationTypeNoOSDetected => 'Овај рачунар тренутно нема детектованих оперативних система. Шта желите да урадите?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'Обриши диск и инсталирај $DISTRO';
  }

  @override
  String get installationTypeEraseInfo => 'Start from scratch on your selected disk.';

  @override
  String get installationTypeAdvancedLabel => 'Advanced features...';

  @override
  String get installationTypeAdvancedTitle => 'Advanced features';

  @override
  String get installationTypeExperimental => 'Експериментално';

  @override
  String get installationTypeNone => 'None';

  @override
  String get installationTypeNoneSelected => 'Ништа није изабрано';

  @override
  String get installationTypeLVM => 'Use LVM';

  @override
  String get installationTypeLVMSelected => 'LVM изабран';

  @override
  String get installationTypeLVMEncryption => 'Use LVM and encryption';

  @override
  String get installationTypeLVMEncryptionSelected => 'LVM и енкрипција изабрани';

  @override
  String get installationTypeEncryptInfo => 'У следећем кораку ћете изабрати безбедносни кључ.';

  @override
  String get installationTypeZFS => 'Erase disk and use ZFS';

  @override
  String get installationTypeZFSEncryption => 'Erase disk and use ZFS with encryption';

  @override
  String get installationTypeZFSSelected => 'ZFS изабран';

  @override
  String get installationTypeZFSEncryptionSelected => 'ZFS и енкрипција изабрани';

  @override
  String get installationTypeTPM => 'Enable hardware-backed full disk encryption';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return 'This is an experimental feature. It may not work with your hardware or future $DISTRO releases. <a href=\"$url\">Read about TPM encryption</a> before you choose this option.';
  }

  @override
  String get installationTypeTPMSelected => 'TPM изабран';

  @override
  String installationTypeReinstall(String os) {
    return 'Обриши $os и поново инсталирај';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">Упозорење:</font> Ово ће обрисати све ваше $os програме, документе, фотографије, музику и све друге фајлове.';
  }

  @override
  String installationTypeAlongside(String product, String os) {
    return 'Инсталирај $product поред $os';
  }

  @override
  String installationTypeAlongsideDual(String product, String os1, String os2) {
    return 'Инсталирај $product поред $os1 и $os2';
  }

  @override
  String installationTypeAlongsideMulti(String product) {
    return 'Install $product alongside them';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return 'Инсталирај $product поред других партиција';
  }

  @override
  String get installationTypeAlongsideInfo => 'You can choose your operating system during boot.';

  @override
  String get installationTypeManual => 'Ручна инсталација';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'За напредне кориснике који траже прилагођена подешавања диска.';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'Обриши диск и инсталирај $DISTRO';
  }

  @override
  String get selectGuidedStorageInfo => 'Почните од нуле на изабраном диску.';

  @override
  String get selectGuidedStorageDriveDropdownLabel => 'Изаберите диск:';

  @override
  String get selectGuidedStoragePartitionDropdownLabel => 'Изаберите партицију:';

  @override
  String get selectGuidedStorageInfoLabel => 'Цео диск ће бити коришћен:';

  @override
  String get selectGuidedStorageInstallNow => 'Инсталирај сада';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return 'Изаберите где да инсталирате $DISTRO';
  }

  @override
  String get installAlongsideSpaceDivider => 'Доделите простор на диску повлачењем раздвајача испод:';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return '$num мањих партиција је скривено, користите <a href=\"$url\">напредни алат за партиционисање</a> за више контроле';
  }

  @override
  String get installAlongsideResizePartition => 'Промени величину партиције';

  @override
  String get installAlongsideAllocateSpace => 'Додели простор';

  @override
  String get installAlongsideFiles => 'Фајлови';

  @override
  String get installAlongsidePartition => 'Партиција:';

  @override
  String get installAlongsideSize => 'Величина:';

  @override
  String get installAlongsideAvailable => 'Доступно:';

  @override
  String get allocateDiskSpace => 'Ручно партиционисање';

  @override
  String get allocateDiskSpaceInvalidMountPointSlash => 'Монтиране тачке морају почињати са \"/\"';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace => 'Монтиране тачке не могу садржати размаке';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(Object format, Object mountpoint) {
    return '$format није подржан фајл систем за $mountpoint';
  }

  @override
  String get diskHeadersDevice => 'Уређај';

  @override
  String get diskHeadersType => 'Тип';

  @override
  String get diskHeadersMountPoint => 'Монтирана тачка';

  @override
  String get diskHeadersSize => 'Величина';

  @override
  String get diskHeadersUsed => 'Коришћено';

  @override
  String get diskHeadersSystem => 'Систем';

  @override
  String get diskHeadersFormat => 'Форматирај';

  @override
  String get freeDiskSpace => 'Слободан простор';

  @override
  String get newPartitionTable => 'Нова табела партиција';

  @override
  String get newPartitionTableConfirmationTitle => 'Нова празна партиција';

  @override
  String get newPartitionTableConfirmationMessage => 'Креирање нове табеле партиција на целом уређају ће уклонити све тренутне партиције. Ова операција може бити поништена ако је потребно.';

  @override
  String get tooManyPrimaryPartitions => 'Превише примарних партиција';

  @override
  String get partitionLimitReached => 'Достигнут лимит';

  @override
  String get bootLoaderDevice => 'Уређај за инсталацију бутлоадера';

  @override
  String get partitionCreateTitle => 'Креирај партицију';

  @override
  String get partitionEditTitle => 'Уреди партицију';

  @override
  String get partitionSizeLabel => 'Величина:';

  @override
  String get partitionTypeLabel => 'Тип за нову партицију:';

  @override
  String get partitionTypePrimary => 'Примарна';

  @override
  String get partitionTypeLogical => 'Логичка';

  @override
  String get partitionLocationLabel => 'Локација за нову партицију:';

  @override
  String get partitionLocationBeginning => 'Почетак овог простора';

  @override
  String get partitionLocationEnd => 'Крај овог простора';

  @override
  String get partitionFormatLabel => 'Коришћено као:';

  @override
  String get partitionFormatNone => 'Остави неформатирано';

  @override
  String partitionFormatKeep(String format) {
    return 'Остави форматирано као $format';
  }

  @override
  String get partitionErase => 'Форматирај партицију';

  @override
  String get partitionMountPointLabel => 'Монтирана тачка:';

  @override
  String get confirmPageTitle => 'Спремно за инсталацију';

  @override
  String get confirmHeader => 'Прегледајте своје изборе';

  @override
  String get confirmDiskEncryptionLVM => 'LUKS (LVM)';

  @override
  String get confirmDiskEncryptionZFS => 'LUKS (ZFS)';

  @override
  String get confirmDiskEncryptionTPM => 'TPM';

  @override
  String get confirmDiskEncryptionNone => 'Ништа';

  @override
  String get confirmDevicesTitle => 'Уређаји';

  @override
  String get confirmEntryApplications => 'Апликације';

  @override
  String get confirmEntryDiskSetup => 'Disk setup';

  @override
  String get confirmEntryDiskEncryption => 'Енкрипција диска';

  @override
  String get confirmEntryInstallationDisk => 'Инсталациони диск';

  @override
  String get confirmEntryProprietarySoftware => 'Пропријетарни софтвер';

  @override
  String get confirmSectionGeneralTitle => 'Опште';

  @override
  String get confirmSectionSecurityAndMoreTitle => 'Безбедност и више';

  @override
  String get confirmPartitionsTitle => 'Партиције';

  @override
  String get confirmPartitionTables => 'Табеле партиција следећих уређаја су промењене:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmPartitionChanges => 'The following partition changes are going to be applied:';

  @override
  String confirmPartitionResize(String sysname, String oldsize, String newsize) {
    return 'partition <b>$sysname</b> resized from <b>$oldsize</b> to <b>$newsize</b>';
  }

  @override
  String confirmPartitionFormatMount(String sysname, String format, String mount) {
    return 'partition <b>$sysname</b> formatted as <b>$format</b> used for <b>$mount</b>';
  }

  @override
  String confirmPartitionFormat(String sysname, String format) {
    return 'partition <b>$sysname</b> formatted as <b>$format</b>';
  }

  @override
  String confirmPartitionMount(String sysname, String mount) {
    return 'partition <b>$sysname</b> used for <b>$mount</b>';
  }

  @override
  String confirmPartitionCreate(String sysname) {
    return 'partition <b>$sysname</b> created';
  }

  @override
  String get confirmProprietarySoftwareCodecs => 'Кодеци';

  @override
  String get confirmProprietarySoftwareCodecsDrivers => 'Кодеци и драјвери';

  @override
  String get confirmProprietarySoftwareDrivers => 'Драјвери';

  @override
  String get confirmInstallButton => 'Инсталирај';

  @override
  String get installationCompleteTitle => 'Инсталација завршена';

  @override
  String readyToUse(String system) {
    return '$system је инсталиран и спреман за коришћење';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system** је копиран на диск';
  }

  @override
  String restartInto(String system) {
    return 'Поново покрени у $system';
  }

  @override
  String get restartWarningBody => 'Поново покрените да бисте завршили инсталацију или наставите са тестирањем.\nСве промене које направите неће бити сачуване.';

  @override
  String get rebootToConfigureWarning => 'Морате поново покренути рачунар да бисте наставили процес инсталације.';

  @override
  String get shutdown => 'Искључи';

  @override
  String get restartNow => 'Поново покрени сада';

  @override
  String get continueTesting => 'Настави са тестирањем';

  @override
  String get bitlockerTitle => 'BitLocker is enabled';

  @override
  String get bitlockerHeader => 'Turn off BitLocker to continue';

  @override
  String bitlockerDescription(String option) {
    return 'This computer uses Windows BitLocker encryption.\nYou need to use Windows to create free space or go back and choose \'$option\' to continue.';
  }

  @override
  String bitlockerInstructions(String url) {
    return 'For instructions, scan the QR code on another device or visit: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get restartIntoWindows => 'Поново покрени у Windows';

  @override
  String get restartIntoWindowsTitle => 'Поново покрени у Windows?';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return 'Да ли сте сигурни да желите да поново покренете рачунар? Биће потребно да поново покренете инсталацију $DISTRO касније да бисте завршили инсталацију $DISTRO.';
  }

  @override
  String installationSlidesTitle(String RELEASE) {
    return 'Добродошли у $RELEASE';
  }

  @override
  String get installationSlidesAvailable => 'Доступно:';

  @override
  String get installationSlidesIncluded => 'Укључено:';

  @override
  String get installationSlidesWelcomeTitle => 'Брзо, бесплатно и пуно нових функција';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return 'Најновија верзија $DISTRO чини рачунарство лакшим него икада.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'Било да сте програмер, креатор, гејмер или администратор, пронаћи ћете нове алате за побољшање продуктивности и унапређење вашег искуства у $RELEASE.';
  }

  @override
  String get installationSlidesSoftwareTitle => 'Све апликације које су вам потребне';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'Инсталирајте, управљајте и ажурирајте све своје апликације у Ubuntu Software, укључујући хиљаде апликација из Snap Store и $DISTRO архиве.';
  }

  @override
  String get installationSlidesDevelopmentTitle => 'Развијајте са најбољим од отвореног кода';

  @override
  String installationSlidesDevelopmentBody(String DISTRO) {
    return '$DISTRO је идеална радна станица за развој апликација или веба, науку о подацима и AI/ML, као и за devops и администрацију. Свака $DISTRO верзија укључује најновије алате и подржава све главне IDE-ове.';
  }

  @override
  String get installationSlidesCreativityTitle => 'Унапредите своју креативност';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return 'Ако сте аниматор, дизајнер, видео креатор или програмер игара, лако је пренети своје радне токове на $DISTRO уз подршку за софтвер и апликације отвореног кода и индустријских стандарда.';
  }

  @override
  String get installationSlidesGamingTitle => 'Одлично за гејминг';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return '$DISTRO подржава најновије NVIDIA и Mesa драјвере за побољшање перформанси и компатибилности. Хиљаде Windows наслова одлично раде на $DISTRO преко апликација као што је Steam без додатне конфигурације.';
  }

  @override
  String get installationSlidesSecurityTitle => 'Приватно и безбедно';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return '$DISTRO пружа све алате који су вам потребни да останете приватни и безбедни на мрежи. Са уграђеном подршком за заштитни зид и VPN и мноштвом апликација усмерених на приватност, осигурава да имате потпуну контролу над својим подацима.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return 'Све $DISTRO LTS верзије долазе са пет година укључених безбедносних закрпа, које се продужавају на десет година уз претплату на Ubuntu Pro.';
  }

  @override
  String get installationSlidesProductivityTitle => 'Повећајте своју продуктивност';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return '$DISTRO Десктоп укључује LibreOffice, пакет апликација отвореног кода компатибилних са Microsoft Office-ом за документе, табеле и презентације. Популарни алати за сарадњу су такође доступни.';
  }

  @override
  String get installationSlidesAccessibilityTitle => 'Приступ за све';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return 'У срцу $DISTRO филозофије је уверење да је рачунарство за све. Са напредним алатима за приступачност и опцијама за промену језика, боја и величине текста, $DISTRO чини рачунарство лаким - ко год и где год да сте.';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'Орка читач екрана';

  @override
  String get installationSlidesAccessibilityLanguages => 'Подршка за језик';

  @override
  String get installationSlidesSupportTitle => 'Помоћ и подршка';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return 'Званична $DISTRO документација је доступна и онлајн и преко иконе Помоћ у доку.';
  }

  @override
  String get installationSlidesSupportCommunity => 'Ask Ubuntu покрива низ питања и одговора, а Ubuntu Discourse пружа водиче и дискусије за нове и искусне кориснике.';

  @override
  String get installationSlidesSupportEnterprise => 'За пословне кориснике Canonical пружа комерцијалну подршку како би олакшао увођење и управљање Ubuntu-ом на сигуран начин у радном окружењу.';

  @override
  String get installationSlidesSupportResources => 'Корисни ресурси:';

  @override
  String get installationSlidesSupportDocumentation => 'Званична документација';

  @override
  String get installationSlidesSupportUbuntuPro => 'Подршка на нивоу предузећа 24/7 са Ubuntu Pro';

  @override
  String get copyingFiles => 'Копирање фајлова…';

  @override
  String get installingSystem => 'Инсталирање система…';

  @override
  String get configuringSystem => 'Подешавање система…';

  @override
  String get installationFailed => 'Инсталација није успела';

  @override
  String get notEnoughDiskSpaceTitle => 'Недовољно простора на диску';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return 'Недовољно простора на диску за инсталацију $DISTRO';
  }

  @override
  String notEnoughDiskSpaceBody(String DISTRO) {
    return 'Изабрани диск нема довољно простора за инсталацију $DISTRO. Напустите инсталер да бисте ослободили простор или изаберите други диск.';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'Доступно:';

  @override
  String get notEnoughDiskSpaceRequired => 'Потребно:';

  @override
  String get refreshPageTitle => 'Ажурирање доступно';

  @override
  String get refreshHeader => 'Доступно је ажурирање за инсталер';

  @override
  String get refreshUpdateNow => 'Ажурирај сада';

  @override
  String get refreshInfo => 'Ажурирајте на најновију верзију за побољшану поузданост и више функција.';

  @override
  String get refreshReady => 'Ажурирање спремно';

  @override
  String refreshCurrent(String snap, String version) {
    return 'Тренутна $snap верзија је $version.';
  }

  @override
  String refreshInstall(String version) {
    return 'Ажурирај на верзију $version';
  }

  @override
  String refreshUpToDate(String version) {
    return 'Тренутна верзија $version је ажурирана.';
  }

  @override
  String refreshUpdating(String snap) {
    return 'Ажурирање $snap...';
  }

  @override
  String get refreshRestart => 'Молимо затворите инсталер и поново га покрените да бисте наставили';

  @override
  String get refreshCloseLabel => 'Затвори инсталер';

  @override
  String refreshSnapPrerequisites(String snap) {
    return 'Обезбеђивање $snap предуслова...';
  }

  @override
  String refreshSnapRefresh(String snap) {
    return 'Освежавање $snap...';
  }

  @override
  String refreshSnapCheckRerefresh(String snap) {
    return 'Провера $snap поновног освежавања...';
  }

  @override
  String refreshSnapPrepare(String snap) {
    return 'Припрема $snap...';
  }

  @override
  String refreshSnapDownload(String snap) {
    return 'Преузимање $snap...';
  }

  @override
  String refreshSnapValidate(String snap) {
    return 'Валидација $snap...';
  }

  @override
  String refreshSnapMount(String snap) {
    return 'Монтирање $snap...';
  }

  @override
  String refreshSnapStopServices(String snap) {
    return 'Заустављање $snap сервиса...';
  }

  @override
  String refreshSnapRemoveAliases(String snap) {
    return 'Уклањање $snap алијаса...';
  }

  @override
  String refreshSnapUnlink(String snap) {
    return 'Уклањање везе $snap...';
  }

  @override
  String refreshSnapUpdateAssets(String snap) {
    return 'Ажурирање $snap ресурса...';
  }

  @override
  String refreshSnapUpdateKernelCommandLine(String snap) {
    return 'Ажурирање $snap командне линије кернела...';
  }

  @override
  String refreshSnapCopyData(String snap) {
    return 'Копирање $snap података...';
  }

  @override
  String refreshSnapSetupProfiles(String snap) {
    return 'Подешавање $snap безбедносних профила...';
  }

  @override
  String refreshSnapLink(String snap) {
    return 'Повезивање $snap...';
  }

  @override
  String refreshSnapAutoConnect(String snap) {
    return 'Повезивање $snap прикључака и слотова...';
  }

  @override
  String refreshSnapSetAutoAliases(String snap) {
    return 'Подешавање аутоматских $snap алијаса...';
  }

  @override
  String refreshSnapSetupAliases(String snap) {
    return 'Подешавање $snap алијаса...';
  }

  @override
  String refreshSnapStartServices(String snap) {
    return 'Покретање $snap сервиса...';
  }

  @override
  String refreshSnapCleanup(String snap) {
    return 'Чишћење $snap...';
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
