import 'ubuntu_init_localizations.dart';

/// The translations for Hebrew (`he`).
class UbuntuInitLocalizationsHe extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsHe([String locale = 'he']) : super(locale);

  @override
  String get welcomePageTitle => 'ברוך בואך';

  @override
  String welcomePageHeader(Object distro) {
    return 'ברוך בואך אל $distro';
  }

  @override
  String get welcomeWhatsNew => 'מה חדש?';

  @override
  String get welcomeStartTitle => 'התחלה חלקה';

  @override
  String get welcomeStartSubtitle => 'תמיכה בחוויית הקמה פשוטה יותר.';

  @override
  String get welcomeStoreTitle => 'חנות יישומים במראה חדש';

  @override
  String get welcomeStoreSubtitle => 'מעולם לא היה קל יותר למצוא את התוכנות המועדפות עליך.';

  @override
  String get welcomeSecurityTitle => 'אבטחה משופרת';

  @override
  String get welcomeSecuritySubtitle => 'אפשרויות חדשות להצפנת ZFS בגיבוי חומרה.';

  @override
  String welcomeChangelogLabel(Object url) {
    return '<a href=\"$url\">הצגת יומן השינויים</a>';
  }

  @override
  String get telemetryPageTitle => 'מדדים';

  @override
  String telemetryHeader(Object distro) {
    return 'סיוע בשיפור $distro';
  }

  @override
  String telemetryDescription(Object distro) {
    return 'אפשר לשתף נתונים עם $distro בצורה אלמונית כדי לאפשר לנו לשפר את החוויה שלך.';
  }

  @override
  String telemetryLabelOn(Object distro) {
    return 'כן, לשתף את נתוני המערכת שלי עם צוות $distro';
  }

  @override
  String get telemetryLabelOff => 'לא, לא לשתף את נתוני המערכת שלי';

  @override
  String get telemetryReportLabel => 'פרטי דיווח';

  @override
  String get telemetryReportTitle => 'פרטי דיווח';

  @override
  String get telemetryLegalLabel => 'משפטי';

  @override
  String get privacyPageTitle => 'שירותי מיקום';

  @override
  String get privacyLocationTitle => 'להפעיל שירותי מיקום?';

  @override
  String get privacyLocationSubtitle => 'לאפשר ליישומים לדעת מה מיקומך הגאוגרפי.\nאפשר לשנות זאת בכל עת דרך הגדרות המערכת.';

  @override
  String get privacyLocationEnable => 'שירותי מיקום';

  @override
  String get privacyPolicyLink => 'פרטיות נתונים';

  @override
  String ubuntuProMagicAttachInstructions(Object url) {
    return 'Magic attach with this code at <a href=\"https://$url\">$url</a>';
  }

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';

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
