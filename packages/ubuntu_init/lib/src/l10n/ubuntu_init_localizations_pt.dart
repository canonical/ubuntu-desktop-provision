import 'ubuntu_init_localizations.dart';

/// The translations for Portuguese (`pt`).
class UbuntuInitLocalizationsPt extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get welcomePageTitle => 'Welcome';

  @override
  String welcomePageHeader(Object distro) {
    return 'Welcome to $distro';
  }

  @override
  String get welcomeWhatsNew => 'WHAT\'S NEW?';

  @override
  String get welcomeStartTitle => 'A streamlined start';

  @override
  String get welcomeStartSubtitle => 'Supporting a cleaner setup experience.';

  @override
  String get welcomeStoreTitle => 'New look App Store';

  @override
  String get welcomeStoreSubtitle => 'It\'s never been easier to find your favourite software.';

  @override
  String get welcomeSecurityTitle => 'Enhanced security';

  @override
  String get welcomeSecuritySubtitle => 'New options for hardware-backed or ZFS encryption.';

  @override
  String welcomeChangelogLabel(Object url) {
    return '<a href=\"$url\">View changelog</a>';
  }

  @override
  String get telemetryPageTitle => 'Telemetry';

  @override
  String telemetryHeader(Object distro) {
    return 'Help improve $distro';
  }

  @override
  String telemetryDescription(Object distro) {
    return 'Share data anonymously with $distro so we can improve your experience.';
  }

  @override
  String telemetryLabelOn(Object distro) {
    return 'Yes, share system data with the $distro team';
  }

  @override
  String get telemetryLabelOff => 'No, don\'t share system data';

  @override
  String get telemetryReportLabel => 'Reporting details';

  @override
  String get telemetryReportTitle => 'Reporting details';

  @override
  String get telemetryLegalLabel => 'Legal';

  @override
  String get privacyPageTitle => 'Location services';

  @override
  String get privacyLocationTitle => 'Enable location services?';

  @override
  String get privacyLocationSubtitle => 'Let applications know your geographical location.\nYou can change this anytime in System Settings.';

  @override
  String get privacyLocationEnable => 'Location services';

  @override
  String get privacyPolicyLink => 'Data Privacy';

  @override
  String get storeTitle => 'Ubuntu Store';

  @override
  String get storeHeader => 'Get started with more applications';

  @override
  String get storeDescription => 'Ubuntu\'s App Store offers a range of apps you can get started with from the get-go.';

  @override
  String get storeOpen => 'Open App Store';
}

/// The translations for Portuguese, as used in Brazil (`pt_BR`).
class UbuntuInitLocalizationsPtBr extends UbuntuInitLocalizationsPt {
  UbuntuInitLocalizationsPtBr(): super('pt_BR');

  @override
  String get welcomePageTitle => 'Boas-vindas';

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
