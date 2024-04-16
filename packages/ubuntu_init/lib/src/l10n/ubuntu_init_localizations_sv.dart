import 'ubuntu_init_localizations.dart';

/// The translations for Swedish (`sv`).
class UbuntuInitLocalizationsSv extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get welcomePageTitle => 'Välkommen';

  @override
  String welcomePageHeader(Object distro) {
    return 'Välkommen till $distro';
  }

  @override
  String get welcomeWhatsNew => 'VAD ÄR NYTT?';

  @override
  String get welcomeStartTitle => 'En strömlinjeformad start';

  @override
  String get welcomeStartSubtitle => 'Stödjer en renare installationsupplevelse.';

  @override
  String get welcomeStoreTitle => 'Nytt utseende App Store';

  @override
  String get welcomeStoreSubtitle => 'Det har aldrig varit lättare att hitta din favoritprogramvara.';

  @override
  String get welcomeSecurityTitle => 'Utökad säkerhet';

  @override
  String get welcomeSecuritySubtitle => 'Nya alternativ för hårdvarustöd kryptering eller ZFS-kryptering.';

  @override
  String welcomeChangelogLabel(Object url) {
    return '<a href=\"$url\">Visa ändringslogg</a>';
  }

  @override
  String get telemetryPageTitle => 'Telemetri';

  @override
  String telemetryHeader(Object distro) {
    return 'Hjälp till att förbättra $distro';
  }

  @override
  String telemetryDescription(Object distro) {
    return 'Dela data anonymt med $distro så att vi kan förbättra din upplevelse.';
  }

  @override
  String telemetryLabelOn(Object distro) {
    return 'Ja, dela systemdata med $distro-teamet';
  }

  @override
  String get telemetryLabelOff => 'Nej, dela inte systemdata';

  @override
  String get telemetryReportLabel => 'Rapporteringsdetaljer';

  @override
  String get telemetryReportTitle => 'Rapporteringsdetaljer';

  @override
  String get telemetryLegalLabel => 'Juridisk information';

  @override
  String get privacyPageTitle => 'Platstjänster';

  @override
  String get privacyLocationTitle => 'Aktivera platstjänster?';

  @override
  String get privacyLocationSubtitle => 'Låt program veta din geografiska plats.\nDu kan ändra detta när som helst i Systeminställningarna.';

  @override
  String get privacyLocationEnable => 'Platstjänster';

  @override
  String get privacyPolicyLink => 'Dataintegritet';

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
