// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'factory_reset_tools_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hebrew (`he`).
class FactoryResetToolsLocalizationsHe extends FactoryResetToolsLocalizations {
  FactoryResetToolsLocalizationsHe([String locale = 'he']) : super(locale);

  @override
  String get appTitle => 'כלי איפוס יצרן';

  @override
  String get windowTitle => 'כלי איפוס יצרן';

  @override
  String get homeTitle => 'מה מעניין אותך לבצע?';

  @override
  String get createResetMedia => 'ליצור מדיה לאיפוס';

  @override
  String get startFactoryReset => 'להתחיל איפוס להגדרות יצרן';

  @override
  String get createUsbTitle => 'ליצור אמצעי USB לאיפוס';

  @override
  String get createUsbBody =>
      'ליצור אמצעי איפוס ב־USB לשחזור המערכת, לרבות התאמת התקנות האובונטו שלך.';

  @override
  String get createUsbListExplanation =>
      'נא לבחור כונן USB נתיק. בכונן חייבים להיות **לפחות 16 ג״ב של מקום.**';

  @override
  String get createUsbWarning => 'הכונן הנתיק יפורמט וכל הנתונים שעליו יאבדו.';

  @override
  String get resetMediaTitle => 'אמצעי איפוס ב־USB';

  @override
  String get noMediaDetected => 'לא זוהו אמצעי אחסון נתיקים';

  @override
  String get noMediaDetectedSubtitle =>
      'צריך אחסון USB כדי ליצור אמצעי איפוס יצרן.';

  @override
  String get factoryResetTitle =>
      'נא לבחור אפשרות כדי להתחיל באיפוס להגדרות יצרן';

  @override
  String get loadingDrives => 'נא להמתין בעת משיכת הכוננים.';

  @override
  String get resetMediaReadyTitle => 'אמצעי האיפוס ב־USB מוכן';

  @override
  String get resetMediaReadyBody =>
      'בעת הצורך, נא להכניס את כונן ה־USB למחשב המועמד לאיפוס ולהפעיל את אותו המחשב מחדש.';

  @override
  String get errorLoadingDrives => 'אירעה שגיאה במשיכת הכוננים.';

  @override
  String get resetMediaInitializing => 'מתחילים';

  @override
  String get resetMediaCopying => 'מתבצעת העתקה';

  @override
  String get resetMediaFinalizing => 'לקראת סיום';

  @override
  String get resetMediaFinished => 'הסתיים';

  @override
  String get resetMediaFailed => 'נכשל';

  @override
  String get error => 'שגיאה';

  @override
  String get loading => 'בטעינה…';

  @override
  String get warning => 'אזהרה';

  @override
  String get restore => 'שחזור';

  @override
  String get restart => 'הפעלה מחדש';

  @override
  String get reformat => 'פרמוט מחדש';

  @override
  String get failed => 'הרצת הפקודה נכשלה';

  @override
  String get close => 'סגירה';

  @override
  String get ok => 'אישור';
}
