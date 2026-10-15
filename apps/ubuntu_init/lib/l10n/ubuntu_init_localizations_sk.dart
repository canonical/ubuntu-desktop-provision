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
  String get welcomeStartTitle => 'Zjednodušený štart';

  @override
  String get welcomeStartSubtitle =>
      'Podpora čistejšieho zážitku z nastavenia.';

  @override
  String get welcomeStoreTitle => 'Obchod s aplikáciami v novom vzhľade';

  @override
  String get welcomeStoreSubtitle =>
      'Nikdy nebolo jednoduchšie nájsť váš obľúbený softvér.';

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
    return 'Pomôžte vylepšiť $distro';
  }

  @override
  String telemetryDescription(String distro) {
    return 'Pomôžte nám vylepšiť $distro zdieľaním údajov o vašom systéme. Zahŕňa to napríklad model vášho počítača, nainštalovaný softvér a vašu zvolenú časovú zónu.';
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
      'Nepodarilo sa zozbierať údaje o telemetrii';

  @override
  String get privacyPageTitle => 'Služby určovania polohy';

  @override
  String get privacyLocationTitle => 'Povoliť služby určovania polohy?';

  @override
  String get privacyLocationSubtitle =>
      'Umožnite aplikáciám zistiť vašu geografickú polohu.\nToto nastavenie môžete kedykoľvek zmeniť v Systémových nastaveniach.';

  @override
  String get privacyLocationEnable => 'Služby určovania polohy';

  @override
  String get privacyPolicyLink => 'Ochrana osobných údajov';

  @override
  String ubuntuProMagicAttachInstructions(String url) {
    return 'Magické pripojenie s týmto kódom na <a href=\"https://$url\">$url</a>';
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
  String get ubuntuProSubscriptionDescription =>
      'Získajte najkomplexnejšie predplatné na ochranu open-source softvéru';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(String url) {
    return 'Vždy zdarma pre osobné použitie. 30-dňová skúšobná verzia pre podniky. <a href=\"https://$url\">Zistiť viac</a>';
  }

  @override
  String get ubuntuProTokenAttachButton => 'Pripojiť';

  @override
  String get ubuntuProTokenAttachError => 'Neplatný token';

  @override
  String get ubuntuProTokenAttachSucess => 'Platný token';

  @override
  String get ubuntuProTokenAttachErrorVariant => 'Neplatný token, skúste znova';

  @override
  String get ubuntuProOnBoardingSkipForNow => 'Zatiaľ preskočiť';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription =>
      'Ubuntu Pro môžete vždy povoliť neskôr prostredníctvom aplikácie Softvér a aktualizácie.';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => 'Povoliť Ubuntu Pro';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription =>
      'Pripojte tento počítač k predplatnému Ubuntu Pro na bezpečnostné aktualizácie širšej škály balíkov až do roku 2032.';

  @override
  String get ubuntuProSucessAttachHeader =>
      'Ubuntu Pro je teraz na tomto počítači povolený';

  @override
  String get ubuntuProSucessAttachDescription =>
      'Služby Pro môžete spravovať v aplikácii Softvér a aktualizácie.';

  @override
  String get successIconSemanticLabel => 'Úspech';

  @override
  String get closeIconSemanticLabel => 'Zavrieť';

  @override
  String get maximizeIconSemanticLabel => 'Maximalizovať';

  @override
  String get minimizeIconSemanticLabel => 'Minimalizovať';
}
