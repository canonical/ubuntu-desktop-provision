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
  String get telemetryCollectError =>
      'Ha fallat la col·lecció de dades de telemetria';

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
    return 'Magic adjunta aquest codi a <a href=\"https://$url\">$url</a>';
  }

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';

  @override
  String get ubuntuProHeader => 'Adjunta aquesta màquina';

  @override
  String get ubuntuProOrAddTokenManually => 'o afegeix un testimoni manualment';

  @override
  String get ubuntuProTokenTextfieldHint => 'Testimoni';

  @override
  String get ubuntuProSubscriptionDescription =>
      'Aconsegueix la subscripció més completa per a la seguretat del programari de codi obert';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(String url) {
    return 'Sempre lliure per a ús personal. Assaig de 30 dies per a empreses. <a href=\"https://$url\">Més informació</a>';
  }

  @override
  String get ubuntuProTokenAttachButton => 'Adjunta';

  @override
  String get ubuntuProTokenAttachError => 'Testimoni no vàlid';

  @override
  String get ubuntuProTokenAttachSucess => 'Testimoni vàlid';

  @override
  String get ubuntuProTokenAttachErrorVariant =>
      'Testimoni no vàlid, torneu-ho a provar';

  @override
  String get ubuntuProOnBoardingSkipForNow => 'Omet per ara';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription =>
      'Sempre podeu activar Ubuntu Pro més tard a través de l\'aplicació d\'actualitzacions de programari.';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => 'Habilita l\'Ubuntu Pro';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription =>
      'Adjunteu aquesta màquina a una subscripció d\'Ubuntu Pro per a actualitzacions de seguretat en una gamma més àmplia de paquets, fins al 2032.';

  @override
  String get ubuntuProSucessAttachHeader =>
      'Ubuntu Pro ara està habilitat en aquesta màquina';

  @override
  String get ubuntuProSucessAttachDescription =>
      'Podeu gestionar els vostres serveis Pro a l\'aplicació d\'actualitzacions de programari.';

  @override
  String get successIconSemanticLabel => 'Èxit';

  @override
  String get closeIconSemanticLabel => 'Tanca';

  @override
  String get maximizeIconSemanticLabel => 'Maximitza';

  @override
  String get minimizeIconSemanticLabel => 'Minimitza';
}
