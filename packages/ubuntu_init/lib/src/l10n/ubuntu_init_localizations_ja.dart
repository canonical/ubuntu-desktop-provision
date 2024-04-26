import 'ubuntu_init_localizations.dart';

/// The translations for Japanese (`ja`).
class UbuntuInitLocalizationsJa extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get welcomePageTitle => 'ようこそ';

  @override
  String welcomePageHeader(Object distro) {
    return '$distro にようこそ';
  }

  @override
  String get welcomeWhatsNew => '新機能は？';

  @override
  String get welcomeStartTitle => '洗練されたセットアップ';

  @override
  String get welcomeStartSubtitle => 'セットアップのユーザー体験をよりエレガントにしました。';

  @override
  String get welcomeStoreTitle => 'アプリストアの新しい見た目';

  @override
  String get welcomeStoreSubtitle => 'お好みのソフトウェアがより簡単に見つかるようになりました。';

  @override
  String get welcomeSecurityTitle => 'セキュリティの拡張';

  @override
  String get welcomeSecuritySubtitle => 'ハードウェベースとZFS暗号化に関する新しいオプションを追加しました。';

  @override
  String welcomeChangelogLabel(Object url) {
    return '<a href=\"$url\">変更点を確認する</a>';
  }

  @override
  String get telemetryPageTitle => '情報収集';

  @override
  String telemetryHeader(Object distro) {
    return '$distro の改善を手助けする';
  }

  @override
  String telemetryDescription(Object distro) {
    return 'システムデータを共有してもらえると、$distro の改善に役立てます。マシンのモデル、インストールしたソフトウェアとタイムゾーンから取得した場所が含まれます。';
  }

  @override
  String telemetryLabelOn(Object distro) {
    return '$distro チームへシステムデータを共有する';
  }

  @override
  String get telemetryLabelOff => 'システムデータを共有しません';

  @override
  String get telemetryReportLabel => '最初のレポートを表示';

  @override
  String get telemetryReportTitle => '報告内容の詳細';

  @override
  String get telemetryLegalLabel => '法律上の通知';

  @override
  String get telemetryCollectError => 'Failed to collect telemetry data';

  @override
  String get privacyPageTitle => '位置情報サービス';

  @override
  String get privacyLocationTitle => '位置情報サービスを有効にしますか？';

  @override
  String get privacyLocationSubtitle => 'アプリケーションに地理的な位置を知らせるようになります。\n設定でいつでも変更できます。';

  @override
  String get privacyLocationEnable => '位置情報サービス';

  @override
  String get privacyPolicyLink => 'データプライバシー';

  @override
  String ubuntuProMagicAttachInstructions(Object url) {
    return '<a href=\"https://$url\">$url</a>のコードでアタッチ';
  }

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';

  @override
  String get ubuntuProHeader => 'このマシンをアタッチ';

  @override
  String get ubuntuProOrAddTokenManually => 'またはトークンを手動で追加';

  @override
  String get ubuntuProTokenTextfieldHint => 'トークン';

  @override
  String get ubuntuProSubscriptionDescription => 'オープンソースソフトウェアのセキュリティのための最も包括的なサブスクリプション';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(Object url) {
    return '個人用途は常に無料です。エンタープライズ向けは30日間無料体験です。<a href=\"https://$url\">詳細</a>';
  }

  @override
  String get ubuntuProTokenAttachButton => 'アタッチ';

  @override
  String get ubuntuProTokenAttachError => '無効なトークン';

  @override
  String get ubuntuProTokenAttachSucess => '有効なトークン';

  @override
  String get ubuntuProTokenAttachErrorVariant => '無効なトークンです。再度入力してください';

  @override
  String get ubuntuProOnBoardingSkipForNow => '今はスキップ';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription => '「ソフトウェアとアップデート」からいつでもUbuntu Proを有効にできます。';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => 'Ubuntu Proを有効化';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription => '2023年まで幅広いパッケージのセキュリティアップデートを取得できるUbuntu Proサブスクリプションにアタッチします。';

  @override
  String get ubuntuProSucessAttachHeader => 'このマシンでUbuntu Proを有効にしました';

  @override
  String get ubuntuProSucessAttachDescription => '「ソフトウェアとアップデート」アプリでProサービスを設定できます。';
}
