// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_init_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class UbuntuInitLocalizationsZh extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get welcomePageTitle => '欢迎';

  @override
  String welcomePageHeader(Object distro) {
    return '欢迎使用 $distro';
  }

  @override
  String get welcomeWhatsNew => '有什么新功能？';

  @override
  String get welcomeStartTitle => '顺畅起步';

  @override
  String get welcomeStartSubtitle => '支持更简洁的安装体验。';

  @override
  String get welcomeStoreTitle => '应用商店新外观';

  @override
  String get welcomeStoreSubtitle => '找到您喜欢的软件从未如此简单。';

  @override
  String get welcomeSecurityTitle => '增强安全';

  @override
  String get welcomeSecuritySubtitle => '新的硬件支持加密或 ZFS 加密选项。';

  @override
  String welcomeChangelogLabel(String url) {
    return '<a href=\"$url\">查看更新日志</a>';
  }

  @override
  String get telemetryPageTitle => '数据收集';

  @override
  String telemetryHeader(String distro) {
    return '帮助改善 $distro';
  }

  @override
  String telemetryDescription(String distro) {
    return '通过与我们分享您的系统数据，帮助我们改善 $distro。这包括您的计算机型号、安装的软件与时区选择的位置。';
  }

  @override
  String telemetryLabelOn(String distro) {
    return '是的，与 $distro 团队分享系统数据';
  }

  @override
  String get telemetryLabelOff => '不，不要分享系统数据';

  @override
  String get telemetryReportLabel => '显示第一份报告';

  @override
  String get telemetryReportTitle => '报告细节';

  @override
  String get telemetryLegalLabel => '法律通知';

  @override
  String get telemetryCollectError => 'Failed to collect telemetry data';

  @override
  String get privacyPageTitle => '位置信息服务';

  @override
  String get privacyLocationTitle => '启用位置信息服务吗？';

  @override
  String get privacyLocationSubtitle => '让应用程序获取您的地理位置信息。\n您可以随时在“系统设置”中更改此设置。';

  @override
  String get privacyLocationEnable => '位置信息服务';

  @override
  String get privacyPolicyLink => '数据隐私政策';

  @override
  String ubuntuProMagicAttachInstructions(String url) {
    return 'Magic attach with this code at <a href=\"https://$url\">$url</a>';
  }

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';

  @override
  String get ubuntuProHeader => 'Attach this machine';

  @override
  String get ubuntuProOrAddTokenManually => 'or add a token manually';

  @override
  String get ubuntuProTokenTextfieldHint => 'Token';

  @override
  String get ubuntuProSubscriptionDescription => 'Get the most comprehensive subscription for open-source software security';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(String url) {
    return 'Always free for personal use. 30-days trial for enterprises. <a href=\"https://$url\">Learn more</a>';
  }

  @override
  String get ubuntuProTokenAttachButton => 'Attach';

  @override
  String get ubuntuProTokenAttachError => 'Invalid token';

  @override
  String get ubuntuProTokenAttachSucess => 'Valid token';

  @override
  String get ubuntuProTokenAttachErrorVariant => 'Invalid token, retry';

  @override
  String get ubuntuProOnBoardingSkipForNow => 'Skip for now';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription => 'You can always enable Ubuntu Pro later via the Software & Updates application.';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => 'Enable Ubuntu Pro';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription => 'Attach this machine to an Ubuntu Pro subscription for security updates on a wider range of packages, until 2032.';

  @override
  String get ubuntuProSucessAttachHeader => 'Ubuntu Pro is now enabled in this machine';

  @override
  String get ubuntuProSucessAttachDescription => 'You can manage your Pro services in the Software & Updates application.';
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
  String get welcomeWhatsNew => '有什麼新玩意兒？';

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
  String welcomeChangelogLabel(String url) {
    return '<a href=\"$url\">檢視變更日誌</a>';
  }

  @override
  String get telemetryPageTitle => '數據蒐集';

  @override
  String telemetryHeader(String distro) {
    return '協助我們改善 $distro';
  }

  @override
  String telemetryDescription(String distro) {
    return '將您的系統資料分享給我們以協助我們改善 $distro 。這包含了像是您的機器型號、已安裝的軟體以及您選擇的時區地理位置資料。';
  }

  @override
  String telemetryLabelOn(String distro) {
    return '是，請將系統資料分享給 $distro 團隊';
  }

  @override
  String get telemetryLabelOff => '否，不要分享系統資料';

  @override
  String get telemetryReportLabel => '查閱第一份報告的細節';

  @override
  String get telemetryReportTitle => '回報資料細節';

  @override
  String get telemetryLegalLabel => '法律聲明';

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
  String ubuntuProMagicAttachInstructions(String url) {
    return '使用 <a href=\"https://$url\">$url</a> 連結來自動將系統綁定至 Ubuntu Pro';
  }

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';

  @override
  String get ubuntuProHeader => '綁定主機到支援服務';

  @override
  String get ubuntuProOrAddTokenManually => '或是手動添加一個驗證碼';

  @override
  String get ubuntuProTokenTextfieldHint => '驗證碼';

  @override
  String get ubuntuProSubscriptionDescription => '取得最廣泛覆蓋的開放來源碼軟體安全訂閱方案';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(String url) {
    return '個人使用永遠免費。企業使用免費 30 天試用期。<a href=\"https://$url\">了解更多</a>';
  }

  @override
  String get ubuntuProTokenAttachButton => '綁定';

  @override
  String get ubuntuProTokenAttachError => '無效的驗證碼';

  @override
  String get ubuntuProTokenAttachSucess => '有效的驗證碼';

  @override
  String get ubuntuProTokenAttachErrorVariant => '無效的驗證碼，請再試一次';

  @override
  String get ubuntuProOnBoardingSkipForNow => '先暫時跳過';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription => '您可以稍後隨時於「軟體與更新」應用軟體啟用 Ubuntu Pro。';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => '啟用 Ubuntu Pro';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription => '將此機器綁定到 Ubuntu Pro 訂閱以獲得直至 2032 年之更廣範圍軟體包的安全更新。';

  @override
  String get ubuntuProSucessAttachHeader => 'Ubuntu Pro 現已於此機器啟用';

  @override
  String get ubuntuProSucessAttachDescription => '您可以於「軟體與更新」應用軟體中管理您的 Ubuntu Pro 支援服務。';
}
