import 'ubuntu_init_localizations.dart';

/// The translations for Norwegian Bokmål (`nb`).
class UbuntuInitLocalizationsNb extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsNb([String locale = 'nb']) : super(locale);

  @override
  String get welcomePageTitle => 'Velkommen';

  @override
  String welcomePageHeader(Object distro) {
    return 'Velkommen til $distro';
  }

  @override
  String get welcomeWhatsNew => 'Hva er nytt?';

  @override
  String get welcomeStartTitle => 'En strømlinjeformet start';

  @override
  String get welcomeStartSubtitle => 'Tilbyr renere oppsettsflyt.';

  @override
  String get welcomeStoreTitle => 'Programbutikk med nytt utseende';

  @override
  String get welcomeStoreSubtitle => 'Det har aldri vært enklere å finne dine favorittprogrammer.';

  @override
  String get welcomeSecurityTitle => 'Økt sikkerhet';

  @override
  String get welcomeSecuritySubtitle => 'Nye alternativer for maskinvarebasert- eller ZFS-kryptering.';

  @override
  String welcomeChangelogLabel(Object url) {
    return '<a href=\"$url\">Vis endringslogg</a>';
  }

  @override
  String get telemetryPageTitle => 'Telemetri';

  @override
  String telemetryHeader(Object distro) {
    return 'Hjelp til å forbedre $distro';
  }

  @override
  String telemetryDescription(Object distro) {
    return 'Del data anonymt med $distro slik at opplevelsen kan forbedres.';
  }

  @override
  String telemetryLabelOn(Object distro) {
    return 'Ja, del systemdata med $distro-laget';
  }

  @override
  String get telemetryLabelOff => 'Nei, ikke del systemdata';

  @override
  String get telemetryReportLabel => 'Innrapporteringsdetaljer';

  @override
  String get telemetryReportTitle => 'Innrapporteringsdetaljer';

  @override
  String get telemetryLegalLabel => 'Juridisk';

  @override
  String get privacyPageTitle => 'Posisjoneringstjenester';

  @override
  String get privacyLocationTitle => 'Skru på posisjoneringstjenester?';

  @override
  String get privacyLocationSubtitle => 'La programmer få tilgang til din geografiske plassering.\nDu kan endre dette når som helst i systeminnstillingene.';

  @override
  String get privacyLocationEnable => 'Posisjoneringstjenster';

  @override
  String get privacyPolicyLink => 'Databeskyttelse';

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';
}
