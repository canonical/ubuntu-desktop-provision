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
    return 'Anonymné zdieľanie údajov s $distro, aby sme mohli zlepšiť váš zážitok.';
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
