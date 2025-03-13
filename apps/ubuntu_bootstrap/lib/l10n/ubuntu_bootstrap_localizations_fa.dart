import 'ubuntu_bootstrap_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Persian (`fa`).
class UbuntuBootstrapLocalizationsFa extends UbuntuBootstrapLocalizations {
  UbuntuBootstrapLocalizationsFa([String locale = 'fa']) : super(locale);

  @override
  String get appTitle => 'نصب کنندهٔ میزکار اوبونتو';

  @override
  String windowTitle(String RELEASE) {
    return 'نصب $RELEASE';
  }

  @override
  String get autoinstallDirectTitle => 'Automated installation';

  @override
  String get autoinstallDirectHeader => 'Import autoinstall file';

  @override
  String get autoinstallDirectUrlLabel => 'You can enter the URL of an autoinstall file:';

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
  String get autoinstallDirectErrorNetworkTitle => 'Autoinstall file is not reachable';

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
  String get autoinstallTitle => 'گونهٔ نصب';

  @override
  String autoinstallHeader(String DISTRO) {
    return 'می‌خواهید $DISTRO را چگونه نصب کنید؟';
  }

  @override
  String get autoinstallInstructions => '‫ورود نشانی ‏autoinstall.yaml‬ یا مسیر پروندهٔ محلی:';

  @override
  String get autoinstallInteractiveOption => 'نصب تعاملی';

  @override
  String get autoinstallInteractiveDescription => 'For users who want to be guided step by step through the installation.';

  @override
  String get autoinstallDirectOption => 'Automated with autoinstall file';

  @override
  String get autoinstallDirectDescription => 'For advanced users who have an autoinstall.yaml for consistent and repeatable system setups.';

  @override
  String get autoinstallLandscapeOption => 'Automated with Landscape';

  @override
  String get autoinstallLandscapeDescription => 'For users in organizations that provide an autoinstall file via Landscape.';

  @override
  String get changeButtonText => 'تغییر';

  @override
  String get quitButtonText => 'خروج از نصب';

  @override
  String loadingPageTitle(String DISTRO) {
    return 'به $DISTRO خوش آمدید';
  }

  @override
  String loadingHeader(String DISTRO) {
    return 'آماده‌سازی $DISTRO…';
  }

  @override
  String get warningLabel => 'هشدار:';

  @override
  String tryOrInstallTitle(String DISTRO) {
    return 'آزمودن یا نصب $DISTRO';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return 'می‌خواهید با $DISTRO چه کنید؟';
  }

  @override
  String get tryOrInstallRepairOption => 'تعمیر نصب';

  @override
  String get tryOrInstallRepairDescription => 'تعمیر، همهٔ نرم افزارهای نصب شده را بدون دست زدن به اسناد یا تنظیمات، دوباره نصب می‌کند.';

  @override
  String tryOption(String RELEASE) {
    return 'آزمودن $RELEASE';
  }

  @override
  String tryDescription(String RELEASE) {
    return 'شما می‌توانید $RELEASE را بدون ایجاد هیچ تغییری در رایانه خود امتحان کنید.';
  }

  @override
  String installOption(String RELEASE) {
    return 'نصب $RELEASE';
  }

  @override
  String installDescription(String RELEASE) {
    return '$RELEASE را در کنار (یا به جای) سیستم‌عامل کنونی شما نصب می‌کنید. این نباید خیلی طول بکشد.';
  }

  @override
  String tryOrInstallReleaseNotesLabel(String url) {
    return 'ممکن است بخواهید <a href=\"$url\">یادداشت‌های انتشار</a> را بخوانید.';
  }

  @override
  String get rstTitle => 'RST به کار افتاده';

  @override
  String get rstHeader => 'برای ادامه RST را خاموش کنید';

  @override
  String get rstDisable => 'Your computer uses Intel RST (Rapid Storage Technology). You can disable RST either in:';

  @override
  String get rstDisableWindows => 'Windows, if you are using a dual boot setup with Windows';

  @override
  String get rstDisableBios => 'The BIOS settings';

  @override
  String rstInstructions(String url) {
    return 'برای دستورالعمل‌ها، رمز پاس را روی افزاره‌ای دیگر پوییده یا ببینید: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'پیکربندی راه‌اندازی ایمن';

  @override
  String get configureSecureBootDescription => 'شما نصب نرم‌افزار درایور شخص ثالث را انتخاب کرده‌اید. برای این کار باید راه‌اندازی ایمن را خاموش کنید.\nبرای انجام این کار، اکنون باید یک کلید امنیتی را انتخاب کنید و پس از راه اندازی دوبارهٔ سامانه، آن را وارد کنید.';

  @override
  String get configureSecureBootOption => 'پیکربندی راه‌اندازی ایمن';

  @override
  String get chooseSecurityKey => 'انتخاب یک کلید امنیتی';

  @override
  String get confirmSecurityKey => 'تأیید کلید امنیتی';

  @override
  String get dontInstallDriverSoftwareNow => 'فعلاً نرم‌افزار درایور را نصب نکن';

  @override
  String get dontInstallDriverSoftwareNowDescription => 'شما می‌توانید آن را بعداً از نرم‌افزارها و به‌روز رسانی‌ها نصب کنید.';

  @override
  String get configureSecureBootSecurityKeyRequired => 'کلید امنیتی مورد نیاز است';

  @override
  String get secureBootSecurityKeysDontMatch => 'کلیدهای امنیتی مطابقت ندارند';

  @override
  String get showSecurityKey => 'نمایش کلید امنیتی';

  @override
  String get hideSecurityKey => 'نهفتن';

  @override
  String get updatesOtherSoftwarePageTitle => 'برنامه‌ها و به‌روز رسانی‌ها';

  @override
  String get updatesOtherSoftwarePageDescription => 'برای شروع چه برنامه‌هایی را می‌خواهید نصب کنید؟';

  @override
  String get codecsAndDriversPageTitle => 'بهینه سازی رایانه‌تان';

  @override
  String get codecsAndDriversPageDescription => 'نصب نرم‌افزارهای مالکیتی پیشنهادی؟';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return '$DISTRO ships with no proprietary software by default. Installing additional software may improve your computer\'s performance.';
  }

  @override
  String get codecsAndDriversNvidiaNote => 'کارت گرافیک انویدیا تشخیص داده شد';

  @override
  String get codecsAndDriversNvidiaBody => 'For the best performance of NVIDIA graphic cards, installing additional drivers is strongly recommended.';

  @override
  String get fullInstallationTitle => 'گسترش گزینش';

  @override
  String get fullInstallationSubtitle => 'گزینشی برون‌خط از ابزاهای اداری، ابزارها و مرورگر وب.';

  @override
  String get minimalInstallationTitle => 'گزینش پیش‌فرض';

  @override
  String get minimalInstallationSubtitle => 'فقط واجبات. مرورگر وب و ابزارهای پایه.';

  @override
  String get otherOptions => 'دیگر گزینه‌ها';

  @override
  String get installThirdPartyTitle => 'نرم‌افزارهای شخص ثالث را برای سخت‌افزارهای گرافیکی و وای‌فای و همچنین قالب‌های رسانه‌ای اضافی نصب کنید';

  @override
  String get installThirdPartySubtitle => 'This software is subject to license terms included with its documentation. Some are proprietary.';

  @override
  String get installDriversTitle => 'نصب نرم‌افزارهای سوم‌شخص برای سخت‌افزارهای وای‌فای و گرافیک';

  @override
  String get installDriversSubtitle => 'از جمله گرداننده‌های انویدیا و مشابه آن‌ها';

  @override
  String get installCodecsTitle => 'بارگیری و نصب پشتیبانی برای قالب‌های رسانه‌ای بیش‌تر';

  @override
  String get installCodecsSubtitle => 'از جمله MP3،‌ MP4، MOV و مشابه این‌ها';

  @override
  String get batteryWarning => 'رایانه به منبع نیرو وصل نشده است.';

  @override
  String get offlineWarning => 'در حال حاضر برون‌خطید';

  @override
  String get choosePassphraseTitle => 'عبارت عبور دیسک';

  @override
  String get choosePassphraseHeader => 'ایجاد عبارت عبور';

  @override
  String get choosePassphraseBody => 'You need a passphrase to encrypt your files. You will be prompted for your passphrase every time you turn on your computer.';

  @override
  String get choosePassphraseHint => 'گزینش عبارت عبور';

  @override
  String get choosePassphraseConfirmHint => 'تأیید عبارت عبور';

  @override
  String get choosePassphraseRequired => 'نیازمند عبارت عبور';

  @override
  String get choosePassphraseMismatch => 'The passphrases do not match';

  @override
  String get choosePassphraseInfoHeader => 'Store your passphrase somewhere safe';

  @override
  String get choosePassphraseInfoBody => 'اگر عبارت عبورتان را گم کنید، همهٔ داده‌هایتان از دست خواهد رفت.';

  @override
  String get chooseOptionalPassphraseHeader => 'Create a passphrase (optional)';

  @override
  String get chooseOptionalPassphraseBody => 'A passphrase can help protect your data even if your hardware gets compromised. You will need to enter the passphrase every time you turn on your computer. You will not be able to remove it later';

  @override
  String get chooseOptionalPassphraseInfoHeader => 'Store your passphrase and recovery key somewhere safe';

  @override
  String get chooseOptionalPassphraseInfoBody => 'If you lose your passphrase, you will lose all your data. The passphrase does not replace the recovery key or your user password.';

  @override
  String get createPassphrase => 'ایجاد عبارت عبور';

  @override
  String get confirmPassphrase => 'تأیید عبارت عبور';

  @override
  String get installationTypeTitle => 'گونهٔ نصب';

  @override
  String installationTypeHeader(String DISTRO) {
    return 'How do you want to install $DISTRO?';
  }

  @override
  String installationTypeOSDetected(String os) {
    return 'این رایانه اکنون $os دارد. می‌خواهید چه کنید؟';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return 'این رایانه اکنون $os1 و $os2 را دارد. می‌خواهید چه کنید؟';
  }

  @override
  String get installationTypeMultiOSDetected => 'این رایانه هم‌اکنون دارای چندین سیستم‌عامل است. می‌خواهید چه کنید؟';

  @override
  String get installationTypeNoOSDetected => 'این رایانه هم‌اکنون دارای هیچ سیستم‌عامل شناخته‌شده‌ای نیست. می‌خواهید چه کنید؟';

  @override
  String installationTypeErase(String DISTRO) {
    return 'پاک کردن دیسک و نصب $DISTRO';
  }

  @override
  String get installationTypeEraseInfo => 'All data and partitions on the disk will be erased, including operating systems.';

  @override
  String get installationTypeAdvancedLabel => 'ویژگی‌های پیش‌رفته…';

  @override
  String get installationTypeAdvancedTitle => 'ویژگی‌های پیش‌رفته';

  @override
  String get installationTypeExperimental => 'آزمایشی';

  @override
  String get installationTypeNone => 'هیچ‌کدام';

  @override
  String get installationTypeNoneInfo => 'Standard file system without encryption.';

  @override
  String get installationTypeNoneSelected => 'هیچ‌کدام گزیده نشدند';

  @override
  String get installationTypeLVM => 'استفاده از LVM';

  @override
  String get installationTypeLVMSelected => 'استفاده از LVM گزیده شد';

  @override
  String get installationTypeLVMEncryption => 'استفاده از LVM و رمزنگاری';

  @override
  String get installationTypeLVMEncryptionInfo => 'You will need to enter a passphrase every time you turn on your computer. This uses LUKS encryption with LVM.';

  @override
  String get installationTypeLVMEncryptionSelected => 'استفاده از LVM و رمزنگاری گزیده شد';

  @override
  String get installationTypeEncryptInfo => 'در گام بعدی، کلید امنیتی‌ای خواهید گزید.';

  @override
  String get installationTypeZFS => 'آزمایشی: پاک کردن دیسک و استفاده از ZFS';

  @override
  String get installationTypeZFSEncryption => 'Encrypt with a passphrase using ZFS';

  @override
  String get installationTypeZFSEncryptionInfo => 'Native encryption with ZFS. You will need to enter a passphrase every time you turn on your computer.';

  @override
  String get installationTypeZFSSelected => 'استفاده از ZFS گزیده شد';

  @override
  String get installationTypeZFSEncryptionSelected => 'رمزنگاری و ZFS گزیده';

  @override
  String get installationTypeTPM => 'Use hardware-backed encryption';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return '<a href=\"$url\">Read about TPM encryption</a> before you choose this option. This may not work with your hardware or future $DISTRO releases.';
  }

  @override
  String get installationTypeTPMSelected => 'TPM گزیده';

  @override
  String installationTypeReinstall(String os) {
    return 'پاک کردن $os و نصب دوباره';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">هشدار:</font> این کار تمامی برنامه‌ها، سندها، نگاره‌ها، آهنگ‌ها و هر پروندهٔ دیگری روی $os را حذف خواهد کرد.';
  }

  @override
  String installationTypeAlongside(String product, String os) {
    return 'نصب $product کنار $os';
  }

  @override
  String installationTypeAlongsideDual(String product, String os1, String os2) {
    return 'نصب $product کنار $os1 و $os2';
  }

  @override
  String installationTypeAlongsideMulti(String product) {
    return 'نصب $product کنارشان';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return 'نصب $product کنار دیگر افرازها';
  }

  @override
  String installationTypeAlongsideInfo(String product) {
    return 'سندها، آهنگ‌ها و دیگرپرونده‌های شخصی حفظ خواهند شد. هر بار که رایانه روشن می‌شود می‌توانید بگزینید که کدام سیستم‌عامل را می‌خواهید.';
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
  String get installationTypeManual => 'افرازش دستی';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'برای کاربران حرفه‌ای در جویش برپایی دیسم شخص شده.';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'پاک کردن دیسک و نصب $DISTRO';
  }

  @override
  String get selectGuidedStorageInfo => 'Start from scratch on your selected disk.';

  @override
  String get selectGuidedStorageDriveDropdownLabel => 'گزینش گرداننده:';

  @override
  String get selectGuidedStoragePartitionDropdownLabel => 'گزینش افراز:';

  @override
  String get selectGuidedStorageInfoLabel => 'تمام دیسک استفاده خواهد شد:';

  @override
  String get selectGuidedStorageInstallNow => 'اکنون نصب شود';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return 'Choose where to install $DISTRO';
  }

  @override
  String get installAlongsideSpaceDivider => 'با کشیدن تقسیم‌کنندهٔ زیر، فضای گرداننده را تخصیص دهید:';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return '$num smaller partitions are hidden, use the <a href=\"$url\">advanced partitioning tool</a> for more control';
  }

  @override
  String get installAlongsideResizePartition => 'تغییر اندازهٔ افراز';

  @override
  String get installAlongsideAllocateSpace => 'تخصیص فضا';

  @override
  String get installAlongsideFiles => 'پرونده‌ها';

  @override
  String get installAlongsidePartition => 'افراز:';

  @override
  String get installAlongsideSize => 'اندازه:';

  @override
  String get installAlongsideAvailable => 'موجود:';

  @override
  String get allocateDiskSpace => 'افرازش دستی';

  @override
  String get allocateDiskSpaceInvalidMountPointSlash => 'Mount points must start with \"/\"';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace => 'Mount points cannot contain spaces';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(Object format, Object mountpoint) {
    return '$format is not a supported filesystem for $mountpoint';
  }

  @override
  String get diskHeadersDevice => 'افزاره';

  @override
  String get diskHeadersType => 'گونه';

  @override
  String get diskHeadersMountPoint => 'نقطهٔ سوار شدن';

  @override
  String get diskHeadersSize => 'اندازه‌';

  @override
  String get diskHeadersUsed => 'استفاده شده';

  @override
  String get diskHeadersSystem => 'سامانه';

  @override
  String get diskHeadersFormat => 'قالب‌بندی';

  @override
  String get freeDiskSpace => 'فضای آزاد';

  @override
  String get newPartitionTable => 'جدول افراز جدید';

  @override
  String get newPartitionTableConfirmationTitle => 'افراز خالی جدید';

  @override
  String get newPartitionTableConfirmationMessage => 'Creating a new partition table on an entire device will remove all of its current partitions. This operation can be undone if needed.';

  @override
  String get tooManyPrimaryPartitions => 'افرازهای اصلی بیش از حد';

  @override
  String get partitionLimitReached => 'به محدودیت رسیده';

  @override
  String get bootLoaderDevice => 'افزاره برای نصب بارکنندهٔ راه‌اندازی';

  @override
  String get partitionCreateTitle => 'ایجاد افراز';

  @override
  String get partitionEditTitle => 'ویرایش افراز';

  @override
  String get partitionSizeLabel => 'اندازه:';

  @override
  String get partitionTypeLabel => 'گونهٔ افراز جدید:';

  @override
  String get partitionTypePrimary => 'اصلی';

  @override
  String get partitionTypeLogical => 'منطقی';

  @override
  String get partitionLocationLabel => 'مکان افراز جدید:';

  @override
  String get partitionLocationBeginning => 'ابتدای این فضا';

  @override
  String get partitionLocationEnd => 'پایان این فضا';

  @override
  String get partitionFormatLabel => 'استفاده شده برای:';

  @override
  String get partitionFormatNone => 'قالب‌بندی نشده گذاشتن';

  @override
  String partitionFormatKeep(String format) {
    return 'رها کردن قالب بندی به صورت $format';
  }

  @override
  String get partitionErase => 'قالب‌بندی افراز';

  @override
  String get partitionMountPointLabel => 'نقطهٔ سوار کردن:';

  @override
  String get confirmPageTitle => 'آمادهٔ نصب';

  @override
  String get confirmHeader => 'بازبینی انتخاب‌هایتان';

  @override
  String get confirmDiskEncryptionLVM => 'LUKS (LVM)';

  @override
  String get confirmDiskEncryptionZFS => 'LUKS (ZFS)';

  @override
  String get confirmDiskEncryptionTPM => 'TPM';

  @override
  String get confirmDiskEncryptionNone => 'هیچ‌کدام';

  @override
  String get confirmDevicesTitle => 'افزاره‌ها';

  @override
  String get confirmEntryApplications => 'برنامه‌ها';

  @override
  String get confirmEntryDiskSetup => 'برپایی دیسک';

  @override
  String get confirmEntryDiskEncryption => 'رمزنگاری دیسک';

  @override
  String get confirmEntryInstallationDisk => 'دیسک نصب';

  @override
  String get confirmEntryProprietarySoftware => 'نرم‌افزار مالکیتی';

  @override
  String get confirmSectionGeneralTitle => 'عمومی';

  @override
  String get confirmSectionSecurityAndMoreTitle => 'امنیت و بیش‌تر';

  @override
  String get confirmPartitionsTitle => 'افزارها';

  @override
  String get confirmPartitionTables => 'جدول افرازهای افزاره‌های زیر تغییر کرده‌اند:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmProprietarySoftwareCodecs => 'رمزینه‌ها';

  @override
  String get confirmProprietarySoftwareCodecsDrivers => 'رمزینه‌ها و راه‌اندازها';

  @override
  String get confirmProprietarySoftwareDrivers => 'راه‌اندازها';

  @override
  String get confirmInstallButton => 'نصب';

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
  String get installationCompleteTitle => 'نصب کامل شد';

  @override
  String readyToUse(String system) {
    return '$system نصب شده و آمادهٔ استفاده است';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system** has been copied to the disk';
  }

  @override
  String restartInto(String system) {
    return 'آغاز دوباره به $system';
  }

  @override
  String get restartWarningBody => 'Restart to complete the installation or continue testing.\nAny changes you make will not be saved.';

  @override
  String get rebootToConfigureWarning => 'برای ادامهٔ فرایند نصب باید رایانه را دوباره آغاز کنید.';

  @override
  String get shutdown => 'خاموش کردن';

  @override
  String get restartNow => 'اکنون دوباره آغاز شود';

  @override
  String get continueTesting => 'ادامهٔ آزمودن';

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
  String get restartIntoWindows => 'آغاز دوباره به ویندوز';

  @override
  String get restartIntoWindowsTitle => 'آغاز دوباره به ویندوز؟';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return 'Are you sure you want to restart your computer? You will need to restart the $DISTRO installation later to finish installing $DISTRO.';
  }

  @override
  String installationSlidesTitle(String RELEASE) {
    return 'به $RELEASE خوش آمدید';
  }

  @override
  String get installationSlidesAvailable => 'موجود:';

  @override
  String get installationSlidesIncluded => 'دارای:';

  @override
  String get installationSlidesWelcomeTitle => 'سریع، آزاد و پر از ویژگی‌های جدید';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return 'جدیدترین نگارش $DISTRO رایانش را آسان‌تر از همیشه کرده است.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'چه توسعه‌دهنده باشید، چه سازندهٔ محتوا، بازیکن یا مدیر، ابزارهایی جدید برای بهبود بهره‌وری و ارتقای تجربه‌تان در $RELEASE خواهید یافت.';
  }

  @override
  String get installationSlidesSoftwareTitle => 'تمامی برنامه‌هایی که نیاز دارید';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'نصب، مدیریت و به‌روز رسانی تمامی کاره‌هایتان در نرم‌افزارهای اوبونتو، شامل هزاران برنامه از مخازن $DISTRO و فروشگاه اسنپ.';
  }

  @override
  String get installationSlidesDevelopmentTitle => 'توسعه با بهترین‌های نرم‌افزار آزاد';

  @override
  String installationSlidesDevelopmentBody(String DISTRO) {
    return '$DISTRO is the ideal workstation for app or web development, data science and AI/ML as well as devops and administration. Every $DISTRO release includes the latest toolchains and supports all major IDEs.';
  }

  @override
  String get installationSlidesCreativityTitle => 'ارتقای خلّاقیتتان';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return 'If you\'re an animator, designer, video creator or game developer it\'s easy to bring your workflows to $DISTRO with support for open source and industry standard software and applications.';
  }

  @override
  String get installationSlidesGamingTitle => 'عالی برای بازی';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return '$DISTRO supports the latest NVIDIA and Mesa drivers to improve performance and compatibility. Thousands of Windows titles play great on $DISTRO via applications like Steam with no additional configuration.';
  }

  @override
  String get installationSlidesSecurityTitle => 'محرمانه و امن';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return '$DISTRO provides all of the tools you need to stay private and secure online. With built in firewall and VPN support and a host of privacy-centric applications to ensure you are in full control of your data.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return 'تمامی نگارش‌های LTS $DISTRO با پنج سال وصلهٔ امنیتی آمده که با اشتراک Pro اوبونتو به ده سال افزایش می‌یابد.';
  }

  @override
  String get installationSlidesProductivityTitle => 'افزایش بهره‌وریتان';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return '$DISTRO Desktop includes LibreOffice, a suite of Microsoft Office compatible open source applications for documents, spreadsheets and presentations. Popular collaboration tools are also available.';
  }

  @override
  String get installationSlidesAccessibilityTitle => 'دسترسی برای همگان';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return 'At the heart of the $DISTRO philosophy is the belief that computing is for everyone. With advanced accessibility tools and options to change language, colours and text size, $DISTRO makes computing easy - whoever and wherever you are.';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'صفحه‌خوان اورکا';

  @override
  String get installationSlidesAccessibilityLanguages => 'پشتیبانی زبان';

  @override
  String get installationSlidesSupportTitle => 'راهنمایی و پشتیبانی';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return 'مستندات رسمی $DISTRO هم به صورت برخط و هم از نقشک راهنما در داک موجودند.';
  }

  @override
  String get installationSlidesSupportCommunity => 'Ask Ubuntu covers a range of questions and responses and the Ubuntu Discourse provides guides and discussions for new and experienced users.';

  @override
  String get installationSlidesSupportEnterprise => 'For enterprise users Canonical provides commercial support to make it easy to onboard and manage Ubuntu securely in the workplace.';

  @override
  String get installationSlidesSupportResources => 'منبع‌های مفید:';

  @override
  String get installationSlidesSupportDocumentation => 'مستندات رسمی';

  @override
  String get installationSlidesSupportUbuntuPro => 'پشتیبانی ردهٔ تجاری ۲۴/۷ با Pro اوبونتو';

  @override
  String get copyingFiles => 'رونوشت کردن پرونده‌ها…';

  @override
  String get installingSystem => 'نصب کردن سامانه…';

  @override
  String get configuringSystem => 'برپا کردن سامانه…';

  @override
  String get installationFailed => 'نصب شکست خورد';

  @override
  String get notEnoughDiskSpaceTitle => 'فضای دیسک ناکافی';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return 'فضای ناکافی برای نصب $DISTRO';
  }

  @override
  String notEnoughDiskSpaceBody(String DISTRO) {
    return 'The selected disk does not have enough disk space to install $DISTRO. Quit the installer to make space available or select another disk.';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'موجود:';

  @override
  String get notEnoughDiskSpaceRequired => 'لازم:';

  @override
  String get refreshPageTitle => 'به‌روز رسانی موجود';

  @override
  String get refreshHeader => 'به‌روز رسانی‌ای برای نصب کننده موجود است';

  @override
  String get refreshUpdateNow => 'اکنون به‌روز شود';

  @override
  String get refreshInfo => 'به‌روز رسانی به جدیدترین نگارش برای قابلیت اطمینان بهبود یافته و ویژگی‌های بیش‌تر.';

  @override
  String get refreshReady => 'به‌روز رسانی آماده';

  @override
  String refreshCurrent(String snap, String version) {
    return 'The current $snap version is $version.';
  }

  @override
  String refreshInstall(String version) {
    return 'به‌روز رسانی به نگارش $version';
  }

  @override
  String refreshUpToDate(String version) {
    return 'The current version $version is up-to-date.';
  }

  @override
  String refreshUpdating(String snap) {
    return 'به روز رساندن $snap…';
  }

  @override
  String get refreshRestart => 'لطفاً نصب کننده را بسته و برای ادامه دوباره اجرا کنید';

  @override
  String get refreshCloseLabel => 'بستن نصب کننده';

  @override
  String refreshSnapPrerequisites(String snap) {
    return 'Ensuring $snap prerequisites...';
  }

  @override
  String refreshSnapRefresh(String snap) {
    return 'تازه سازی $snap…';
  }

  @override
  String refreshSnapCheckRerefresh(String snap) {
    return 'بررسی کردن تازه‌سازی دوبارهٔ $snap…';
  }

  @override
  String refreshSnapPrepare(String snap) {
    return 'آماده سازی $snap…';
  }

  @override
  String refreshSnapDownload(String snap) {
    return 'بار گرفتن $snap…';
  }

  @override
  String refreshSnapValidate(String snap) {
    return 'اعتبار سنجی $snap…';
  }

  @override
  String refreshSnapMount(String snap) {
    return 'سوار کردن $snap…';
  }

  @override
  String refreshSnapStopServices(String snap) {
    return 'متوقّف کردن خدمت‌های $snap…';
  }

  @override
  String refreshSnapRemoveAliases(String snap) {
    return 'برداشتن نام‌های مستعار $snap…';
  }

  @override
  String refreshSnapUnlink(String snap) {
    return 'رفع پیوند $snap…';
  }

  @override
  String refreshSnapUpdateAssets(String snap) {
    return 'به‌روز کردن محتویات $snap…';
  }

  @override
  String refreshSnapUpdateKernelCommandLine(String snap) {
    return 'Updating $snap kernel command line...';
  }

  @override
  String refreshSnapCopyData(String snap) {
    return 'رونشوت برداشتن از داده‌های $snap…';
  }

  @override
  String refreshSnapSetupProfiles(String snap) {
    return 'Setting up $snap security profiles...';
  }

  @override
  String refreshSnapLink(String snap) {
    return 'پیوند دادن $snap…';
  }

  @override
  String refreshSnapAutoConnect(String snap) {
    return 'Connecting $snap plugs and slots...';
  }

  @override
  String refreshSnapSetAutoAliases(String snap) {
    return 'تنظیم کردن خودکار نام‌های مستعار $snap…';
  }

  @override
  String refreshSnapSetupAliases(String snap) {
    return 'برپا کردن نام‌های مستعار $snap…';
  }

  @override
  String refreshSnapStartServices(String snap) {
    return 'آغاز کردن خدمت‌های $snap…';
  }

  @override
  String refreshSnapCleanup(String snap) {
    return 'پاک کردن $snap…';
  }

  @override
  String get recoveryKeyTitle => 'کلید بازیابی TPM';

  @override
  String get recoveryKeyHeader => 'Get a recovery key';

  @override
  String get recoveryKeyInfoHeader => 'You may lose all your data without a recovery key';

  @override
  String recoveryKeyInfoBody(String distro) {
    return 'Get a recovery key as soon as you first log into $distro and store it somewhere safe.';
  }

  @override
  String get recoveryKeyCommand => 'To get a recovery key, complete the installation, restart your computer, and run this command in the terminal:';

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
}
