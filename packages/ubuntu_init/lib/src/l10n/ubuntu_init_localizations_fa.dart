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
  String get telemetryCollectError => 'Failed to collect telemetry data';

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
    return 'Magic attach with this code at <a href=\"https://$url\">$url</a>';
  }

  @override
  String get ubuntuProPageTitle => 'اوبونتوی حرفه‌ای';

  @override
  String get ubuntuProHeader => 'Attach this machine';

  @override
  String get ubuntuProOrAddTokenManually => 'or add a token manually';

  @override
  String get ubuntuProTokenTextfieldHint => 'Token';

  @override
  String get ubuntuProSubscriptionDescription => 'Get the most comprehensive subscription for open-source software security';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(Object url) {
    return 'Always free for personal use. 30-days trial for enterprises. <a href=\"https://$url\">Learn more</a>';
  }

  @override
  String get ubuntuProTokenAttachButton => 'Attach';

  @override
  String get ubuntuProTokenAttachError => 'Invalid token';

  @override
  String get ubuntuProTokenAttachSucess => 'Valid token';

  @override
  String get ubuntuProTokenAttachErrorVariant => 'Invalid token, retry';

  @override
  String get ubuntuProOnBoardingSkipForNow => 'Skip for now';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription => 'You can always enable Ubuntu Pro later via the Software & Updates application.';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => 'Enable Ubuntu Pro';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription => 'Attach this machine to an Ubuntu Pro subscription for security updates on a wider range of packages, until 2032.';

  @override
  String get ubuntuProSucessAttachHeader => 'Ubuntu Pro is now enabled in this machine';

  @override
  String get ubuntuProSucessAttachDescription => 'You can manage your Pro services in the Software & Updates application.';
}
