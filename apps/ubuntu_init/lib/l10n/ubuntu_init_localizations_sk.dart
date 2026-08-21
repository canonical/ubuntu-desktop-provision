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
    return 'Vitajte v systéme $distro';
  }

  @override
  String get welcomeWhatsNew => 'ČO JE NOVÉ?';

  @override
  String get welcomeStartTitle => 'Zjednodušený začiatok';

  @override
  String get welcomeStartSubtitle => 'Jednoduchšie a prehľadnejšie nastavenie.';

  @override
  String get welcomeStoreTitle => 'Nový vzhľad Obchodu s aplikáciami';

  @override
  String get welcomeStoreSubtitle =>
      'Nikdy nebolo jednoduchšie nájsť váš obľúbený softvér.';

  @override
  String get welcomeSecurityTitle => 'Zvýšená bezpečnosť';

  @override
  String get welcomeSecuritySubtitle =>
      'Nové možnosti šifrovania s podporou hardvéru alebo súborového systému ZFS.';

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
    return 'Pomôžte nám zlepšiť $distro zdieľaním údajov o vašom systéme. Zahŕňa to napríklad model vášho zariadenia, nainštalovaný softvér a vybrané časové pásmo.';
  }

  @override
  String telemetryLabelOn(String distro) {
    return 'Áno, zdieľať údaje o systéme s tímom $distro';
  }

  @override
  String get telemetryLabelOff => 'Nie, nezdieľať údaje o systéme';

  @override
  String get telemetryReportLabel => 'Zobraziť prvú správu';

  @override
  String get telemetryReportTitle => 'Podrobnosti o hlásení';

  @override
  String get telemetryLegalLabel => 'Právne upozornenie';

  @override
  String get telemetryCollectError =>
      'Zlyhalo zhromažďovanie telemetrických údajov';

  @override
  String get privacyPageTitle => 'Služby určovania polohy';

  @override
  String get privacyLocationTitle => 'Povoliť služby určovania polohy?';

  @override
  String get privacyLocationSubtitle =>
      'Umožníte aplikáciám zistiť vašu geografickú polohu.\nToto nastavenie môžete kedykoľvek zmeniť v Nastaveniach systému.';

  @override
  String get privacyLocationEnable => 'Služby určovania polohy';

  @override
  String get privacyPolicyLink => 'Ochrana údajov';

  @override
  String ubuntuProMagicAttachInstructions(String url) {
    return 'Pripojenie pomocou tohto kódu na adrese <a href=\"https://$url\">$url</a>';
  }

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';

  @override
  String get ubuntuProHeader => 'Pripojiť toto zariadenie';

  @override
  String get ubuntuProOrAddTokenManually => 'alebo pridať token manuálne';

  @override
  String get ubuntuProTokenTextfieldHint => 'Token';

  @override
  String get ubuntuProSubscriptionDescription =>
      'Získajte najkomplexnejšie predplatné pre bezpečnosť softvéru s otvoreným zdrojovým kódom';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(String url) {
    return 'Vždy zadarmo pre osobné použitie. 30-dňová skúšobná verzia pre podniky. <a href=\"https://$url\">Zistiť viac</a>';
  }

  @override
  String get ubuntuProTokenAttachButton => 'Pripojiť';

  @override
  String get ubuntuProTokenAttachError => 'Neplatný token';

  @override
  String get ubuntuProTokenAttachSucess => 'Platný token';

  @override
  String get ubuntuProTokenAttachErrorVariant => 'Neplatný token, skúsiť znova';

  @override
  String get ubuntuProOnBoardingSkipForNow => 'Preskočiť teraz';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription =>
      'Službu Ubuntu Pro môžete kedykoľvek neskôr povoliť v aplikácii Softvér a aktualizácie.';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => 'Povoliť Ubuntu Pro';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription =>
      'Pripojte toto zariadenie k predplatnému Ubuntu Pro pre bezpečnostné aktualizácie širšieho rozsahu balíkov až do roku 2032.';

  @override
  String get ubuntuProSucessAttachHeader =>
      'Služba Ubuntu Pro je na tomto zariadení teraz povolená';

  @override
  String get ubuntuProSucessAttachDescription =>
      'Svoje služby Pro môžete spravovať v aplikácii Softvér a aktualizácie.';

  @override
  String get successIconSemanticLabel => 'Úspech';

  @override
  String get closeIconSemanticLabel => 'Zavrieť';

  @override
  String get maximizeIconSemanticLabel => 'Maximalizovať';

  @override
  String get minimizeIconSemanticLabel => 'Minimalizovať';
}
