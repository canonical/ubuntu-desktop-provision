import 'ubuntu_init_localizations.dart';

/// The translations for Persian (`fa`).
class UbuntuInitLocalizationsFa extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsFa([String locale = 'fa']) : super(locale);

  @override
  String get welcomePageTitle => 'خوش آمدید';

  @override
  String welcomePageHeader(Object distro) {
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
  String get welcomeStoreSubtitle => 'یافتن نرم‌افزارهای دلخواهتان هرگز بدین سادگی نبوده.';

  @override
  String get welcomeSecurityTitle => 'امنیت بهبود یافته';

  @override
  String get welcomeSecuritySubtitle => 'گزینه‌هایی جدید برای رمزنگاری ZFS یا با پشتیبانی از سخت‌افزار.';

  @override
  String welcomeChangelogLabel(Object url) {
    return '<a href=\"$url\">دیدن گزارش دگرگونی</a>';
  }

  @override
  String get telemetryPageTitle => 'گزارش از دور';

  @override
  String telemetryHeader(Object distro) {
    return 'کمک به بهبود $distro';
  }

  @override
  String telemetryDescription(Object distro) {
    return 'کمک در بهبود $distro با هم‌رسانی داده‌های سامانه‌تان. این داده‌ها شامل چیزهایی چون مدل دستگاهتان، نرم‌افزارهای نصب شده و مکانی که برای منطقهٔ زمانیتان گزیده‌اید هستند.';
  }

  @override
  String telemetryLabelOn(Object distro) {
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
  String get privacyLocationSubtitle => 'می‌گذارد برنامه‌ها مکان جغرافیاییتان را بدانند.\nمی‌توانید هر زماندر تنظیمات سامانه تغییرش دهید.';

  @override
  String get privacyLocationEnable => 'خدمات مکانی';

  @override
  String get privacyPolicyLink => 'محرمانگی داده‌ها';

  @override
  String ubuntuProMagicAttachInstructions(Object url) {
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
  String get ubuntuProSubscriptionDescription => 'Get the most comprehensive subscription for open-source software security';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(Object url) {
    return 'Always free for personal use. 30-days trial for enterprises. <a href=\"https://$url\">Learn more</a>';
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
  String get ubuntuProOnBoardingSkipForNowDescription => 'You can always enable Ubuntu Pro later via the Software & Updates application.';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => 'به کار انداختن اوبونتوی حرفه‌ای';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription => 'Attach this machine to an Ubuntu Pro subscription for security updates on a wider range of packages, until 2032.';

  @override
  String get ubuntuProSucessAttachHeader => 'اوبونتوی حرفه‌ای اکنون روی این دستگاه به کار افتاده';

  @override
  String get ubuntuProSucessAttachDescription => 'You can manage your Pro services in the Software & Updates application.';
}
