// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_provision_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class UbuntuProvisionLocalizationsPt extends UbuntuProvisionLocalizations {
  UbuntuProvisionLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get accessibilityPageTitle => 'Acessibilidade';

  @override
  String accessibilityPageHeader(String DISTRO) {
    return 'Acessibilidade em$DISTRO';
  }

  @override
  String accessibilityPageBody(String DISTRO) {
    return 'Personalize $DISTRO de acordo com suas necessidades antes da configuração. Você pode alterá-lo posteriormente nas Configurações do Sistema.';
  }

  @override
  String get accessibilitySeeingLabel => 'Vendo';

  @override
  String get accessibilityHearingLabel => 'Audição';

  @override
  String get accessibilityTypingLabel => 'Digitando';

  @override
  String get accessibilityPointingLabel => 'Apontando e clicando';

  @override
  String get accessibilityZoomLabel => 'Zoom';

  @override
  String get accessibilityHighContrastLabel => 'Alto contraste';

  @override
  String get accessibilityLargeTextLabel => 'Texto caixa alta';

  @override
  String get accessibilityReduceAnimationLabel => 'Reduzir animação';

  @override
  String get accessibilityScreenReaderLabel => 'Leitor de tela';

  @override
  String get accessibilityVisualAlertsLabel => 'Alertas visuais';

  @override
  String get accessibilityStickKeysLabel => 'Teclas de aderência';

  @override
  String get accessibilitySlowKeysLabel => 'Teclas lentas';

  @override
  String get accessibilityMouseKeysLabel => 'Teclas do mouse';

  @override
  String get accessibilityDesktopZoomLabel => 'Zoom na área de trabalho';

  @override
  String get errorPageTitle => 'Algo deu errado';

  @override
  String get errorPageUnexpected =>
      'Lamentamos, mas não sabemos qual é o erro. Você pode tentar reiniciar o computador e iniciar o processo de instalação novamente. Você também pode <a>relatar o problema</a>.';

  @override
  String errorPageUbuntuBug(String SNAP) {
    return 'Para enviar um relatório de bug automatizado incluindo informações de depuração relevantes, execute <pre>sudo ubuntu-bug $SNAP</pre> em um terminal ou no console de comando (Alt+F2).';
  }

  @override
  String get errorPageShowLog => 'Mostrar log';

  @override
  String get errorPageHideLog => 'Esconder log';

  @override
  String get restart => 'Reiniciar';

  @override
  String get close => 'Fechar';

  @override
  String get timezonePageTitle => 'Selecione o seu fuso-horário';

  @override
  String get timezoneLocationLabel => 'Localização';

  @override
  String get timezoneTimezoneLabel => 'Fuso horário';

  @override
  String get keyboardTitle => 'Disposição do teclado';

  @override
  String get keyboardHeader => 'Selecione o layout do seu teclado';

  @override
  String get keyboardTestHint => 'Digite aqui para testar o seu teclado';

  @override
  String get keyboardDetectTitle => 'Detetar a disposição do teclado';

  @override
  String get keyboardDetectButton => 'Detetar';

  @override
  String get keyboardVariantLabel => 'Variante do teclado:';

  @override
  String get keyboardPressKeyLabel => 'Prima uma das seguintes teclas:';

  @override
  String get keyboardKeyPresentLabel =>
      'A seguinte tecla está presente no seu teclado?';

  @override
  String get themePageTitle => 'Escolha o seu tema';

  @override
  String get themePageHeader =>
      'Pode sempre alterar isso depois nas definições de aparência.';

  @override
  String get themeDark => 'Escuro';

  @override
  String get themeLight => 'Claro';

  @override
  String localePageTitle(String DISTRO) {
    return 'Bem-vindo ao $DISTRO';
  }

  @override
  String get localeHeader => 'Escolha o seu idioma:';

  @override
  String get identityPageTitle => 'Configure a sua conta';

  @override
  String get identityAutoLogin => 'Iniciar sessão automaticamente';

  @override
  String get identityRequirePassword =>
      'Solicitar minha palavra-passe para entrar';

  @override
  String get identityRealNameLabel => 'O seu nome';

  @override
  String get identityRealNameRequired => 'O nome é obrigatório';

  @override
  String get identityRealNameTooLong => 'Esse nome é demasiado comprido.';

  @override
  String get identityHostnameLabel => 'Nome do seu computador';

  @override
  String get identityHostnameInfo =>
      'O nome usado para falar com outros computadores.';

  @override
  String get identityHostnameRequired => 'O nome do computador é obrigatório';

  @override
  String get identityHostnameTooLong =>
      'Esse nome de computador é demasiado comprido.';

  @override
  String get identityInvalidHostname => 'O nome do computador não é válido';

  @override
  String get identityUsernameLabel => 'Escolha um nome de utilizador';

  @override
  String get identityUsernameRequired => 'É obrigatório um nome de utilizador';

  @override
  String get identityInvalidUsername => 'O nome de utilizador é inválido';

  @override
  String get identityUsernameInUse => 'Esse nome de utilizador já existe.';

  @override
  String get identityUsernameSystemReserved =>
      'Esse nome é reservado para utilização do sistema.';

  @override
  String get identityUsernameTooLong => 'Esse nome é demasiado comprido.';

  @override
  String get identityUsernameInvalidChars =>
      'Esse nome contém caracteres inválidos.';

  @override
  String get identityPasswordLabel => 'Escolha uma palavra-passe';

  @override
  String get identityPasswordRequired => 'A palavra-passe é obrigatória';

  @override
  String get identityConfirmPasswordLabel => 'Confirme a sua palavra-passe';

  @override
  String get identityPasswordMismatch => 'As palavras-passe não coincidem';

  @override
  String get identityPasswordShow => 'Mostrar';

  @override
  String get identityPasswordHide => 'Ocultar';

  @override
  String get identityActiveDirectoryOption => 'Usar o Active Directory';

  @override
  String get identityActiveDirectoryInfo =>
      'Irá introduzir o domínio e outros detalhes no próximo passo.';

  @override
  String get activeDirectoryTitle => 'Configurar o Active Directory';

  @override
  String get activeDirectoryHeader => 'Fazer login no Active Directory?';

  @override
  String activeDirectoryInfo(String DISTRO) {
    return '$DISTRO foi projetado para integrar-se perfeitamente ao Active Directory para facilitar a administração.';
  }

  @override
  String get activeDirectoryTestConnection => 'Testar ligação de domínio';

  @override
  String get activeDirectoryDomainLabel => 'Domínio';

  @override
  String get activeDirectoryDomainEmpty => 'Obrigatório';

  @override
  String get activeDirectoryDomainTooLong => 'Demasiado comprido';

  @override
  String get activeDirectoryDomainInvalidChars => 'Caracteres inválidos';

  @override
  String get activeDirectoryDomainStartDot => 'Começa com um ponto (.)';

  @override
  String get activeDirectoryDomainEndDot => 'Termina com um ponto (.)';

  @override
  String get activeDirectoryDomainStartHyphen => 'Começa com um hífen (-)';

  @override
  String get activeDirectoryDomainEndHyphen => 'Termina com um hífen (-)';

  @override
  String get activeDirectoryDomainMultipleDots =>
      'Contém vários pontos sequenciados (..)';

  @override
  String get activeDirectoryDomainNotFound => 'Domínio não encontrado';

  @override
  String get activeDirectoryAdminLabel => 'Domínio juntar-se ao utilizador';

  @override
  String get activeDirectoryAdminEmpty => 'Obrigatório';

  @override
  String get activeDirectoryAdminInvalidChars => 'Caracteres inválidos';

  @override
  String get activeDirectoryPasswordLabel => 'Palavra-passe';

  @override
  String get activeDirectoryPasswordEmpty => 'Obrigatório';

  @override
  String get activeDirectoryErrorTitle =>
      'Erro ao configurando a ligação ao Active Directory';

  @override
  String get activeDirectoryErrorMessage =>
      'O Active Directory não pode ser criado neste momento. Assim que o seu sistema estiver instalado e a funcionar, visite o <a href=\"https://help.ubuntu.com/activedirectory\">help.ubuntu.com/activedirectory</a> para mais ajuda.';

  @override
  String get networkPageTitle => 'Ligar a uma rede';

  @override
  String get networkPageHeader => 'Conecte à internet';

  @override
  String get networkPageBody =>
      'Uma conexão com a Internet melhorará sua instalação com verificação de compatibilidade e pacotes de software extras.';

  @override
  String get networkWiredOption => 'Usar uma ligação por cabo de rede';

  @override
  String get networkWiredNone => 'Ligação por cabo de rede detetada';

  @override
  String get networkWiredOff => 'A ligação por cabo de rede está desligada';

  @override
  String get networkWiredDisabled =>
      'Para usar Ethernet neste computador, uma ligação por cabo de rede deve ser ativada';

  @override
  String get networkWiredEnable => 'Ligação por cabo de rede ativada';

  @override
  String get networkWifiOption => 'Ligar a uma rede Wi-Fi';

  @override
  String get networkWifiOff => 'Rede sem fios desativada';

  @override
  String get networkWifiNone => 'Sem dispositivos Wi-Fi detetados';

  @override
  String get networkWifiDisabled =>
      'Para usar Wi-Fi neste computador, uma rede sem fios deve ser ativada';

  @override
  String get networkWifiEnable => 'Ativar Wi-Fi';

  @override
  String get networkHiddenWifiOption => 'Ligar a uma rede Wi-Fi oculta';

  @override
  String get networkHiddenWifiNameLabel => 'Nome da rede';

  @override
  String get networkHiddenWifiNameRequired => 'Um nome de rede é necessário';

  @override
  String get networkNoneOption => 'Não pretendo ligar à Internet por agora';

  @override
  String get eulaPageTitle => 'Contrato de licença';

  @override
  String get eulaReviewTerms => 'Revise os termos da licença';

  @override
  String get eulaReadAndAcceptTerms =>
      'Para continuar configurando esta máquina, você deve ler e aceitar os termos do contrato de licença.';

  @override
  String get eulaAcceptTerms => 'Li e aceito estes termos';

  @override
  String get successIconSemanticLabel => 'Success';

  @override
  String get closeIconSemanticLabel => 'Close';

  @override
  String get maximizeIconSemanticLabel => 'Maximize';

  @override
  String get minimizeIconSemanticLabel => 'Minimize';

  @override
  String get expandIconSemanticLabel => 'Expand';

  @override
  String get collapseIconSemanticLabel => 'Collapse';
}

/// The translations for Portuguese, as used in Brazil (`pt_BR`).
class UbuntuProvisionLocalizationsPtBr extends UbuntuProvisionLocalizationsPt {
  UbuntuProvisionLocalizationsPtBr() : super('pt_BR');

  @override
  String get accessibilityPageTitle => 'Acessibilidade';

  @override
  String accessibilityPageHeader(String DISTRO) {
    return 'Acessibilidade para $DISTRO';
  }

  @override
  String accessibilityPageBody(String DISTRO) {
    return 'Personalize $DISTRO para suas necessidades antes de se estabelecer. Você pode mudá-las nas configurações do sistema posteriormente.';
  }

  @override
  String get accessibilitySeeingLabel => 'Visualização';

  @override
  String get accessibilityHearingLabel => 'Audição';

  @override
  String get accessibilityTypingLabel => 'Digitação';

  @override
  String get accessibilityPointingLabel => 'Apontar e clicar';

  @override
  String get accessibilityZoomLabel => 'Ampliação';

  @override
  String get accessibilityHighContrastLabel => 'Alto contraste';

  @override
  String get accessibilityLargeTextLabel => 'Texto grande';

  @override
  String get accessibilityReduceAnimationLabel => 'Reduzir a animação';

  @override
  String get accessibilityScreenReaderLabel => 'Leitor de tela';

  @override
  String get accessibilityVisualAlertsLabel => 'Alertas visuais';

  @override
  String get accessibilityStickKeysLabel => 'Teclas persistentes';

  @override
  String get accessibilitySlowKeysLabel => 'Teclas lentas';

  @override
  String get accessibilityMouseKeysLabel => 'Botões do mouse';

  @override
  String get accessibilityDesktopZoomLabel => 'Ampliar a área de trabalho';

  @override
  String get errorPageTitle => 'Algo deu errado';

  @override
  String get errorPageUnexpected =>
      'Pedimos desculpas, mas não temos certeza qual é o erro. Você pode tentar reiniciar seu computador e iniciar o processo de instalação novamente. Você também pode <a>reportar o problema</a>.';

  @override
  String errorPageUbuntuBug(String SNAP) {
    return 'Para enviar um relatório de bug automatizado incluindo informações de depuração relevantes, execute <pre>sudo ubuntu-bug $SNAP</pre> em um terminal ou no console de comando (Alt+F2).';
  }

  @override
  String get errorPageShowLog => 'Exibir o log';

  @override
  String get errorPageHideLog => 'Ocultar o log';

  @override
  String get restart => 'Reiniciar';

  @override
  String get close => 'Fechar';

  @override
  String get timezonePageTitle => 'Selecione seu fuso horário';

  @override
  String get timezoneLocationLabel => 'Localização';

  @override
  String get timezoneTimezoneLabel => 'Fuso horário';

  @override
  String get keyboardTitle => 'Layout do teclado';

  @override
  String get keyboardHeader => 'Escolha o layout do seu teclado';

  @override
  String get keyboardTestHint => 'Digite aqui para testar seu teclado';

  @override
  String get keyboardDetectTitle => 'Detectar o layout do teclado';

  @override
  String get keyboardDetectButton => 'Detectar';

  @override
  String get keyboardVariantLabel => 'Disposição de teclado:';

  @override
  String get keyboardPressKeyLabel =>
      'Por favor pressione uma das seguintes teclas:';

  @override
  String get keyboardKeyPresentLabel =>
      'A seguinte tecla está presente no seu teclado?';

  @override
  String get themePageTitle => 'Escolha seu tema';

  @override
  String get themePageHeader =>
      'Você pode sempre alterar isso depois nas configurações de aparência.';

  @override
  String get themeDark => 'Escuro';

  @override
  String get themeLight => 'Claro';

  @override
  String localePageTitle(String DISTRO) {
    return 'Boas-vindas ao $DISTRO';
  }

  @override
  String get localeHeader => 'Escolha seu idioma:';

  @override
  String get identityPageTitle => 'Configurar sua conta';

  @override
  String get identityAutoLogin => 'Iniciar sessão automaticamente';

  @override
  String get identityRequirePassword => 'Solicitar minha senha para entrar';

  @override
  String get identityRealNameLabel => 'Seu nome';

  @override
  String get identityRealNameRequired => 'O nome é obrigatório';

  @override
  String get identityRealNameTooLong => 'O nome é longo demais.';

  @override
  String get identityHostnameLabel => 'Nome do seu computador';

  @override
  String get identityHostnameInfo =>
      'O nome usado para falar com outros computadores.';

  @override
  String get identityHostnameRequired => 'O nome do computador é obrigatório';

  @override
  String get identityHostnameTooLong => 'O nome do computador é longo demais.';

  @override
  String get identityInvalidHostname => 'O nome do computador não é válido';

  @override
  String get identityUsernameLabel => 'Escolha um nome de usuário';

  @override
  String get identityUsernameRequired => 'Nome de usuário é obrigatório';

  @override
  String get identityInvalidUsername =>
      'O nome de usuário informado é inválido';

  @override
  String get identityUsernameInUse => 'Esse nome de usuário já existe.';

  @override
  String get identityUsernameSystemReserved =>
      'Esse nome é reservado para uso do sistema.';

  @override
  String get identityUsernameTooLong => 'Esse nome é muito comprido.';

  @override
  String get identityUsernameInvalidChars =>
      'Esse nome contém caracteres inválidos.';

  @override
  String get identityPasswordLabel => 'Escolha uma senha';

  @override
  String get identityPasswordRequired => 'A senha é obrigatória';

  @override
  String get identityConfirmPasswordLabel => 'Confirme sua senha';

  @override
  String get identityPasswordMismatch => 'As senhas não correspondem';

  @override
  String get identityPasswordShow => 'Mostrar';

  @override
  String get identityPasswordHide => 'Ocultar';

  @override
  String get identityActiveDirectoryOption => 'Usar o Active Directory';

  @override
  String get identityActiveDirectoryInfo =>
      'Você inserirá o domínio e outros detalhes na próxima etapa.';

  @override
  String get activeDirectoryTitle => 'Configurar o Active Directory';

  @override
  String get activeDirectoryHeader => 'Fazer login no Active Directory?';

  @override
  String activeDirectoryInfo(String DISTRO) {
    return 'O $DISTRO foi projetado para integrar-se perfeitamente com o Active Directory para facilitar a administração.';
  }

  @override
  String get activeDirectoryTestConnection => 'Testar conectividade ao domínio';

  @override
  String get activeDirectoryDomainLabel => 'Domínio';

  @override
  String get activeDirectoryDomainEmpty => 'Necessário';

  @override
  String get activeDirectoryDomainTooLong => 'Longo demais';

  @override
  String get activeDirectoryDomainInvalidChars => 'Caracteres inválidos';

  @override
  String get activeDirectoryDomainStartDot => 'Começa com um ponto (.)';

  @override
  String get activeDirectoryDomainEndDot => 'Termina com um ponto (.)';

  @override
  String get activeDirectoryDomainStartHyphen => 'Começa com um hífen (-)';

  @override
  String get activeDirectoryDomainEndHyphen => 'Termina com um hífen (-)';

  @override
  String get activeDirectoryDomainMultipleDots =>
      'Contém vários pontos sequenciados (..)';

  @override
  String get activeDirectoryDomainNotFound => 'Domínio não encontrado';

  @override
  String get activeDirectoryAdminLabel => 'Usuário de ingresso no domínio';

  @override
  String get activeDirectoryAdminEmpty => 'Necessário';

  @override
  String get activeDirectoryAdminInvalidChars => 'Caracteres inválidos';

  @override
  String get activeDirectoryPasswordLabel => 'Senha';

  @override
  String get activeDirectoryPasswordEmpty => 'Necessário';

  @override
  String get activeDirectoryErrorTitle =>
      'Erro ao configurar a conexão com o Active Directory';

  @override
  String get activeDirectoryErrorMessage =>
      'Desculpe, o Active Directory não pôde ser configurado no momento. Assim que seu sistema esteja instalado e funcionando, visite <a href=\"https://help.ubuntu.com/activedirectory\">help.ubuntu.com/activedirectory</a> para ajuda.';

  @override
  String get networkPageTitle => 'Conecte-se a uma rede';

  @override
  String get networkPageHeader => 'Conecte-se a internet';

  @override
  String get networkPageBody =>
      'Uma conexão com a internet irá melhorar sua instalação com a checagem de compatibilidade e pacotes extras de software.';

  @override
  String get networkWiredOption => 'Usar conexão via cabo';

  @override
  String get networkWiredNone => 'Nenhuma conexão a cabo detectada';

  @override
  String get networkWiredOff => 'Conexão a cabo está desligada';

  @override
  String get networkWiredDisabled =>
      'Para utilizar a Ethernet neste computador, uma conexão a cabo deve ser habilitada';

  @override
  String get networkWiredEnable => 'Habilitar conexão a cabo';

  @override
  String get networkWifiOption => 'Conectar-se a uma rede Wi-Fi';

  @override
  String get networkWifiOff => 'Rede WiFi está desabilitada';

  @override
  String get networkWifiNone => 'Nenhum dispositivo WiFi detectado';

  @override
  String get networkWifiDisabled =>
      'Para utilizar WiFi neste computador, a rede WiFi deve ser habilitada';

  @override
  String get networkWifiEnable => 'Habilitar WiFi';

  @override
  String get networkHiddenWifiOption => 'Conectar-se a uma rede Wi-Fi oculta';

  @override
  String get networkHiddenWifiNameLabel => 'Nome da rede';

  @override
  String get networkHiddenWifiNameRequired => 'É necessário um nome de rede';

  @override
  String get networkNoneOption => 'Não quero conectar à internet neste momento';

  @override
  String get eulaPageTitle => 'Contrato de Licença';

  @override
  String get eulaReviewTerms => 'Revise os termos de licença';

  @override
  String get eulaReadAndAcceptTerms =>
      'Para continuar configurando esta máquina, você deve ler e aceitar os termos do contrato de licença.';

  @override
  String get eulaAcceptTerms => 'Li e aceito estes termos';
}
