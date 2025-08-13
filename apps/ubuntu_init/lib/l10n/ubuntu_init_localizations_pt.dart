// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_init_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class UbuntuInitLocalizationsPt extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get welcomePageTitle => 'Bem-vindo';

  @override
  String welcomePageHeader(String distro) {
    return 'Bem-vindo ao $distro';
  }

  @override
  String get welcomeWhatsNew => 'O QUE É NOVO?';

  @override
  String get welcomeStartTitle => 'Um início simplificado';

  @override
  String get welcomeStartSubtitle =>
      'Apoiando uma experiência de configuração mais limpa.';

  @override
  String get welcomeStoreTitle => 'Novo visual da App Store';

  @override
  String get welcomeStoreSubtitle =>
      'Nunca foi tão fácil encontrar o seu software favorito.';

  @override
  String get welcomeSecurityTitle => 'Segurança melhorada';

  @override
  String get welcomeSecuritySubtitle =>
      'Novas opções para a criptografia baseada em hardware ou ZFS.';

  @override
  String welcomeChangelogLabel(String url) {
    return '<a href=\"$url\">Visualizar registo de alteração</a>';
  }

  @override
  String get telemetryPageTitle => 'Telemetria';

  @override
  String telemetryHeader(String distro) {
    return 'Ajude a melhorar o $distro';
  }

  @override
  String telemetryDescription(String distro) {
    return 'Ajude-nos a melhorar o $distro partilhando connosco os dados do seu sistema. Isto inclui coisas como o modelo da sua máquina, o software instalado e a localização que escolheu para o seu fuso horário.';
  }

  @override
  String telemetryLabelOn(String distro) {
    return 'Sim, partilhe os dados do sistema com a equipa do $distro';
  }

  @override
  String get telemetryLabelOff => 'Não, não partilhe os dados do sistema';

  @override
  String get telemetryReportLabel => 'Mostrar o primeiro relatório';

  @override
  String get telemetryReportTitle => 'Detalhes do relatório';

  @override
  String get telemetryLegalLabel => 'Aviso legal';

  @override
  String get telemetryCollectError => 'Falha na recolha de dados de telemetria';

  @override
  String get privacyPageTitle => 'Serviço de localização';

  @override
  String get privacyLocationTitle => 'Ativar serviço de localização?';

  @override
  String get privacyLocationSubtitle =>
      'Deixe as aplicações saberem a sua localização geográfica.\nVocê pode alterar isso a qualquer momento nas configurações do sistema.';

  @override
  String get privacyLocationEnable => 'Serviço de localização';

  @override
  String get privacyPolicyLink => 'Privacidade da Informação';

  @override
  String ubuntuProMagicAttachInstructions(String url) {
    return 'Anexação mágica com este código em <a href=\"https://$url\">$url</a>';
  }

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';

  @override
  String get ubuntuProHeader => 'Anexar esta máquina';

  @override
  String get ubuntuProOrAddTokenManually => 'ou adicionar um token manualmente';

  @override
  String get ubuntuProTokenTextfieldHint => 'Token';

  @override
  String get ubuntuProSubscriptionDescription =>
      'Obtenha a subscrição mais abrangente para segurança de software de código aberto';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(String url) {
    return 'Sempre gratuito para utilização pessoal. 30 dias de teste para empresas. <a href=\"https://$url\">Saiba mais</a>';
  }

  @override
  String get ubuntuProTokenAttachButton => 'Anexar';

  @override
  String get ubuntuProTokenAttachError => 'Token inválido';

  @override
  String get ubuntuProTokenAttachSucess => 'Token válido';

  @override
  String get ubuntuProTokenAttachErrorVariant =>
      'Token inválido. Tente novamente';

  @override
  String get ubuntuProOnBoardingSkipForNow => 'Ignorar por agora';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription =>
      'Pode sempre ativar o Ubuntu Pro mais tarde através da aplicação Software e Atualizações.';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => 'Ativar o Ubuntu Pro';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription =>
      'Anexe esta máquina a uma subscrição Ubuntu Pro para obter atualizações de segurança numa gama mais vasta de pacotes, até 2032.';

  @override
  String get ubuntuProSucessAttachHeader =>
      'O Ubuntu Pro está agora ativado nesta máquina';

  @override
  String get ubuntuProSucessAttachDescription =>
      'Pode gerir os seus serviços Pro na aplicação Software e Atualizações.';

  @override
  String get successIconSemanticLabel => 'Success';

  @override
  String get closeIconSemanticLabel => 'Close';

  @override
  String get maximizeIconSemanticLabel => 'Maximize';

  @override
  String get minimizeIconSemanticLabel => 'Minimize';
}

/// The translations for Portuguese, as used in Brazil (`pt_BR`).
class UbuntuInitLocalizationsPtBr extends UbuntuInitLocalizationsPt {
  UbuntuInitLocalizationsPtBr() : super('pt_BR');

  @override
  String get welcomePageTitle => 'Bem-vindo';

  @override
  String welcomePageHeader(String distro) {
    return 'Boas-vindas ao $distro';
  }

  @override
  String get welcomeWhatsNew => 'O QUE É NOVIDADE?';

  @override
  String get welcomeStartTitle => 'Um começo simplificado';

  @override
  String get welcomeStartSubtitle =>
      'Suportando uma experiência de instalação mais limpa.';

  @override
  String get welcomeStoreTitle => 'Novo visual da Loja de Aplicativos';

  @override
  String get welcomeStoreSubtitle =>
      'Nunca foi tão fácil encontrar o seu software favorito.';

  @override
  String get welcomeSecurityTitle => 'Segurança aprimorada';

  @override
  String get welcomeSecuritySubtitle =>
      'Novas opções para criptografia ZFS ou com suporte de hardware.';

  @override
  String welcomeChangelogLabel(String url) {
    return '<a href=\"$url\">Exibir log de alterações</a>';
  }

  @override
  String get telemetryPageTitle => 'Telemetria';

  @override
  String telemetryHeader(String distro) {
    return 'Ajude a melhorar o $distro';
  }

  @override
  String telemetryDescription(String distro) {
    return 'Ajude-nos a melhorar o $distro compartilhando seus dados do sistema conosco. Isso inclui itens como o modelo da máquina, o software instalado e o local escolhido para o fuso horário.';
  }

  @override
  String telemetryLabelOn(String distro) {
    return 'Sim, compartilhe dados do sistema com a equipe do $distro';
  }

  @override
  String get telemetryLabelOff => 'Não, não compartilhe dados do sistema';

  @override
  String get telemetryReportLabel => 'Mostrar o primeiro relatório';

  @override
  String get telemetryReportTitle => 'Detalhes do relatório';

  @override
  String get telemetryLegalLabel => 'Advertência jurídica';

  @override
  String get telemetryCollectError => 'Falha ao coletar dados de telemetria';

  @override
  String get privacyPageTitle => 'Serviços de localização';

  @override
  String get privacyLocationTitle => 'Habilitar serviços de localização?';

  @override
  String get privacyLocationSubtitle =>
      'Informe aos aplicativos sua localização geográfica.\nVocê pode alterar isso a qualquer momento nas Configurações do Sistema.';

  @override
  String get privacyLocationEnable => 'Serviços de localização';

  @override
  String get privacyPolicyLink => 'Privacidade de Dados';

  @override
  String ubuntuProMagicAttachInstructions(String url) {
    return 'Use o Magic attach com este código em <a href=\"https://$url\">$url</a>';
  }

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';

  @override
  String get ubuntuProHeader => 'Anexe esta máquina';

  @override
  String get ubuntuProOrAddTokenManually => 'ou adicione um token manualmente';

  @override
  String get ubuntuProTokenTextfieldHint => 'Token';

  @override
  String get ubuntuProSubscriptionDescription =>
      'Obtenha a assinatura mais abrangente para segurança de software de código aberto';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(String url) {
    return 'Sempre gratuita para uso pessoal. 30 dias de teste para empresas. <a href=\"https://$url\">Saiba mais</a>';
  }

  @override
  String get ubuntuProTokenAttachButton => 'Anexar';

  @override
  String get ubuntuProTokenAttachError => 'Token inválido';

  @override
  String get ubuntuProTokenAttachSucess => 'Token válido';

  @override
  String get ubuntuProTokenAttachErrorVariant =>
      'Token inválido, tente novamente';

  @override
  String get ubuntuProOnBoardingSkipForNow => 'Pular por enquanto';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription =>
      'Você sempre pode ativar o Ubuntu Pro posteriormente por meio do aplicativo Software & Atualizações.';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => 'Ativar Ubuntu Pro';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription =>
      'Anexe esta máquina a uma assinatura do Ubuntu Pro para atualizações de segurança em uma ampla variedade de pacotes, até 2032.';

  @override
  String get ubuntuProSucessAttachHeader =>
      'Ubuntu Pro agora está habilitado nesta máquina';

  @override
  String get ubuntuProSucessAttachDescription =>
      'Você pode gerenciar seus serviços Pro no aplicativo Software & Atualizações.';
}
