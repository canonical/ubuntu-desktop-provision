// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_provision_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hungarian (`hu`).
class UbuntuProvisionLocalizationsHu extends UbuntuProvisionLocalizations {
  UbuntuProvisionLocalizationsHu([String locale = 'hu']) : super(locale);

  @override
  String get accessibilityPageTitle => 'Akadálymentesítés';

  @override
  String accessibilityPageHeader(String DISTRO) {
    return 'Akadálymentesítés a(z) $DISTRO disztribúcióban';
  }

  @override
  String accessibilityPageBody(String DISTRO) {
    return 'Szabja személyre a(z) $DISTRO disztribúciót az igényei szerint, mielőtt beállítja. Ezeket később megváltoztathatja a rendszerbeállításokban.';
  }

  @override
  String get accessibilitySeeingLabel => 'Látás';

  @override
  String get accessibilityHearingLabel => 'Hallás';

  @override
  String get accessibilityTypingLabel => 'Gépelés';

  @override
  String get accessibilityPointingLabel => 'Mutatás és kattintás';

  @override
  String get accessibilityZoomLabel => 'Nagyítás';

  @override
  String get accessibilityHighContrastLabel => 'Nagy kontraszt';

  @override
  String get accessibilityLargeTextLabel => 'Nagy szöveg';

  @override
  String get accessibilityReduceAnimationLabel => 'Animáció csökkentése';

  @override
  String get accessibilityScreenReaderLabel => 'Képernyőolvasó';

  @override
  String get accessibilityVisualAlertsLabel => 'Vizuális figyelmeztetések';

  @override
  String get accessibilityStickKeysLabel => 'Ragadós billentyűk';

  @override
  String get accessibilitySlowKeysLabel => 'Lassú billentyűk';

  @override
  String get accessibilityMouseKeysLabel => 'Egérbillentyűk';

  @override
  String get accessibilityDesktopZoomLabel => 'Asztal nagyítása';

  @override
  String get errorPageTitle => 'Valami elromlott';

  @override
  String get errorPageUnexpected =>
      'Elnézést, de nem lehet tudni biztosan, hogy mi a hiba. Megpróbálhatja újraindítani a számítógépet, és újra elindítani a telepítési folyamatot. <a>Jelentheti a problémát is</a>.';

  @override
  String errorPageUbuntuBug(String SNAP) {
    return 'A vonatkozó hibakeresési információkat tartalmazó automatikus hibajelentés elküldéséhez futtassa a <pre>sudo ubuntu-bug $SNAP</pre> parancsot a terminálban vagy a parancskonzolról (Alt+F2).';
  }

  @override
  String get errorPageShowLog => 'Napló megjelenítése';

  @override
  String get errorPageHideLog => 'Napló elrejtése';

  @override
  String get restart => 'Újraindítás';

  @override
  String get close => 'Bezárás';

  @override
  String get timezonePageTitle => 'Időzóna kiválasztása';

  @override
  String get timezoneLocationLabel => 'Hely';

  @override
  String get timezoneTimezoneLabel => 'Időzóna';

  @override
  String get keyboardTitle => 'Billentyűzetkiosztás';

  @override
  String get keyboardHeader => 'Billentyűzetkiosztás kiválasztása';

  @override
  String get keyboardTestHint => 'Gépeljen itt a billentyűzet kipróbálásához';

  @override
  String get keyboardDetectTitle => 'Billentyűzetkiosztás felismerése';

  @override
  String get keyboardDetectButton => 'Felismerés';

  @override
  String get keyboardVariantLabel => 'Billentyűzetváltozat kiválasztása:';

  @override
  String get keyboardPressKeyLabel =>
      'Nyomja meg a következő billentyűk egyikét:';

  @override
  String get keyboardKeyPresentLabel =>
      'A következő billentyű rajta van a billentyűzetén?';

  @override
  String get themePageTitle => 'Téma kiválasztása';

  @override
  String get themePageHeader =>
      'Ezt később bármikor megváltoztathatja a megjelenési beállításokban.';

  @override
  String get themeDark => 'Sötét';

  @override
  String get themeLight => 'Világos';

  @override
  String localePageTitle(String DISTRO) {
    return 'Üdvözli a(z) $DISTRO!';
  }

  @override
  String get localeHeader => 'Nyelv kiválasztása:';

  @override
  String get identityPageTitle => 'Fiók létrehozása';

  @override
  String get identityAutoLogin => 'Automatikus bejelentkezés';

  @override
  String get identityRequirePassword => 'Jelszavam kérése a bejelentkezéshez';

  @override
  String get identityRealNameLabel => 'Az Ön neve';

  @override
  String get identityRealNameRequired => 'A név megadása kötelező';

  @override
  String get identityRealNameTooLong => 'Ez a név túl hosszú.';

  @override
  String get identityHostnameLabel => 'A számítógépének neve';

  @override
  String get identityHostnameInfo =>
      'A más számítógépekkel való kommunikáció során használt név.';

  @override
  String get identityHostnameRequired =>
      'A számítógép nevének megadása kötelező';

  @override
  String get identityHostnameTooLong => 'Ez a számítógépnév túl hosszú.';

  @override
  String get identityInvalidHostname => 'A számítógép neve érvénytelen';

  @override
  String get identityUsernameLabel => 'Az Ön felhasználóneve';

  @override
  String get identityUsernameRequired => 'A felhasználónév megadása kötelező';

  @override
  String get identityInvalidUsername => 'A felhasználónév érvénytelen';

  @override
  String get identityUsernameInUse => 'Ez a felhasználónév már létezik.';

  @override
  String get identityUsernameSystemReserved =>
      'Ez a név a rendszer számára van fenntartva.';

  @override
  String get identityUsernameTooLong => 'Ez a név túl hosszú.';

  @override
  String get identityUsernameInvalidChars =>
      'Ez a név érvénytelen karaktereket tartalmaz.';

  @override
  String get identityPasswordLabel => 'Jelszó';

  @override
  String get identityPasswordRequired => 'A jelszó megadása kötelező';

  @override
  String get identityConfirmPasswordLabel => 'Jelszó megerősítése';

  @override
  String get identityPasswordMismatch => 'A jelszavak nem egyeznek';

  @override
  String get identityPasswordShow => 'Megjelenítés';

  @override
  String get identityPasswordHide => 'Elrejtés';

  @override
  String get identityActiveDirectoryOption => 'Active Directory használata';

  @override
  String get identityActiveDirectoryInfo =>
      'A tartományt és egyéb részleteket a következő lépésben fogja megadni.';

  @override
  String get activeDirectoryTitle => 'Bejelentkezés az Active Directory-ba';

  @override
  String get activeDirectoryHeader => 'Bejelentkezik az Active Directory-ba?';

  @override
  String activeDirectoryInfo(String DISTRO) {
    return 'A(z) $DISTRO arra lett tervezve, hogy tökéletesen integrálódjon az Active Directory-val az egyszerűbb adminisztráció érdekében.';
  }

  @override
  String get activeDirectoryTestConnection =>
      'Tartomány összekapcsolhatóságának kipróbálása';

  @override
  String get activeDirectoryDomainLabel => 'Tartomány';

  @override
  String get activeDirectoryDomainEmpty => 'Kötelező';

  @override
  String get activeDirectoryDomainTooLong => 'Túl hosszú';

  @override
  String get activeDirectoryDomainInvalidChars => 'Érvénytelen karakterek';

  @override
  String get activeDirectoryDomainStartDot => 'Ponttal (.) kezdődik';

  @override
  String get activeDirectoryDomainEndDot => 'Ponttal (.) végződik';

  @override
  String get activeDirectoryDomainStartHyphen => 'Kötőjellel (-) kezdődik';

  @override
  String get activeDirectoryDomainEndHyphen => 'Kötőjellel (-) végződik';

  @override
  String get activeDirectoryDomainMultipleDots =>
      'Több egymás utáni pontot (..) tartalmaz';

  @override
  String get activeDirectoryDomainNotFound => 'A tartomány nem található';

  @override
  String get activeDirectoryAdminLabel =>
      'A tartomány csatlakozási felhasználója';

  @override
  String get activeDirectoryAdminEmpty => 'Kötelező';

  @override
  String get activeDirectoryAdminInvalidChars => 'Érvénytelen karakterek';

  @override
  String get activeDirectoryPasswordLabel => 'Jelszó';

  @override
  String get activeDirectoryPasswordEmpty => 'Kötelező';

  @override
  String get activeDirectoryErrorTitle =>
      'Hiba az Active Directory kapcsolatának beállításakor';

  @override
  String get activeDirectoryErrorMessage =>
      'Elnézést, az Active Directory jelenleg nem állítható be. Amint a rendszere elkészült és működik, látogasson el a <a href=\"https://help.ubuntu.com/activedirectory\">help.ubuntu.com/activedirectory</a> oldalra a segítségért.';

  @override
  String get networkPageTitle => 'Internetkapcsolat';

  @override
  String get networkPageHeader => 'Kapcsolódás az internethez';

  @override
  String get networkPageBody =>
      'Az internetkapcsolat javítja a telepítést a kompatibilitás-ellenőrzéssel és további szoftvercsomagokkal.';

  @override
  String get networkWiredOption => 'Vezetékes kapcsolat használata';

  @override
  String get networkWiredNone => 'Nincs vezetékes kapcsolat felismerve';

  @override
  String get networkWiredOff => 'A vezetékes kapcsolat ki van kapcsolva';

  @override
  String get networkWiredDisabled =>
      'Az ezen a számítógépen történő Ethernet használatához egy vezetékes kapcsolatnak engedélyezve kell lennie';

  @override
  String get networkWiredEnable => 'Vezetékes engedélyezése';

  @override
  String get networkWifiOption => 'Kapcsolódás Wi-Fi-hálózathoz';

  @override
  String get networkWifiOff => 'A vezeték nélküli hálózatkezelés letiltva';

  @override
  String get networkWifiNone => 'Nincsenek felismert Wi-Fi-eszközök';

  @override
  String get networkWifiDisabled =>
      'Az ezen a számítógépen történő Wi-Fi használatához a vezeték nélküli hálózatkezelésnek engedélyezve kell lennie';

  @override
  String get networkWifiEnable => 'Wi-Fi engedélyezése';

  @override
  String get networkHiddenWifiOption => 'Kapcsolódás rejtett Wi-Fi-hálózathoz';

  @override
  String get networkHiddenWifiNameLabel => 'Hálózat neve';

  @override
  String get networkHiddenWifiNameRequired => 'A hálózatnév megadása kötelező';

  @override
  String get networkNoneOption => 'Ne kapcsolódjon az internethez';

  @override
  String get eulaPageTitle => 'Licencmegállapodás';

  @override
  String get eulaReviewTerms => 'A licencfeltételek áttekintése';

  @override
  String get eulaReadAndAcceptTerms =>
      'A gép beállításának folytatásához el kell olvasnia és el kell fogadnia a licencmegállapodás feltételeit.';

  @override
  String get eulaAcceptTerms => 'Elolvastam és elfogadom ezeket a feltételeket';

  @override
  String get successIconSemanticLabel => 'Success';
}
