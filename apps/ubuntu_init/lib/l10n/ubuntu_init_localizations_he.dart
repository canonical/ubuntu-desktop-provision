import 'ubuntu_init_localizations.dart';

// ignore_for_file: type=lint

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
    return 'אפשר לסייע לנו לשפר את $distro על ידי שיתוף נתוני המערכת שלך איתנו. לרבות פרטים כגון דגם המחשב שלך, התוכנות המותקנות והמקום שבחרת לאזור הזמן שלך.';
  }

  @override
  String telemetryLabelOn(Object distro) {
    return 'כן, לשתף את נתוני המערכת שלי עם צוות $distro';
  }

  @override
  String get telemetryLabelOff => 'לא, לא לשתף את נתוני המערכת שלי';

  @override
  String get telemetryReportLabel => 'הצגת הדוח הראשון';

  @override
  String get telemetryReportTitle => 'פרטי דיווח';

  @override
  String get telemetryLegalLabel => 'הצהרה משפטית';

  @override
  String get telemetryCollectError => 'איסוף המדדים נכשל';

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
    return 'הצטרפות קסם עם הקוד הזה דרך <a href=\"https://$url\">$url</a>';
  }

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';

  @override
  String get ubuntuProHeader => 'צירוף המכונה הזאת';

  @override
  String get ubuntuProOrAddTokenManually => 'או להוסיף את האסימון ידנית';

  @override
  String get ubuntuProTokenTextfieldHint => 'אסימון';

  @override
  String get ubuntuProSubscriptionDescription => 'קבלת המינוי המקיף ביותר לאבטחה של תוכנה בקוד פתוח';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(Object url) {
    return 'תמיד חינמי לשימוש אישי. 30 יום ניסיון לתאגידים. <a href=\"https://$url\">למידע נוסף</a>';
  }

  @override
  String get ubuntuProTokenAttachButton => 'צירוף';

  @override
  String get ubuntuProTokenAttachError => 'אסימון שגוי';

  @override
  String get ubuntuProTokenAttachSucess => 'אסימון תקף';

  @override
  String get ubuntuProTokenAttachErrorVariant => 'אסימון שגוי, נא לנסות שוב';

  @override
  String get ubuntuProOnBoardingSkipForNow => 'לדלג לעת עתה';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription => 'תמיד אפשר להפעיל את Ubuntu Pro בהמשך דרך יישום התוכנה והעדכונים.';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => 'הפעלת Ubuntu Pro';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription => 'אפשר לצרף את המכונה הזאת למינוי Ubuntu Pro לקבלת עדכוני אבטחה ומגוון רחב יותר של חבילות עד 2032.';

  @override
  String get ubuntuProSucessAttachHeader => 'Ubuntu Pro מופעל מעתה במכונה הזאת';

  @override
  String get ubuntuProSucessAttachDescription => 'אפשר לנהל את שירותי ה־Pro שלך ביישום התוכנה והעדכונים.';
}
