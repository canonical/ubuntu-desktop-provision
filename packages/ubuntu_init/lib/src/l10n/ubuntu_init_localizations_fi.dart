import 'ubuntu_init_localizations.dart';

/// The translations for Finnish (`fi`).
class UbuntuInitLocalizationsFi extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsFi([String locale = 'fi']) : super(locale);

  @override
  String get welcomePageTitle => 'Tervetuloa';

  @override
  String welcomePageHeader(Object distro) {
    return 'Tervetuloa, tämä on $distro';
  }

  @override
  String get welcomeWhatsNew => 'MITÄ UUTTA?';

  @override
  String get welcomeStartTitle => 'Suoraviivaistettu aloitus';

  @override
  String get welcomeStartSubtitle => 'Aiempaa siistimpi asennuskokemus.';

  @override
  String get welcomeStoreTitle => 'Sovelluskeskuksen uusi ulkoasu';

  @override
  String get welcomeStoreSubtitle => 'Suosikkisovellusten löytäminen ei ole koskaan ollut yhtä helppoa.';

  @override
  String get welcomeSecurityTitle => 'Kohennettu tietoturva';

  @override
  String get welcomeSecuritySubtitle => 'Uusia asetuksia laitteistopohjaiselle salaukselle ja ZFS-salaukselle.';

  @override
  String welcomeChangelogLabel(Object url) {
    return '<a href=\"$url\">Näytä muutosloki</a>';
  }

  @override
  String get telemetryPageTitle => 'Telemetria';

  @override
  String telemetryHeader(Object distro) {
    return 'Auta parantamaan ${distro}a';
  }

  @override
  String telemetryDescription(Object distro) {
    return 'Jaa tietoja anonyymisti ${distro}n kanssa, jotta voimme parantaa kokemustasi.';
  }

  @override
  String telemetryLabelOn(Object distro) {
    return 'Kyllä, jaa järjestelmän tietoja $distro-tiimille';
  }

  @override
  String get telemetryLabelOff => 'Ei, älä jaa järjestelmän tietoja';

  @override
  String get telemetryReportLabel => 'Ilmoitettavat tiedot';

  @override
  String get telemetryReportTitle => 'Ilmoitettavat tiedot';

  @override
  String get telemetryLegalLabel => 'Lainopillinen';

  @override
  String get privacyPageTitle => 'Sijaintipalvelut';

  @override
  String get privacyLocationTitle => 'Otetaanko sijaintipalvelut käyttöön?';

  @override
  String get privacyLocationSubtitle => 'Salli sovellusten paikantaa sijaintisi.\nVoit muuttaa asetusta koska tahansa järjestelmän asetuksista.';

  @override
  String get privacyLocationEnable => 'Sijaintipalvelut';

  @override
  String get privacyPolicyLink => 'Tietosuoja';

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';
}
