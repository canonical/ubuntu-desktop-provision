// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'factory_reset_tools_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class FactoryResetToolsLocalizationsPt extends FactoryResetToolsLocalizations {
  FactoryResetToolsLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'Ferramentas de redefinição de fábrica';

  @override
  String get windowTitle => 'Ferramentas de redefinição de fábrica';

  @override
  String get homeTitle => 'O que gostaria de fazer?';

  @override
  String get createResetMedia => 'Criar unidade de redefinição';

  @override
  String get startFactoryReset => 'Iniciar redefinição de fábrica';

  @override
  String get createUsbTitle => 'Criar uma unidade USB de redefinição';

  @override
  String get createUsbBody =>
      'Crie uma unidade USB de redefinição para restaurar o sistema, bem como personalizar as suas instalações Ubuntu.';

  @override
  String get createUsbListExplanation =>
      'Selecione uma unidade USB. A unidade deve ter **pelo menos 16GB de espaço**.';

  @override
  String get createUsbWarning =>
      'A pen será reformatada e todos os dados na unidade estarão perdidos.';

  @override
  String get resetMediaTitle => 'Unidade USB de redefinição';

  @override
  String get noMediaDetected => 'Nenhum armazenamento removível detetado';

  @override
  String get noMediaDetectedSubtitle =>
      'Precisa de um armazenamento USB para criar a \"Unidade de Redefinição de Fábrica\".';

  @override
  String get factoryResetTitle =>
      'Selecione uma opção para iniciar a redefinição de fábrica';

  @override
  String get loadingDrives =>
      'Por favor, aguarde enquanto nós obtemos as unidades.';

  @override
  String get resetMediaReadyTitle => 'A unidade USB de redefinição está pronta';

  @override
  String get resetMediaReadyBody =>
      'Quando a quiser utilizar, por favor, insira a unidade USB no computador que pretende reiniciar e reinicie-o.';

  @override
  String get errorLoadingDrives =>
      'Ocorreu um erro enquanto obtinha as unidades.';

  @override
  String get resetMediaInitializing => 'A inicializar';

  @override
  String get resetMediaCopying => 'A copiar';

  @override
  String get resetMediaFinalizing => 'A finalizar';

  @override
  String get resetMediaFinished => 'Terminado';

  @override
  String get resetMediaFailed => 'Falhou';

  @override
  String get error => 'Erro';

  @override
  String get loading => 'A carregar...';

  @override
  String get warning => 'Aviso';

  @override
  String get restore => 'Restaurar';

  @override
  String get restart => 'Reiniciar';

  @override
  String get reformat => 'Reformatar';

  @override
  String get failed => 'Não foi possível executar o comando';

  @override
  String get close => 'Fechar';

  @override
  String get ok => 'OK';

  @override
  String get closeIconSemanticLabel => 'Close';

  @override
  String get maximizeIconSemanticLabel => 'Maximize';

  @override
  String get minimizeIconSemanticLabel => 'Minimize';
}

/// The translations for Portuguese, as used in Brazil (`pt_BR`).
class FactoryResetToolsLocalizationsPtBr
    extends FactoryResetToolsLocalizationsPt {
  FactoryResetToolsLocalizationsPtBr() : super('pt_BR');

  @override
  String get appTitle => 'Ferramentas de redefinição de fábrica';

  @override
  String get windowTitle => 'Ferramentas de redefinição de fábrica';

  @override
  String get homeTitle => 'O que você gostaria de fazer?';

  @override
  String get createResetMedia => 'Criar mídia de redefinição';

  @override
  String get startFactoryReset => 'Iniciar redefinição de fábrica';

  @override
  String get createUsbTitle => 'Criar uma mídia de redefinição USB';

  @override
  String get createUsbBody =>
      'Crie uma mídia de redefinição USB para restaurar o sistema, bem como personalizar suas instalações do Ubuntu.';

  @override
  String get createUsbListExplanation =>
      'Selecione uma unidade flash USB. A unidade deve ter **pelo menos 16 GB de espaço.**';

  @override
  String get createUsbWarning =>
      'A unidade flash será reformatada e todos os dados na unidade serão perdidos.';

  @override
  String get resetMediaTitle => 'Mídia de redefinição USB';

  @override
  String get noMediaDetected => 'Nenhum armazenamento removível foi detectado';

  @override
  String get noMediaDetectedSubtitle =>
      'Você precisa de um armazenamento USB para criar uma Mídia de Redefinição de Fábrica.';

  @override
  String get factoryResetTitle =>
      'Selecione uma opção para iniciar a redefinição de fábrica';

  @override
  String get loadingDrives =>
      'Por favor, aguarde enquanto buscamos as unidades.';

  @override
  String get resetMediaReadyTitle => 'A mídia de redefinição USB está pronta';

  @override
  String get resetMediaReadyBody =>
      'Quando você quiser usá-la, insira a unidade USB no computador que você deseja redefinir e reinicie-o.';

  @override
  String get errorLoadingDrives => 'Ocorreu um erro ao buscar as unidades.';

  @override
  String get resetMediaInitializing => 'Inicializando';

  @override
  String get resetMediaCopying => 'Copiando';

  @override
  String get resetMediaFinalizing => 'Finalizando';

  @override
  String get resetMediaFinished => 'Concluído';

  @override
  String get resetMediaFailed => 'Falhou';

  @override
  String get error => 'Erro';

  @override
  String get loading => 'Carregando...';

  @override
  String get warning => 'Aviso';

  @override
  String get restore => 'Restaurar';

  @override
  String get restart => 'Reiniciar';

  @override
  String get reformat => 'Reformatar';

  @override
  String get failed => 'Falha ao executar o comando';

  @override
  String get close => 'Fechar';

  @override
  String get ok => 'OK';
}
