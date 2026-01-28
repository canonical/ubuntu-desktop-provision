// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_bootstrap_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hebrew (`he`).
class UbuntuBootstrapLocalizationsHe extends UbuntuBootstrapLocalizations {
  UbuntuBootstrapLocalizationsHe([String locale = 'he']) : super(locale);

  @override
  String get appTitle => 'תוכנית התקנת שולחן עבודה אובונטו';

  @override
  String windowTitle(String RELEASE) {
    return 'להתקין את $RELEASE';
  }

  @override
  String get autoinstallDirectTitle => 'התקנה אוטומטית';

  @override
  String get autoinstallDirectHeader =>
      'ייבוא קובץ autoinstall (התקנה אוטומטית)';

  @override
  String get autoinstallDirectUrlLabel =>
      'אפשר למלא כתובת של קובץ autoinstall:';

  @override
  String get autoinstallDirectFileLabel => 'או לבחור בקובץ מקומי:';

  @override
  String get autoinstallDirectFileButtonLabel => 'בחירת קובץ…';

  @override
  String get autoinstallDirectFileClearButtonLabel => 'פינוי קובץ';

  @override
  String get autoinstallDirectFilePickerTitle => 'בחירת קובץ';

  @override
  String get autoinstallDirectFilePickerFilterLabel => 'קובצי YAML';

  @override
  String get autoinstallDirectImportButtonLabel => 'ייבוא';

  @override
  String get autoinstallDirectErrorNetworkTitle =>
      'קובץ ההתקנה האוטומטית (Autoinstall) לא נגיש';

  @override
  String get autoinstallDirectErrorNetworkBody =>
      'נא לבדוק שהכתובת נכונה, שהחיבור שלך לאינטרנט תקין או לנסות מאוחר יותר.';

  @override
  String get autoinstallDirectErrorInvalidUrlTitle => 'כתובת שגויה';

  @override
  String get autoinstallDirectErrorInvalidUrlBody =>
      'נא לבדוק שהכתובת נכונה או לבחור קובץ מקומי.';

  @override
  String get autoinstallDirectErrorInvalidContentTitle =>
      'קובץ התקנה אוטומטית (autoinstall) שגוי';

  @override
  String get autoinstallDirectErrorInvalidContentBody =>
      'נא לבדוק שהקובץ תקין או לספק אחד חלופי.';

  @override
  String get autoinstallDirectErrorFileSystemTitle =>
      'קובץ ההתקנה האוטומטית (autoinstall) אינו קריא';

  @override
  String get autoinstallDirectErrorFileSystemBody =>
      'נא לבדוק את ההרשאות שלך או לספק קובץ חלופי.';

  @override
  String get autoinstallDirectErrorUnkownTitle => 'שגיאה לא ידועה';

  @override
  String get autoinstallTitle => 'סוג ההתקנה';

  @override
  String autoinstallHeader(String DISTRO) {
    return 'איך להתקין את $DISTRO?';
  }

  @override
  String get autoinstallInstructions =>
      'נא למלא את כתובת ה־autoinstall.yaml או נתיב מקומי:';

  @override
  String get autoinstallInteractiveOption => 'ההתקנה אינטראקטיבית';

  @override
  String get autoinstallInteractiveDescription =>
      'למשתמשים שצריכים הדרכה שלב אחר שלב במהלך ההתקנה.';

  @override
  String get autoinstallDirectOption =>
      'מצב אוטומטי עם קובץ התקנה אוטומטית (autoinstall)';

  @override
  String get autoinstallDirectDescription =>
      'למשתמשים מתקדמים שיש להם autoinstall.yaml להתקנות עקביות ומחזוריות.';

  @override
  String get autoinstallLandscapeOption => 'אוטומציה עם Landscape';

  @override
  String get autoinstallLandscapeDescription =>
      'למשתמשים בארגונים שמספקים קובץ התקנה אוטומטית (autoinstall) דרך Landscape.';

  @override
  String get changeButtonText => 'שינוי';

  @override
  String get quitButtonText => 'יציאה מההתקנה';

  @override
  String loadingPageTitle(String DISTRO) {
    return 'ברוך בואך אל $DISTRO';
  }

  @override
  String loadingHeader(String DISTRO) {
    return '$DISTRO בהכנות…';
  }

  @override
  String get warningLabel => 'אזהרה:';

  @override
  String tryOrInstallTitle(String DISTRO) {
    return 'להתנסות או להתקין את $DISTRO';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return 'מה מעניין אותך לעשות עם $DISTRO?';
  }

  @override
  String get tryOrInstallRepairOption => 'תיקון התקנה';

  @override
  String get tryOrInstallRepairDescription =>
      'תיקון יתקין את כל התכניות המותקנות מחדש מבלי לגעת במסמכים או בהגדרות.';

  @override
  String tryOption(String RELEASE) {
    return 'להתנסות ב־$RELEASE';
  }

  @override
  String tryDescription(String RELEASE) {
    return 'אפשר להתנסות ב־$RELEASE מבלי לערוך שינויים במחשב שלך.';
  }

  @override
  String installOption(String RELEASE) {
    return 'להתקין את $RELEASE';
  }

  @override
  String installDescription(String RELEASE) {
    return 'התקנת $RELEASE לצד (או במקום) מערכת ההפעלה הנוכחית שלך. אמור להיות תהליך קצר.';
  }

  @override
  String tryOrInstallReleaseNotesLabel(String url) {
    return 'ממליצים לך לקרוא את <a href=\"$url\">הערות ההוצאה לאור</a>.';
  }

  @override
  String get rstTitle => 'RST פעיל';

  @override
  String get rstHeader => 'יש לכבות את ה־RST כדי להמשיך בהתקנה';

  @override
  String get rstDisable =>
      'המחשב שלך משתמש ב־RST (טכנולוגיית אחסון מהיר) של אינטל. אפשר להשבית את RST דרך:';

  @override
  String get rstDisableWindows =>
      'Windows, אם יש לך מערכת נוספת בטעינה עם Windows';

  @override
  String get rstDisableBios => 'הגדרות ה־BIOS';

  @override
  String rstInstructions(String url) {
    return 'לקבלת הנחיות, יש לסרוק את קוד ה־QR הזה במכשיר אחר או לבקר באתר: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'הגדרת טעינה מאובטחת (Secure Boot)';

  @override
  String get configureSecureBootDescription =>
      'בחרת להתקין תכנית מנהל התקן מגורם צד־שלישי. פעולה שכזאת דורשת את כיבוי הטעינה המאובטחת (Secure Boot).\nכדי לעשות זאת, עליך לבחור מפתח אבטחה כעת ולהקליד אותו לאחר שהמערכת תופעל מחדש.';

  @override
  String get configureSecureBootOption => 'הגדרת טעינה מאובטחת (Secure Boot)';

  @override
  String get chooseSecurityKey => 'נא לבחור מפתח אבטחה';

  @override
  String get confirmSecurityKey => 'אישור מפתח האבטחה';

  @override
  String get dontInstallDriverSoftwareNow =>
      'לא להתקין את תכנית מנהל ההתקן לבינתיים';

  @override
  String get dontInstallDriverSoftwareNowDescription =>
      'אפשר להתקין מאוחר יותר דרך תכנה ועדכונים.';

  @override
  String get configureSecureBootSecurityKeyRequired => 'נדרש מפתח אבטחה';

  @override
  String get secureBootSecurityKeysDontMatch => 'מפתחות האבטחה סותרים זה את זה';

  @override
  String get showSecurityKey => 'הצגת מפתח אבטחה';

  @override
  String get hideSecurityKey => 'הסתרה';

  @override
  String get updatesOtherSoftwarePageTitle => 'יישומים ועדכונים';

  @override
  String get updatesOtherSoftwarePageDescription =>
      'אילו יישומים להתקין בתור התחלה?';

  @override
  String get codecsAndDriversPageTitle => 'מיטוב המחשב שלך';

  @override
  String get codecsAndDriversPageDescription => 'להתקין תוכנה קניינית מומלצת?';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return 'ל־$DISTRO לא מצורפת תוכנה קניינית כברירת מחדל. התקנת תוכנות נוספות עשויה לשפר את ביצועי המחשב שלך.';
  }

  @override
  String get codecsAndDriversNvidiaNote => 'זוהה כרטיס מסך של NVIDIA';

  @override
  String get codecsAndDriversNvidiaBody =>
      'לביצועים מיטביים עם כרטיסי NVIDIA, מומלץ בחום להתקין מנהלי התקנים נוספים.';

  @override
  String get fullInstallationTitle => 'התקנה מלאה';

  @override
  String get fullInstallationSubtitle =>
      'בחירה של כלי הפקה, עזרים, דפדפן ומשחקים ללא צורך בחיבור לאינטרנט.';

  @override
  String get minimalInstallationTitle => 'התקנת ברירת מחדל';

  @override
  String get minimalInstallationSubtitle => 'היסודות, דפדפן ועזרים בסיסיים.';

  @override
  String get otherOptions => 'אפשרויות נוספות';

  @override
  String get installThirdPartyTitle =>
      'התקנת תכניות צד־שלישי לחומרה גרפית ואלחוטית, לרבות תצורות מדיה נוספות';

  @override
  String get installThirdPartySubtitle =>
      'התכניות האלו כפופות לתנאי אישוי שנכללים בתיעוד שלהן. חלקן קנייניות.';

  @override
  String get installDriversTitle =>
      'התקנת תוכנת צד־שלישי לחומרת גרפיקה ותקשורת אלחוטית';

  @override
  String get installDriversSubtitle =>
      'מנהלי התקנים אלה כפופים לתנאי הרישיון שנכללים בתיעוד שלהם. הם קנייניים';

  @override
  String get installCodecsTitle => 'הורדה והתקנה של תמיכה בתצורות מדיה נוספות';

  @override
  String get installCodecsSubtitle =>
      'תוכנה זו כפופה לתנאי הרישיון שנכללים בתיעוד שלה. חלקם קנייניים';

  @override
  String get batteryWarning => 'המחשב לא מחובר למקור חשמל.';

  @override
  String get offlineWarning => 'החיבור שלך מנותק';

  @override
  String get choosePassphraseHeader => 'יצירת מילת צופן';

  @override
  String get choosePassphraseBody =>
      'יש להקליד את מילת הצופן שלך עם כל הדלקה של המחשב שלך. מילת הצופן הזאת שונה מסיסמת המשתמש שלך.';

  @override
  String get choosePassphraseInfoHeader => 'נא לשמור את מילת הצופן שלך';

  @override
  String get choosePassphraseInfoBody => 'אובדן שלה יוביל לאובדן המידע שלך.';

  @override
  String get chooseOptionalPassphraseInfoHeader =>
      'נא לאחסן את מילת הצופן ואת מפתח הגיבוי שלך במקום בטוח';

  @override
  String get chooseOptionalPassphraseInfoBody =>
      'אובדן מילת הצופן שלך תוביל לאובדן כל הנתונים שלך. מילת הצופן אינה מחליפה את קוד השחזור או את הסיסמה שלך.';

  @override
  String get passphrasePageTitle => 'הצפנה';

  @override
  String get passphrasePageHeaderPassphrase => 'הגדרת מילת צופן להצפנה';

  @override
  String get passphrasePageHeaderPin => 'הגדרת קוד הצפנה אישי';

  @override
  String get passphrasePageBodyPassphrase =>
      'יש למלא את מילת הצופן שלך עם כל הדלקה של המחשב. מילת הצופן הזאת שונה מסיסמת המשתמש שלך. אפשר לשנות אותה אחר כך אבל לא להשבית אותה. אם שכחת את מילת הצופן שלך, אפשר לשחזר את הגישה לכונן דרך שימוש במפתח שחזור.';

  @override
  String get passphrasePageBodyPin =>
      'יש להקליד קוד אישי עם כל הדלקה של המחשב. הקוד האישי הזה שונה מסיסמת המשתמש שלך. אפשר לשנות אותו בהמשך אך לא להשבית אותו. אם שכחת את הקוד האישי שלך, אפשר לשחזר את הגישה לכונן דרך שימוש במפתח שחזור.';

  @override
  String get passphrasePageChoosePassphraseHint => 'מילת צופן';

  @override
  String get passphrasePageConfirmPassphraseHint => 'אישור מילת צופן';

  @override
  String get passphrasePageRequiredPassphrase => 'דרושה מילת צופן';

  @override
  String get passphrasePageMismatchPassphrase => 'מילות הצופן לא תואמות';

  @override
  String get passphrasePageChoosePinHint => 'קוד אישי';

  @override
  String get passphrasePageConfirmPinHint => 'אישור קוד אישי';

  @override
  String get passphrasePageRequiredPin => 'דרוש קוד אישי';

  @override
  String get passphrasePageMismatchPin => 'הקודים האישיים לא תואמים';

  @override
  String get passphraseTypePassphraseTileTitle => 'לדרוש מילת צופן';

  @override
  String get passphraseTypePassphraseTileSubTitle =>
      'הכי מאובטח. יש למלא מילת צופן ארוכה עם כל הדלקה של המחשב שלך.';

  @override
  String get passphraseTypePinTileTitle => 'לדרוש קוד אישי';

  @override
  String get passphraseTypePinTileSubTitle =>
      'מאובטח יותר. יש להקליד קוד אישי מספרי עם כל הדלקה של המחשב שלך.';

  @override
  String get passphraseTypeNoneTileTitle => 'לשחרר את נעילת הכונן אוטומטית';

  @override
  String get passphraseTypePageHeader => 'אבטחה נוספת';

  @override
  String get passphraseTypePageBody =>
      'כברירת מחדל, מודול הפלטפורמה המאובטחת (TPM) ישחרר את נעילת הכונן בזמן העלייה. יש אפשרויות נוספות להוספת שכבת הגנה על הנתונים שלך.';

  @override
  String get passphrasePagePassphraseEntropyBelowMin =>
      'מילת צופן חלשה, נא להאריך או לסבך אותה';

  @override
  String get passphrasePagePassphraseEntropyBelowOptimal =>
      'מילת צופן סבירה, נא להאריך או לסבך אותה לשיפור האבטחה';

  @override
  String get passphrasePagePassphraseEntropyOptimal => 'מילת צופן חזקה';

  @override
  String get passphrasePagePinEntropyBelowMin =>
      'קוד אישי חלש, נא להאריך או להפוך אותו לפחות צפוי';

  @override
  String get passphrasePagePinEntropyBelowOptimal =>
      'קוד אישי סביר, נא להאריך או להפוך אותו לפחות צפוי לשיפור האבטחה';

  @override
  String get passphrasePagePinEntropyOptimal => 'הקוד האישי מספיק ארוך';

  @override
  String get installationTypeTitle => 'הקמת הכונן';

  @override
  String installationTypeHeader(String DISTRO) {
    return 'איך להתקין את $DISTRO?';
  }

  @override
  String installationTypeOSDetected(String os) {
    return 'במחשב זה מותקנת כרגע $os. מה לעשות?';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return 'במחשב זה מותקנות כרגע $os1 ו־$os2. מה לעשות?';
  }

  @override
  String get installationTypeMultiOSDetected =>
      'במחשב זה מותקנות מספר מערכות הפעלה. מה לעשות?';

  @override
  String get installationTypeNoOSDetected =>
      'לא זוהו מערכות הפעלה כלשהן במחשב זה. מה לעשות?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'למחוק את הכונן ולהתקין את $DISTRO';
  }

  @override
  String get installationTypeEraseInfo =>
      'כל הנתונים והמחיצות בכונן יימחקו, כולל מערכות ההפעלה.';

  @override
  String get installationTypeAdvancedLabel => 'הצגת אפשרויות מתקדמות…';

  @override
  String get installationTypeAdvancedTitle => 'הצפנה ומערכת קבצים';

  @override
  String get installationTypeExperimental => 'ניסיוני';

  @override
  String get installationTypeNone => 'ללא הצפנה';

  @override
  String get installationTypeNoneInfo => 'מערכת קבצים רגילה בלי הצפנה.';

  @override
  String get installationTypeNoneSelected => 'לא נבחרו';

  @override
  String get installationTypeLVM => 'להשתמש ב־LVM בלי הצפנה';

  @override
  String get installationTypeLVMSelected => 'נבחר מנהל כרכים לוגי';

  @override
  String get installationTypeLVMEncryption => 'הצפנה עם מילת צופן';

  @override
  String get installationTypeLVMEncryptionInfo =>
      'יש למלא מילת צופן עם כל הדלקה של המחשב. משתמש בהצפנת LUKS עם LVM.';

  @override
  String get installationTypeLVMEncryptionSelected => 'נבחרו LVM והצפנה';

  @override
  String get installationTypeEncryptInfo => 'בשלב הבא ניתן לבחור מפתח אבטחה.';

  @override
  String get installationTypeZFS => 'להשתמש ב־ZFS בלי הצפנה';

  @override
  String get installationTypeZFSEncryption => 'הצפנה עם מילת צופן באמצעות ZFS';

  @override
  String get installationTypeZFSEncryptionInfo =>
      'הצפנה מובנית עם ZFS. יהיה למלא מילת צופן עם כל הדלקה של המחשב.';

  @override
  String get installationTypeZFSSelected => 'נבחר ZFS';

  @override
  String get installationTypeZFSEncryptionSelected => 'נבחרו ZFS והצפנה';

  @override
  String get installationTypeTPM => 'להשתמש בהצפנה מגובית חומרה';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return '<a href=\"$url\">כדאי לקרוא על הצפנת TPM</a> בטרם בחירה באפשרות הזאת. יכול להיות שלא תעבוד עם החומרה שלך או בגרסאות עתידיות של $DISTRO.';
  }

  @override
  String get installationTypeTPMSelected => 'TPM נבחר';

  @override
  String installationTypeReinstall(String os) {
    return 'למחוק את $os ולהתקין מחדש';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">אזהרה:</font> פעולה זו תמחק את כל התכניות, המסמכים, התמונות, המוזיקה וקבצים מסוגים נוספים כחלק ממערכת $os.';
  }

  @override
  String installationTypeAlongside(String product, String os) {
    return 'להתקין את $product לצד $os';
  }

  @override
  String installationTypeAlongsideDual(String product, String os1, String os2) {
    return 'להתקין את $product לצד $os1 ו־$os2';
  }

  @override
  String installationTypeAlongsideMulti(String product) {
    return 'להתקין את $product לצד מערכות הפעלה קיימות';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return 'להתקין את $product לצד מחיצות אחרות';
  }

  @override
  String installationTypeAlongsideInfo(String product) {
    return 'נא לבחור לאיזו מחיצה לשנות את הגודל וליצור מקום עבור $product. אפשר לבחור את מערכת ההפעלה שלך במהלך הטעינה.';
  }

  @override
  String installationTypeEraseAndInstall(String os, String product) {
    return 'מחיקת $os והתקנת $product';
  }

  @override
  String installationTypeEraseAndInstallInfo(String os) {
    return 'כל הקבצים והנתונים מההתקנה הקיימת של $os יימחקו לצמיתות.';
  }

  @override
  String get installationTypeManual => 'חלוקה ידנית למחיצות';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'למשתמשים מתקדמים שמחפשים תצורות כוננים מיוחדות.';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'למחוק את הכונן ולהתקין את $DISTRO';
  }

  @override
  String get selectGuidedStorageInfo => 'התחלה מאפס על הכונן שבחרת.';

  @override
  String get selectGuidedStorageDriveDropdownLabel => 'בחירת כונן:';

  @override
  String get selectGuidedStoragePartitionDropdownLabel => 'בחירת מחיצה:';

  @override
  String get selectGuidedStorageInfoLabel => 'ייעשה שימוש בכונן כולו:';

  @override
  String get selectGuidedStorageInstallNow => 'להתקין כעת';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return 'נא לבחור איפה להתקין את $DISTRO';
  }

  @override
  String get installAlongsideSpaceDivider =>
      'גרירת החוצץ שלהלן תגדיר את הקצאת המקום בכונן:';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return '$num מחיצות קטנות יותר מוסתרות, יש להשתמש ב<a href=\"$url\">כלי המתקדם לחלוקה למחיצות</a> לשליטה טובה יותר';
  }

  @override
  String get installAlongsideResizePartition => 'שינוי גודל מחיצה';

  @override
  String get installAlongsideAllocateSpace => 'הקצאת מקום';

  @override
  String get installAlongsideFiles => 'קבצים';

  @override
  String get installAlongsidePartition => 'מחיצה:';

  @override
  String get installAlongsideSize => 'גודל:';

  @override
  String get installAlongsideAvailable => 'זמין:';

  @override
  String get allocateDiskSpace => 'חלוקת מחיצות ידנית';

  @override
  String get allocateDiskSpaceInvalidMountPointSlash =>
      'נקודות עיגון חייבות להתחיל ב־„/”';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace =>
      'נקודות עיגון לא יכולות להכיל רווחים';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(
      String mountpoint, String format) {
    return '$format היא אינה מערכת קבצים נתמכת עבור $mountpoint';
  }

  @override
  String get diskHeadersDevice => 'התקן';

  @override
  String get diskHeadersType => 'סוג';

  @override
  String get diskHeadersMountPoint => 'נקודת עגינה';

  @override
  String get diskHeadersSize => 'גודל';

  @override
  String get diskHeadersUsed => 'בשימוש';

  @override
  String get diskHeadersSystem => 'מערכת';

  @override
  String get diskHeadersFormat => 'פורמט';

  @override
  String get freeDiskSpace => 'שטח פנוי';

  @override
  String get newPartitionTable => 'טבלת מחיצות חדשה';

  @override
  String get newPartitionTableConfirmationTitle => 'מחיצה ריקה חדשה';

  @override
  String get newPartitionTableConfirmationMessage =>
      'יצירת טבלת מחיצות חדשה על כל הכונן תסיר את כל המחיצות הנוכחיות שלו. אי אפשר להשתקם מהפעולה הזאת במקרה הצורך.';

  @override
  String get tooManyPrimaryPartitions => 'יותר מדי מחיצות ראשיות';

  @override
  String get partitionLimitReached => 'הגעת למגבלה';

  @override
  String get bootLoaderDevice => 'התקן להתקנת מנהל טעינה';

  @override
  String get partitionCreateTitle => 'יצירת מחיצה';

  @override
  String get partitionEditTitle => 'עריכת מחיצה';

  @override
  String get partitionSizeLabel => 'גודל:';

  @override
  String get partitionTypeLabel => 'סוג המחיצה החדשה:';

  @override
  String get partitionTypePrimary => 'עיקרית';

  @override
  String get partitionTypeLogical => 'לוגית';

  @override
  String get partitionLocationLabel => 'מיקום המחיצה החדשה:';

  @override
  String get partitionLocationBeginning => 'תחילת שטח זה';

  @override
  String get partitionLocationEnd => 'סוף שטח זה';

  @override
  String get partitionFormatLabel => 'בשימוש בתור:';

  @override
  String get partitionFormatNone => 'להשאיר בלי פרמוט';

  @override
  String partitionFormatKeep(String format) {
    return 'להשאיר בעיצוב $format';
  }

  @override
  String get partitionErase => 'פרמוט המחיצה';

  @override
  String get partitionMountPointLabel => 'נקודת עגינה:';

  @override
  String get confirmPageTitle => 'סיימנו להתכונן להתקנה';

  @override
  String get confirmHeader => 'סקירת הבחירות שלך';

  @override
  String get confirmDiskEncryptionLVM => 'LUKS (LVM)';

  @override
  String get confirmDiskEncryptionZFS => 'LUKS (ZFS)';

  @override
  String get confirmDiskEncryptionTPM => 'TPM';

  @override
  String get confirmDiskEncryptionNone => 'בלי';

  @override
  String get confirmDevicesTitle => 'התקנים';

  @override
  String get confirmEntryApplications => 'יישומים';

  @override
  String get confirmEntryDiskSetup => 'סוג ההתקנה';

  @override
  String get confirmEntryDiskEncryption => 'הצפנת הכונן';

  @override
  String get confirmEntryInstallationDisk => 'אמצעי ההתקנה';

  @override
  String get confirmEntryProprietarySoftware => 'תוכנה קניינית';

  @override
  String get confirmSectionGeneralTitle => 'כללי';

  @override
  String get confirmSectionSecurityAndMoreTitle => 'אבטחה ועוד';

  @override
  String get confirmPartitionsTitle => 'מחיצות';

  @override
  String get confirmPartitionTables => 'טבלאות המחיצות של ההתקנים הבאים נערכו:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmProprietarySoftwareCodecs => 'מפענחים';

  @override
  String get confirmProprietarySoftwareCodecsDrivers => 'מפענחים ומנהלי התקנים';

  @override
  String get confirmProprietarySoftwareDrivers => 'מנהלי התקנים';

  @override
  String get confirmInstallButton => 'התקנה';

  @override
  String get confirmTableErased => 'נמחק';

  @override
  String get confirmTableUnchanged => 'ללא שינוי';

  @override
  String confirmTableResized(String oldsize, String newsize) {
    return 'הגודל השתנה מ־$oldsize ל־$newsize';
  }

  @override
  String confirmTableCreatedFormattedMounted(String format, String mountpoint) {
    return 'נוצר ופורמט ל־$format ומשמש עבור $mountpoint';
  }

  @override
  String confirmTableFormattedMounted(String format, String mountpoint) {
    return 'פורמט ל־$format ומשמש עבור $mountpoint';
  }

  @override
  String confirmTableMounted(String mountpoint) {
    return 'משמש עבור $mountpoint';
  }

  @override
  String confirmTableFormatted(String format) {
    return 'פורמט ל־$format';
  }

  @override
  String get installationCompleteTitle => 'ההתקנה הושלמה';

  @override
  String readyToUse(String system) {
    return 'המערכת $system מותקנת ומוכנה לשימוש';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system** הועתקה לכונן';
  }

  @override
  String restartInto(String system) {
    return 'הפעלה מחדש אל $system';
  }

  @override
  String get restartWarningBody =>
      'אפשר להפעיל מחדש כדי להשלים את ההתקנה או להמשיך לחקור. \nהשינויים שנערכים כאן לא יישמרו.';

  @override
  String get rebootToConfigureWarning =>
      'יש להפעיל את המחשב מחדש כדי להמשיך את תהליך ההתקנה.';

  @override
  String get shutdown => 'כיבוי';

  @override
  String get restartNow => 'להפעיל מחדש כעת';

  @override
  String get continueTesting => 'להמשיך לבחון';

  @override
  String get bitlockerInfoTitle => 'זוהה BitLocker';

  @override
  String get bitlockerInfoDescription =>
      'מחיצה אחת או יותר מוצפנות ב־BitLocker.';

  @override
  String get bitlockerInfoDisable =>
      'כדי להתקין לצד Windows, יש להשבית את BitLocker ב־Windows.';

  @override
  String get bitlockerInfoRecovery =>
      'Windows עשוי לבקש מפתחות שחזור עם העלייה לאחר ההתקנה.';

  @override
  String bitlockerInfoInstructions(String url) {
    return 'להנחיות, אפשר לפנות אל <a href=\"$url\">הדרכת BitLocker</a>.';
  }

  @override
  String get bitlockerWarningTitle =>
      'כל הנתונים שלך עלולים ללכת לאיבוד ללא מפתחות שחזור BitLocker';

  @override
  String get restartComputer => 'להפעיל את המחשב מחדש';

  @override
  String get restartComputerTitle => 'להפעיל את המחשב מחדש?';

  @override
  String get restartIntoWindows => 'להפעיל מחדש אל Windows';

  @override
  String get restartIntoWindowsTitle => 'לעלות מחדש ל־Windows?';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return 'להפעיל את המחשב מחדש? יש להפעיל את ההתקנה של $DISTRO מחדש בהמשך כדי לסיים את התקנת $DISTRO.';
  }

  @override
  String installationSlidesTitle(String RELEASE) {
    return 'ברוך בואך אל $RELEASE';
  }

  @override
  String get installationSlidesAvailable => 'זמין:';

  @override
  String get installationSlidesIncluded => 'כחלק:';

  @override
  String get installationSlidesWelcomeTitle =>
      'מהיר, חינמי ומפוצץ ביכולות חדשות';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return 'הגרסה העדכנית ביותר של $DISTRO הופכת את השימוש במחשב לפשוט מאי פעם.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'בין אם למטרות פיתוח, יצירה, משחקים או ניהול ניתן למצוא כלים חדשים לשיפור היעילות והחוויה עם $RELEASE.';
  }

  @override
  String get installationSlidesSoftwareTitle => 'כל היישומים שדרושים לך';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'אפשר להתקין, לנהל ולעדכן את כל היישומים שלך עם מרכז התוכנה של אובונטו לרבות אלפי יישומים מחנות Snap ומארכיון $DISTRO.';
  }

  @override
  String get installationSlidesDevelopmentTitle =>
      'כלי פיתוח קוד פתוח מהשורה הראשונה';

  @override
  String installationSlidesDevelopmentBody(String DISTRO) {
    return '$DISTRO היא תחנת העבודה האידאלית לפיתוח יישומים ואתרים, מדעי נתונים ובינה מלאכותית/למידת מכונה לרבות DevOps וניהול. כל מהדורה של $DISTRO כוללת את סוללת כלי העבודה העדכנית ביותר ותומכת בכל סביבות הפיתוח המשולבות העיקריות.';
  }

  @override
  String get installationSlidesCreativityTitle => 'לפרוץ את גבולות הדמיון';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return 'מנפישים, מעצבים, יוצרי סרטונים ומפתחי משחקים יכולים להביא את הרגלי העבודה שלהם לתוך $DISTRO עם תמיכה בקוד פתוח ובתוכנות ויישומים שמקובלים בתעשייה.';
  }

  @override
  String get installationSlidesGamingTitle => 'מעולה למשחקים';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return 'ב־$DISTRO יש תמיכה במנהלי ההתקנים העדכניים ביותר של NVIDIA ושל Mesa כדי לשפר את הביצועים והתאימות. אלפי משחקי צמרת שנתמכים ב־Windows פועלים היטב עם $DISTRO דרך יישומים כמו Steam ללא הגדרות נוספות.';
  }

  @override
  String get installationSlidesSecurityTitle => 'פרטי ומאובטח';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return 'כחלק מ־$DISTRO מסופקים כל הכלים שדרושים לך כדי לשמור על פרטיות ואבטחה באינטרנט. עם חומת אש מובנית ותמיכה ב־VPN ובכמות מרשימה של יישומים ששומרים על פרטיותך בקנאות כדי לעזור לך לוודא שיש לך שליטה מלאה על המידע שלך.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return 'כל מהדורות $DISTRO LTS (תמיכה לזמן ארוך) זוכות לחמש שנים של תיקוני אבטחת מידע אותן ניתן להרחיב לעשר עם מינוי של אובונטו פרו.';
  }

  @override
  String get installationSlidesProductivityTitle => 'פשוט להפיק יותר';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return 'שולחן העבודה של $DISTRO כולל את LibreOffice, חבילת יישומי קוד פתוח תואמי Microsoft Office עבור מסמכים, גיליונות נתונים ומצגות. לרבות כלי שיתוף פעולה נוספים.';
  }

  @override
  String get installationSlidesAccessibilityTitle => 'גישה לכל אחד ואחת';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return 'במרכז הפילוסופיה של $DISTRO קיימת האמונה שמחשוב מיועד לכולם. עם כלי נגישות מתקדמים ואפשרויות להחלפת השפה, הצבעים וגודל הכתב, $DISTRO מקל על השימוש במחשב - בכל אופן ואזור גאוגרפי.';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'מקריא המסך Orca';

  @override
  String get installationSlidesAccessibilityLanguages => 'תמיכה בשפות';

  @override
  String get installationSlidesSupportTitle => 'עזרה ותמיכה';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return 'התיעוד הרשמי של $DISTRO זמין גם באינטרנט וגם דרך סמל העזרה במעגן.';
  }

  @override
  String get installationSlidesSupportCommunity =>
      'האתר Ask Ubuntu חולש על פני מגוון רחב של שאלות ותשובות ו־Ubuntu Discourse מספק מדריכים ודיונים למשתמשים חדשים ומנוסים.';

  @override
  String get installationSlidesSupportEnterprise =>
      'למשתמשים תאגידיים מספקת Canonical תמיכה מסחרית כדי להקל על ההגירה והניהול של אובונטו בצורה מאובטחת בסביבת העבודה.';

  @override
  String get installationSlidesSupportResources => 'משאבים חיוניים:';

  @override
  String get installationSlidesSupportDocumentation => 'תיעוד רשמי';

  @override
  String get installationSlidesSupportUbuntuPro =>
      'תמיכה 24/7 ברמה תעשייתית עם אובונטו פרו';

  @override
  String get nextSlideSemanticLabel => 'השקופית הבאה';

  @override
  String get previousSlideSemanticLabel => 'השקופית הקודמת';

  @override
  String get playSlideshowSemanticLabel => 'הפעלת המצגת';

  @override
  String get pauseSlideshowSemanticLabel => 'השהיית המצגת';

  @override
  String get toggleLogsSemanticLabel => 'החלפת מצב יומני התקנה';

  @override
  String get copyingFiles => 'קבצים מועתקים…';

  @override
  String get installingSystem => 'המערכת מותקנת…';

  @override
  String get configuringSystem => 'המערכת מוגדרת…';

  @override
  String get installationFailed => 'ההתקנה נכשלה';

  @override
  String get notEnoughDiskSpaceTitle => 'אין מספיק מקום בכונן';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return 'אין מספיק מקום להתקין את $DISTRO';
  }

  @override
  String notEnoughDiskSpaceBody(String DISTRO) {
    return 'בכונן הנבחר אין מספיק מקום כדי להתקין את $DISTRO. נא לצאת מתוכנית ההתקנה כדי לפנות מקום או לבחור בכונן אחר.';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'פנוי:';

  @override
  String get notEnoughDiskSpaceRequired => 'נחוץ:';

  @override
  String get refreshPageTitle => 'קיים עדכון';

  @override
  String get refreshHeader => 'יש עדכון לתוכנית ההתקנה';

  @override
  String get refreshUpdateNow => 'לעדכן עכשיו';

  @override
  String get refreshInfo =>
      'עדכון לגרסה העדכנית ביותר ישפר את האמינות ויביא איתו יכולות נוספות.';

  @override
  String get refreshReady => 'העדכון מוכן';

  @override
  String refreshCurrent(String snap, String version) {
    return 'הגרסה הנוכחית של $snap היא $version.';
  }

  @override
  String refreshInstall(String version) {
    return 'עדכון לגרסה $version';
  }

  @override
  String refreshUpToDate(String version) {
    return 'הגרסה הנוכחית של $version עדכנית.';
  }

  @override
  String refreshUpdating(String snap) {
    return '$snap מתעדכן…';
  }

  @override
  String get refreshRestart =>
      'נא לסגור את תוכנית ההתקנה ולהפעיל אותה מחדש כדי להמשיך';

  @override
  String get refreshCloseLabel => 'סגירת תוכנית ההתקנה';

  @override
  String refreshSnapPrerequisites(String snap) {
    return 'התלויות של $snap נבדקות…';
  }

  @override
  String refreshSnapRefresh(String snap) {
    return '$snap מתרענן…';
  }

  @override
  String refreshSnapCheckRerefresh(String snap) {
    return 'הרענון של $snap נבדק…';
  }

  @override
  String refreshSnapPrepare(String snap) {
    return '$snap בהכנות…';
  }

  @override
  String refreshSnapDownload(String snap) {
    return '$snap בהורדה…';
  }

  @override
  String refreshSnapValidate(String snap) {
    return '$snap באימות…';
  }

  @override
  String refreshSnapMount(String snap) {
    return '$snap מעוגן…';
  }

  @override
  String refreshSnapStopServices(String snap) {
    return 'שירותי $snap נעצרים…';
  }

  @override
  String refreshSnapRemoveAliases(String snap) {
    return 'הכינויים של $snap נמחקים…';
  }

  @override
  String refreshSnapUnlink(String snap) {
    return 'הקישור של $snap מנותק…';
  }

  @override
  String refreshSnapUpdateAssets(String snap) {
    return 'המשאבים של $snap מתעדכנים…';
  }

  @override
  String refreshSnapUpdateKernelCommandLine(String snap) {
    return 'שורת פקודת הליבה של $snap מתעדכנת…';
  }

  @override
  String refreshSnapCopyData(String snap) {
    return 'הנתונים של $snap מועתקים…';
  }

  @override
  String refreshSnapSetupProfiles(String snap) {
    return 'פרופילי האבטחה של $snap מוגדרים…';
  }

  @override
  String refreshSnapLink(String snap) {
    return '$snap מקושר…';
  }

  @override
  String refreshSnapAutoConnect(String snap) {
    return 'התקעים והשקעים של $snap מחוברים…';
  }

  @override
  String refreshSnapSetAutoAliases(String snap) {
    return 'הכינויים האוטומטיים של $snap מוגדרים…';
  }

  @override
  String refreshSnapSetupAliases(String snap) {
    return 'הכינויים של $snap מוגדרים…';
  }

  @override
  String refreshSnapStartServices(String snap) {
    return 'השירותים של $snap מופעלים…';
  }

  @override
  String refreshSnapCleanup(String snap) {
    return '$snap מתפנה…';
  }

  @override
  String get recoveryKeyTitle => 'מפתח שחזור';

  @override
  String get recoveryKeyTitleBadgeLabel => 'חשוב';

  @override
  String get recoveryKeyHeader => 'לשמור את מפתח השחזור שלך';

  @override
  String get recoveryKeyInfoHeader =>
      'הנתונים שלך עלולים ללכת לאיבוד ללא מפתח שחזור';

  @override
  String get recoveryKeyTextFieldLabel => 'מפתח שחזור';

  @override
  String get recoveryKeyStorageAdvice =>
      'את המפתח הזה צריך לספק אם פענוח ההצפנה נכשל במהלך העלייה. ללא המפתח, הגישה שלך לכל הנתונים שלך תלך לאיבוד. כדאי לשמור אותו במקום בטוח, כגון מנהל סיסמאות.';

  @override
  String get recoveryKeyConfirmation => 'שמרתי את מפתח השחזור שלי במקום בטוח';

  @override
  String get recoveryKeyLinkLabel => 'מידע נוסף';

  @override
  String get recoveryKeySaveToFileLabel => 'שמירה לקובץ';

  @override
  String get recoveryKeyShowQrCodeLabel => 'הצגת קוד QR';

  @override
  String recoveryKeyQrDialogTitle(String DISTRO) {
    return '$DISTRO לשולחן העבודה - מפתח שחזור';
  }

  @override
  String get recoveryKeyQrDialogBody =>
      'יש לסרוק את קוד ה־QR כדי להעתיק את מפתח השחזור ולשמור אותו במקום בטוח כגון מנהל סיסמאות. אפשר גם לצלם אותו לשימוש עתידי.';

  @override
  String get recoveryKeyClipboardNotifiaction => 'הועתק ללוח הגזירים';

  @override
  String get recoveryKeyExceptionFileSystemTitle => 'קובץ מפתח השחזור לא נשמר';

  @override
  String get recoveryKeyExceptionDisallowedPathTitle =>
      'לא ניתן לשמור את קובץ מפתח השחזור במקום זמני';

  @override
  String get recoveryKeyExceptionUnknownTitle => 'שגיאה לא ידועה';

  @override
  String get recoveryKeyExceptionFileSystemBody =>
      'אין לך הרשאה לכתוב לתיקייה הזאת. נא לנסות מקום אחר או להשתמש בשיטה אחרת.';

  @override
  String get recoveryKeyExceptionDisallowedPathBody =>
      'נא לנסות מקום אחר כגון כונן נתיק או להשתמש בשיטה אחרת.';

  @override
  String get recoveryKeyFilePickerTitle => 'שמירת קובץ מפתח שחזור';

  @override
  String get recoveryKeyFilePickerFilter => 'קובצי טקסט';

  @override
  String landscapeMagicAttachInstructions(String url) {
    return 'נא לסרוק את ה־QR או למלא את הקוד להלן דרך <a href=\"https://$url\">$url</a>';
  }

  @override
  String get landscapePageTitle => 'התקנה אוטומטית';

  @override
  String get landscapeHeader => 'כניסה ל־Landscape';

  @override
  String get landscapeDomainHeader => 'נא למלא שם תחום ל־Landscape‏ (מלא/FQDN)';

  @override
  String get landscapeDomainHintText => 'שם תחום ב־Landscape‏ (FQDN - מלא)';

  @override
  String get landscapeDomainInstructions =>
      'נא לספק את שם התחום של הארגון שלך ב־Landscape כדי להיכנס ולמשוך קובץ התקנה אוטומטית (autoinstall). אפשר לקבל את שם התחום המלא (FQDN) שלך מתמיכת המחשוב.';

  @override
  String get landscapeDomainTextField => 'שם תחום ב־Landscape (מלא/FQDN)';

  @override
  String get next => 'הבא';

  @override
  String get landscapeDomainInvalidDomainWarning =>
      'שם תחום שגוי, נא לבדוק מול התמיכה הטכנית של המערכת';

  @override
  String get landscapeDomainNoInternetTitleWarning =>
      'יש להתחבר לאינטרנט כדי להמשיך';

  @override
  String get landscapeDomainNoInternetDescriptionWarning =>
      'צריך חיבור לאינטרנט כדי למשוך את קובץ ההתקנה האוטומטית (autoinstall) מ־Landscape';

  @override
  String get landscapeCodeExpiredWarning => 'תוקף הקוד פג, נא לנסות שוב';

  @override
  String get landscapeLoginFailedWarning => 'הכניסה נכשלה, נא לנסות שוב';

  @override
  String get landscapeErrorPageTitle => 'התקנה אוטומטית אינה זמינה לחשבון שלך';

  @override
  String get landscapeErrorPageBody =>
      'נא לפנות למחלקת המחשוב/IT שלך או לנסות אפשרות התקנה אחרת.';

  @override
  String landscapeErrorPageCode(String code) {
    return 'קוד שגיאה: $code';
  }

  @override
  String get landscapeConfirmPageSuccessInfoTitle =>
      'מערכת אובונטו תותקן עם ההגדרות שסופקו על ידי הארגון שלך';

  @override
  String get landscapeConfirmPageSuccessInfoContent =>
      'אפשר לסקור את קובץ ההתקנה האוטומטית (autoinstall) מ־Landscape להלן.';

  @override
  String get successIconSemanticLabel => 'הצליח';

  @override
  String get errorIconSemanticLabel => 'שגיאה';

  @override
  String get closeIconSemanticLabel => 'סגירה';

  @override
  String get maximizeIconSemanticLabel => 'הגדלה';

  @override
  String get minimizeIconSemanticLabel => 'מזעור';

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

  @override
  String get manualPartitioningWarningBody =>
      'Try something else. You may also <a href=\"\">send an error report</a>.';
}
