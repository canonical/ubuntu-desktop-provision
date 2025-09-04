// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_bootstrap_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Belarusian (`be`).
class UbuntuBootstrapLocalizationsBe extends UbuntuBootstrapLocalizations {
  UbuntuBootstrapLocalizationsBe([String locale = 'be']) : super(locale);

  @override
  String get appTitle => 'Сродак усталявання Ubuntu Desktop';

  @override
  String windowTitle(String RELEASE) {
    return 'Усталяваць $RELEASE';
  }

  @override
  String get autoinstallDirectTitle => 'Automated installation';

  @override
  String get autoinstallDirectHeader => 'Import autoinstall file';

  @override
  String get autoinstallDirectUrlLabel =>
      'You can enter the URL of an autoinstall file:';

  @override
  String get autoinstallDirectFileLabel => 'Or select a local file:';

  @override
  String get autoinstallDirectFileButtonLabel => 'Select file...';

  @override
  String get autoinstallDirectFileClearButtonLabel => 'Clear file';

  @override
  String get autoinstallDirectFilePickerTitle => 'Choose file';

  @override
  String get autoinstallDirectFilePickerFilterLabel => 'YAML files';

  @override
  String get autoinstallDirectImportButtonLabel => 'Import';

  @override
  String get autoinstallDirectErrorNetworkTitle =>
      'Autoinstall file is not reachable';

  @override
  String get autoinstallDirectErrorNetworkBody =>
      'Check the URL is correct, test your internet connection, or try later.';

  @override
  String get autoinstallDirectErrorInvalidUrlTitle => 'Invalid URL';

  @override
  String get autoinstallDirectErrorInvalidUrlBody =>
      'Check the URL is correct or select a local file.';

  @override
  String get autoinstallDirectErrorInvalidContentTitle =>
      'Invalid autoinstall file';

  @override
  String get autoinstallDirectErrorInvalidContentBody =>
      'Check the file or provide a different one.';

  @override
  String get autoinstallDirectErrorFileSystemTitle =>
      'Autoinstall file is not readable';

  @override
  String get autoinstallDirectErrorFileSystemBody =>
      'Check your permissions or provide a different file.';

  @override
  String get autoinstallDirectErrorUnkownTitle => 'Unknown error';

  @override
  String get autoinstallTitle => 'Тып усталёўкі';

  @override
  String autoinstallHeader(String DISTRO) {
    return 'Як вы хочаце ўсталяваць $DISTRO?';
  }

  @override
  String get autoinstallInstructions => 'Увядзіце URL-адрас autoinstall.yaml:';

  @override
  String get autoinstallInteractiveOption => 'Інтэрактыўнае ўсталяванне';

  @override
  String get autoinstallInteractiveDescription =>
      'Для карыстальнікаў, якія хочуць атрымаць дэтальную дапамогу з усталяваннем.';

  @override
  String get autoinstallDirectOption => 'Automated with autoinstall file';

  @override
  String get autoinstallDirectDescription =>
      'For advanced users who have an autoinstall.yaml for consistent and repeatable system setups.';

  @override
  String get autoinstallLandscapeOption => 'Automated with Landscape';

  @override
  String get autoinstallLandscapeDescription =>
      'For users in organizations that provide an autoinstall file via Landscape.';

  @override
  String get changeButtonText => 'Змяніць';

  @override
  String get quitButtonText => 'Выйсці з усталявання';

  @override
  String loadingPageTitle(String DISTRO) {
    return 'Вітаем у $DISTRO';
  }

  @override
  String loadingHeader(String DISTRO) {
    return 'Падрыхтоўка $DISTRO…';
  }

  @override
  String get warningLabel => 'Папярэджанне:';

  @override
  String tryOrInstallTitle(String DISTRO) {
    return 'Паспрабаваць або ўсталяваць $DISTRO';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return 'Што вы хочаце зрабіць з $DISTRO?';
  }

  @override
  String get tryOrInstallRepairOption => 'Выправіць усталёўку';

  @override
  String get tryOrInstallRepairDescription =>
      'Падчас выпраўлення будзе пераўсталявана ўсё праграмнае забеспячэнне. Дакументы і налады закрануты не будуць.';

  @override
  String tryOption(String RELEASE) {
    return 'Паспрабаваць $RELEASE';
  }

  @override
  String tryDescription(String RELEASE) {
    return 'Вы можаце паспрабаваць $RELEASE без аніякіх змен на вашым камп\'ютары.';
  }

  @override
  String installOption(String RELEASE) {
    return 'Усталяваць $RELEASE';
  }

  @override
  String installDescription(String RELEASE) {
    return 'Усталяваць $RELEASE побач (або замест) вашай бягучай аперацыйнай сістэмы. Гэта не зойме шмат часу.';
  }

  @override
  String tryOrInstallReleaseNotesLabel(String url) {
    return 'Можаце пачытаць <a href=\"$url\">нататкі да выпуску</a>.';
  }

  @override
  String get rstTitle => 'Выяўлены RST';

  @override
  String get rstHeader => 'Выключыць RST для працягу';

  @override
  String get rstDisable =>
      'Your computer uses Intel RST (Rapid Storage Technology). You can disable RST either in:';

  @override
  String get rstDisableWindows =>
      'Windows, if you are using a dual boot setup with Windows';

  @override
  String get rstDisableBios => 'The BIOS settings';

  @override
  String rstInstructions(String url) {
    return 'Для атрымання даведкі адсканіруйце QR-код на іншай прыладзе або наведайце: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'Сканфігурыраваць Secure Boot';

  @override
  String get configureSecureBootDescription =>
      'Для ўсталявання вы выбралі драйвер ад старонняга пастаўшчыка праграмнага забеспячэння. Для гэтага вам неабходна адключыць Secure Boot. Пасля гэтага, вам неабходна будзе выбраць ключ бяспекі, а потым увесці яго пры перазапуску сістэмы.';

  @override
  String get configureSecureBootOption => 'Сканфігурыраваць Secure Boot';

  @override
  String get chooseSecurityKey => 'Выберыце ключ бяспекі';

  @override
  String get confirmSecurityKey => 'Пацвердзіце ключ бяспекі';

  @override
  String get dontInstallDriverSoftwareNow =>
      'Пакуль не ўсталёўваць драйвер праграмнага забеспячэння';

  @override
  String get dontInstallDriverSoftwareNowDescription =>
      'Вы можаце ўсталяваць яго пазней у раздзеле «Праграмнае забеспячэнне і абнаўленні».';

  @override
  String get configureSecureBootSecurityKeyRequired =>
      'Патрабуецца ключ бяспекі';

  @override
  String get secureBootSecurityKeysDontMatch => 'Ключы бяспекі не супадаюць';

  @override
  String get showSecurityKey => 'Паказаць';

  @override
  String get hideSecurityKey => 'Схаваць';

  @override
  String get updatesOtherSoftwarePageTitle => 'Праграмы';

  @override
  String get updatesOtherSoftwarePageDescription =>
      'Якія праграмы вы б хацелі ўсталяваць спачатку?';

  @override
  String get codecsAndDriversPageTitle => 'Аптымізуйце свой камп\'ютар';

  @override
  String get codecsAndDriversPageDescription =>
      'Усталяваць рэкамендаванае прапрыетарнае праграмнае забеспячэнне?';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return 'Прадвызначана $DISTRO пастаўляецца без прапрыетарнага праграмнага забеспячэння. Усталяванне дадатковага праграмнага забеспячэння можа павысіць прадукцыйнасць вашага камп\'ютара.';
  }

  @override
  String get codecsAndDriversNvidiaNote => 'Выяўлена відэакарта NVIDIA';

  @override
  String get codecsAndDriversNvidiaBody =>
      'Вельмі рэкамендуецца ўсталяваць дадатковыя драйверы для найлепшай прадукцыйнасці відэакарт ад NVIDIA.';

  @override
  String get fullInstallationTitle => 'Поўнае ўсталяванне';

  @override
  String get fullInstallationSubtitle =>
      'Зручны для працы ў пазасеткавым рэжыме набор офісных інструментаў, утыліт і вэб-браўзер.';

  @override
  String get minimalInstallationTitle => 'Прадвызначанае ўсталяванне';

  @override
  String get minimalInstallationSubtitle =>
      'Толькі вэб-браўзер з асноўнымі інструментамі і ўтылітамі.';

  @override
  String get otherOptions => 'Іншыя параметры';

  @override
  String get installThirdPartyTitle =>
      'Усталяванне старонняга праграмнага забеспячэння для графікі і абсталявання Wi-Fi, а таксама дадатковыя фарматы мультымедыя';

  @override
  String get installThirdPartySubtitle =>
      'На гэта праграмнае забеспячэнне распаўсюджваюцца ліцэнзійныя ўмовы, якія ўключаны ў яго дакументацыю. Некаторыя з іх маюць прапрыетарны характар.';

  @override
  String get installDriversTitle =>
      'Усталюйце старонняе праграмнае забеспячэнне для графікі і абсталявання Wi-Fi';

  @override
  String get installDriversSubtitle =>
      'Уключана, але не абмяжоўваецца драйверамі NVIDIA і падобным праграмным забеспячэннем';

  @override
  String get installCodecsTitle =>
      'Спампаваць і ўсталяваць падтрымку дадатковых медыяфарматаў';

  @override
  String get installCodecsSubtitle =>
      'Уключана, але не абмяжоўваецца фарматамі MP3, MP4, MOV і іншымі падобнымі файламі';

  @override
  String get batteryWarning =>
      'Камп\'ютар не падключаны да крыніцы электрасілкавання.';

  @override
  String get offlineWarning => 'Вы зараз па-за сеткай';

  @override
  String get choosePassphraseHeader => 'Стварыць парольную фразу';

  @override
  String get choosePassphraseBody =>
      'Для шыфравання файлаў неабходна парольная фраза. Вам неабходна будзе ўводзіць яе пры кожным уключэнні камп\'ютара.';

  @override
  String get choosePassphraseInfoHeader =>
      'Не забудзьце захаваць парольную фразу';

  @override
  String get choosePassphraseInfoBody =>
      'Калі будзе страчана парольная фраза, будуць страчаны і ўсе вашы даныя.';

  @override
  String get chooseOptionalPassphraseInfoHeader =>
      'Store your passphrase and recovery key somewhere safe';

  @override
  String get chooseOptionalPassphraseInfoBody =>
      'If you lose your passphrase, you will lose all your data. The passphrase does not replace the recovery key or your user password.';

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
      'By default, the computer’s Trusted Platform Module (TPM) will unlock the disk during startup. You also have options to further protect your data.';

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
  String get installationTypeTitle => 'Наладжванне дыска';

  @override
  String installationTypeHeader(String DISTRO) {
    return 'Як вы хочаце ўсталяваць $DISTRO?';
  }

  @override
  String installationTypeOSDetected(String os) {
    return 'На гэтым камп\'ютары ўсталявана сістэма $os. Што вы хочаце зрабіць?';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return 'На гэтым камп\'ютары ўсталяваны $os1 і $os2. Што вы хочаце зрабіць?';
  }

  @override
  String get installationTypeMultiOSDetected =>
      'На гэтым камп\'ютары ўсталявана некалькі аперацыйных сістэм. Што вы хочаце зрабіць?';

  @override
  String get installationTypeNoOSDetected =>
      'На гэтым камп\'ютары не ўсталявана ніводнай аперацыйнай сістэмы. Што вы хочаце зрабіць?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'Сцерці дыск і ўсталяваць $DISTRO';
  }

  @override
  String get installationTypeEraseInfo => 'Пачаць з нуля на выбраным дыску.';

  @override
  String get installationTypeAdvancedLabel => 'Дадатковыя магчымасці...';

  @override
  String get installationTypeAdvancedTitle => 'Дадатковыя магчымасці';

  @override
  String get installationTypeExperimental => 'Эксперыментальна';

  @override
  String get installationTypeNone => 'Няма';

  @override
  String get installationTypeNoneInfo =>
      'Standard file system without encryption.';

  @override
  String get installationTypeNoneSelected => 'Нічога не выбрана';

  @override
  String get installationTypeLVM => 'Выкарыстоўваць LVM';

  @override
  String get installationTypeLVMSelected => 'Выбрана LVM';

  @override
  String get installationTypeLVMEncryption => 'Выкарыстоўваць LVM і шыфраванне';

  @override
  String get installationTypeLVMEncryptionInfo =>
      'You will need to enter a passphrase every time you turn on your computer. This uses LUKS encryption with LVM.';

  @override
  String get installationTypeLVMEncryptionSelected =>
      'Выбрана LVM і шыфраванне';

  @override
  String get installationTypeEncryptInfo =>
      'На наступным кроку можна выбраць ключ бяспекі.';

  @override
  String get installationTypeZFS => 'Сцерці дыск і выкарыстоўваць ZFS';

  @override
  String get installationTypeZFSEncryption =>
      'Сцерці дыск і выкарыстоўваць ZFS з шыфраваннем';

  @override
  String get installationTypeZFSEncryptionInfo =>
      'Native encryption with ZFS. You will need to enter a passphrase every time you turn on your computer.';

  @override
  String get installationTypeZFSSelected => 'Выбрана ZFS';

  @override
  String get installationTypeZFSEncryptionSelected =>
      'Выбрана ZFS і шыфраванне';

  @override
  String get installationTypeTPM =>
      'Уключыць поўнае апаратнае шыфраванне дыска';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return 'Гэта эксперыментальная магчымасць. Яна можа не працаваць з вашым абсталяваннем або ў будучых выпусках $DISTRO.<a href=\"$url\">Прачытайце аб шыфраванні TPM</a> перад тым, як выбраць гэты параметр.';
  }

  @override
  String get installationTypeTPMSelected => 'Выбрана TPM';

  @override
  String installationTypeReinstall(String os) {
    return 'Сцерці $os і ўсталяваць паўторна';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">Папярэджанне.</font> Будуць выдалены ўсе вашы праграмы, дакументы, фотаздымкі, музыка і іншыя файлы з $os.';
  }

  @override
  String installationTypeAlongside(String product, String os) {
    return 'Усталяваць $product побач з $os';
  }

  @override
  String installationTypeAlongsideDual(String product, String os1, String os2) {
    return 'Усталяваць $product побач з $os1 і $os2';
  }

  @override
  String installationTypeAlongsideMulti(String product) {
    return 'Усталяваць $product побач з імі';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return 'Усталяваць $product побач з іншымі раздзеламі';
  }

  @override
  String installationTypeAlongsideInfo(String product) {
    return 'Вы можаце выбіраць аперацыйную сістэму падчас загрузкі.';
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
  String get installationTypeManual => 'Усталяванне ўручную';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'Для дасведчаных карыстальнікаў, якім патрабуецца адмысловае наладжванне дыска.';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'Сцерці дыск і ўсталяваць $DISTRO';
  }

  @override
  String get selectGuidedStorageInfo => 'Пачаць з нуля на выбраным дыску.';

  @override
  String get selectGuidedStorageDriveDropdownLabel => 'Выберыце дыск:';

  @override
  String get selectGuidedStoragePartitionDropdownLabel => 'Выберыце раздзел:';

  @override
  String get selectGuidedStorageInfoLabel => 'Будзе выкарыстаны ўвесь дыск:';

  @override
  String get selectGuidedStorageInstallNow => 'Усталяваць зараз';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return 'Выберыце месца для ўсталявання $DISTRO';
  }

  @override
  String get installAlongsideSpaceDivider =>
      'Вылучыце прастору на дыску, перацягваючы раздзяляльнік ніжэй:';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return '$num меншых раздзелаў схаваны, выкарыстоўвайце <a href=\"$url\">інструмент пашыранай разметкі</a> для большага кантролю';
  }

  @override
  String get installAlongsideResizePartition => 'Змяніць памер раздзела';

  @override
  String get installAlongsideAllocateSpace => 'Вылучыць прастору';

  @override
  String get installAlongsideFiles => 'Файлы';

  @override
  String get installAlongsidePartition => 'Раздзел:';

  @override
  String get installAlongsideSize => 'Памер:';

  @override
  String get installAlongsideAvailable => 'Даступна:';

  @override
  String get allocateDiskSpace => 'Разметка ўручную';

  @override
  String get allocateDiskSpaceInvalidMountPointSlash =>
      'Пункт падключэння павінен пачынацца з «/»';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace =>
      'Пункты падключэння не могуць змяшчаць прабелы';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(
      String mountpoint, String format) {
    return '$format is not a supported filesystem for $mountpoint';
  }

  @override
  String get diskHeadersDevice => 'Прылада';

  @override
  String get diskHeadersType => 'Тып';

  @override
  String get diskHeadersMountPoint => 'Пункт падключэння';

  @override
  String get diskHeadersSize => 'Памер';

  @override
  String get diskHeadersUsed => 'Выкарыстана';

  @override
  String get diskHeadersSystem => 'Сістэма';

  @override
  String get diskHeadersFormat => 'Фармат';

  @override
  String get freeDiskSpace => 'Вольная прастора';

  @override
  String get newPartitionTable => 'Новая табліца раздзела';

  @override
  String get newPartitionTableConfirmationTitle => 'Новы пусты раздзел';

  @override
  String get newPartitionTableConfirmationMessage =>
      'Стварэнне новай табліцы раздзелаў на гэтай прыладзе прывядзе да выдалення бягучых раздзелаў. Гэту аперацыю немагчыма будзе адрабіць пры неабходнасці.';

  @override
  String get tooManyPrimaryPartitions => 'Занадта шмат першасных раздзелаў';

  @override
  String get partitionLimitReached => 'Дасягнута абмежаванне';

  @override
  String get bootLoaderDevice => 'Прылада для ўсталявання загрузчыка';

  @override
  String get partitionCreateTitle => 'Стварыць раздзел';

  @override
  String get partitionEditTitle => 'Рэдагаваць раздзел';

  @override
  String get partitionSizeLabel => 'Памер:';

  @override
  String get partitionTypeLabel => 'Тып новага раздзела:';

  @override
  String get partitionTypePrimary => 'Першасны';

  @override
  String get partitionTypeLogical => 'Лагічны';

  @override
  String get partitionLocationLabel => 'Размяшчэнне новага раздзела:';

  @override
  String get partitionLocationBeginning => 'Пачатак гэтай прасторы';

  @override
  String get partitionLocationEnd => 'Канец гэтай прасторы';

  @override
  String get partitionFormatLabel => 'Выкарыстоўваецца як:';

  @override
  String get partitionFormatNone => 'Пакінуць нефарматаваным';

  @override
  String partitionFormatKeep(String format) {
    return 'Пакінуць фарматаваным у $format';
  }

  @override
  String get partitionErase => 'Фарматаваць раздзел';

  @override
  String get partitionMountPointLabel => 'Пункт падключэння:';

  @override
  String get confirmPageTitle => 'Гатова да ўсталявання';

  @override
  String get confirmHeader => 'Пераглядзець выбранае';

  @override
  String get confirmDiskEncryptionLVM => 'LUKS (LVM)';

  @override
  String get confirmDiskEncryptionZFS => 'LUKS (ZFS)';

  @override
  String get confirmDiskEncryptionTPM => 'TPM';

  @override
  String get confirmDiskEncryptionNone => 'Няма';

  @override
  String get confirmDevicesTitle => 'Прылады';

  @override
  String get confirmEntryApplications => 'Праграмы';

  @override
  String get confirmEntryDiskSetup => 'Наладжванне дыска';

  @override
  String get confirmEntryDiskEncryption => 'Шыфраванне дыска';

  @override
  String get confirmEntryInstallationDisk => 'Усталявальны дыск';

  @override
  String get confirmEntryProprietarySoftware => 'Прапрыетарнае ПЗ';

  @override
  String get confirmSectionGeneralTitle => 'Агульныя';

  @override
  String get confirmSectionSecurityAndMoreTitle => 'Бяспека і іншыя параметры';

  @override
  String get confirmPartitionsTitle => 'Раздзелы';

  @override
  String get confirmPartitionTables =>
      'Табліцы раздзелаў на наступных прыладах зменены:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmProprietarySoftwareCodecs => 'Кодэкі';

  @override
  String get confirmProprietarySoftwareCodecsDrivers => 'Кодэкі і драйверы';

  @override
  String get confirmProprietarySoftwareDrivers => 'Драйверы';

  @override
  String get confirmInstallButton => 'Усталяваць';

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
  String get installationCompleteTitle => 'Усталяванне завершана';

  @override
  String readyToUse(String system) {
    return '$system усталявана і гатова да выкарыстання';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system была скапіявана на дыск';
  }

  @override
  String restartInto(String system) {
    return 'Перазапусціць у $system';
  }

  @override
  String get restartWarningBody =>
      'Перазапусціць для завяршэння ўсталявання або працягнуць тэсціраванне.\nЛюбыя змены, якія вы зрабілі захаваны не будуць.';

  @override
  String get rebootToConfigureWarning =>
      'Вы перазапусцілі камп\'ютар, каб працягнуць працэс усталявання.';

  @override
  String get shutdown => 'Выключыць';

  @override
  String get restartNow => 'Перазапусціць зараз';

  @override
  String get continueTesting => 'Працягнуць тэсціраванне';

  @override
  String get bitlockerInfoTitle => 'BitLocker detected';

  @override
  String get bitlockerInfoDescription =>
      'One or more partitions are encrypted with BitLocker.';

  @override
  String get bitlockerInfoDisable =>
      'To install alongside Windows, disable BitLocker in Windows.';

  @override
  String get bitlockerInfoRecovery =>
      'Windows may request recovery keys on boot after installation.';

  @override
  String bitlockerInfoInstructions(String url) {
    return 'For instructions, visit the <a href=\"$url\">BitLocker guide</a>.';
  }

  @override
  String get bitlockerWarningTitle =>
      'You may lose all your data without BitLocker recovery keys';

  @override
  String get restartComputer => 'Restart computer';

  @override
  String get restartComputerTitle => 'Restart computer?';

  @override
  String get restartIntoWindows => 'Перазапусціць у Windows';

  @override
  String get restartIntoWindowsTitle => 'Перазапусціць у Windows?';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return 'Перазапусціць камп\'ютар? Каб завяршыць усталяванне $DISTRO, пазней вам спатрэбіцца перазапусціць $DISTRO.';
  }

  @override
  String installationSlidesTitle(String RELEASE) {
    return 'Вітаем у $RELEASE';
  }

  @override
  String get installationSlidesAvailable => 'Даступна:';

  @override
  String get installationSlidesIncluded => 'Уключаюць:';

  @override
  String get installationSlidesWelcomeTitle =>
      'Хуткая, свабодная і поўная новых функцый';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return 'Апошняя версія $DISTRO дазваляе яшчэ больш спрасціць выкарыстанне вашага камп\'ютара.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'Незалежна ад таго, з\'яўляецеся вы распрацоўшчыкам, аматарам відэагульняў або адміністратарам, $RELEASE прапануе вам новыя інструменты для паляпшэння прадукцыйнасці і падвышэння досведу.';
  }

  @override
  String get installationSlidesSoftwareTitle =>
      'Усе праграмы, якія вам патрэбны';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'Усталёўвайце, кіруйце і абнаўляйце ўсе вашы праграмы ў Ubuntu Software, уключаючы тысячы праграм з Snap Store і архіва $DISTRO.';
  }

  @override
  String get installationSlidesDevelopmentTitle =>
      'Распрацоўвайце праграмы з найлепшым адкрытым праграмным забеспячэннем';

  @override
  String installationSlidesDevelopmentBody(String DISTRO) {
    return '$DISTRO — гэта ідэальная працоўная станцыя для распрацоўкі праграм, навукі аб даных, ШІ і машыннага навучання, а таксама DevOps і адміністравання. Кожны выпуск $DISTRO уключае апошнія наборы інструментаў і падтрымлівае ўсе асноўныя IDE.';
  }

  @override
  String get installationSlidesCreativityTitle =>
      'Палепшыце свае творчыя здольнасці';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return 'Калі вы аніматар, дызайнер, стваральнік відэа або распрацоўшчык гульняў, то вам будзе проста перанесці свой працоўны працэс у $DISTRO з падтрымкай для свабоднага праграмнага забеспячэння і галіновых стандартаў праграмнага забеспячэння і праграм.';
  }

  @override
  String get installationSlidesGamingTitle =>
      'Выдатна пасуе для аматараў гульняў';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return '$DISTRO падтрымлівае апошнія драйверы NVIDIA і Mesa drivers для паляпшэння прадукцыйнасці і сумяшчальнасці. Тысячы найменняў гульняў Windows цудоўна запускаюцца ў $DISTRO праз такія праграмы, як Steam без дадатковай канфігурацыі.';
  }

  @override
  String get installationSlidesSecurityTitle => 'Прыватнасць і бяспека';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return '$DISTRO забяспечвае вас усім неабходным, каб захаваць прыватнасць і бяспеку ў інтэрнэце. Уключае ўбудаваны міжсеткавы экран, падтрымку VPN і мноства праграм, якія арыентаваныя на прыватнасць. Усё гэта дазваляе ажыццяўляць поўны кантроль над вашымі данымі.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return 'Усе выпускі $DISTRO LTS пастаўляюцца з абнаўленнямі бяспекі на працягу пяці гадоў, а пры падпісцы Ubuntu Pro працягласць абнаўленняў пашыраецца да дзесяці гадоў.';
  }

  @override
  String get installationSlidesProductivityTitle =>
      'Павялічце сваю прадукцыйнасць';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return 'Асяроддзе $DISTRO уключае офісны пакет LibreOffice, які мае набор сумяшчальных з Microsoft Office праграм з адкрытым зыходным кодам для дакументаў, электронных табліц і прэзентацый. Таксама даступны папулярныя інструменты для сумеснай працы.';
  }

  @override
  String get installationSlidesAccessibilityTitle => 'Даступна для кожнага';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return 'Асновай філасофіі $DISTRO з\'яўляецца перакананне даступнасці камп\'ютара для кожнага чалавека. З інструментамі, якія забяспечваюць пашыраныя спецыяльныя магчымасці, выбарам мовы, колеру і памеру тэксту, $DISTRO робіць працу на камп\'ютары простай незалежна ад вашых здольнасцей і месцазнаходжання.';
  }

  @override
  String get installationSlidesAccessibilityOrca =>
      'Праграма чытання з экрана Orca';

  @override
  String get installationSlidesAccessibilityLanguages => 'Моўная падтрымка';

  @override
  String get installationSlidesSupportTitle => 'Даведка і падтрымка';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return 'Афіцыйная дакументацыя $DISTRO даступна ў інтэрнэце і праз значок даведкі на док-панэлі.';
  }

  @override
  String get installationSlidesSupportCommunity =>
      'База ведаў сайта Ask Ubuntu ахоплівае шэраг пытанняў і адказаў, а Ubuntu Discourse забяспечвае дапаможнікамі і абмеркаваннямі новых і дасведчаных карыстальнікаў.';

  @override
  String get installationSlidesSupportEnterprise =>
      'Для карпаратыўных карыстальнікаў кампанія Canonical прапануе камерцыйную падтрымку, што дае магчымасць лёгка ўключыцца ў працу і бяспечна кіраваць Ubuntu на працоўным месцы.';

  @override
  String get installationSlidesSupportResources => 'Карысныя рэсурсы:';

  @override
  String get installationSlidesSupportDocumentation => 'Афіцыйная дакументацыя';

  @override
  String get installationSlidesSupportUbuntuPro =>
      'Падтрымка карпаратыўных карыстальнікаў 24/7 з Ubuntu Pro';

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
  String get copyingFiles => 'Капіяванне файлаў…';

  @override
  String get installingSystem => 'Усталяванне сістэмы…';

  @override
  String get configuringSystem => 'Наладжванне сістэмы…';

  @override
  String get installationFailed => 'Збой усталявання';

  @override
  String get notEnoughDiskSpaceTitle => 'Недастаткова месца на дыску';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return 'Недастаткова дыскавай прасторы для ўсталявання $DISTRO';
  }

  @override
  String notEnoughDiskSpaceBody(String DISTRO) {
    return 'На выбраным дыску не стае месца, каб усталяваць $DISTRO. Выйдзіце з усталёўшчыка, каб вызваліць месца або выбраць іншы дыск.';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'Даступна:';

  @override
  String get notEnoughDiskSpaceRequired => 'Патрабуецца:';

  @override
  String get refreshPageTitle => 'Даступна абнаўленне';

  @override
  String get refreshHeader => 'Абнаўленне даступна для ўсталёўшчыка праграм';

  @override
  String get refreshUpdateNow => 'Абнавіць зараз';

  @override
  String get refreshInfo =>
      'Абнавіце да апошняй версіі, каб палепшыць надзейнасць і атрымаць больш функцый.';

  @override
  String get refreshReady => 'Абнаўленне гатова';

  @override
  String refreshCurrent(String snap, String version) {
    return 'Бягучай версіяй $snap з\'яўляецца $version.';
  }

  @override
  String refreshInstall(String version) {
    return 'Абнавіць да версіі $version';
  }

  @override
  String refreshUpToDate(String version) {
    return 'Бягучая версія $version з\'яўляецца самай апошняй.';
  }

  @override
  String refreshUpdating(String snap) {
    return 'Абнаўленне $snap...';
  }

  @override
  String get refreshRestart =>
      'Закрыйце ўсталёўшчык праграм і перазапусціце яго, каб працягнуць';

  @override
  String get refreshCloseLabel => 'Закрыць усталёўшчык праграм';

  @override
  String refreshSnapPrerequisites(String snap) {
    return 'Забеспячэнне неабходных умоў $snap...';
  }

  @override
  String refreshSnapRefresh(String snap) {
    return 'Абнаўленне $snap...';
  }

  @override
  String refreshSnapCheckRerefresh(String snap) {
    return 'Праверка абнаўлення даных $snap...';
  }

  @override
  String refreshSnapPrepare(String snap) {
    return 'Падрыхтоўка $snap...';
  }

  @override
  String refreshSnapDownload(String snap) {
    return 'Спампоўванне $snap...';
  }

  @override
  String refreshSnapValidate(String snap) {
    return 'Праверка $snap...';
  }

  @override
  String refreshSnapMount(String snap) {
    return 'Падключэнне $snap...';
  }

  @override
  String refreshSnapStopServices(String snap) {
    return 'Спыненне службаў $snap...';
  }

  @override
  String refreshSnapRemoveAliases(String snap) {
    return 'Выдаленне псеўданімаў $snap...';
  }

  @override
  String refreshSnapUnlink(String snap) {
    return 'Выдаленне сувязі $snap...';
  }

  @override
  String refreshSnapUpdateAssets(String snap) {
    return 'Абнаўленне рэсурсаў $snap...';
  }

  @override
  String refreshSnapUpdateKernelCommandLine(String snap) {
    return 'Абнаўленне каманднага радка ядра $snap...';
  }

  @override
  String refreshSnapCopyData(String snap) {
    return 'Капіяванне даных $snap...';
  }

  @override
  String refreshSnapSetupProfiles(String snap) {
    return 'Наладжванне профіляў бяспекі $snap...';
  }

  @override
  String refreshSnapLink(String snap) {
    return 'Злучэнне $snap...';
  }

  @override
  String refreshSnapAutoConnect(String snap) {
    return 'Падключэнне вілак і гнёздаў $snap...';
  }

  @override
  String refreshSnapSetAutoAliases(String snap) {
    return 'Наладжванне аўтаматычных псеўданімаў $snap...';
  }

  @override
  String refreshSnapSetupAliases(String snap) {
    return 'Наладжванне псеўданімаў $snap...';
  }

  @override
  String refreshSnapStartServices(String snap) {
    return 'Запуск службаў $snap...';
  }

  @override
  String refreshSnapCleanup(String snap) {
    return 'Ачыстка $snap...';
  }

  @override
  String get recoveryKeyTitle => 'Ключ аднаўлення TPM';

  @override
  String get recoveryKeyTitleBadgeLabel => 'Important';

  @override
  String get recoveryKeyHeader => 'Save your recovery key';

  @override
  String get recoveryKeyInfoHeader =>
      'You may lose all your data without a recovery key';

  @override
  String get recoveryKeyTextFieldLabel => 'Recovery key';

  @override
  String get recoveryKeyStorageAdvice =>
      'You will need to provide this recovery key if decryption fails during startup. Without the key, you will lose access to all your data. Save it somewhere safe, such as a password manager.';

  @override
  String get recoveryKeyConfirmation =>
      'I saved my recovery key somewhere safe';

  @override
  String get recoveryKeyLinkLabel => 'Learn more';

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
  String get landscapeDomainInstructions =>
      'Provide your organization\'s Landscape domain to log in and fetch an autoinstall file. You can get the FQDN from your IT support.';

  @override
  String get landscapeDomainTextField => 'Landscape domain (FQDN)';

  @override
  String get next => 'Next';

  @override
  String get landscapeDomainInvalidDomainWarning =>
      'Invalid domain, please check or contact your IT support';

  @override
  String get landscapeDomainNoInternetTitleWarning =>
      'Connect to the internet to continue';

  @override
  String get landscapeDomainNoInternetDescriptionWarning =>
      'Internet is needed to fetch the autoinstall file from Landscape';

  @override
  String get landscapeCodeExpiredWarning => 'Code expired, please try again';

  @override
  String get landscapeLoginFailedWarning => 'Login failed, please try again';

  @override
  String get landscapeErrorPageTitle =>
      'Automated install is not available for your account';

  @override
  String get landscapeErrorPageBody =>
      'Contact your IT support or try a different installation option.';

  @override
  String landscapeErrorPageCode(String code) {
    return 'Error code: $code';
  }

  @override
  String get landscapeConfirmPageSuccessInfoTitle =>
      'Ubuntu will install with the configuration provided by your organization';

  @override
  String get landscapeConfirmPageSuccessInfoContent =>
      'You can review the autoinstall file imported from Landscape below.';

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
