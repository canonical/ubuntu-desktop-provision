// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_init_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Persian (`fa`).
class UbuntuInitLocalizationsFa extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsFa([String locale = 'fa']) : super(locale);

  @override
  String get welcomePageTitle => 'خوش آمدید';

  @override
  String welcomePageHeader(String distro) {
    return 'به $distro‌ خوش آمدید';
  }

  @override
  String get welcomeWhatsNew => 'چیزهای جدید؟';

  @override
  String get welcomeStartTitle => 'شروعی روان‌تر';

  @override
  String get welcomeStartSubtitle => 'پشتیبانی از یک تجربهٔ برپایی تمیزتر.';

  @override
  String get welcomeStoreTitle => 'فروشگاه کاره با ظاهر جدید';

  @override
  String get welcomeStoreSubtitle =>
      'یافتن نرم‌افزارهای دلخواهتان هرگز بدین سادگی نبوده.';

  @override
  String get welcomeSecurityTitle => 'امنیت بهبود یافته';

  @override
  String get welcomeSecuritySubtitle =>
      'گزینه‌هایی جدید برای رمزنگاری ZFS یا با پشتیبانی از سخت‌افزار.';

  @override
  String welcomeChangelogLabel(String url) {
    return '<a href=\"$url\">دیدن گزارش دگرگونی</a>';
  }

  @override
  String get telemetryPageTitle => 'گزارش از دور';

  @override
  String telemetryHeader(String distro) {
    return 'کمک به بهبود $distro';
  }

  @override
  String telemetryDescription(String distro) {
    return 'کمک در بهبود $distro با هم‌رسانی داده‌های سامانه‌تان. این داده‌ها شامل چیزهایی چون مدل دستگاهتان، نرم‌افزارهای نصب شده و مکانی که برای منطقهٔ زمانیتان گزیده‌اید هستند.';
  }

  @override
  String telemetryLabelOn(String distro) {
    return 'بله. داده‌ها با گروه $distro هم‌رسانی شوند';
  }

  @override
  String get telemetryLabelOff => 'نه. داده‌های سامانه هم‌رسانی نشوند';

  @override
  String get telemetryReportLabel => 'نمایش نخستین گزارش';

  @override
  String get telemetryReportTitle => 'جزییات گزارش';

  @override
  String get telemetryLegalLabel => 'یادداشت حقوقی';

  @override
  String get telemetryCollectError => 'شکست در جمع‌آوری داده‌های دورسنجی';

  @override
  String get privacyPageTitle => 'خدمات مکانی';

  @override
  String get privacyLocationTitle => 'به کار انداختن خدمات مکانی؟';

  @override
  String get privacyLocationSubtitle =>
      'می‌گذارد برنامه‌ها مکان جغرافیاییتان را بدانند.\nمی‌توانید هر زماندر تنظیمات سامانه تغییرش دهید.';

  @override
  String get privacyLocationEnable => 'خدمات مکانی';

  @override
  String get privacyPolicyLink => 'محرمانگی داده‌ها';

  @override
  String ubuntuProMagicAttachInstructions(String url) {
    return 'پیوستن جادویی با این کد در <a href=\"https://$url\">$url</a>';
  }

  @override
  String get ubuntuProPageTitle => 'اوبونتوی حرفه‌ای';

  @override
  String get ubuntuProHeader => 'پیوستن این دستگاه';

  @override
  String get ubuntuProOrAddTokenManually => 'یا افزودن دستی ژتون';

  @override
  String get ubuntuProTokenTextfieldHint => 'ژتون';

  @override
  String get ubuntuProSubscriptionDescription =>
      'گرفتن جامع‌ترین اشتراک امنیتی نرم‌افزارهای آزاد';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(String url) {
    return 'همواره رایگان برای استفادهٔ شخصی. آزمایش ۳۰ روزه برای کسب‌وکارها. <a href=\"https://$url\">بیش‌تر بدانید</a>';
  }

  @override
  String get ubuntuProTokenAttachButton => 'پیوست';

  @override
  String get ubuntuProTokenAttachError => 'ژتون نامعتبر';

  @override
  String get ubuntuProTokenAttachSucess => 'ژتون معتبر';

  @override
  String get ubuntuProTokenAttachErrorVariant => 'ژتون نامعتبر. تلاش دوباره';

  @override
  String get ubuntuProOnBoardingSkipForNow => 'فعلاً پریده شود';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription =>
      'همواره می‌توانید اوبونتوی حرفه‌ای را در برنامهٔ نرم‌افزارها و به‌روز رسانی‌ها به کار بیندازید.';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro =>
      'به کار انداختن اوبونتوی حرفه‌ای';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription =>
      'وصل کردن این دستگاه به اشتراک اوبونتوی حرفه‌ای برای به‌روز رسانی‌های امنیتی روی بازهٔ وسیعی از بسته‌ها تا ۲۰۳۲.';

  @override
  String get ubuntuProSucessAttachHeader =>
      'اوبونتوی حرفه‌ای اکنون روی این دستگاه به کار افتاده';

  @override
  String get ubuntuProSucessAttachDescription =>
      'می‌توانید خدمات حرفه‌ایتان را در برنامهٔ نرم‌افزارها و به‌روز رسانی‌ها مدیریت کنید.';

  @override
  String get successIconSemanticLabel => 'موفّقیت';

  @override
  String get closeIconSemanticLabel => 'Close';

  @override
  String get maximizeIconSemanticLabel => 'Maximize';

  @override
  String get minimizeIconSemanticLabel => 'Minimize';
}
