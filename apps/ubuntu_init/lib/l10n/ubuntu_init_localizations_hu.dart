// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_init_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hungarian (`hu`).
class UbuntuInitLocalizationsHu extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsHu([String locale = 'hu']) : super(locale);

  @override
  String get welcomePageTitle => 'Üdvözöljük';

  @override
  String welcomePageHeader(String distro) {
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
  String get welcomeStoreSubtitle =>
      'Soha sem volt még ilyen egyszerű megtalálni a kedvenc szoftverét.';

  @override
  String get welcomeSecurityTitle => 'Fokozott biztonság';

  @override
  String get welcomeSecuritySubtitle =>
      'Új lehetőségek a hardveresen támogatott vagy ZFS titkosításhoz.';

  @override
  String welcomeChangelogLabel(String url) {
    return '<a href=\"$url\">Változásnapló megtekintése</a>';
  }

  @override
  String get telemetryPageTitle => 'Telemetria';

  @override
  String telemetryHeader(String distro) {
    return 'Segítség a(z) $distro továbbfejlesztéséhez';
  }

  @override
  String telemetryDescription(String distro) {
    return 'Segítsen nekünk a(z) $distro továbbfejlesztésében azzal, hogy megosztja velünk a rendszere adatait. Ez olyan dolgokat tartalmaz, mint a gép modellje, a telepített szoftverek és az időzónához választott hely.';
  }

  @override
  String telemetryLabelOn(String distro) {
    return 'Igen, a rendszer adatainak megosztása a(z) $distro csapatával';
  }

  @override
  String get telemetryLabelOff => 'Nem, ne ossza meg a rendszer adatait';

  @override
  String get telemetryReportLabel => 'Az első jelentés megjelenítése';

  @override
  String get telemetryReportTitle => 'Jelentéskészítés részletei';

  @override
  String get telemetryLegalLabel => 'Jogi nyilatkozat';

  @override
  String get telemetryCollectError =>
      'Nem sikerült összegyűjteni a telemetria adatait';

  @override
  String get privacyPageTitle => 'Helymeghatározó szolgáltatások';

  @override
  String get privacyLocationTitle =>
      'Engedélyezi a helymeghatározó szolgáltatásokat?';

  @override
  String get privacyLocationSubtitle =>
      'Tudassa az alkalmazásokkal a földrajzi helyzetét.\nEzt bármikor megváltoztathatja a rendszerbeállításokban.';

  @override
  String get privacyLocationEnable => 'Helymeghatározó szolgáltatások';

  @override
  String get privacyPolicyLink => 'Adatvédelem';

  @override
  String ubuntuProMagicAttachInstructions(String url) {
    return 'Varázslatos csatolás ezzel a kóddal az <a href=\"https://$url\">$url</a> oldalon';
  }

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';

  @override
  String get ubuntuProHeader => 'A gép csatolása';

  @override
  String get ubuntuProOrAddTokenManually => 'vagy token hozzáadása kézzel';

  @override
  String get ubuntuProTokenTextfieldHint => 'Token';

  @override
  String get ubuntuProSubscriptionDescription =>
      'A legátfogóbb előfizetés beszerzése a nyílt forráskódú szoftverek biztonságához';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(String url) {
    return 'Mindig ingyenes személyes használatra. 30 napos próbaidőszak a vállalkozásoknak. <a href=\"https://$url\">Tudjon meg többet</a>';
  }

  @override
  String get ubuntuProTokenAttachButton => 'Csatolás';

  @override
  String get ubuntuProTokenAttachError => 'Érvénytelen token';

  @override
  String get ubuntuProTokenAttachSucess => 'Érvényes token';

  @override
  String get ubuntuProTokenAttachErrorVariant =>
      'Érvénytelen token, újrapróbálkozás';

  @override
  String get ubuntuProOnBoardingSkipForNow => 'Kihagyás most';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription =>
      'Később bármikor engedélyezheti az Ubuntu Pro használatát a Szoftverek és frissítések alkalmazáson keresztül.';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro =>
      'Az Ubuntu Pro engedélyezése';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription =>
      'Csatolja ezt a gépet egy Ubuntu Pro előfizetéshez, hogy a csomagok szélesebb körére kapjon biztonsági frissítéseket 2032-ig.';

  @override
  String get ubuntuProSucessAttachHeader =>
      'Az Ubuntu Pro most már engedélyezve van ezen a gépen';

  @override
  String get ubuntuProSucessAttachDescription =>
      'A Pro szolgáltatásokat a Szoftverek és frissítések alkalmazásban kezelheti.';

  @override
  String get successIconSemanticLabel => 'Sikeres';

  @override
  String get closeIconSemanticLabel => 'Bezárás';

  @override
  String get maximizeIconSemanticLabel => 'Maximalizálás';

  @override
  String get minimizeIconSemanticLabel => 'Minimalizálás';
}
