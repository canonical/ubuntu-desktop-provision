// ignore: unused_import
import 'package:intl/intl.dart' as intl;
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
  String get autoinstallDirectTitle => 'نصب خودکار';

  @override
  String get autoinstallDirectHeader => 'درون‌ریزی پروندهٔ نصب خودکار';

  @override
  String get autoinstallDirectUrlLabel =>
      'می‌توانید نشانی پروندهٔ نصب خودکار را وارد کنید:';

  @override
  String get autoinstallDirectFileLabel => 'یا گزینش پروندهٔ محلی:';

  @override
  String get autoinstallDirectFileButtonLabel => 'گزینش پرونده…';

  @override
  String get autoinstallDirectFileClearButtonLabel => 'پاک‌سازی پرونده';

  @override
  String get autoinstallDirectFilePickerTitle => 'گزینش پرونده';

  @override
  String get autoinstallDirectFilePickerFilterLabel => 'پرونده‌های YAML';

  @override
  String get autoinstallDirectImportButtonLabel => 'درون‌ریزی';

  @override
  String get autoinstallDirectErrorNetworkTitle =>
      'پروندهٔ نصب خودکار قابل دسترسی نیست';

  @override
  String get autoinstallDirectErrorNetworkBody =>
      'درستی نشانی را بررسی کنید؛ اینترنتتان را آزموده یا دوباره تلاش کنید.';

  @override
  String get autoinstallDirectErrorInvalidUrlTitle => 'نشانی نامعتبر';

  @override
  String get autoinstallDirectErrorInvalidUrlBody =>
      'درستی نشانی را بررسی کرده یا پرونده‌ای محلی بگزینید.';

  @override
  String get autoinstallDirectErrorInvalidContentTitle =>
      'پروندهٔ نصب خودکار نامعتبر';

  @override
  String get autoinstallDirectErrorInvalidContentBody =>
      'پرونده را بررسی کرده یا پروندهٔ دیگری فراهم کنید.';

  @override
  String get autoinstallDirectErrorFileSystemTitle =>
      'پروندهٔ نصب خودکار قابل خواندن نیست';

  @override
  String get autoinstallDirectErrorFileSystemBody =>
      'اجازه‌هایتان را بررسی کرده یا پروندهٔ دیگری فراهم کنید.';

  @override
  String get autoinstallDirectErrorUnkownTitle => 'خطای ناشناخته';

  @override
  String get autoinstallTitle => 'گونهٔ نصب';

  @override
  String autoinstallHeader(String DISTRO) {
    return 'می‌خواهید $DISTRO را چگونه نصب کنید؟';
  }

  @override
  String get autoinstallInstructions =>
      '‫ورود نشانی ‏autoinstall.yaml‬ یا مسیر پروندهٔ محلی:';

  @override
  String get autoinstallInteractiveOption => 'نصب تعاملی';

  @override
  String get autoinstallInteractiveDescription =>
      'برای کاربرانی که می‌خواهید گام به گام در مسیر نصب راهنمایی شوند.';

  @override
  String get autoinstallDirectOption => 'خودکار شده با پروندهٔ نصب خودکار';

  @override
  String get autoinstallDirectDescription =>
      'برای کاربران پیشرفته‌ای که پروندهٔ autoinstall.yaml را برای برپایی سامانهٔ تکرارپذیر و یکنواخت دارند.';

  @override
  String get autoinstallLandscapeOption => 'خودکار شده با لندسکیپ';

  @override
  String get autoinstallLandscapeDescription =>
      'برای کاربرانی در سازمان‌هایی که پروندهٔ نصب خودکار را با لندسکیپ فراهم می‌کنند.';

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
  String get tryOrInstallRepairDescription =>
      'تعمیر، همهٔ نرم افزارهای نصب شده را بدون دست زدن به اسناد یا تنظیمات، دوباره نصب می‌کند.';

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
  String get rstHeader => 'برای ادامه باید RST را خاموش کنید';

  @override
  String get rstDisable =>
      'رایانه‌تان از RST (فناوری ذخیره‌ساز سریع) اینتل استفاده می‌کند. می‌توانید در این جاها از کار بیندازیدش:';

  @override
  String get rstDisableWindows =>
      'ویندوز. در صورت استفاده از راه‌اندازی دوگانه با ویندوز';

  @override
  String get rstDisableBios => 'تنظیمات بایوس';

  @override
  String rstInstructions(String url) {
    return 'برای دستورالعمل‌ها، رمز پاس را روی افزاره‌ای دیگر پوییده یا ببینید: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'پیکربندی راه‌اندازی ایمن';

  @override
  String get configureSecureBootDescription =>
      'شما نصب نرم‌افزار درایور شخص ثالث را انتخاب کرده‌اید. برای این کار باید راه‌اندازی ایمن را خاموش کنید.\nبرای انجام این کار، اکنون باید یک کلید امنیتی را انتخاب کنید و پس از راه اندازی دوبارهٔ سامانه، آن را وارد کنید.';

  @override
  String get configureSecureBootOption => 'پیکربندی راه‌اندازی ایمن';

  @override
  String get chooseSecurityKey => 'انتخاب یک کلید امنیتی';

  @override
  String get confirmSecurityKey => 'تأیید کلید امنیتی';

  @override
  String get dontInstallDriverSoftwareNow =>
      'فعلاً نرم‌افزار درایور را نصب نکن';

  @override
  String get dontInstallDriverSoftwareNowDescription =>
      'شما می‌توانید آن را بعداً از نرم‌افزارها و به‌روز رسانی‌ها نصب کنید.';

  @override
  String get configureSecureBootSecurityKeyRequired =>
      'کلید امنیتی مورد نیاز است';

  @override
  String get secureBootSecurityKeysDontMatch => 'کلیدهای امنیتی مطابقت ندارند';

  @override
  String get showSecurityKey => 'نمایش کلید امنیتی';

  @override
  String get hideSecurityKey => 'نهفتن';

  @override
  String get updatesOtherSoftwarePageTitle => 'برنامه‌ها و به‌روز رسانی‌ها';

  @override
  String get updatesOtherSoftwarePageDescription =>
      'برای شروع چه برنامه‌هایی را می‌خواهید نصب کنید؟';

  @override
  String get codecsAndDriversPageTitle => 'بهینه سازی رایانه‌تان';

  @override
  String get codecsAndDriversPageDescription =>
      'نصب نرم‌افزارهای مالکیتی پیشنهادی؟';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return 'به صورت پیش‌گزیده هیج نرم‌افزار غیرآزادی در $DISTRO وجود ندارد. نصب کردن نرم‌افزارهای اضافی می‌تواند کارایی رایانه‌تان را تغییر دهد.';
  }

  @override
  String get codecsAndDriversNvidiaNote => 'کارت گرافیک انویدیا تشخیص داده شد';

  @override
  String get codecsAndDriversNvidiaBody =>
      'می‌توانید راه‌اندازهای اضافی را برای کارت‌های گرافیکی انویدیا نصب کنید.';

  @override
  String get fullInstallationTitle => 'گسترش گزینش';

  @override
  String get fullInstallationSubtitle =>
      'گزینشی برون‌خط از ابزاهای اداری، ابزارها و مرورگر وب.';

  @override
  String get minimalInstallationTitle => 'گزینش پیش‌فرض';

  @override
  String get minimalInstallationSubtitle =>
      'فقط واجبات. مرورگر وب و ابزارهای پایه.';

  @override
  String get otherOptions => 'دیگر گزینه‌ها';

  @override
  String get installThirdPartyTitle =>
      'نرم‌افزارهای شخص ثالث را برای سخت‌افزارهای گرافیکی و وای‌فای و همچنین قالب‌های رسانه‌ای اضافی نصب کنید';

  @override
  String get installThirdPartySubtitle =>
      'این نرم‌افزار مشمول شرایط پروانه‌هایی است که در مستنداتش ذکر شده. برخی از آن‌ها مالکیتی هستند.';

  @override
  String get installDriversTitle =>
      'نصب نرم‌افزارهای سوم‌شخص برای سخت‌افزارهای وای‌فای و گرافیک';

  @override
  String get installDriversSubtitle =>
      'از جمله گرداننده‌های انویدیا و مشابه آن‌ها';

  @override
  String get installCodecsTitle =>
      'بارگیری و نصب پشتیبانی برای قالب‌های رسانه‌ای بیش‌تر';

  @override
  String get installCodecsSubtitle => 'از جمله MP3،‌ MP4، MOV و مشابه این‌ها';

  @override
  String get batteryWarning => 'رایانه به منبع نیرو وصل نشده است.';

  @override
  String get offlineWarning => 'در حال حاضر برون‌خطید';

  @override
  String get choosePassphraseHeader => 'ایجاد عبارت عبور';

  @override
  String get choosePassphraseBody =>
      'You will need to enter your passphrase every time you turn on your computer. This passphrase is different from your user password.';

  @override
  String get choosePassphraseInfoHeader => 'از ذخیرهٔ عبارت عبورتان مطمئن شوید';

  @override
  String get choosePassphraseInfoBody =>
      'اگر گمش کنید همهٔ داده‌هایتان را از دست خواهید داد.';

  @override
  String get chooseOptionalPassphraseInfoHeader =>
      'عبارت عبور و کلید بازیابیتان را در جایی امن ذخیره کنید';

  @override
  String get chooseOptionalPassphraseInfoBody =>
      'If you lose your passphrase, you will lose all your data. The passphrase does not replace the recovery key or your user password.';

  @override
  String get passphrasePageTitle => 'رمزنگاری';

  @override
  String get passphrasePageHeaderPassphrase => 'تنظیم عبارت عبور رمزنگاری';

  @override
  String get passphrasePageHeaderPin => 'تنظیم پین رمزنگاری';

  @override
  String get passphrasePageBodyPassphrase =>
      'You will need to enter your passphrase every time you turn on your computer. This passphrase is different from your user password. You will be able to change it later, but not disable it. If you forget your passphrase, you can regain access to the disk by using the recovery key.';

  @override
  String get passphrasePageBodyPin =>
      'You will need to enter your PIN every time you turn on your computer. This PIN is different from your user password. You will be able to change it later, but not disable it. If you forget your PIN, you can regain access to the disk by using the recovery key.';

  @override
  String get passphrasePageChoosePassphraseHint => 'عبارت عبور';

  @override
  String get passphrasePageConfirmPassphraseHint => 'تأیید عبارت عبور';

  @override
  String get passphrasePageRequiredPassphrase => 'نیازمند عبارت عبور';

  @override
  String get passphrasePageMismatchPassphrase => 'عبارت‌های عبور مطابق نیستند';

  @override
  String get passphrasePageChoosePinHint => 'پین';

  @override
  String get passphrasePageConfirmPinHint => 'تأیید پین';

  @override
  String get passphrasePageRequiredPin => 'نیازمند پین';

  @override
  String get passphrasePageMismatchPin => 'پین‌ها مطابق نیستند';

  @override
  String get passphraseTypePassphraseTileTitle => 'نیازمند عبارت عبور';

  @override
  String get passphraseTypePassphraseTileSubTitle =>
      'Most secure. You will need to enter a longer passphrase every time you turn on your computer.';

  @override
  String get passphraseTypePinTileTitle => 'نیازمند پین';

  @override
  String get passphraseTypePinTileSubTitle =>
      'More secure. You will need to enter a numeric PIN every time you turn on your computer.';

  @override
  String get passphraseTypeNoneTileTitle => 'قفل‌گشایی خودکار دیسک';

  @override
  String get passphraseTypePageHeader => 'عبارت عبور یا پین رمزنگاری';

  @override
  String get passphraseTypePageBody =>
      'By default, the computer’s Trusted Platform Module (TPM) will unlock the disk during startup. You also have options to further protect your data.';

  @override
  String get passphrasePagePassphraseEntropyBelowMin =>
      'عبارت عبور ضعیف. طولانی‌تر یا پیچیده‌ترش کنید';

  @override
  String get passphrasePagePassphraseEntropyBelowOptimal =>
      'Fair passphrase, make it longer or more complex for better security';

  @override
  String get passphrasePagePassphraseEntropyOptimal => 'عبارت عبور قوی';

  @override
  String get passphrasePagePinEntropyBelowMin =>
      'پین ضعیف. طولانی‌تر یا پیچیده‌ترش کنید';

  @override
  String get passphrasePagePinEntropyBelowOptimal =>
      'Fair PIN, make it longer or less predictable for better security';

  @override
  String get passphrasePagePinEntropyOptimal => 'پین به قدر کافی بلند است';

  @override
  String get installationTypeTitle => 'برپایی دیسک';

  @override
  String installationTypeHeader(String DISTRO) {
    return 'می‌خواهید $DISTRO را چگونه نصب کنید؟';
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
  String get installationTypeMultiOSDetected =>
      'این رایانه هم‌اکنون دارای چندین سیستم‌عامل است. می‌خواهید چه کنید؟';

  @override
  String get installationTypeNoOSDetected =>
      'این رایانه هم‌اکنون دارای هیچ سیستم‌عامل شناخته‌شده‌ای نیست. می‌خواهید چه کنید؟';

  @override
  String installationTypeErase(String DISTRO) {
    return 'پاک کردن دیسک و نصب $DISTRO';
  }

  @override
  String get installationTypeEraseInfo =>
      'همهٔ داده‌ها و افزارهای روی دیسم پاک خواهند شد. از جمله سیستم‌عامل‌ها.';

  @override
  String get installationTypeAdvancedLabel => 'نمایش ویژگی‌های پیش‌رفته…';

  @override
  String get installationTypeAdvancedTitle => 'رمزنگاری و سامانهٔ پرونده';

  @override
  String get installationTypeExperimental => 'آزمایشی';

  @override
  String get installationTypeNone => 'بدون رمزنگاری';

  @override
  String get installationTypeNoneInfo =>
      'سامانهٔ پروندهٔ استاندارد بدون رمزنگاری.';

  @override
  String get installationTypeNoneSelected => 'هیچ‌کدام گزیده نشدند';

  @override
  String get installationTypeLVM => 'استفاده از LVM بدون رمزنگاری';

  @override
  String get installationTypeLVMSelected => 'استفاده از LVM گزیده شد';

  @override
  String get installationTypeLVMEncryption => 'رمزنگاری با عبارت عبور';

  @override
  String get installationTypeLVMEncryptionInfo =>
      'هربار که می‌خواهید رایانه‌تان را روشن کنید باید عبارت عبور را وارد کنید. این عبارت از رمزنگاری LUKS با LVM استفاده می‌کند.';

  @override
  String get installationTypeLVMEncryptionSelected =>
      'استفاده از LVM و رمزنگاری گزیده شد';

  @override
  String get installationTypeEncryptInfo =>
      'در گام بعدی، کلید امنیتی‌ای خواهید گزید.';

  @override
  String get installationTypeZFS => 'استفاده از ZFS بدون رمزنگاری';

  @override
  String get installationTypeZFSEncryption =>
      'رمزنگاری با عبارت عبور با استفاده از ZFS';

  @override
  String get installationTypeZFSEncryptionInfo =>
      'رمزنگاری بومی ZFS. باید هربار که رایانه‌تان را روشن می‌کنید عبارت عبوری وارد کنید.';

  @override
  String get installationTypeZFSSelected => 'استفاده از ZFS گزیده شد';

  @override
  String get installationTypeZFSEncryptionSelected => 'رمزنگاری و ZFS گزیده شد';

  @override
  String get installationTypeTPM => 'استفاده از رمزنگاری سخت‌افزاری';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return 'پیش از انتخاب این گزینه <a href=\"$url\">دربارهٔ رمزنگاری TPM بخوانید</a>. ممکن است با سخت‌افزارتان یا ارائه‌های آیندهٔ $DISTRO کار نکند.';
  }

  @override
  String get installationTypeTPMSelected => 'TPM گزیده شد';

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
    return 'نصب $product در کنار سیستم‌عامل‌های موجود';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return 'نصب $product کنار دیگر افرازها';
  }

  @override
  String installationTypeAlongsideInfo(String product) {
    return 'گزینش افرازی برای تغییر اندازه و ایجاد فضا برای $product. هنگام راه‌اندازی می‌توانید سیستم‌عاملتان را بگزینید.';
  }

  @override
  String installationTypeEraseAndInstall(String os, String product) {
    return 'پاک کردن $os و نصب $product';
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
  String get selectGuidedStorageInfo => 'آغاز از ابتدا روی دیسک گزیده‌تان.';

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
    return 'گزینش مکان نصب $DISTRO';
  }

  @override
  String get installAlongsideSpaceDivider =>
      'با کشیدن تقسیم‌کنندهٔ زیر، فضای گرداننده را تخصیص دهید:';

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
  String get allocateDiskSpaceInvalidMountPointSlash =>
      'نقطه‌های سوار کردن باید با «/» آغاز شوند';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace =>
      'نقطه‌های سوار شدن نمی‌توانند شامل فاصله باشند';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(
      String mountpoint, String format) {
    return 'قالب $format برای $mountpoint پشتیبانی نمی‌شود';
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
  String get newPartitionTableConfirmationMessage =>
      'Creating a new partition table on an entire device will remove all of its current partitions. This operation can be undone if needed.';

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
  String get confirmEntryDiskSetup => 'گونهٔ نصب';

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
  String get confirmPartitionTables =>
      'جدول افرازهای افزاره‌های زیر تغییر کرده‌اند:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmProprietarySoftwareCodecs => 'رمزینه‌ها';

  @override
  String get confirmProprietarySoftwareCodecsDrivers =>
      'رمزینه‌ها و راه‌اندازها';

  @override
  String get confirmProprietarySoftwareDrivers => 'راه‌اندازها';

  @override
  String get confirmInstallButton => 'نصب';

  @override
  String get confirmTableErased => 'پاک شده';

  @override
  String get confirmTableUnchanged => 'بدون تغییر';

  @override
  String confirmTableResized(String oldsize, String newsize) {
    return 'اندازه از $oldsize به $newsize تغییر کرده';
  }

  @override
  String confirmTableCreatedFormattedMounted(String format, String mountpoint) {
    return 'ایجاد شد و به قالب $format برای $mountpoint درآمد';
  }

  @override
  String confirmTableFormattedMounted(String format, String mountpoint) {
    return 'قالب بسته به $format استفاده شده برای $mountpoint';
  }

  @override
  String confirmTableMounted(String mountpoint) {
    return 'استفاده شده برای $mountpoint';
  }

  @override
  String confirmTableFormatted(String format) {
    return 'قالب‌بندی شده به صورت $format';
  }

  @override
  String get installationCompleteTitle => 'نصب کامل شد';

  @override
  String readyToUse(String system) {
    return '$system نصب شده و آمادهٔ استفاده است';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system** روی دیسک رونوشت شد';
  }

  @override
  String restartInto(String system) {
    return 'آغاز دوباره به $system';
  }

  @override
  String get restartWarningBody =>
      'Restart to complete the installation or continue testing.\nAny changes you make will not be saved.';

  @override
  String get rebootToConfigureWarning =>
      'برای ادامهٔ فرایند نصب باید رایانه را دوباره آغاز کنید.';

  @override
  String get shutdown => 'خاموش کردن';

  @override
  String get restartNow => 'اکنون دوباره آغاز شود';

  @override
  String get continueTesting => 'ادامهٔ آزمودن';

  @override
  String get bitlockerInfoTitle => 'بیت‌لاکر تشخیص داده شد';

  @override
  String get bitlockerInfoDescription =>
      'یکی یا چندتا از افرازهایتان با بیت‌لاکر رمزنگاری شده.';

  @override
  String get bitlockerInfoDisable =>
      'برای نصب کنار ویندوز، بیت‌لاکر را در ویندوز از کار بیندازید.';

  @override
  String get bitlockerInfoRecovery =>
      'ممکن است ویندوز در راه‌اندازی پس از نصب درخواست کلید بازیابی کند.';

  @override
  String bitlockerInfoInstructions(String url) {
    return 'برای دستورالعمل‌ها <a href=\"$url\">راهنمای بیت‌لاکر</a> را ببینید.';
  }

  @override
  String get bitlockerWarningTitle =>
      'بدون کلید بازیابی بیت‌لاکر ممکن است همهٔ داده‌هایتان را از دست بدهید';

  @override
  String get restartComputer => 'آغاز دوبارهٔ رایانه';

  @override
  String get restartComputerTitle => 'آغاز دوبارهٔ رایانه؟';

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
  String get installationSlidesWelcomeTitle =>
      'سریع، آزاد و پر از ویژگی‌های جدید';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return 'جدیدترین نگارش $DISTRO رایانش را آسان‌تر از همیشه کرده است.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'چه توسعه‌دهنده باشید، چه سازندهٔ محتوا، بازیکن یا مدیر، ابزارهایی جدید برای بهبود بهره‌وری و ارتقای تجربه‌تان در $RELEASE خواهید یافت.';
  }

  @override
  String get installationSlidesSoftwareTitle =>
      'تمامی برنامه‌هایی که نیاز دارید';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'نصب، مدیریت و به‌روز رسانی تمامی کاره‌هایتان در نرم‌افزارهای اوبونتو، شامل هزاران برنامه از مخازن $DISTRO و فروشگاه اسنپ.';
  }

  @override
  String get installationSlidesDevelopmentTitle =>
      'توسعه با بهترین‌های نرم‌افزار آزاد';

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
  String get installationSlidesSupportTitle => 'کمک و پشتیبانی';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return 'مستندات رسمی $DISTRO هم به صورت برخط و هم از نقشک راهنما در داک موجودند.';
  }

  @override
  String get installationSlidesSupportCommunity =>
      'Ask Ubuntu covers a range of questions and responses and the Ubuntu Discourse provides guides and discussions for new and experienced users.';

  @override
  String get installationSlidesSupportEnterprise =>
      'For enterprise users Canonical provides commercial support to make it easy to onboard and manage Ubuntu securely in the workplace.';

  @override
  String get installationSlidesSupportResources => 'منبع‌های مفید:';

  @override
  String get installationSlidesSupportDocumentation => 'مستندات رسمی';

  @override
  String get installationSlidesSupportUbuntuPro =>
      'پشتیبانی ردهٔ تجاری ۲۴/۷ با Pro اوبونتو';

  @override
  String get nextSlideSemanticLabel => 'صفحهٔ بعدی';

  @override
  String get previousSlideSemanticLabel => 'صفحهٔ پیشین';

  @override
  String get playSlideshowSemanticLabel => 'پخش نمایش صفحه‌ها';

  @override
  String get pauseSlideshowSemanticLabel => 'مکث نمایش صفحه‌ها';

  @override
  String get toggleLogsSemanticLabel => 'تغییر وضعیت گزارش‌های نصب';

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
  String get refreshInfo =>
      'به‌روز رسانی به جدیدترین نگارش برای قابلیت اطمینان بهبود یافته و ویژگی‌های بیش‌تر.';

  @override
  String get refreshReady => 'به‌روز رسانی آماده';

  @override
  String refreshCurrent(String snap, String version) {
    return 'نگارش کنونی $snap: $version.';
  }

  @override
  String refreshInstall(String version) {
    return 'به‌روز رسانی به نگارش $version';
  }

  @override
  String refreshUpToDate(String version) {
    return 'نگارش کنونی ($version) به‌روز است.';
  }

  @override
  String refreshUpdating(String snap) {
    return 'به روز رساندن $snap…';
  }

  @override
  String get refreshRestart =>
      'لطفاً نصب کننده را بسته و برای ادامه دوباره اجرا کنید';

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
    return 'به‌روز کردن خط فرمان کرنل $snap…';
  }

  @override
  String refreshSnapCopyData(String snap) {
    return 'رونشوت برداشتن از داده‌های $snap…';
  }

  @override
  String refreshSnapSetupProfiles(String snap) {
    return 'برپا کردن نماگرهای امنیتی $snap…';
  }

  @override
  String refreshSnapLink(String snap) {
    return 'پیوند دادن $snap…';
  }

  @override
  String refreshSnapAutoConnect(String snap) {
    return 'وصل کردن کلید و پریزهای $snap…';
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
  String get recoveryKeyTitle => 'کلید بازیابی';

  @override
  String get recoveryKeyTitleBadgeLabel => 'مهم';

  @override
  String get recoveryKeyHeader => 'ذخیرهٔ کلید بازیابیتان';

  @override
  String get recoveryKeyInfoHeader =>
      'بدون کلید بازیابی ممکن است همهٔ داده‌هایتان را از دست بدهید';

  @override
  String get recoveryKeyTextFieldLabel => 'کلید بازیابی';

  @override
  String get recoveryKeyStorageAdvice =>
      'You will need to provide this recovery key if decryption fails during startup. Without the key, you will lose access to all your data. Save it somewhere safe, such as a password manager.';

  @override
  String get recoveryKeyConfirmation => 'کلید بازیابیم را جایی امن ذخیره کردم';

  @override
  String get recoveryKeyLinkLabel => 'دانستن بیش‌تر';

  @override
  String get recoveryKeySaveToFileLabel => 'ذخیره در پرونده';

  @override
  String get recoveryKeyShowQrCodeLabel => 'نمایش کد پاس';

  @override
  String recoveryKeyQrDialogTitle(String DISTRO) {
    return 'میزکار $DISTRO - کلید بازیابی';
  }

  @override
  String get recoveryKeyQrDialogBody =>
      'Scan the QR code to copy the recovery key and save it somewhere safe, such as a password manager. You can also take a photo for later use.';

  @override
  String get recoveryKeyClipboardNotifiaction => 'در تخته‌گیره رونوشت شد';

  @override
  String get recoveryKeyExceptionFileSystemTitle =>
      'پروندهٔ کلید بازیابی ذخیره نشد';

  @override
  String get recoveryKeyExceptionDisallowedPathTitle =>
      'کلید بازیابی نتوانست در مکان موقّتی ذخیره شود';

  @override
  String get recoveryKeyExceptionUnknownTitle => 'خطای ناشناخته';

  @override
  String get recoveryKeyExceptionFileSystemBody =>
      'You do not have permission to write to that folder. Try a different location or use another method.';

  @override
  String get recoveryKeyExceptionDisallowedPathBody =>
      'Try a different location, such as a removable drive, or use another method.';

  @override
  String get recoveryKeyFilePickerTitle => 'ذخیرهٔ پروندهٔ کلید بازیابی';

  @override
  String get recoveryKeyFilePickerFilter => 'پرونده‌های متنی';

  @override
  String landscapeMagicAttachInstructions(String url) {
    return 'Scan the QR code or enter the code below at <a href=\"https://$url\">$url</a>';
  }

  @override
  String get landscapePageTitle => 'نصب خودکار';

  @override
  String get landscapeHeader => 'ورود به لندسکیپ';

  @override
  String get landscapeDomainHeader => 'ورود دامنهٔ لندسکیپ';

  @override
  String get landscapeDomainHintText => 'دامنهٔ لندسکیپ';

  @override
  String get landscapeDomainInstructions =>
      'Provide your organization\'s Landscape domain to log in and fetch an autoinstall file. You can get the FQDN from your IT support.';

  @override
  String get landscapeDomainTextField => 'دامنهٔ لندسکیپ';

  @override
  String get next => 'بعدی';

  @override
  String get landscapeDomainInvalidDomainWarning =>
      'دامنه نامعتبر. بررسیش کرده یا با پشتیبانی تماس بگیرید';

  @override
  String get landscapeDomainNoInternetTitleWarning =>
      'وصل شدن به اینترنت برای ادامه';

  @override
  String get landscapeDomainNoInternetDescriptionWarning =>
      'برای واکشی پروندهٔ نصب خودکار از لندسکیپ نیاز به اینترنت است';

  @override
  String get landscapeCodeExpiredWarning => 'کد منقضی شد. تلاش دوباره';

  @override
  String get landscapeLoginFailedWarning => 'ورود شکست خورد. تلاش دوباره';

  @override
  String get landscapeErrorPageTitle => 'نصب خودکار برای حسابتان موجود نیست';

  @override
  String get landscapeErrorPageBody =>
      'با پشتیبانی تماس گرفته یا گزینهٔ نصبی متفاوت را بیازمایید.';

  @override
  String landscapeErrorPageCode(String code) {
    return 'کد خطا: $code';
  }

  @override
  String get landscapeConfirmPageSuccessInfoTitle =>
      'اوبونتو با پیکربندی‌های فراهم شده از سوی سازمانتان نصب خواهد شد';

  @override
  String get landscapeConfirmPageSuccessInfoContent =>
      'می‌توانید پروندهٔ نصب خودکار درون‌ریخته از لندسکیپ را در زیر بازبینی کنید.';

  @override
  String get successIconSemanticLabel => 'موفّقیت';

  @override
  String get errorIconSemanticLabel => 'خطا';

  @override
  String get closeIconSemanticLabel => 'Close';

  @override
  String get maximizeIconSemanticLabel => 'Maximize';

  @override
  String get minimizeIconSemanticLabel => 'Minimize';

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
  String get tpmActionErrorKindRunningInVm => 'Running In VM';

  @override
  String get tpmActionErrorKindSystemNotEfi => 'System Not EFI';

  @override
  String get tpmActionErrorKindEfiVariableAccess => 'EFI Variable Access';

  @override
  String get tpmActionErrorKindNoSuitableTpm2Device =>
      'No Suitable TPM2 Device';

  @override
  String get tpmActionErrorKindTpmDeviceFailure => 'TPM Device Failure';

  @override
  String get tpmActionErrorKindTpmDeviceDisabled => 'TPM Device Disabled';

  @override
  String get tpmActionErrorKindTpmHierarchiesOwned => 'TPM Hierarchies Owned';

  @override
  String get tpmActionErrorKindTpmDeviceLockoutLockedOut =>
      'TPM Device Lockout Locked Out';

  @override
  String get tpmActionErrorKindInsufficientTpmStorage =>
      'Insufficient TPM Storage';

  @override
  String get tpmActionErrorKindNoSuitablePcrBank => 'NoSuitable PCR Bank';

  @override
  String get tpmActionErrorKindMeasuredBoot => 'Measured Boot';

  @override
  String get tpmActionErrorKindTpmCommandFailed => 'TPM Command Failed';

  @override
  String get tpmActionErrorKindInvalidTpmResponse => 'Invalid TPM Response';

  @override
  String get tpmActionErrorKindTpmCommunication => 'TPM Communication';

  @override
  String get tpmActionErrorKindUnsupportedPlatform => 'Unsupported Platform';

  @override
  String get tpmActionErrorKindUefiDebuggingEnabled => 'UEFI Debugging Enabled';

  @override
  String get tpmActionErrorKindInsufficientDmaProtection =>
      'Insufficient DMA Protection';

  @override
  String get tpmActionErrorKindNoKernelIommu => 'No Kernel IOMMU';

  @override
  String get tpmActionErrorKindHostSecurity => 'Host Security';

  @override
  String get tpmActionErrorKindPcrUnusable => 'PCR Unusable';

  @override
  String get tpmActionErrorKindSysPrepApplicationsPresent =>
      'Sys Prep Applications Present';

  @override
  String get tpmActionErrorKindAbsolutePresent => 'Absolute Present';

  @override
  String get tpmActionErrorKindInvalidSecureBootMode =>
      'Invalid SecureBoot Mode';

  @override
  String get tpmActionErrorKindWeakSecureBootAlgorithmDetected =>
      'Weak SecureBoot Algorithm Detected';

  @override
  String get tpmActionErrorKindPreOsSecureBootAuthByEnrolledDigests =>
      'Pre OS Secure Boot Auth By Enrolled Digests';

  @override
  String get tpmActionErrorKindAddonDriversPresent => 'Addon Drivers Present';

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
  String get tpmActionFixActionContactOem => 'Contact OEM';

  @override
  String get tpmActionFixActionContactOsVendor => 'Contact OS Vendor';

  @override
  String get tpmActionFixActionEnableTpmViaFirmware =>
      'Enable TPM Via Firmware';

  @override
  String get tpmActionFixActionEnableAndClearTpmViaFirmware =>
      'Enable And Clear TPM Via Firmware';

  @override
  String get tpmActionFixActionClearTpmViaFirmware => 'Clear TPM Via Firmware';

  @override
  String get tpmActionFixActionClearTpm => 'Clear TPM';

  @override
  String get tpmActionFixActionProceed => 'Ignore';

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
  String get tpmActionErrorTitle => 'This solution failed';

  @override
  String get tpmActionErrorDescription =>
      'Try a different solution or contact IT support';
}
