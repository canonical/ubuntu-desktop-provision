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
    return '$distro の匿名化したデータを共有すると、あなたの経験を改善できます。';
  }

  @override
  String telemetryLabelOn(Object distro) {
    return '$distro チームへシステムデータを共有する';
  }

  @override
  String get telemetryLabelOff => 'システムデータを共有しません';

  @override
  String get telemetryReportLabel => '報告内容の詳細';

  @override
  String get telemetryReportTitle => '報告内容の詳細';

  @override
  String get telemetryLegalLabel => '法律上の通知';

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
  String get ubuntuProPageTitle => 'Ubuntu Pro';
}
