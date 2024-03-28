import 'ubuntu_init_localizations.dart';

/// The translations for Catalan Valencian (`ca`).
class UbuntuInitLocalizationsCa extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsCa([String locale = 'ca']) : super(locale);

  @override
  String get welcomePageTitle => 'Us donem la benvinguda';

  @override
  String welcomePageHeader(Object distro) {
    return 'Us donem la benvinguda a $distro';
  }

  @override
  String get welcomeWhatsNew => 'NOVETATS';

  @override
  String get welcomeStartTitle => 'Un inici àgil';

  @override
  String get welcomeStartSubtitle => 'Afavoreix una experiència d’instal·lació més senzilla.';

  @override
  String get welcomeStoreTitle => 'Botiga d’aplicacions amb un aspecte nou';

  @override
  String get welcomeStoreSubtitle => 'Mai no ha estat més fàcil trobar el vostre programari preferit.';

  @override
  String get welcomeSecurityTitle => 'Seguretat millorada';

  @override
  String get welcomeSecuritySubtitle => 'Opcions noves per al xifrat per maquinari o mitjançant el ZFS.';

  @override
  String welcomeChangelogLabel(Object url) {
    return '<a href=\"$url\">Vegeu el registre de canvis</a>';
  }

  @override
  String get telemetryPageTitle => 'Telemetria';

  @override
  String telemetryHeader(Object distro) {
    return 'Ajudeu perquè l’$distro sigui millor';
  }

  @override
  String telemetryDescription(Object distro) {
    return 'Compartiu dades anònimament amb l’$distro perquè puguem millorar la vostra experiència.';
  }

  @override
  String telemetryLabelOn(Object distro) {
    return 'Sí, vull compartir dades del sistema amb l’equip de l’$distro';
  }

  @override
  String get telemetryLabelOff => 'No, no comparteixis dades del sistema';

  @override
  String get telemetryReportLabel => 'Detalls de l’informe';

  @override
  String get telemetryReportTitle => 'Detalls de l’informe';

  @override
  String get telemetryLegalLabel => 'Informació legal';

  @override
  String get privacyPageTitle => 'Serveis d’ubicació';

  @override
  String get privacyLocationTitle => 'Voleu activar els serveis d’ubicació?';

  @override
  String get privacyLocationSubtitle => 'Permeteu que les aplicacions coneguin la vostra ubicació geogràfica.\nPodeu canviar-ho en qualsevol moment als Paràmetres del sistema.';

  @override
  String get privacyLocationEnable => 'Serveis d’ubicació';

  @override
  String get privacyPolicyLink => 'Privadesa de les dades';

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';
}
