// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_init_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Basque (`eu`).
class UbuntuInitLocalizationsEu extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsEu([String locale = 'eu']) : super(locale);

  @override
  String get welcomePageTitle => 'Ongi etorri';

  @override
  String welcomePageHeader(String distro) {
    return 'Ongi etorri ${distro}ra';
  }

  @override
  String get welcomeWhatsNew => 'ZER BERRI?';

  @override
  String get welcomeStartTitle => 'Hasiera sinplifikatua';

  @override
  String get welcomeStartSubtitle =>
      'Martxan jartzeko esperientzia garbiago baten alde.';

  @override
  String get welcomeStoreTitle => 'Aplikazioen denda itxuraberritua';

  @override
  String get welcomeStoreSubtitle =>
      'Software gogokoena aurkitzea inoiz baino errazagoa da orain.';

  @override
  String get welcomeSecurityTitle => 'Segurtasun areagotua';

  @override
  String get welcomeSecuritySubtitle =>
      'Aukera berriak hardware edo ZFS bidezko zifratzean.';

  @override
  String welcomeChangelogLabel(String url) {
    return '<a href=\"$url\">Ikusi aldaketen erregistroa</a>';
  }

  @override
  String get telemetryPageTitle => 'Telemetria';

  @override
  String telemetryHeader(String distro) {
    return 'Lagundu $distro hobetzen';
  }

  @override
  String telemetryDescription(String distro) {
    return 'Lagun gaitzazu $distro hobetzen sistemako datuak gurekin partekatuz. Datu hauetan doaz zure makinaren modeloa, instalatutako softwarea eta ordu-eremurako aukeratutako kokalekua.';
  }

  @override
  String telemetryLabelOn(String distro) {
    return 'Bai, partekatu sistemako datuak $distro taldearekin';
  }

  @override
  String get telemetryLabelOff => 'Ez, ez partekatu sistemako daturik';

  @override
  String get telemetryReportLabel => 'Erakutsi lehenengo txostena';

  @override
  String get telemetryReportTitle => 'Txostenaren xehetasunak';

  @override
  String get telemetryLegalLabel => 'Lege-oharra';

  @override
  String get telemetryCollectError => 'Huts egin du telemetria datuak biltzeak';

  @override
  String get privacyPageTitle => 'Kokapen zerbitzuak';

  @override
  String get privacyLocationTitle => 'Kokapen zerbitzuak gaitu?';

  @override
  String get privacyLocationSubtitle =>
      'Eman aplikazioei zure kokapen geografikoa jakiteko baimena.\nHau edonoiz alda dezakezu Sistemaren ezarpenetatik.';

  @override
  String get privacyLocationEnable => 'Kokapen zerbitzuak';

  @override
  String get privacyPolicyLink => 'Datuen pribatutasuna';

  @override
  String ubuntuProMagicAttachInstructions(String url) {
    return 'Erantsi magikoki hemengo kode hau erabiliz <a href=\"https://$url\">$url</a>';
  }

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';

  @override
  String get ubuntuProHeader => 'Erantsi makina hau';

  @override
  String get ubuntuProOrAddTokenManually => 'edo gehitu tokena eskuz';

  @override
  String get ubuntuProTokenTextfieldHint => 'Tokena';

  @override
  String get ubuntuProSubscriptionDescription =>
      'Eskuratu kode irekiko softwarearen segurtasun harpidetzarik osoena';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(String url) {
    return 'Betiko dohainik erabilera pertsonalerako. 30 eguneko proba enpresentzako. <a href=\"https://$url\">Informazio gehiago</a>';
  }

  @override
  String get ubuntuProTokenAttachButton => 'Erantsi';

  @override
  String get ubuntuProTokenAttachError => 'Token baliogabea';

  @override
  String get ubuntuProTokenAttachSucess => 'Baliozko tokena';

  @override
  String get ubuntuProTokenAttachErrorVariant =>
      'Token baliogabea, saiatu berriz';

  @override
  String get ubuntuProOnBoardingSkipForNow => 'Saltatu oraingoz';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription =>
      'Ubuntu Pro geroago ere gaitu dezakezu Softwarea eta eguneraketak aplikaziotik.';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => 'Gaitu Ubuntu Pro';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription =>
      'Erantsi makina hau Ubuntu Pro harpidetza bati, eta lortu segurtasun-eguneratzeak pakete sorta zabalagoarentzat 2032ra arte.';

  @override
  String get ubuntuProSucessAttachHeader =>
      'Orain Ubuntu Pro gaituta dago makina honentzat';

  @override
  String get ubuntuProSucessAttachDescription =>
      'Zure Pro zerbitzuak kudeatzeko Softwarea eta eguneraketak aplikazioa erabil dezakezu.';

  @override
  String get successIconSemanticLabel => 'Dena ondo joan da';

  @override
  String get closeIconSemanticLabel => 'Itxi';

  @override
  String get maximizeIconSemanticLabel => 'Maximizatu';

  @override
  String get minimizeIconSemanticLabel => 'Txikitu';
}
