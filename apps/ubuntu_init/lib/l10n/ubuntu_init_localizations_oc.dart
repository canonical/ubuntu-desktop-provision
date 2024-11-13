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
    return 'Ajudatz-nos a melhorar $distro en partejant amb nosautres las donadas de vòstre sistèma. Aquò inclutz causas coma lo modèl de vòstra maqina, los logicials installats e l’emplaçament que causiguèretz per la zòna orària.';
  }

  @override
  String telemetryLabelOn(Object distro) {
    return 'Òc, partejar las donadas sistèma amb la còla de $distro';
  }

  @override
  String get telemetryLabelOff => 'Non, partejar pas cap de donadas sistèma';

  @override
  String get telemetryReportLabel => 'Veire lo primièr rapòrt';

  @override
  String get telemetryReportTitle => 'Detalhs del rapòrt';

  @override
  String get telemetryLegalLabel => 'Informacions legalas';

  @override
  String get telemetryCollectError => 'Fracàs de la collècta de donadas de telemetria';

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
    return 'Ligason magica amb aqueste còdi sus <a href=\"https://$url\">$url</a>';
  }

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';

  @override
  String get ubuntuProHeader => 'Ligar aquesta maquina';

  @override
  String get ubuntuProOrAddTokenManually => 'o apondre un geton manualament';

  @override
  String get ubuntuProTokenTextfieldHint => 'Geton';

  @override
  String get ubuntuProSubscriptionDescription => 'Soscrivètz a l’abonament amb la melhora seguretat dels logicials liures';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(Object url) {
    return 'Totjorn gratuit per un usatge personal. 30 jorns d’ensag per las entrepresas. <a href=\"https://$url\">Ne saber mai</a>';
  }

  @override
  String get ubuntuProTokenAttachButton => 'Ligar';

  @override
  String get ubuntuProTokenAttachError => 'Get on invalid';

  @override
  String get ubuntuProTokenAttachSucess => 'Get on valid';

  @override
  String get ubuntuProTokenAttachErrorVariant => 'Get on invalid, tornatz ensajar';

  @override
  String get ubuntuProOnBoardingSkipForNow => 'Passar pel moment';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription => 'Podètz totjorn activar Ubuntu Pro mai tard dins l’aplicacion Logicials e mesas a jorn.';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => 'Activar Ubuntu Pro';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription => 'Ligatz aquesta maquina a un abonament Ubuntu Pro per de mesas a jorn de seguretat sus un grand nombre de paquets, fins a 2032.';

  @override
  String get ubuntuProSucessAttachHeader => 'Ubuntu Pro es ara activat sus aquesta maquina';

  @override
  String get ubuntuProSucessAttachDescription => 'Podètz gerir los servicis Pro dins l\'aplicacion Logicial e mesas a jorn.';
}
