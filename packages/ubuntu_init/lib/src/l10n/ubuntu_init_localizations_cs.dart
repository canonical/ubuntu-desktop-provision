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
  String get welcomeStartSubtitle => 'Podporuje srozumitelnější nastavování.';

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
  String get telemetryReportLabel => 'Podrobnosti hlášení';

  @override
  String get telemetryReportTitle => 'Podrobnosti hlášení';

  @override
  String get telemetryLegalLabel => 'Právní informace';

  @override
  String get privacyPageTitle => 'Služby určování polohy';

  @override
  String get privacyLocationTitle => 'Zapnout služby určování polohy?';

  @override
  String get privacyLocationSubtitle => 'Umožněte aplikacím znát vaši zeměpisnou polohu.\nToto je možné kdykoli změnit v Nastavení systému.';

  @override
  String get privacyLocationEnable => 'Služby určování polohy';

  @override
  String get privacyPolicyLink => 'Soukromí údajů';

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
