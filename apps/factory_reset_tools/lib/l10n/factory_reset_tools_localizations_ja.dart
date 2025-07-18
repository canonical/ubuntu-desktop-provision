// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'factory_reset_tools_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class FactoryResetToolsLocalizationsJa extends FactoryResetToolsLocalizations {
  FactoryResetToolsLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => 'ファクトリーリセットツール';

  @override
  String get windowTitle => 'ファクトリーリセットツール';

  @override
  String get homeTitle => '何をしますか？';

  @override
  String get createResetMedia => 'リセットメディアを作成';

  @override
  String get startFactoryReset => 'ファクトリーリセットを開始';

  @override
  String get createUsbTitle => 'USBリセットメディアを作成';

  @override
  String get createUsbBody =>
      'Ubuntuインストールをカスタマイズするように、システムのリストアのためにUSBリセットメディアを作成します。';

  @override
  String get createUsbListExplanation =>
      'USBメモリーを選択してください。**少なくとも16GB**のUSBメモリーが必要です';

  @override
  String get createUsbWarning => 'USBメモリーはフォーマットされ、すべてのデータは失われます。';

  @override
  String get resetMediaTitle => 'USBリセットメディア';

  @override
  String get noMediaDetected => 'リムーバブルストレージが見つかりません';

  @override
  String get noMediaDetectedSubtitle => 'ファクトリーリセットメディアの作成に使用するUSBメモリーが必要です。';

  @override
  String get factoryResetTitle => 'ファクトリーリセット開始のオプションを選択';

  @override
  String get loadingDrives => 'ドライブの取得をしています。しばらくお待ち下さい。';

  @override
  String get resetMediaReadyTitle => 'USBリセットメディアの準備完了';

  @override
  String get resetMediaReadyBody => '使用する場合、USBメモリーをコンピューターに接続して再起動してください。';

  @override
  String get errorLoadingDrives => 'ドライブの取得にエラーが発生しました。';

  @override
  String get resetMediaInitializing => '初期化中';

  @override
  String get resetMediaCopying => 'コピー中';

  @override
  String get resetMediaFinalizing => '終了処理中';

  @override
  String get resetMediaFinished => '終了';

  @override
  String get resetMediaFailed => '失敗';

  @override
  String get error => 'エラー';

  @override
  String get loading => '読み込み中...';

  @override
  String get warning => '警告';

  @override
  String get restore => 'リストア';

  @override
  String get restart => '再起動';

  @override
  String get reformat => '再フォーマット';

  @override
  String get failed => 'コマンドの実行に失敗';

  @override
  String get close => '閉じる';

  @override
  String get ok => 'OK';

  @override
  String get closeIconSemanticLabel => 'Close';

  @override
  String get maximizeIconSemanticLabel => 'Maximize';

  @override
  String get minimizeIconSemanticLabel => 'Minimize';
}
