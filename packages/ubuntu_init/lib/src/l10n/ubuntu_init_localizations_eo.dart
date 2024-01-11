import 'ubuntu_init_localizations.dart';

/// The translations for Esperanto (`eo`).
class UbuntuInitLocalizationsEo extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsEo([String locale = 'eo']) : super(locale);

  @override
  String loadingPageTitle(Object DISTRO) {
    return 'Welcome to $DISTRO';
  }

  @override
  String loadingHeader(Object DISTRO) {
    return 'Preparing $DISTRO…';
  }

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
  String get ubuntuProPageTitle => 'Ubuntu Pro';
}
