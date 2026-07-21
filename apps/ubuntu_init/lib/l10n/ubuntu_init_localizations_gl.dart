// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_init_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Galician (`gl`).
class UbuntuInitLocalizationsGl extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsGl([String locale = 'gl']) : super(locale);

  @override
  String get welcomePageTitle => 'Benvido';

  @override
  String welcomePageHeader(String distro) {
    return 'Benvido a $distro';
  }

  @override
  String get welcomeWhatsNew => 'QUE HAI DE NOVO?';

  @override
  String get welcomeStartTitle => 'Un comezo simplificado';

  @override
  String get welcomeStartSubtitle =>
      'Apoiando unha experiencia de configuración máis limpa.';

  @override
  String get welcomeStoreTitle => 'Ollada á nova App Store';

  @override
  String get welcomeStoreSubtitle =>
      'Nunca foi tan doado atopar o teu programa favorito.';

  @override
  String get welcomeSecurityTitle => 'Seguranza mellorada';

  @override
  String get welcomeSecuritySubtitle =>
      'Novas opcións para o cifrado con respaldo de hardware ou ZFS.';

  @override
  String welcomeChangelogLabel(String url) {
    return '<a href=\"$url\">Ver rexistro de cambios</a>';
  }

  @override
  String get telemetryPageTitle => 'Telemetría';

  @override
  String telemetryHeader(String distro) {
    return 'Axuda a mellorar $distro';
  }

  @override
  String telemetryDescription(String distro) {
    return 'Axúdanos a mellorar $distro compartindo os datos do teu sistema connosco. Isto inclúe cousas como o modelo da túa máquina, o software instalado e a localización que escolliches para o teu fuso horario.';
  }

  @override
  String telemetryLabelOn(String distro) {
    return 'Si, compartir os datos do sistema co equipo de $distro';
  }

  @override
  String get telemetryLabelOff => 'Non, non compartir datos do sistema';

  @override
  String get telemetryReportLabel => 'Amosar o primeiro informe';

  @override
  String get telemetryReportTitle => 'Detalles do informe';

  @override
  String get telemetryLegalLabel => 'Aviso legal';

  @override
  String get telemetryCollectError =>
      'Non se puideron recoller datos de telemetría';

  @override
  String get privacyPageTitle => 'Servizo de localización';

  @override
  String get privacyLocationTitle => 'Activar servizos de localización?';

  @override
  String get privacyLocationSubtitle =>
      'Permite as aplicacións coñecer a túa localización xeográfica.\nPodes cambiar isto en calquera momento nas Preferencias do Sistema.';

  @override
  String get privacyLocationEnable => 'Servizo de localización';

  @override
  String get privacyPolicyLink => 'Privacidade dos datos';

  @override
  String ubuntuProMagicAttachInstructions(String url) {
    return 'Ligazón automática co código neste enderezo <a href=\"https://$url\">$url</a>';
  }

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';

  @override
  String get ubuntuProHeader => 'Conectar esta máquina';

  @override
  String get ubuntuProOrAddTokenManually => 'ou engadir un token manualmente';

  @override
  String get ubuntuProTokenTextfieldHint => 'Token';

  @override
  String get ubuntuProSubscriptionDescription =>
      'Obtén a subscrición máis completa para a seguridade do software de código aberto';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(String url) {
    return 'Sempre gratuito para uso persoal. Proba de 30 días para empresas <a href=\"https://$url\">Saber máis</a>';
  }

  @override
  String get ubuntuProTokenAttachButton => 'Anexar';

  @override
  String get ubuntuProTokenAttachError => 'Token non válido';

  @override
  String get ubuntuProTokenAttachSucess => 'Token válido';

  @override
  String get ubuntuProTokenAttachErrorVariant =>
      'Token non válido, ténteo de novo';

  @override
  String get ubuntuProOnBoardingSkipForNow => 'Omitir por agora';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription =>
      'Sempre podes activar Ubuntu Pro máis tarde a través da aplicación Software e actualizacións.';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => 'Activar Ubuntu Pro';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription =>
      'Conecta esta máquina a unha subscrición de Ubuntu Pro para obter actualizacións de seguranza nunha gama máis ampla de paquetes ata 2032.';

  @override
  String get ubuntuProSucessAttachHeader =>
      'Ubuntu Pro xa está activado nesta máquina';

  @override
  String get ubuntuProSucessAttachDescription =>
      'Podes xestionar os teus servizos Pro na aplicación Software e actualizacións.';

  @override
  String get successIconSemanticLabel => 'Éxito';

  @override
  String get closeIconSemanticLabel => 'Pechar';

  @override
  String get maximizeIconSemanticLabel => 'Maximizar';

  @override
  String get minimizeIconSemanticLabel => 'Minimizar';
}
