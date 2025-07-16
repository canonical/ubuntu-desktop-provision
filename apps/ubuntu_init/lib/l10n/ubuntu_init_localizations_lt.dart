// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_init_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lithuanian (`lt`).
class UbuntuInitLocalizationsLt extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsLt([String locale = 'lt']) : super(locale);

  @override
  String get welcomePageTitle => 'Sveiki!';

  @override
  String welcomePageHeader(String distro) {
    return 'Išbandykite ar įdiekite $distro sistemą';
  }

  @override
  String get welcomeWhatsNew => 'Kas naujo?';

  @override
  String get welcomeStartTitle => 'Modernizuotas paleidimas';

  @override
  String get welcomeStartSubtitle =>
      'Tvarkingesnio sąrankos patyrimo palaikymas.';

  @override
  String get welcomeStoreTitle => 'New look App Store';

  @override
  String get welcomeStoreSubtitle =>
      'Mėgstamos programinės įrangos paieška dar niekada nebuvo tokia lengva.';

  @override
  String get welcomeSecurityTitle => 'Sustiprintas saugumas';

  @override
  String get welcomeSecuritySubtitle =>
      'New options for hardware-backed or ZFS encryption.';

  @override
  String welcomeChangelogLabel(String url) {
    return '<a href=\"$url\">Rodyti keitinių žurnalą</a>';
  }

  @override
  String get telemetryPageTitle => 'Telemetry';

  @override
  String telemetryHeader(String distro) {
    return 'Padėkite tobulinti $distro';
  }

  @override
  String telemetryDescription(String distro) {
    return 'Bendrinkite anoniminius duomenis su $distro, kad galėtume gerinti jūsų patyrimą.';
  }

  @override
  String telemetryLabelOn(String distro) {
    return 'Taip, bendrinti sisteminius duomenis su $distro komanda';
  }

  @override
  String get telemetryLabelOff => 'Ne, nebendrinti sisteminių duomenų';

  @override
  String get telemetryReportLabel => 'Show the first report';

  @override
  String get telemetryReportTitle => 'Reporting details';

  @override
  String get telemetryLegalLabel => 'Legal notice';

  @override
  String get telemetryCollectError => 'Failed to collect telemetry data';

  @override
  String get privacyPageTitle => 'Location services';

  @override
  String get privacyLocationTitle => 'Enable location services?';

  @override
  String get privacyLocationSubtitle =>
      'Let applications know your geographical location.\nYou can change this anytime in System Settings.';

  @override
  String get privacyLocationEnable => 'Location services';

  @override
  String get privacyPolicyLink => 'Duomenų privatumas';

  @override
  String ubuntuProMagicAttachInstructions(String url) {
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
  String get ubuntuProSubscriptionDescription =>
      'Get the most comprehensive subscription for open-source software security';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(String url) {
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
}
