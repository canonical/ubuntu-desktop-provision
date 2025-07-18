// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_init_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Norwegian Bokmål (`nb`).
class UbuntuInitLocalizationsNb extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsNb([String locale = 'nb']) : super(locale);

  @override
  String get welcomePageTitle => 'Velkommen';

  @override
  String welcomePageHeader(String distro) {
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
  String get welcomeStoreSubtitle =>
      'Det har aldri vært enklere å finne dine favorittprogrammer.';

  @override
  String get welcomeSecurityTitle => 'Økt sikkerhet';

  @override
  String get welcomeSecuritySubtitle =>
      'Nye alternativer for maskinvarebasert- eller ZFS-kryptering.';

  @override
  String welcomeChangelogLabel(String url) {
    return '<a href=\"$url\">Vis endringslogg</a>';
  }

  @override
  String get telemetryPageTitle => 'Telemetri';

  @override
  String telemetryHeader(String distro) {
    return 'Hjelp til å forbedre $distro';
  }

  @override
  String telemetryDescription(String distro) {
    return 'Del data anonymt med $distro slik at opplevelsen kan forbedres.';
  }

  @override
  String telemetryLabelOn(String distro) {
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
  String get telemetryCollectError => 'Failed to collect telemetry data';

  @override
  String get privacyPageTitle => 'Posisjoneringstjenester';

  @override
  String get privacyLocationTitle => 'Skru på posisjoneringstjenester?';

  @override
  String get privacyLocationSubtitle =>
      'La programmer få tilgang til din geografiske plassering.\nDu kan endre dette når som helst i systeminnstillingene.';

  @override
  String get privacyLocationEnable => 'Posisjoneringstjenster';

  @override
  String get privacyPolicyLink => 'Databeskyttelse';

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
  String get ubuntuProTokenTextfieldHint => 'Symbol';

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
  String get ubuntuProTokenAttachError => 'Ugyldig symbol';

  @override
  String get ubuntuProTokenAttachSucess => 'Gyldig symbol';

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

  @override
  String get successIconSemanticLabel => 'Success';

  @override
  String get closeIconSemanticLabel => 'Close';

  @override
  String get maximizeIconSemanticLabel => 'Maximize';

  @override
  String get minimizeIconSemanticLabel => 'Minimize';
}
