import 'ubuntu_init_localizations.dart';

/// The translations for Czech (`cs`).
class UbuntuInitLocalizationsCs extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsCs([String locale = 'cs']) : super(locale);

  @override
  String get welcomePageTitle => 'Vítejte';

  @override
  String welcomePageHeader(Object distro) {
    return 'Vítejte v $distro';
  }

  @override
  String get welcomeWhatsNew => 'CO JE NOVÉHO?';

  @override
  String get welcomeStartTitle => 'Zjednodušený začátek';

  @override
  String get welcomeStartSubtitle => 'Podpora jasnějšího nastavování.';

  @override
  String get welcomeStoreTitle => 'Nový vzhled katalogu aplikací';

  @override
  String get welcomeStoreSubtitle => 'Najít vámi oblíbený software nikdy nebylo snazší.';

  @override
  String get welcomeSecurityTitle => 'Vylepšené zabezpečení';

  @override
  String get welcomeSecuritySubtitle => 'Nové předvolby pro šifrování s pomocí hardware nebo na ZFS.';

  @override
  String welcomeChangelogLabel(Object url) {
    return '<a href=\"$url\">Zobrazit seznam změn</a>';
  }

  @override
  String get telemetryPageTitle => 'Telemetrie';

  @override
  String telemetryHeader(Object distro) {
    return 'Pomozte $distro vylepšit';
  }

  @override
  String telemetryDescription(Object distro) {
    return 'Sdílet anonymní data s $distro, na základě kterých můžeme vylepšit dojem z používání.';
  }

  @override
  String telemetryLabelOn(Object distro) {
    return 'Ano, sdílet údaje o systému s týmem $distro';
  }

  @override
  String get telemetryLabelOff => 'Ne, nesdílet systémové informace';

  @override
  String get telemetryReportLabel => 'Reporting details';

  @override
  String get telemetryReportTitle => 'Reporting details';

  @override
  String get telemetryLegalLabel => 'Legal';

  @override
  String get privacyPageTitle => 'Location services';

  @override
  String get privacyLocationTitle => 'Enable location services?';

  @override
  String get privacyLocationSubtitle => 'Let applications know your geographical location.\nYou can change this anytime in System Settings.';

  @override
  String get privacyLocationEnable => 'Location services';

  @override
  String get privacyPolicyLink => 'Data Privacy';

  @override
  String get storeTitle => 'Ubuntu Store';

  @override
  String get storeHeader => 'Get started with more applications';

  @override
  String get storeDescription => 'Ubuntu\'s App Store offers a range of apps you can get started with from the get-go.';

  @override
  String get storeOpen => 'Open App Store';
}
