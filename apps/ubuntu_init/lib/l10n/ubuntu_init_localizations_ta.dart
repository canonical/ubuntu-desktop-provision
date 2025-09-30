// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_init_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class UbuntuInitLocalizationsTa extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsTa([String locale = 'ta']) : super(locale);

  @override
  String get welcomePageTitle => 'வரவேற்கிறோம்';

  @override
  String welcomePageHeader(String distro) {
    return '$distro க்கு வருக';
  }

  @override
  String get welcomeWhatsNew => 'புதியது என்ன?';

  @override
  String get welcomeStartTitle => 'ஒரு நெறிப்படுத்தப்பட்ட தொடக்க';

  @override
  String get welcomeStartSubtitle => 'தூய்மையான அமைப்பு அனுபவத்தை ஆதரிக்கிறது.';

  @override
  String get welcomeStoreTitle => 'புதிய தோற்ற ஆப் கடை';

  @override
  String get welcomeStoreSubtitle =>
      'உங்களுக்கு பிடித்த மென்பொருளை கண்டுபிடிப்பது ஒருபோதும் எளிதாக இல்லை.';

  @override
  String get welcomeSecurityTitle => 'மேம்பட்ட பாதுகாப்பு';

  @override
  String get welcomeSecuritySubtitle =>
      'வன்பொருள் உதவி அல்லது ZFS குறியாக்கத்திற்கான புதிய விருப்பங்கள்.';

  @override
  String welcomeChangelogLabel(String url) {
    return '<a href = \"$url\"> சேஞ்ச்லாக் காண்க </a>';
  }

  @override
  String get telemetryPageTitle => 'டெலிமெட்ரி';

  @override
  String telemetryHeader(String distro) {
    return '$distro ஐ மேம்படுத்த உதவுங்கள்';
  }

  @override
  String telemetryDescription(String distro) {
    return 'உங்கள் கணினி தரவை எங்களுடன் பகிர்வதன் மூலம் $distro ஐ மேம்படுத்த எங்களுக்கு உதவுங்கள். உங்கள் இயந்திர மாதிரி, நிறுவப்பட்ட மென்பொருள் மற்றும் உங்கள் நேர மண்டலத்திற்காக நீங்கள் தேர்ந்தெடுத்த இடம் போன்ற விசயங்கள் இதில் அடங்கும்.';
  }

  @override
  String telemetryLabelOn(String distro) {
    return 'ஆம், கணினி தரவை $distro குழுவுடன் பகிர்ந்து கொள்ளுங்கள்';
  }

  @override
  String get telemetryLabelOff => 'இல்லை, கணினி தரவைப் பகிர வேண்டாம்';

  @override
  String get telemetryReportLabel => 'முதல் அறிக்கையைக் காட்டு';

  @override
  String get telemetryReportTitle => 'அறிக்கையிடல் விவரங்கள்';

  @override
  String get telemetryLegalLabel => 'சட்ட அறிவிப்பு';

  @override
  String get telemetryCollectError => 'டெலிமெட்ரி தரவை சேகரிப்பதில் தோல்வி';

  @override
  String get privacyPageTitle => 'இருப்பிட சேவைகள்';

  @override
  String get privacyLocationTitle => 'இருப்பிட சேவைகளை இயக்கவா?';

  @override
  String get privacyLocationSubtitle =>
      'பயன்பாடுகள் உங்கள் புவியியல் இருப்பிடத்தை அறியட்டும்.\n கணினி அமைப்புகளில் எப்போது வேண்டுமானாலும் இதை மாற்றலாம்.';

  @override
  String get privacyLocationEnable => 'இருப்பிட சேவைகள்';

  @override
  String get privacyPolicyLink => 'தரவு தனியுரிமை';

  @override
  String ubuntuProMagicAttachInstructions(String url) {
    return 'இந்த குறியீட்டைக் கொண்டு <a href = \"https: // $url\"> $url </a> இல் மேசிக் இணைக்கவும்';
  }

  @override
  String get ubuntuProPageTitle => 'உபுண்டு புரோ';

  @override
  String get ubuntuProHeader => 'இந்த இயந்திரத்தை இணைக்கவும்';

  @override
  String get ubuntuProOrAddTokenManually =>
      'அல்லது ஒரு கிள்ளாக்கை கைமுறையாக சேர்க்கவும்';

  @override
  String get ubuntuProTokenTextfieldHint => 'கிள்ளாக்கு';

  @override
  String get ubuntuProSubscriptionDescription =>
      'திறந்த மூல மென்பொருள் பாதுகாப்பிற்கான மிக விரிவான சந்தாவைப் பெறுங்கள்';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(String url) {
    return 'தனிப்பட்ட பயன்பாட்டிற்கு எப்போதும் இலவசம். நிறுவனங்களுக்கான 30 நாட்கள் சோதனை. <a href = \"https: // $url\"> மேலும் அறிக </a>';
  }

  @override
  String get ubuntuProTokenAttachButton => 'இணைக்கவும்';

  @override
  String get ubuntuProTokenAttachError => 'தவறான கிள்ளாக்கு';

  @override
  String get ubuntuProTokenAttachSucess => 'செல்லுபடியாகும் கிள்ளாக்கு';

  @override
  String get ubuntuProTokenAttachErrorVariant =>
      'தவறான கிள்ளாக்கு, மீண்டும் முயற்சிக்கவும்';

  @override
  String get ubuntuProOnBoardingSkipForNow => 'இப்போதைக்கு தவிர்க்கவும்';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription =>
      'மென்பொருள் மற்றும் புதுப்பிப்புகள் பயன்பாடு வழியாக நீங்கள் எப்போதும் உபுண்டு புரோவை இயக்கலாம்.';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => 'உபுண்டு புரோவை இயக்கவும்';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription =>
      '2032 வரை, பரந்த அளவிலான தொகுப்புகளில் பாதுகாப்பு புதுப்பிப்புகளுக்காக இந்த இயந்திரத்தை உபுண்டு புரோ சந்தாவுடன் இணைக்கவும்.';

  @override
  String get ubuntuProSucessAttachHeader =>
      'உபுண்டு புரோ இப்போது இந்த கணினியில் இயக்கப்பட்டிருக்கிறது';

  @override
  String get ubuntuProSucessAttachDescription =>
      'மென்பொருள் மற்றும் புதுப்பிப்புகள் பயன்பாட்டில் உங்கள் புரோ சேவைகளை நிர்வகிக்கலாம்.';

  @override
  String get successIconSemanticLabel => 'வெற்றி';

  @override
  String get closeIconSemanticLabel => 'Close';

  @override
  String get maximizeIconSemanticLabel => 'Maximize';

  @override
  String get minimizeIconSemanticLabel => 'Minimize';
}
