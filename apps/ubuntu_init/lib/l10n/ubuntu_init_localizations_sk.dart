// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_init_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovak (`sk`).
class UbuntuInitLocalizationsSk extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsSk([String locale = 'sk']) : super(locale);

  @override
  String get welcomePageTitle => 'Vitajte';

  @override
  String welcomePageHeader(String distro) {
    return 'Vitajte v $distro';
  }

  @override
  String get welcomeWhatsNew => 'ČO JE NOVÉ?';

  @override
  String get welcomeStartTitle => 'Zjednodušený začiatok';

  @override
  String get welcomeStartSubtitle => 'Jednoduchšie a prehľadnejšie nastavenie.';

  @override
  String get welcomeStoreTitle => 'Nový vzhľad obchodu s aplikáciami';

  @override
  String get welcomeStoreSubtitle =>
      'Nájsť váš obľúbený softvér nebolo nikdy jednoduchšie.';

  @override
  String get welcomeSecurityTitle => 'Vylepšené zabezpečenie';

  @override
  String get welcomeSecuritySubtitle =>
      'Nové možnosti hardvérového alebo ZFS šifrovania.';

  @override
  String welcomeChangelogLabel(String url) {
    return '<a href=\"$url\">Zobraziť zoznam zmien</a>';
  }

  @override
  String get telemetryPageTitle => 'Telemetria';

  @override
  String telemetryHeader(String distro) {
    return 'Pomôžte zlepšiť $distro';
  }

  @override
  String telemetryDescription(String distro) {
    return 'Pomôžte nám zlepšiť $distro zdieľaním systémových údajov. Ide napríklad o model vášho zariadenia, nainštalovaný softvér a polohu, ktorú ste vybrali pre časové pásmo.';
  }

  @override
  String telemetryLabelOn(String distro) {
    return 'Áno, zdieľať systémové údaje s $distro tímom';
  }

  @override
  String get telemetryLabelOff => 'Nie, nezdieľať systémové údaje';

  @override
  String get telemetryReportLabel => 'Zobraziť prvé hlásenie';

  @override
  String get telemetryReportTitle => 'Podrobnosti hlásenia';

  @override
  String get telemetryLegalLabel => 'Právne informácie';

  @override
  String get telemetryCollectError =>
      'Zhromažďovanie telemetrických údajov zlyhalo';

  @override
  String get privacyPageTitle => 'Služby určovania polohy';

  @override
  String get privacyLocationTitle => 'Povoliť služby určovania polohy?';

  @override
  String get privacyLocationSubtitle =>
      'Umožnite aplikáciám zistiť vašu geografickú polohu.\nNastavenie môžete kedykoľvek zmeniť v Systémových nastaveniach.';

  @override
  String get privacyLocationEnable => 'Služby určovania polohy';

  @override
  String get privacyPolicyLink => 'Ochrana údajov';

  @override
  String ubuntuProMagicAttachInstructions(String url) {
    return 'Pripojte sa pomocou tohto kódu na <a href=\"https://$url\">$url</a>';
  }

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';

  @override
  String get ubuntuProHeader => 'Pripojiť toto zariadenie';

  @override
  String get ubuntuProOrAddTokenManually => 'alebo zadať token manuálne';

  @override
  String get ubuntuProTokenTextfieldHint => 'Token';

  @override
  String get ubuntuProSubscriptionDescription =>
      'Získajte najkomplexnejšie predplatné na zabezpečenie open-source softvéru';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(String url) {
    return 'Vždy zadarmo na osobné použitie. 30-dňová skúšobná verzia pre podniky. <a href=\"https://$url\">Viac informácií</a>';
  }

  @override
  String get ubuntuProTokenAttachButton => 'Pripojiť';

  @override
  String get ubuntuProTokenAttachError => 'Neplatný token';

  @override
  String get ubuntuProTokenAttachSucess => 'Platný token';

  @override
  String get ubuntuProTokenAttachErrorVariant =>
      'Neplatný token, skúste to znova';

  @override
  String get ubuntuProOnBoardingSkipForNow => 'Zatiaľ preskočiť';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription =>
      'Ubuntu Pro môžete aktivovať kedykoľvek neskôr prostredníctvom nástroja Softvér a aktualizácie.';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => 'Aktivovať Ubuntu Pro';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription =>
      'Pripojte toto zariadenie k predplatnému Ubuntu Pro a získajte aktualizácie zabezpečenia pre širší rozsah balíkov až do roku 2032.';

  @override
  String get ubuntuProSucessAttachHeader =>
      'Ubuntu Pro je teraz aktivované na tomto zariadení';

  @override
  String get ubuntuProSucessAttachDescription =>
      'Služby Pro môžete spravovať v nástroji Softvér a aktualizácie.';

  @override
  String get successIconSemanticLabel => 'Úspech';

  @override
  String get closeIconSemanticLabel => 'Zavrieť';

  @override
  String get maximizeIconSemanticLabel => 'Maximalizovať';

  @override
  String get minimizeIconSemanticLabel => 'Minimalizovať';
}
