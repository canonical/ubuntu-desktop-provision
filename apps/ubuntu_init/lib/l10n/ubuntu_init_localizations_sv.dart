import 'ubuntu_init_localizations.dart';

// ignore_for_file: type=lint

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
    return 'Hjälp oss att förbättra $distro genom att dela din systemdata med oss. Detta inkluderar saker som din maskinmodell, installerad programvara och den plats du valde för din tidszon.';
  }

  @override
  String telemetryLabelOn(Object distro) {
    return 'Ja, dela systemdata med $distro-teamet';
  }

  @override
  String get telemetryLabelOff => 'Nej, dela inte systemdata';

  @override
  String get telemetryReportLabel => 'Visa den första rapporten';

  @override
  String get telemetryReportTitle => 'Rapporteringsdetaljer';

  @override
  String get telemetryLegalLabel => 'Juridisk meddelande';

  @override
  String get telemetryCollectError => 'Misslyckades att samla in telemetri data';

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
    return 'Magisk anslut med koden på <a href=\"https://$url\"></a>';
  }

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';

  @override
  String get ubuntuProHeader => 'Anslut den här maskinen';

  @override
  String get ubuntuProOrAddTokenManually => 'eller lägg till en token manuellt';

  @override
  String get ubuntuProTokenTextfieldHint => 'Token';

  @override
  String get ubuntuProSubscriptionDescription => 'Få den mest omfattande prenumerationen för säkerhet med öppen källkod';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(Object url) {
    return 'Alltid gratis för personligt bruk. 30 dagars provperiod för företag. <a href=\"https://$url\">Läs mer</a>';
  }

  @override
  String get ubuntuProTokenAttachButton => 'Anslut';

  @override
  String get ubuntuProTokenAttachError => 'Ogiltig token';

  @override
  String get ubuntuProTokenAttachSucess => 'Giltig token';

  @override
  String get ubuntuProTokenAttachErrorVariant => 'Ogiltig token, försök igen';

  @override
  String get ubuntuProOnBoardingSkipForNow => 'Hoppa över för nu';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription => 'Du kan alltid aktivera Ubuntu Pro senare via programmet Programvara och uppdateringar.';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => 'Aktivera Ubuntu Pro';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription => 'Lägg till denna maskin till en Ubuntu Pro prenumeration för säkerhetsuppdateringar på ett bredare utbud av paket, fram till 2032.';

  @override
  String get ubuntuProSucessAttachHeader => 'Ubuntu Pro är nu aktiverat på den här maskinen';

  @override
  String get ubuntuProSucessAttachDescription => 'Du kan hantera dina Pro-tjänster med programmet Programvara och uppdateringar.';
}
