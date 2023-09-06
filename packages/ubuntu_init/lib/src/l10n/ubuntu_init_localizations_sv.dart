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
  String get storeTitle => 'Ubuntu Store';

  @override
  String get storeHeader => 'Kom igång med fler program';

  @override
  String get storeDescription => 'Ubuntus App Store erbjuder en rad program som du kan komma igång med direkt.';

  @override
  String get storeOpen => 'Öppna App Store';
}
