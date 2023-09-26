import 'ubuntu_init_localizations.dart';

/// The translations for Chinese (`zh`).
class UbuntuInitLocalizationsZh extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsZh([String locale = 'zh']) : super(locale);

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

  @override
  String get launchsessionTitle => 'Setup complete';

  @override
  String get launchsessionHeader => 'All done!';

  @override
  String get launchsessionDescription => 'You can now begin using Ubuntu Core Desktop.';
}

/// The translations for Chinese, as used in Taiwan (`zh_TW`).
class UbuntuInitLocalizationsZhTw extends UbuntuInitLocalizationsZh {
  UbuntuInitLocalizationsZhTw(): super('zh_TW');

  @override
  String get welcomePageTitle => '歡迎';

  @override
  String welcomePageHeader(Object distro) {
    return '歡迎使用 $distro';
  }

  @override
  String get welcomeWhatsNew => '新功能介紹';

  @override
  String get welcomeStartTitle => '流暢的開局';

  @override
  String get welcomeStartSubtitle => '提供更加簡潔的安裝體驗。';

  @override
  String get welcomeStoreTitle => '商店新介面';

  @override
  String get welcomeStoreSubtitle => '尋找您喜愛的軟體從未如此簡單。';

  @override
  String get welcomeSecurityTitle => '增強安全性';

  @override
  String get welcomeSecuritySubtitle => '提供硬體支援磁碟加密或 ZFS 加密的選項。';

  @override
  String welcomeChangelogLabel(Object url) {
    return '<a href=\"$url\">檢視變更日誌</a>';
  }

  @override
  String get telemetryPageTitle => '數據蒐集';

  @override
  String telemetryHeader(Object distro) {
    return '協助我們改善 $distro';
  }

  @override
  String telemetryDescription(Object distro) {
    return '將您的資料匿名分享予 $distro 以改善您的體驗。';
  }

  @override
  String telemetryLabelOn(Object distro) {
    return '是，請將系統資料分享給 $distro 團隊';
  }

  @override
  String get telemetryLabelOff => '否，不要分享系統資料';

  @override
  String get telemetryReportLabel => '回報資料細節';

  @override
  String get telemetryReportTitle => '回報資料細節';

  @override
  String get telemetryLegalLabel => '法律條款';

  @override
  String get privacyPageTitle => '地理位置服務';

  @override
  String get privacyLocationTitle => '是否開啟地理位置服務？';

  @override
  String get privacyLocationSubtitle => '讓應用程式知道您的地理位置，\n您可以在「系統設定」中隨時變更。';

  @override
  String get privacyLocationEnable => '地理位置';

  @override
  String get privacyPolicyLink => '隱私條款';

  @override
  String get storeTitle => 'Ubuntu Store';

  @override
  String get storeHeader => '取得更多應用程式';

  @override
  String get storeDescription => 'Ubuntu 的應用程式商店提供各種應用程式，供您立即安裝使用。';

  @override
  String get storeOpen => '開啟應用程式商店';
}
