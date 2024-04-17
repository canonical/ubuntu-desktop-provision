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
  String get welcomeStartTitle => 'Zjednodušený začiatok';

  @override
  String get welcomeStartSubtitle => 'Podpora jednoduchšieho nastavenia.';

  @override
  String get welcomeStoreTitle => 'Nový vzhľad obchodu s aplikáciami';

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
    return 'Anonymné zdieľanie údajov s $distro, aby sme mohli zlepšiť váš dojem.';
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
  String get privacyLocationSubtitle => 'Poskytnite aplikáciám údaje o svojej geografickej polohe.\nToto môžete kedykoľvek zmeniť v nastaveniach systému.';

  @override
  String get privacyLocationEnable => 'Služby umiestnenia';

  @override
  String get privacyPolicyLink => 'Ochrana údajov';

  @override
  String ubuntuProMagicAttachInstructions(Object url) {
    return 'Pripojiť sa s týmto kódom na <a href=\"https://$url\">$url</a>';
  }

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';

  @override
  String get ubuntuProHeader => 'Pripojiť tento počítač';

  @override
  String get ubuntuProOrAddTokenManually => 'alebo pridať token ručne';

  @override
  String get ubuntuProTokenTextfieldHint => 'Token';

  @override
  String get ubuntuProSubscriptionDescription => 'Získajte najkomplexnejšie predplatné pre bezpečnosť softvéru s otvoreným zdrojovým kódom';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(Object url) {
    return 'Vždy zadarmo na osobné použitie. 30-dňová skúšobná verzia pre podniky. <a href=\"https://$url\">Viac informácií</a>';
  }

  @override
  String get ubuntuProTokenAttachButton => 'Pripojiť';

  @override
  String get ubuntuProTokenAttachError => 'Neplatný token';

  @override
  String get ubuntuProTokenAttachSucess => 'Platný token';

  @override
  String get ubuntuProTokenAttachErrorVariant => 'Neplatný token, skúste to znova';

  @override
  String get ubuntuProOnBoardingSkipForNow => 'Zatiaľ preskočiť';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription => 'Ubuntu Pro môžete povoliť kedykoľvek neskôr prostredníctvom aplikácie Softvér a aktualizácie.';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => 'Povoliť Ubuntu Pro';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription => 'Pripojte tento počítač k predplatnému Ubuntu Pro pre aktualizácie zabezpečenia v širšom rozsahu balíkov do roku 2032.';

  @override
  String get ubuntuProSucessAttachHeader => 'Ubuntu Pro je teraz povolené v tomto počítači';

  @override
  String get ubuntuProSucessAttachDescription => 'Svoje služby Pro môžete spravovať v aplikácii Softvér a aktualizácie.';
}
