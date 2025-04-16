// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_init_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Danish (`da`).
class UbuntuInitLocalizationsDa extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsDa([String locale = 'da']) : super(locale);

  @override
  String get welcomePageTitle => 'Velkommen';

  @override
  String welcomePageHeader(String distro) {
    return 'Velkommen til $distro';
  }

  @override
  String get welcomeWhatsNew => 'NYHEDER';

  @override
  String get welcomeStartTitle => 'En strømlinet start';

  @override
  String get welcomeStartSubtitle => 'Velorganiseret opsætning.';

  @override
  String get welcomeStoreTitle => 'Appbutik med nyt udseende';

  @override
  String get welcomeStoreSubtitle => 'Det har aldrig været nemmere at finde din yndlingssoftware.';

  @override
  String get welcomeSecurityTitle => 'Forbedret sikkerhed';

  @override
  String get welcomeSecuritySubtitle => 'Nye indstillinger for hardwareunderstøttet eller ZFS-kryptering.';

  @override
  String welcomeChangelogLabel(String url) {
    return '<a href=\"$url\">Vis ændringslog</a>';
  }

  @override
  String get telemetryPageTitle => 'Telemetri';

  @override
  String telemetryHeader(String distro) {
    return 'Hjælp med at forbedre $distro';
  }

  @override
  String telemetryDescription(String distro) {
    return 'Hjælp os med at forbedre $distro ved at dele dine systemdata med os. Dette inkluderer bl.a. din maskinmodel, installeret software samt hvilken lokalitet, du har som tidszone.';
  }

  @override
  String telemetryLabelOn(String distro) {
    return 'Ja, del systemdata med holdet bag $distro';
  }

  @override
  String get telemetryLabelOff => 'Nej, del ikke systemdata';

  @override
  String get telemetryReportLabel => 'Vis den første rapport';

  @override
  String get telemetryReportTitle => 'Rapportering af detaljer';

  @override
  String get telemetryLegalLabel => 'Juridisk information';

  @override
  String get telemetryCollectError => 'Kunne ikke indsamle telemetridata';

  @override
  String get privacyPageTitle => 'Lokalitetstjenester';

  @override
  String get privacyLocationTitle => 'Slå lokalitetstjenester til?';

  @override
  String get privacyLocationSubtitle => 'Lad programmer kende din geografiske placering.\nDu kan ændre dette når som helst i Systemindstillinger.';

  @override
  String get privacyLocationEnable => 'Lokalitetstjenester';

  @override
  String get privacyPolicyLink => 'Dataprivatliv';

  @override
  String ubuntuProMagicAttachInstructions(String url) {
    return 'Magisk tilslutning med denne kode på <a href=\"https://$url\">$url</a>';
  }

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';

  @override
  String get ubuntuProHeader => 'Tilknyt denne maskine';

  @override
  String get ubuntuProOrAddTokenManually => 'eller tilføj token manuelt';

  @override
  String get ubuntuProTokenTextfieldHint => 'Token';

  @override
  String get ubuntuProSubscriptionDescription => 'Få det mest omfattende abonnement på open source-softwaresikkerhed';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(String url) {
    return 'Altid gratis til personligt brug. 30-dages prøveabonnement til firmaer. <a href=\"https://$url\">Mere info</a>';
  }

  @override
  String get ubuntuProTokenAttachButton => 'Tilknyt';

  @override
  String get ubuntuProTokenAttachError => 'Ugyldigt token';

  @override
  String get ubuntuProTokenAttachSucess => 'Gyldigt token';

  @override
  String get ubuntuProTokenAttachErrorVariant => 'Ugyldigt token, prøv igen';

  @override
  String get ubuntuProOnBoardingSkipForNow => 'Spring over indtil videre';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription => 'Du kan altid slå Ubuntu Pro til senere via programmet Software og opdateringer.';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => 'Slå Ubuntu Pro til';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription => 'Tilknyt denne maskine til et Ubuntu Pro-abonnement for at få sikkerhedsopdateringer til en bredere vifte af pakker indtil 2032.';

  @override
  String get ubuntuProSucessAttachHeader => 'Ubuntu Pro er nu slået til på denne maskine';

  @override
  String get ubuntuProSucessAttachDescription => 'Du kan håndtere dine Pro-tjenester i programmet Software og opdateringer.';
}
