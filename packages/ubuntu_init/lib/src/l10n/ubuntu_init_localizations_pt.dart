import 'ubuntu_init_localizations.dart';

/// The translations for Portuguese (`pt`).
class UbuntuInitLocalizationsPt extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get welcomePageTitle => 'Bem-vindo';

  @override
  String welcomePageHeader(Object distro) {
    return 'Bem-vindo ao $distro';
  }

  @override
  String get welcomeWhatsNew => 'O QUE É NOVO?';

  @override
  String get welcomeStartTitle => 'Um início simplificado';

  @override
  String get welcomeStartSubtitle => 'Apoiando uma experiência de configuração mais limpa.';

  @override
  String get welcomeStoreTitle => 'Novo visual da App Store';

  @override
  String get welcomeStoreSubtitle => 'Nunca foi tão fácil encontrar o seu software favorito.';

  @override
  String get welcomeSecurityTitle => 'Segurança melhorada';

  @override
  String get welcomeSecuritySubtitle => 'Novas opções para a criptografia baseada em hardware ou ZFS.';

  @override
  String welcomeChangelogLabel(Object url) {
    return '<a href=\"$url\">Visualizar registo de alteração</a>';
  }

  @override
  String get telemetryPageTitle => 'Telemetria';

  @override
  String telemetryHeader(Object distro) {
    return 'Ajude a melhorar o $distro';
  }

  @override
  String telemetryDescription(Object distro) {
    return 'Partilhar os dados anonimamente com o $distro para que possamos melhorar a sua experiência.';
  }

  @override
  String telemetryLabelOn(Object distro) {
    return 'Sim, partilhe os dados do sistema com a equipa do $distro';
  }

  @override
  String get telemetryLabelOff => 'Não, não partilhe os dados do sistema';

  @override
  String get telemetryReportLabel => 'Detalhes do relatório';

  @override
  String get telemetryReportTitle => 'Detalhes do relatório';

  @override
  String get telemetryLegalLabel => 'Jurídico';

  @override
  String get privacyPageTitle => 'Serviço de localização';

  @override
  String get privacyLocationTitle => 'Ativar serviço de localização?';

  @override
  String get privacyLocationSubtitle => 'Deixe as aplicações saberem a sua localização geográfica.\nVocê pode alterar isso a qualquer momento nas configurações do sistema.';

  @override
  String get privacyLocationEnable => 'Serviço de localização';

  @override
  String get privacyPolicyLink => 'Privacidade da Informação';

  @override
  String get storeTitle => 'Ubuntu Store';

  @override
  String get storeHeader => 'Comece com mais aplicações';

  @override
  String get storeDescription => 'A App Store do Ubuntu oferece uma variedade de aplicações com os quais você pode começar desde o início.';

  @override
  String get storeOpen => 'Abrir App Store';

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';
}

/// The translations for Portuguese, as used in Brazil (`pt_BR`).
class UbuntuInitLocalizationsPtBr extends UbuntuInitLocalizationsPt {
  UbuntuInitLocalizationsPtBr(): super('pt_BR');

  @override
  String get welcomePageTitle => 'Bem-vindo';

  @override
  String welcomePageHeader(Object distro) {
    return 'Boas-vindas ao $distro';
  }

  @override
  String get welcomeWhatsNew => 'O QUE É NOVIDADE?';

  @override
  String get welcomeStartTitle => 'Um começo simplificado';

  @override
  String get welcomeStartSubtitle => 'Suportando uma experiência de instalação mais limpa.';

  @override
  String get welcomeStoreTitle => 'Novo visual da Loja de Aplicativos';

  @override
  String get welcomeStoreSubtitle => 'Nunca foi tão fácil encontrar o seu software favorito.';

  @override
  String get welcomeSecurityTitle => 'Segurança aprimorada';

  @override
  String get welcomeSecuritySubtitle => 'Novas opções para criptografia ZFS ou com suporte de hardware.';

  @override
  String welcomeChangelogLabel(Object url) {
    return '<a href=\"$url\">Exibir log de alterações</a>';
  }

  @override
  String get telemetryPageTitle => 'Telemetria';

  @override
  String telemetryHeader(Object distro) {
    return 'Ajude a melhorar o $distro';
  }

  @override
  String telemetryDescription(Object distro) {
    return 'Compartilhe dados anonimamente com o $distro para que possamos melhorar sua experiência.';
  }

  @override
  String telemetryLabelOn(Object distro) {
    return 'Sim, compartilhe dados do sistema com a equipe do $distro';
  }

  @override
  String get telemetryLabelOff => 'Não, não compartilhe dados do sistema';

  @override
  String get telemetryReportLabel => 'Detalhes do relatório';

  @override
  String get telemetryReportTitle => 'Detalhes do relatório';

  @override
  String get telemetryLegalLabel => 'Legal';

  @override
  String get privacyPageTitle => 'Serviços de localização';

  @override
  String get privacyLocationTitle => 'Habilitar serviços de localização?';

  @override
  String get privacyLocationSubtitle => 'Informe aos aplicativos sua localização geográfica.\nVocê pode alterar isso a qualquer momento nas Configurações do Sistema.';

  @override
  String get privacyLocationEnable => 'Serviços de localização';

  @override
  String get privacyPolicyLink => 'Privacidade de Dados';

  @override
  String get storeTitle => 'Ubuntu Store';

  @override
  String get storeHeader => 'Comece com mais aplicativos';

  @override
  String get storeDescription => 'A App Store do Ubuntu oferece uma variedade de aplicativos com os quais você pode começar desde o início.';

  @override
  String get storeOpen => 'Abrir App Store';
}
