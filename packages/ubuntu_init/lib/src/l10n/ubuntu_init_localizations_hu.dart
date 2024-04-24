import 'ubuntu_init_localizations.dart';

/// The translations for Hungarian (`hu`).
class UbuntuInitLocalizationsHu extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsHu([String locale = 'hu']) : super(locale);

  @override
  String get welcomePageTitle => 'Üdvözöljük';

  @override
  String welcomePageHeader(Object distro) {
    return 'Üdvözli a(z) $distro!';
  }

  @override
  String get welcomeWhatsNew => 'ÚJDONSÁGOK';

  @override
  String get welcomeStartTitle => 'Egyszerűsített indítás';

  @override
  String get welcomeStartSubtitle => 'Tisztább beállítási élmény támogatása.';

  @override
  String get welcomeStoreTitle => 'Új megjelenésű alkalmazásbolt';

  @override
  String get welcomeStoreSubtitle => 'Soha sem volt még ilyen egyszerű megtalálni a kedvenc szoftverét.';

  @override
  String get welcomeSecurityTitle => 'Fokozott biztonság';

  @override
  String get welcomeSecuritySubtitle => 'Új lehetőségek a hardveresen támogatott vagy ZFS titkosításhoz.';

  @override
  String welcomeChangelogLabel(Object url) {
    return '<a href=\"$url\">Változásnapló megtekintése</a>';
  }

  @override
  String get telemetryPageTitle => 'Telemetria';

  @override
  String telemetryHeader(Object distro) {
    return 'Segítség a(z) $distro továbbfejlesztéséhez';
  }

  @override
  String telemetryDescription(Object distro) {
    return 'Adatok névtelen megosztása a(z) $distro disztribúcióval, hogy javíthassuk az élményét.';
  }

  @override
  String telemetryLabelOn(Object distro) {
    return 'Igen, a rendszer adatainak megosztása a(z) $distro csapatával';
  }

  @override
  String get telemetryLabelOff => 'Nem, ne ossza meg a rendszer adatait';

  @override
  String get telemetryReportLabel => 'Jelentéskészítés részletei';

  @override
  String get telemetryReportTitle => 'Jelentéskészítés részletei';

  @override
  String get telemetryLegalLabel => 'Jogi nyilatkozat';

  @override
  String get telemetryCollectError => 'Failed to collect telemetry data';

  @override
  String get privacyPageTitle => 'Helymeghatározó szolgáltatások';

  @override
  String get privacyLocationTitle => 'Engedélyezi a helymeghatározó szolgáltatásokat?';

  @override
  String get privacyLocationSubtitle => 'Tudassa az alkalmazásokkal a földrajzi helyzetét.\nEzt bármikor megváltoztathatja a rendszerbeállításokban.';

  @override
  String get privacyLocationEnable => 'Helymeghatározó szolgáltatások';

  @override
  String get privacyPolicyLink => 'Adatvédelem';

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
