import 'ubuntu_init_localizations.dart';

/// The translations for Esperanto (`eo`).
class UbuntuInitLocalizationsEo extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsEo([String locale = 'eo']) : super(locale);

  @override
  String get welcomePageTitle => 'Bonvenon';

  @override
  String welcomePageHeader(Object distro) {
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
  String get welcomeStoreSubtitle => 'La plej facila kielo trovi viajn preferatajn programojn.';

  @override
  String get welcomeSecurityTitle => 'Plifortikigita sekureco';

  @override
  String get welcomeSecuritySubtitle => 'Novaj opcioj pri aparato-baza aŭ ZFS-baza ĉifrado.';

  @override
  String welcomeChangelogLabel(Object url) {
    return '<a href=\"$url\">Vidi protokolon de ŝanĝoj</a>';
  }

  @override
  String get telemetryPageTitle => 'Telemetrio';

  @override
  String telemetryHeader(Object distro) {
    return 'Helpu plibonigi $distro';
  }

  @override
  String telemetryDescription(Object distro) {
    return 'Sendi datenojn anonime al $distro por plibonigi vian sperton.';
  }

  @override
  String telemetryLabelOn(Object distro) {
    return 'Jes, sendu sistemajn datenojn al la evoluigantoj de $distro';
  }

  @override
  String get telemetryLabelOff => 'Ne, sendu neniom da sistemaj datenoj';

  @override
  String get telemetryReportLabel => 'Raportotaj detaloj';

  @override
  String get telemetryReportTitle => 'Raportotaj detaloj';

  @override
  String get telemetryLegalLabel => 'Juraĵoj';

  @override
  String get privacyPageTitle => 'Lokado-servo';

  @override
  String get privacyLocationTitle => 'Ĉu ŝalti lokado-servon?';

  @override
  String get privacyLocationSubtitle => 'Sciigi vian geografian lokon al programoj.\nVi povas ŝanĝi ĉi tiun agordon iam ajn en Agordoj.';

  @override
  String get privacyLocationEnable => 'Lokado-servo';

  @override
  String get privacyPolicyLink => 'Datena privateco';

  @override
  String ubuntuProMagicAttachInstructions(Object url) {
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
  String get ubuntuProSubscriptionDescription => 'Get the most comprehensive subscription for open-source software security';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(Object url) {
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
  String get ubuntuProOnBoardingSkipForNowDescription => 'You can always enable Ubuntu Pro later via the Software & Updates application.';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => 'Enable Ubuntu Pro';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription => 'Attach this machine to an Ubuntu Pro subscription for security updates on a wider range of packages, until 2032.';

  @override
  String get ubuntuProSucessAttachHeader => 'Ubuntu Pro is now enabled in this machine';

  @override
  String get ubuntuProSucessAttachDescription => 'You can manage your Pro services in the Software & Updates application.';
}
