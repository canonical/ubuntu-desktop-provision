// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_init_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Catalan Valencian (`ca`).
class UbuntuInitLocalizationsCa extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsCa([String locale = 'ca']) : super(locale);

  @override
  String get welcomePageTitle => 'Us donem la benvinguda';

  @override
  String welcomePageHeader(String distro) {
    return 'Us donem la benvinguda a $distro';
  }

  @override
  String get welcomeWhatsNew => 'NOVETATS';

  @override
  String get welcomeStartTitle => 'Un inici àgil';

  @override
  String get welcomeStartSubtitle =>
      'Afavoreix una experiència d’instal·lació més senzilla.';

  @override
  String get welcomeStoreTitle => 'Botiga d’aplicacions amb un aspecte nou';

  @override
  String get welcomeStoreSubtitle =>
      'Mai no ha estat més fàcil trobar el vostre programari preferit.';

  @override
  String get welcomeSecurityTitle => 'Seguretat millorada';

  @override
  String get welcomeSecuritySubtitle =>
      'Opcions noves per al xifrat per maquinari o mitjançant el ZFS.';

  @override
  String welcomeChangelogLabel(String url) {
    return '<a href=\"$url\">Vegeu el registre de canvis</a>';
  }

  @override
  String get telemetryPageTitle => 'Telemetria';

  @override
  String telemetryHeader(String distro) {
    return 'Ajudeu perquè l’$distro sigui millor';
  }

  @override
  String telemetryDescription(String distro) {
    return 'Compartiu dades anònimament amb l’$distro perquè puguem millorar la vostra experiència.';
  }

  @override
  String telemetryLabelOn(String distro) {
    return 'Sí, vull compartir dades del sistema amb l’equip de l’$distro';
  }

  @override
  String get telemetryLabelOff => 'No, no comparteixis dades del sistema';

  @override
  String get telemetryReportLabel => 'Detalls de l’informe';

  @override
  String get telemetryReportTitle => 'Detalls de l’informe';

  @override
  String get telemetryLegalLabel => 'Informació legal';

  @override
  String get telemetryCollectError => 'Failed to collect telemetry data';

  @override
  String get privacyPageTitle => 'Serveis d’ubicació';

  @override
  String get privacyLocationTitle => 'Voleu activar els serveis d’ubicació?';

  @override
  String get privacyLocationSubtitle =>
      'Permeteu que les aplicacions coneguin la vostra ubicació geogràfica.\nPodeu canviar-ho en qualsevol moment als Paràmetres del sistema.';

  @override
  String get privacyLocationEnable => 'Serveis d’ubicació';

  @override
  String get privacyPolicyLink => 'Privadesa de les dades';

  @override
  String ubuntuProMagicAttachInstructions(String url) {
    return 'Magic attach with this code at <a href=\"https://$url\">$url</a>';
  }

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';

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
