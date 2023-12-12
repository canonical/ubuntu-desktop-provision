import 'ubuntu_init_localizations.dart';

/// The translations for Occitan (`oc`).
class UbuntuInitLocalizationsOc extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsOc([String locale = 'oc']) : super(locale);

  @override
  String get welcomePageTitle => 'Benvengut';

  @override
  String welcomePageHeader(Object distro) {
    return 'La benvenguda dins $distro';
  }

  @override
  String get welcomeWhatsNew => 'QUÉ DE NÒU ?';

  @override
  String get welcomeStartTitle => 'Un començament simplificat';

  @override
  String get welcomeStartSubtitle => 'Encoratja a una experiéncia de configuracion mai neta.';

  @override
  String get welcomeStoreTitle => 'Un estil novèl per la logitèca';

  @override
  String get welcomeStoreSubtitle => 'Jamai es pas estat tan simple de trobar vòstre logicial preferit.';

  @override
  String get welcomeSecurityTitle => 'Seguretat renfortida';

  @override
  String get welcomeSecuritySubtitle => 'Opcions novèlas de chiframent material o ZFS.';

  @override
  String welcomeChangelogLabel(Object url) {
    return '<a href=\"$url\">Veire lo jornal de modificacions</a>';
  }

  @override
  String get telemetryPageTitle => 'Telemetria';

  @override
  String telemetryHeader(Object distro) {
    return 'Ajudar a melhorar $distro';
  }

  @override
  String telemetryDescription(Object distro) {
    return 'Partejatz de donadas anonimas amb $distro perque poscam melhorar vòstra experiéncia.';
  }

  @override
  String telemetryLabelOn(Object distro) {
    return 'Òc, partejar las donadas sistèma amb la còla de $distro';
  }

  @override
  String get telemetryLabelOff => 'Non, partejar pas cap de donadas sistèma';

  @override
  String get telemetryReportLabel => 'Detalhs del rapòrt';

  @override
  String get telemetryReportTitle => 'Detalhs del rapòrt';

  @override
  String get telemetryLegalLabel => 'Informacions legalas';

  @override
  String get privacyPageTitle => 'Servicis de localizacion';

  @override
  String get privacyLocationTitle => 'Activar los servicis de localizacion ?';

  @override
  String get privacyLocationSubtitle => 'Permet que las aplicacions ajan accès a vòstre posicion geografica.\nO podètz cambiar quand volètz als Paramètres del sistèma.';

  @override
  String get privacyLocationEnable => 'Servicis de localizacion';

  @override
  String get privacyPolicyLink => 'Proteccion de las donadas';

  @override
  String get storeTitle => 'Botiga Ubuntu';

  @override
  String get storeHeader => 'Començatz amb mai d’aplicacions';

  @override
  String get storeDescription => 'La botiga d’aplicacions d’Ubuntu ofrís una seria d’aplicacions que podètz utilizar tre la debuta.';

  @override
  String get storeOpen => 'Dobrir la botiga d’aplicacions';

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';
}
