import 'ubuntu_init_localizations.dart';

/// The translations for Slovak (`sk`).
class UbuntuInitLocalizationsSk extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsSk([String locale = 'sk']) : super(locale);

  @override
  String get welcomePageTitle => 'Vitajte';

  @override
  String welcomePageHeader(Object distro) {
    return 'Vitajte v $distro';
  }

  @override
  String get welcomeWhatsNew => 'ČO JE NOVÉ?';

  @override
  String get welcomeStartTitle => 'Zjednodušený štart';

  @override
  String get welcomeStartSubtitle => 'Podpora jednoduchšieho nastavenia.';

  @override
  String get welcomeStoreTitle => 'Nový vzhľad centra s aplikáciami';

  @override
  String get welcomeStoreSubtitle => 'Nájsť svoj obľúbený softvér nebolo nikdy jednoduchšie.';

  @override
  String get welcomeSecurityTitle => 'Vylepšené zabezpečenie';

  @override
  String get welcomeSecuritySubtitle => 'Nové možnosti pre hardvérové šifrovanie alebo ZFS.';

  @override
  String welcomeChangelogLabel(Object url) {
    return '<a href=\"$url\">Zobraziť zoznam zmien</a>';
  }

  @override
  String get telemetryPageTitle => 'Telemetria';

  @override
  String telemetryHeader(Object distro) {
    return 'Pomôžte zlepšiť $distro';
  }

  @override
  String telemetryDescription(Object distro) {
    return 'Anonymné zdieľanie údajov s $distro, aby sme mohli zlepšiť váš dojem z používania.';
  }

  @override
  String telemetryLabelOn(Object distro) {
    return 'Áno, zdieľať systémové údaje s $distro tímom';
  }

  @override
  String get telemetryLabelOff => 'Nie, nezdieľať systémové údaje';

  @override
  String get telemetryReportLabel => 'Podrobnosti hlásenia';

  @override
  String get telemetryReportTitle => 'Podrobnosti hlásenia';

  @override
  String get telemetryLegalLabel => 'Právne informácie';

  @override
  String get privacyPageTitle => 'Služby umiestnenia';

  @override
  String get privacyLocationTitle => 'Povoliť služby umiestnenia?';

  @override
  String get privacyLocationSubtitle => 'Poskytnite aplikáciám údaje o svojej geografickej polohe.\nMôžete to kedykoľvek zmeniť v systémových nastaveniach.';

  @override
  String get privacyLocationEnable => 'Služby umiestnenia';

  @override
  String get privacyPolicyLink => 'Súkromie údajov';

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';
}
