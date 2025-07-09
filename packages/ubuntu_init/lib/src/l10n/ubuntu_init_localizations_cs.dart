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
  String get welcomeSecuritySubtitle => 'Nové předvolby pro šifrování s pomocí hardwaru nebo na ZFS.';

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
    return 'Pomozte nám zlepšit $distro tím, že s námi budete sdílet informace o svém systému. To zahrnuje věci, jako je model vašeho počítače, nainstalovaný software a umístění, které jste vybrali pro své časové pásmo.';
  }

  @override
  String telemetryLabelOn(Object distro) {
    return 'Ano, sdílet údaje o systému s týmem $distro';
  }

  @override
  String get telemetryLabelOff => 'Ne, nesdílet systémové informace';

  @override
  String get telemetryReportLabel => 'Zobrazit první hlášení';

  @override
  String get telemetryReportTitle => 'Podrobnosti hlášení';

  @override
  String get telemetryLegalLabel => 'Právní ustanovení';

  @override
  String get telemetryCollectError => 'Nepodařilo se shromáždit telemetrická data';

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
    return 'Magicky připojte s tímto kódem na <a href=\"https://$url\">$url</a>';
  }

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';

  @override
  String get ubuntuProHeader => 'Připojte tento počítač';

  @override
  String get ubuntuProOrAddTokenManually => 'nebo přidejte token ručně';

  @override
  String get ubuntuProTokenTextfieldHint => 'Token';

  @override
  String get ubuntuProSubscriptionDescription => 'Získejte nejkomplexnější předplatné pro zabezpečení open-source softwaru';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(Object url) {
    return 'Vždy zdarma pro osobní použití. 30denní zkušební verze pro podniky. <a href=\"https://$url\">Více informací</a>';
  }

  @override
  String get ubuntuProTokenAttachButton => 'Připojit';

  @override
  String get ubuntuProTokenAttachError => 'Neplatný token';

  @override
  String get ubuntuProTokenAttachSucess => 'Platný token';

  @override
  String get ubuntuProTokenAttachErrorVariant => 'Neplatný token, zkuste to znovu';

  @override
  String get ubuntuProOnBoardingSkipForNow => 'Prozatím přeskočit';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription => 'Ubuntu Pro můžete kdykoli povolit později prostřednictvím aplikace Software a aktualizace.';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => 'Povolit Ubuntu Pro';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription => 'Připojte tento počítač k předplatnému Ubuntu Pro pro aktualizace zabezpečení v širší řadě balíčků do roku 2032.';

  @override
  String get ubuntuProSucessAttachHeader => 'Ubuntu Pro je nyní na tomto počítači povoleno';

  @override
  String get ubuntuProSucessAttachDescription => 'Své služby Pro můžete spravovat v aplikaci Software a aktualizace.';
}
