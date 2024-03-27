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
