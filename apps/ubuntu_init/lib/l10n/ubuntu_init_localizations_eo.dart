// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_init_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Esperanto (`eo`).
class UbuntuInitLocalizationsEo extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsEo([String locale = 'eo']) : super(locale);

  @override
  String get welcomePageTitle => 'Bonvenon';

  @override
  String welcomePageHeader(String distro) {
    return 'Bonvenon al $distro';
  }

  @override
  String get welcomeWhatsNew => 'KIO NOVAS?';

  @override
  String get welcomeStartTitle => 'Glatigita komenco';

  @override
  String get welcomeStartSubtitle => 'Pli simpla komenca agordado.';

  @override
  String get welcomeStoreTitle => 'Novaspekta Programvendejo';

  @override
  String get welcomeStoreSubtitle =>
      'La plej facila kielo trovi viajn preferatajn programojn.';

  @override
  String get welcomeSecurityTitle => 'Plifortikigita sekureco';

  @override
  String get welcomeSecuritySubtitle =>
      'Novaj opcioj pri aparato-baza aŭ ZFS-baza ĉifrado.';

  @override
  String welcomeChangelogLabel(String url) {
    return '<a href=\"$url\">Vidi protokolon de ŝanĝoj</a>';
  }

  @override
  String get telemetryPageTitle => 'Telemetrio';

  @override
  String telemetryHeader(String distro) {
    return 'Helpu plibonigi $distro';
  }

  @override
  String telemetryDescription(String distro) {
    return 'Helpu nin plibonigi $distro sendante viajn sistemajn datenojn al ni. Tio inkluzivas interalie la modelon de via maŝino, instalitajn programojn kaj tiun lokon, kiun vi elektis por via horzono.';
  }

  @override
  String telemetryLabelOn(String distro) {
    return 'Jes, sendu sistemajn datenojn al la evoluigantoj de $distro';
  }

  @override
  String get telemetryLabelOff => 'Ne, sendu neniom da sistemaj datenoj';

  @override
  String get telemetryReportLabel => 'Montri la unuan raporton';

  @override
  String get telemetryReportTitle => 'Raportotaj detaloj';

  @override
  String get telemetryLegalLabel => 'Jura avizo';

  @override
  String get telemetryCollectError =>
      'Malsukcesis kolekti telemetriajn datenojn';

  @override
  String get privacyPageTitle => 'Lokado-servo';

  @override
  String get privacyLocationTitle => 'Ĉu ŝalti lokado-servon?';

  @override
  String get privacyLocationSubtitle =>
      'Sciigi vian geografian lokon al programoj.\nVi povas ŝanĝi ĉi tiun agordon iam ajn en Agordoj.';

  @override
  String get privacyLocationEnable => 'Lokado-servo';

  @override
  String get privacyPolicyLink => 'Datena privateco';

  @override
  String ubuntuProMagicAttachInstructions(String url) {
    return 'Aŭtomate alkroĉu per la jena kodo ĉe <a href=\"https://$url\">$url</a>';
  }

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';

  @override
  String get ubuntuProHeader => 'Alkroĉi ĉi tiun komputilon';

  @override
  String get ubuntuProOrAddTokenManually => 'aŭ aldonu ĵetonon neaŭtomate';

  @override
  String get ubuntuProTokenTextfieldHint => 'Ĵetono';

  @override
  String get ubuntuProSubscriptionDescription =>
      'Abonu la plej ampleksan protekton pri malfermitkodaj programoj';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(String url) {
    return 'Ĉiam senkosta por persona uzo, 30 tagoj da provperiodo por entreprenoj. <a href=\"https://$url\">Lernu pli</a>';
  }

  @override
  String get ubuntuProTokenAttachButton => 'Alkroĉi';

  @override
  String get ubuntuProTokenAttachError => 'Nevalida ĵetono';

  @override
  String get ubuntuProTokenAttachSucess => 'Valida ĵetono';

  @override
  String get ubuntuProTokenAttachErrorVariant => 'Nevalida ĵetono, reprovu';

  @override
  String get ubuntuProOnBoardingSkipForNow => 'Preterpasi portempe';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription =>
      'Vi povas ŝalti Ubuntu Pro per la programo «Programaroj kaj Ĝisdatigoj».';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => 'Ŝalti Ubuntu Pro';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription =>
      'Alkroĉu ĉi tiun komputilon al abono de Ubuntu Pro por sekurigaj ĝisdatigoj pri vasta gamo da pakoj ĝis 2032.';

  @override
  String get ubuntuProSucessAttachHeader =>
      'Ubuntu Pro estas nun ŝaltita sur ĉi tiu komputilo';

  @override
  String get ubuntuProSucessAttachDescription =>
      'Vi povas administri viajn servojn de Ubuntu Pro per la programo «Programaroj kaj Ĝisdatigoj».';

  @override
  String get successIconSemanticLabel => 'Success';
}
