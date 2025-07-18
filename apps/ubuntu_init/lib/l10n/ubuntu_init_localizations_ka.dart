// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_init_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Georgian (`ka`).
class UbuntuInitLocalizationsKa extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsKa([String locale = 'ka']) : super(locale);

  @override
  String get welcomePageTitle => 'მოგესალმებით';

  @override
  String welcomePageHeader(String distro) {
    return 'მოგესალმებათ $distro';
  }

  @override
  String get welcomeWhatsNew => 'რამე ახალი?';

  @override
  String get welcomeStartTitle => 'დაოპტიმიზებული გაშვება';

  @override
  String get welcomeStartSubtitle => 'უფრო სუფთად მორგების მხარდაჭერა.';

  @override
  String get welcomeStoreTitle => 'ახალი ხედი App Store-სთვის';

  @override
  String get welcomeStoreSubtitle =>
      'რჩეული პროგრამების ძებნა ასე ადვილი არასდროს ყოფილა.';

  @override
  String get welcomeSecurityTitle => 'გაფართოებული უსაფრთხოება';

  @override
  String get welcomeSecuritySubtitle =>
      'ახალი პარამეტრები აპარატურული ან ZFS დაშიფვრისთვის.';

  @override
  String welcomeChangelogLabel(String url) {
    return '<a href=\"$url\">ცვლილებების ჟურნალის ნახვა</a>';
  }

  @override
  String get telemetryPageTitle => 'ტელემეტრია';

  @override
  String telemetryHeader(String distro) {
    return 'დაგვეხმარეთ $distro-ის გაუმჯობესებაში';
  }

  @override
  String telemetryDescription(String distro) {
    return 'დაგვეხმარეთ, $distro უკეთესი გავხადოთ, თქვენი სისტემის მონაცემების გაზიარებით. ეს შეიცავს ისეთ მონაცემებს, როგორიცაა თქვენი მანქანის მოდელი, დაყენებული პროგრამები და მდებარეობა, რომელიც დროის სარტყლისთვის აირჩიეთ.';
  }

  @override
  String telemetryLabelOn(String distro) {
    return 'დიახ, გავაზიარებ სისტემის მონაცემებს $distro-ის გუნდთან';
  }

  @override
  String get telemetryLabelOff => 'არა, არ გავაზიარებ სისტემის მონაცემებს';

  @override
  String get telemetryReportLabel => 'პირველი ანგარიშის ჩვენება';

  @override
  String get telemetryReportTitle => 'ანგარიშის დეტალები';

  @override
  String get telemetryLegalLabel => 'იურიდიული გაფრთხილება';

  @override
  String get telemetryCollectError =>
      'ტელემეტრიის მონაცემების შეგროვება ჩავარდა';

  @override
  String get privacyPageTitle => 'მდებარეობის სერვისები';

  @override
  String get privacyLocationTitle => 'ჩავრთო მდებარეობის სერვისები?';

  @override
  String get privacyLocationSubtitle =>
      'მიეცით აპლიკაციას ნება, თქვენი გეოგრაფიული მდებარეობა გაიგოს.\nამის შეცვლა ნებისმიერ დროს შეგიძლიათ სისტემის მორგების ფანჯარაში.';

  @override
  String get privacyLocationEnable => 'მდებარეობის სერვისები';

  @override
  String get privacyPolicyLink => 'მონაცემების კონფიდენციალობა';

  @override
  String ubuntuProMagicAttachInstructions(String url) {
    return 'მიაბით ჯადოსნურად ამ კოდით მისამართზე <a href=\"https://$url\">$url</a>';
  }

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';

  @override
  String get ubuntuProHeader => 'ამ მანქანის მიმაგრება';

  @override
  String get ubuntuProOrAddTokenManually => 'ან დაამატეთ ტოკენი ხელით';

  @override
  String get ubuntuProTokenTextfieldHint => 'ტოკენი';

  @override
  String get ubuntuProSubscriptionDescription =>
      'მიიღეთ შესაბამისი გამოწერა ღია კოდის პროგრამების უსაფრთხოებისთვის';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(String url) {
    return 'ყოველთვის უფასო პირადი მოხმარებისთვის. 30-დღიანი გამოსაცდელი პერიოდი საწარმოებისთვის. <a href=\"https://$url\">გაიგეთ მეტი</a>';
  }

  @override
  String get ubuntuProTokenAttachButton => 'მიმაგრება';

  @override
  String get ubuntuProTokenAttachError => 'არასწორი ტოკენი';

  @override
  String get ubuntuProTokenAttachSucess => 'სწორი ტოკენი';

  @override
  String get ubuntuProTokenAttachErrorVariant =>
      'არასწორი ტოკენი. თავიდან სცადეთ';

  @override
  String get ubuntuProOnBoardingSkipForNow => 'ახლა გამოტოვება';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription =>
      'Ubuntu Pro-ის ჩართვა ყოველთვის შეგიძლიათ მოგვიანებით, პროგრამებისა და განახლებების აპლიკაციიდან.';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => 'Ubuntu Pro-ის ჩართვა';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription =>
      'მიამაგრეთ ამ მანქანას Ubuntu Pro-ის გამოწერა, რომ უსაფრთხოდ განაახლოთ უფრო მეტი პროგრამა, 2032-მდე.';

  @override
  String get ubuntuProSucessAttachHeader =>
      'Ubuntu Pro ახლა ჩართულია ამ მანქანაზე';

  @override
  String get ubuntuProSucessAttachDescription =>
      'თქვენი Pro-ის სერვისების მართვა პროგრამებისა და განახლებების აპლიკაციაში შეგიძლიათ.';

  @override
  String get successIconSemanticLabel => 'Success';

  @override
  String get closeIconSemanticLabel => 'Close';

  @override
  String get maximizeIconSemanticLabel => 'Maximize';

  @override
  String get minimizeIconSemanticLabel => 'Minimize';
}
