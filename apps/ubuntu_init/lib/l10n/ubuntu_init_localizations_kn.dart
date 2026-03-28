// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_init_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kannada (`kn`).
class UbuntuInitLocalizationsKn extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsKn([String locale = 'kn']) : super(locale);

  @override
  String get welcomePageTitle => 'ಸ್ವಾಗತ';

  @override
  String welcomePageHeader(String distro) {
    return '$distro ಗೆ ಸುಸ್ವಾಗತ';
  }

  @override
  String get welcomeWhatsNew => 'ಹೊಸದೇನಿದೆ?';

  @override
  String get welcomeStartTitle => 'ಸುವ್ಯವಸ್ಥಿತ ಆರಂಭ';

  @override
  String get welcomeStartSubtitle => 'ಕ್ಲೀನರ್ ಸೆಟಪ್ ಅನುಭವವನ್ನು ಬೆಂಬಲಿಸುವುದು.';

  @override
  String get welcomeStoreTitle => 'ಹೊಸ ನೋಟ ಆಪ್ ಸ್ಟೋರ್';

  @override
  String get welcomeStoreSubtitle =>
      'ನಿಮ್ಮ ಮೆಚ್ಚಿನ ಸಾಫ್ಟ್‌ವೇರ್ ಅನ್ನು ಕಂಡುಹಿಡಿಯುವುದು ಎಂದಿಗೂ ಸುಲಭವಲ್ಲ.';

  @override
  String get welcomeSecurityTitle => 'ಸುಧಾರಿತ ಭದ್ರತೆ';

  @override
  String get welcomeSecuritySubtitle =>
      'ಹಾರ್ಡ್‌ವೇರ್-ಬೆಂಬಲಿತ ಅಥವಾ ZFS ಎನ್‌ಕ್ರಿಪ್ಶನ್‌ಗಾಗಿ ಹೊಸ ಆಯ್ಕೆಗಳು.';

  @override
  String welcomeChangelogLabel(String url) {
    return '<a href=\"$url\">ಚೇಂಜ್ಲಾಗ್ ವೀಕ್ಷಿಸಿ</a>';
  }

  @override
  String get telemetryPageTitle => 'ಟೆಲಿಮೆಟ್ರಿ';

  @override
  String telemetryHeader(String distro) {
    return 'ಸುಧಾರಿಸಲು ಸಹಾಯ ಮಾಡಿ $distro';
  }

  @override
  String telemetryDescription(String distro) {
    return 'ನಿಮ್ಮ ಸಿಸ್ಟಂ ಡೇಟಾವನ್ನು ನಮ್ಮೊಂದಿಗೆ ಹಂಚಿಕೊಳ್ಳುವ ಮೂಲಕ $distro ಸುಧಾರಿಸಲು ನಮಗೆ ಸಹಾಯ ಮಾಡಿ. ಇದು ನಿಮ್ಮ ಯಂತ್ರದ ಮಾದರಿ, ಸ್ಥಾಪಿಸಲಾದ ಸಾಫ್ಟ್‌ವೇರ್ ಮತ್ತು ನಿಮ್ಮ ಸಮಯವಲಯಕ್ಕಾಗಿ ನೀವು ಆಯ್ಕೆಮಾಡಿದ ಸ್ಥಳದಂತಹ ವಿಷಯಗಳನ್ನು ಒಳಗೊಂಡಿರುತ್ತದೆ.';
  }

  @override
  String telemetryLabelOn(String distro) {
    return 'ಹೌದು, $distro ತಂಡದೊಂದಿಗೆ ಸಿಸ್ಟಂ ಡೇಟಾವನ್ನು ಹಂಚಿಕೊಳ್ಳಿ';
  }

  @override
  String get telemetryLabelOff => 'ಇಲ್ಲ, ಸಿಸ್ಟಮ್ ಡೇಟಾವನ್ನು ಹಂಚಿಕೊಳ್ಳಬೇಡಿ';

  @override
  String get telemetryReportLabel => 'ಮೊದಲ ವರದಿಯನ್ನು ತೋರಿಸಿ';

  @override
  String get telemetryReportTitle => 'ವಿವರಗಳನ್ನು ವರದಿ ಮಾಡುವುದು';

  @override
  String get telemetryLegalLabel => 'ಕಾನೂನು ಸೂಚನೆ';

  @override
  String get telemetryCollectError =>
      'ಟೆಲಿಮೆಟ್ರಿ ಡೇಟಾವನ್ನು ಸಂಗ್ರಹಿಸಲು ವಿಫಲವಾಗಿದೆ';

  @override
  String get privacyPageTitle => 'ಸ್ಥಳ ಸೇವೆಗಳು';

  @override
  String get privacyLocationTitle => 'ಸ್ಥಳ ಸೇವೆಗಳನ್ನು ಸಕ್ರಿಯಗೊಳಿಸುವುದೇ?';

  @override
  String get privacyLocationSubtitle =>
      'ನಿಮ್ಮ ಭೌಗೋಳಿಕ ಸ್ಥಳವನ್ನು ಅಪ್ಲಿಕೇಶನ್‌ಗಳಿಗೆ ತಿಳಿಸಿ.\nನೀವು ಇದನ್ನು ಯಾವಾಗ ಬೇಕಾದರೂ ಸಿಸ್ಟಂ ಸೆಟ್ಟಿಂಗ್‌ಗಳಲ್ಲಿ ಬದಲಾಯಿಸಬಹುದು.';

  @override
  String get privacyLocationEnable => 'ಸ್ಥಳ ಸೇವೆಗಳು';

  @override
  String get privacyPolicyLink => 'ಡೇಟಾ ಗೌಪ್ಯತೆ';

  @override
  String ubuntuProMagicAttachInstructions(String url) {
    return '<a href=\"https://$url\">$url</a> ನಲ್ಲಿ ಈ ಕೋಡ್‌ನೊಂದಿಗೆ ಮ್ಯಾಜಿಕ್ ಲಗತ್ತಿಸಿ';
  }

  @override
  String get ubuntuProPageTitle => 'ಉಬುಂಟು ಪ್ರೊ';

  @override
  String get ubuntuProHeader => 'ಈ ಯಂತ್ರವನ್ನು ಲಗತ್ತಿಸಿ';

  @override
  String get ubuntuProOrAddTokenManually => 'ಅಥವಾ ಹಸ್ತಚಾಲಿತವಾಗಿ ಟೋಕನ್ ಸೇರಿಸಿ';

  @override
  String get ubuntuProTokenTextfieldHint => 'ಟೋಕನ್';

  @override
  String get ubuntuProSubscriptionDescription =>
      'ಓಪನ್ ಸೋರ್ಸ್ ಸಾಫ್ಟ್‌ವೇರ್ ಭದ್ರತೆಗಾಗಿ ಅತ್ಯಂತ ವ್ಯಾಪಕವಾದ ಚಂದಾದಾರಿಕೆಯನ್ನು ಪಡೆಯಿರಿ';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(String url) {
    return 'ವೈಯಕ್ತಿಕ ಬಳಕೆಗಾಗಿ ಯಾವಾಗಲೂ ಉಚಿತ. ಉದ್ಯಮಗಳಿಗೆ 30-ದಿನಗಳ ಪ್ರಯೋಗ. <a href=\"https://$url\">ಇನ್ನಷ್ಟು ತಿಳಿಯಿರಿ</a>';
  }

  @override
  String get ubuntuProTokenAttachButton => 'ಲಗತ್ತಿಸಿ';

  @override
  String get ubuntuProTokenAttachError => 'ಅಮಾನ್ಯ ಟೋಕನ್';

  @override
  String get ubuntuProTokenAttachSucess => 'ಮಾನ್ಯ ಟೋಕನ್';

  @override
  String get ubuntuProTokenAttachErrorVariant =>
      'ಅಮಾನ್ಯವಾದ ಟೋಕನ್, ಮರುಪ್ರಯತ್ನಿಸಿ';

  @override
  String get ubuntuProOnBoardingSkipForNow => 'ಸದ್ಯಕ್ಕೆ ಬಿಟ್ಟುಬಿಡಿ';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription =>
      'ನೀವು ಯಾವಾಗಲೂ ಉಬುಂಟು ಪ್ರೊ ಅನ್ನು ನಂತರ ಸಾಫ್ಟ್‌ವೇರ್ ಮೂಲಕ ಸಕ್ರಿಯಗೊಳಿಸಬಹುದುನೀವು ಯಾವಾಗಲೂ ಉಬುಂಟು ಪ್ರೊ ಅನ್ನು ನಂತರ ಸಾಫ್ಟ್‌ವೇರ್ ಮೂಲಕ ಸಕ್ರಿಯಗೊಳಿಸಬಹುದು';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro =>
      'ಉಬುಂಟು ಪ್ರೊ ಅನ್ನು ಸಕ್ರಿಯಗೊಳಿಸಿ';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription =>
      '2032 ರವರೆಗೆ ವ್ಯಾಪಕ ಶ್ರೇಣಿಯ ಪ್ಯಾಕೇಜ್‌ಗಳಲ್ಲಿ ಭದ್ರತಾ ನವೀಕರಣಗಳಿಗಾಗಿ ಈ ಯಂತ್ರವನ್ನು ಉಬುಂಟು ಪ್ರೊ ಚಂದಾದಾರಿಕೆಗೆ ಲಗತ್ತಿಸಿ.';

  @override
  String get ubuntuProSucessAttachHeader =>
      'ಉಬುಂಟು ಪ್ರೊ ಅನ್ನು ಈಗ ಈ ಯಂತ್ರದಲ್ಲಿ ಸಕ್ರಿಯಗೊಳಿಸಲಾಗಿದೆ';

  @override
  String get ubuntuProSucessAttachDescription =>
      'ಸಾಫ್ಟ್‌ವೇರ್‌ನಲ್ಲಿ ನಿಮ್ಮ ಪ್ರೊ ಸೇವೆಗಳನ್ನು ನೀವು ನಿರ್ವಹಿಸಬಹುದುಸಾಫ್ಟ್‌ವೇರ್‌ನಲ್ಲಿ ನಿಮ್ಮ ಪ್ರೊ ಸೇವೆಗಳನ್ನು ನೀವು ನಿರ್ವಹಿಸಬಹುದು';

  @override
  String get successIconSemanticLabel => 'ಯಶಸ್ಸು';

  @override
  String get closeIconSemanticLabel => 'ಮುಚ್ಚಿ';

  @override
  String get maximizeIconSemanticLabel => 'ಗರಿಷ್ಠಗೊಳಿಸು';

  @override
  String get minimizeIconSemanticLabel => 'ಕಡಿಮೆಗೊಳಿಸು';
}
