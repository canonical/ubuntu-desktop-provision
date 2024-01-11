import 'ubuntu_init_localizations.dart';

/// The translations for Persian (`fa`).
class UbuntuInitLocalizationsFa extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsFa([String locale = 'fa']) : super(locale);

  @override
  String loadingPageTitle(Object DISTRO) {
    return 'Welcome to $DISTRO';
  }

  @override
  String loadingHeader(Object DISTRO) {
    return 'Preparing $DISTRO…';
  }

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
    return 'هم‌رسانی ناشناس داده‌ها با $distro برای بهبود تجربه‌تان.';
  }

  @override
  String telemetryLabelOn(Object distro) {
    return 'بله. داده‌ها با گروه $distro هم‌رسانی شوند';
  }

  @override
  String get telemetryLabelOff => 'نه. داده‌های سامانه هم‌رسانی نشوند';

  @override
  String get telemetryReportLabel => 'گزارش کردن جزییات';

  @override
  String get telemetryReportTitle => 'جزییات گزارش';

  @override
  String get telemetryLegalLabel => 'حقوقی';

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
  String get ubuntuProPageTitle => 'Ubuntu Pro';
}
