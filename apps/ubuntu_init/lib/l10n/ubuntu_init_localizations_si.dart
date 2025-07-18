// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_init_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Sinhala Sinhalese (`si`).
class UbuntuInitLocalizationsSi extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsSi([String locale = 'si']) : super(locale);

  @override
  String get welcomePageTitle => 'ආයුබෝවන්';

  @override
  String welcomePageHeader(String distro) {
    return '$distro වෙත පිළිගනිමු';
  }

  @override
  String get welcomeWhatsNew => 'අළුත් දෑ';

  @override
  String get welcomeStartTitle => 'A streamlined start';

  @override
  String get welcomeStartSubtitle => 'Supporting a cleaner setup experience.';

  @override
  String get welcomeStoreTitle => 'New look App Store';

  @override
  String get welcomeStoreSubtitle =>
      'It\'s never been easier to find your favourite software.';

  @override
  String get welcomeSecurityTitle => 'Enhanced security';

  @override
  String get welcomeSecuritySubtitle =>
      'New options for hardware-backed or ZFS encryption.';

  @override
  String welcomeChangelogLabel(String url) {
    return '<a href=\"$url\"> වෙනස්කම් සටහන බලන්න </a>';
  }

  @override
  String get telemetryPageTitle => 'Telemetry';

  @override
  String telemetryHeader(String distro) {
    return '$distro වැඩිදියුණුවට සහාය වන්න';
  }

  @override
  String telemetryDescription(String distro) {
    return 'ඔබගේ පද්ධතියේ දත්ත බෙදාගෙන $distro වැඩිදියුණුවට උදව් කරන්න. මෙයට යන්ත්‍රයේ මාදිළිය, ස්ථාපිත මෘදුකාංග සහ ඔබ වේලා කලාපය සඳහා තේරූ ස්ථානය වැනි දෑ ඇතුළත් වේ.';
  }

  @override
  String telemetryLabelOn(String distro) {
    return 'පද්ධතියේ දත්ත $distro වෙත යවන්න';
  }

  @override
  String get telemetryLabelOff => 'පද්ධතියේ දත්ත යවන්න එපා';

  @override
  String get telemetryReportLabel => 'පළමු වාර්තාව පෙන්වන්න';

  @override
  String get telemetryReportTitle => 'වාර්තාවේ විස්තර';

  @override
  String get telemetryLegalLabel => 'නෛතික දැන්වීම';

  @override
  String get telemetryCollectError => 'Failed to collect telemetry data';

  @override
  String get privacyPageTitle => 'ස්ථාන සේවා';

  @override
  String get privacyLocationTitle => 'ස්ථාන සේවාව සබල කරනවා ද?';

  @override
  String get privacyLocationSubtitle =>
      'Let applications know your geographical location.\nYou can change this anytime in System Settings.';

  @override
  String get privacyLocationEnable => 'ස්ථාන සේවා';

  @override
  String get privacyPolicyLink => 'දත්ත රහස්‍යතාව';

  @override
  String ubuntuProMagicAttachInstructions(String url) {
    return 'Magic attach with this code at <a href=\"https://$url\">$url</a>';
  }

  @override
  String get ubuntuProPageTitle => 'උබුන්ටු ප්‍රෝ';

  @override
  String get ubuntuProHeader => 'මෙම යන්ත්‍රය අමුණන්න';

  @override
  String get ubuntuProOrAddTokenManually => 'or add a token manually';

  @override
  String get ubuntuProTokenTextfieldHint => 'Token';

  @override
  String get ubuntuProSubscriptionDescription =>
      'Get the most comprehensive subscription for open-source software security';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(String url) {
    return 'Always free for personal use. 30-days trial for enterprises. <a href=\"https://$url\">Learn more</a>';
  }

  @override
  String get ubuntuProTokenAttachButton => 'අමුණන්න';

  @override
  String get ubuntuProTokenAttachError => 'Invalid token';

  @override
  String get ubuntuProTokenAttachSucess => 'Valid token';

  @override
  String get ubuntuProTokenAttachErrorVariant => 'Invalid token, retry';

  @override
  String get ubuntuProOnBoardingSkipForNow => 'දැනට මඟහරින්න';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription =>
      'You can always enable Ubuntu Pro later via the Software & Updates application.';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => 'උබුන්ටු ප්‍රෝ සබල කරන්න';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription =>
      'Attach this machine to an Ubuntu Pro subscription for security updates on a wider range of packages, until 2032.';

  @override
  String get ubuntuProSucessAttachHeader =>
      'මෙම යන්ත්‍රයට දැන් උබුන්ටු ප්‍රෝ සබල කර ඇත';

  @override
  String get ubuntuProSucessAttachDescription =>
      'ඔබගේ ආධික්‍ය සේවා මෘදුකාංග හා යාවත්කාල යෙදුමෙන් කළමනාකරණයට හැකිය.';

  @override
  String get successIconSemanticLabel => 'Success';
}
