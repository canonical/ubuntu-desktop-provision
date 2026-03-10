// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_init_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Panjabi Punjabi (`pa`).
class UbuntuInitLocalizationsPa extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsPa([String locale = 'pa']) : super(locale);

  @override
  String get welcomePageTitle => 'ਜੀ ਆਇਆਂ ਨੂੰ';

  @override
  String welcomePageHeader(String distro) {
    return '$distro ਵਲੋਂ ਜੀ ਆਇਆਂ ਨੂੰ';
  }

  @override
  String get welcomeWhatsNew => 'ਨਵਾਂ ਕੀ ਹੈ?';

  @override
  String get welcomeStartTitle => 'A streamlined start';

  @override
  String get welcomeStartSubtitle => 'Supporting a cleaner setup experience.';

  @override
  String get welcomeStoreTitle => 'ਐਪ ਸਟੋਰ ਦੀ ਨਵੀਂ ਦਿੱਖ';

  @override
  String get welcomeStoreSubtitle =>
      'It\'s never been easier to find your favourite software.';

  @override
  String get welcomeSecurityTitle => 'ਵਧਾਈ ਗਈ ਸੁਰੱਖਿਆ';

  @override
  String get welcomeSecuritySubtitle =>
      'New options for hardware-backed or ZFS encryption.';

  @override
  String welcomeChangelogLabel(String url) {
    return '<a href=\"$url\">View changelog</a>';
  }

  @override
  String get telemetryPageTitle => 'ਟੈਲੀਮੈਂਟਰੀ';

  @override
  String telemetryHeader(String distro) {
    return '$distro ਨੂੰ ਸੁਧਾਰਨ ਲਈ ਮਦਦ ਕਰੋ';
  }

  @override
  String telemetryDescription(String distro) {
    return 'Help us improve $distro by sharing your system data with us. This includes things like your machine model, installed software and the location you chose for your timezone.';
  }

  @override
  String telemetryLabelOn(String distro) {
    return 'Yes, share system data with the $distro team';
  }

  @override
  String get telemetryLabelOff => 'ਨਹੀ, ਸਿਸਟਮ ਡਾਟੇ ਨੂੰ ਸਾਂਝਾ ਨਾ ਕਰੋ';

  @override
  String get telemetryReportLabel => 'Show the first report';

  @override
  String get telemetryReportTitle => 'Reporting details';

  @override
  String get telemetryLegalLabel => 'ਕਨੂੰਨੀ ਨੋਟਿਸ';

  @override
  String get telemetryCollectError => 'Failed to collect telemetry data';

  @override
  String get privacyPageTitle => 'ਟਿਕਾਣਾ ਸੇਵਾਵਾਂ';

  @override
  String get privacyLocationTitle => 'ਟਿਕਾਣਾ ਸੇਵਾਵਾਂ ਨੂੰ ਸਮਰੱਥ ਕਰਨਾ ਹੈ?';

  @override
  String get privacyLocationSubtitle =>
      'Let applications know your geographical location.\nYou can change this anytime in System Settings.';

  @override
  String get privacyLocationEnable => 'ਟਿਕਾਣਾ ਸੇਵਾਵਾਂ';

  @override
  String get privacyPolicyLink => 'ਡਾਟਾ ਪਰਦੇਦਾਰੀ';

  @override
  String ubuntuProMagicAttachInstructions(String url) {
    return 'Magic attach with this code at <a href=\"https://$url\">$url</a>';
  }

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';

  @override
  String get ubuntuProHeader => 'ਇਹ ਮਸ਼ੀਨ ਅਟੈਚ ਕਰੋ';

  @override
  String get ubuntuProOrAddTokenManually => 'or add a token manually';

  @override
  String get ubuntuProTokenTextfieldHint => 'ਟੋਕਨ';

  @override
  String get ubuntuProSubscriptionDescription =>
      'Get the most comprehensive subscription for open-source software security';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(String url) {
    return 'Always free for personal use. 30-days trial for enterprises. <a href=\"https://$url\">Learn more</a>';
  }

  @override
  String get ubuntuProTokenAttachButton => 'ਅਟੈਚ';

  @override
  String get ubuntuProTokenAttachError => 'Invalid token';

  @override
  String get ubuntuProTokenAttachSucess => 'Valid token';

  @override
  String get ubuntuProTokenAttachErrorVariant => 'Invalid token, retry';

  @override
  String get ubuntuProOnBoardingSkipForNow => 'ਹੁਣ ਲਈ ਛੱਡੋ';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription =>
      'You can always enable Ubuntu Pro later via the Software & Updates application.';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => 'Enable Ubuntu Pro';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription =>
      'Attach this machine to an Ubuntu Pro subscription for security updates on a wider range of packages, until 2032.';

  @override
  String get ubuntuProSucessAttachHeader =>
      'Ubuntu Pro is now enabled in this machine';

  @override
  String get ubuntuProSucessAttachDescription =>
      'You can manage your Pro services in the Software & Updates application.';

  @override
  String get successIconSemanticLabel => 'ਸਫ਼ਲ';

  @override
  String get closeIconSemanticLabel => 'ਬੰਦ ਕਰੋ';

  @override
  String get maximizeIconSemanticLabel => 'ਵੱਧ ਤੋਂ ਵੱਧ';

  @override
  String get minimizeIconSemanticLabel => 'ਘੱਟੋ-ਘੱਟ';
}
