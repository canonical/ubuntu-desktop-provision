import 'ubuntu_init_localizations.dart';

/// The translations for Hungarian (`hu`).
class UbuntuInitLocalizationsHu extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsHu([String locale = 'hu']) : super(locale);

  @override
  String loadingPageTitle(Object DISTRO) {
    return 'Welcome to $DISTRO';
  }

  @override
  String loadingHeader(Object DISTRO) {
    return 'Preparing $DISTRO…';
  }

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
  String get ubuntuProPageTitle => 'Ubuntu Pro';
}
