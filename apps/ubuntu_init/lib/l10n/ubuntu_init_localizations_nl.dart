// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_init_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class UbuntuInitLocalizationsNl extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get welcomePageTitle => 'Welkom';

  @override
  String welcomePageHeader(String distro) {
    return 'Welkom bij $distro';
  }

  @override
  String get welcomeWhatsNew => 'WAT IS ER NIEUW?';

  @override
  String get welcomeStartTitle => 'Een optimale start';

  @override
  String get welcomeStartSubtitle =>
      'Ondersteuning voor een schonere inrichting.';

  @override
  String get welcomeStoreTitle => 'Nieuw uiterlijk voor de App Store';

  @override
  String get welcomeStoreSubtitle =>
      'Het was nog nooit zo eenvoudig om uw favoriete software te vinden.';

  @override
  String get welcomeSecurityTitle => 'Verbeterde beveiliging';

  @override
  String get welcomeSecuritySubtitle =>
      'Nieuwe opties voor hardwarematige of ZFS-codering.';

  @override
  String welcomeChangelogLabel(String url) {
    return '<a href=\"$url\">Wijzigingen bekijken</a>';
  }

  @override
  String get telemetryPageTitle => 'Telemetrie';

  @override
  String telemetryHeader(String distro) {
    return 'Help mee om $distro te verbeteren';
  }

  @override
  String telemetryDescription(String distro) {
    return 'Help ons $distro te verbeteren door uw systeemgegevens met ons te delen. Dit omvat zaken als je computermodel, geïnstalleerde software en de locatie die u voor uw tijdzone heeft gekozen.';
  }

  @override
  String telemetryLabelOn(String distro) {
    return 'Ja, systeemgegevens delen met het $distro-team';
  }

  @override
  String get telemetryLabelOff => 'Nee, geen systeemgegevens delen';

  @override
  String get telemetryReportLabel => 'De eerste rapportage tonen';

  @override
  String get telemetryReportTitle => 'Details van de rapportage';

  @override
  String get telemetryLegalLabel => 'Juridische mededeling';

  @override
  String get telemetryCollectError =>
      'Fout bij het verzamelen van telemetriegegevens';

  @override
  String get privacyPageTitle => 'Locatie-diensten';

  @override
  String get privacyLocationTitle => 'Locatie-diensten inschakelen?';

  @override
  String get privacyLocationSubtitle =>
      'Laat applicaties uw geografische locatie weten.\nU kunt dit op elk gewenst moment wijzigen in Systeeminstellingen.';

  @override
  String get privacyLocationEnable => 'Locatie-diensten';

  @override
  String get privacyPolicyLink => 'Privacy van gegevens';

  @override
  String ubuntuProMagicAttachInstructions(String url) {
    return 'Magisch verbinden met deze code op <a href=\"https://$url\">$url</a>';
  }

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';

  @override
  String get ubuntuProHeader => 'Dit apparaat verbinden';

  @override
  String get ubuntuProOrAddTokenManually => 'of handmatig een token toevoegen';

  @override
  String get ubuntuProTokenTextfieldHint => 'Token';

  @override
  String get ubuntuProSubscriptionDescription =>
      'Neem het meest uitgebreide abonnement voor open-source softwarebeveiliging';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(String url) {
    return 'Altijd gratis voor persoonlijk gebruik. 30 dagen proefversie voor ondernemingen. <a href=\"https://$url\">Meer informatie</a>';
  }

  @override
  String get ubuntuProTokenAttachButton => 'Koppelen';

  @override
  String get ubuntuProTokenAttachError => 'Ongeldig token';

  @override
  String get ubuntuProTokenAttachSucess => 'Geldig token';

  @override
  String get ubuntuProTokenAttachErrorVariant =>
      'Ongeldig token, opnieuw proberen';

  @override
  String get ubuntuProOnBoardingSkipForNow => 'Voorlopig overslaan';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription =>
      'Je kunt Ubuntu Pro later altijd inschakelen via de applicatie Software & Updates.';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => 'Ubuntu Pro activeren';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription =>
      'Deze machine koppelen aan een Ubuntu Pro-abonnement voor beveiligingsupdates op een breder scala aan pakketten, tot 2032.';

  @override
  String get ubuntuProSucessAttachHeader =>
      'Ubuntu Pro is nu ingeschakeld op deze machine';

  @override
  String get ubuntuProSucessAttachDescription =>
      'U kunt uw Pro-diensten beheren in de applicatie Software & Updates.';

  @override
  String get successIconSemanticLabel => 'Success';
}
