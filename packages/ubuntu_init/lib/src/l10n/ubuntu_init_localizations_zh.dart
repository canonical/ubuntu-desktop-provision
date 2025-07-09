import 'ubuntu_init_localizations.dart';

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
  String welcomeChangelogLabel(Object url) {
    return '<a href=\"$url\">查看更新日志</a>';
  }

  @override
  String get telemetryPageTitle => '数据收集';

  @override
  String telemetryHeader(Object distro) {
    return '帮助改善 $distro';
  }

  @override
  String telemetryDescription(Object distro) {
    return '通过与我们分享您的系统数据，帮助我们改善 $distro。这包括您的计算机型号、安装的软件与时区选择的位置。';
  }

  @override
  String telemetryLabelOn(Object distro) {
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
  String get telemetryCollectError => '未能收集遥测数据';

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
  String ubuntuProMagicAttachInstructions(Object url) {
    return '在 <a href=\"https://$url\">$url</a> 用此代码将系统绑定到 Ubuntu Pro';
  }

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';

  @override
  String get ubuntuProHeader => '绑定本机';

  @override
  String get ubuntuProOrAddTokenManually => '或手动添加令牌';

  @override
  String get ubuntuProTokenTextfieldHint => '令牌';

  @override
  String get ubuntuProSubscriptionDescription => '为开源软件安全获取最为包罗万象的订阅';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(Object url) {
    return '个人使用永远免费。企业可获得 30 天免费试用。<a href=\"https://$url\">了解更多</a>';
  }

  @override
  String get ubuntuProTokenAttachButton => '绑定';

  @override
  String get ubuntuProTokenAttachError => '令牌无效';

  @override
  String get ubuntuProTokenAttachSucess => '令牌有效';

  @override
  String get ubuntuProTokenAttachErrorVariant => '令牌无效，请重试';

  @override
  String get ubuntuProOnBoardingSkipForNow => '暂时跳过';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription => '您可以稍后在“软件与更新”应用中启用 Ubuntu Pro。';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => '启用 Ubuntu Pro';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription => '将此机器绑定到 Ubuntu Pro 以在 2032 年前获得更多软件安全更新。';

  @override
  String get ubuntuProSucessAttachHeader => '此机器现已启用 Ubuntu Pro';

  @override
  String get ubuntuProSucessAttachDescription => '您可以在“软件与更新”应用中管理 Ubuntu Pro 服务。';
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
  String get welcomeStoreTitle => '全新外觀的 App Store';

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
    return '將您的系統資料分享給我們以協助我們改善 $distro 。這包含了像是您的機器型號、已安裝的軟體以及您選擇的時區地理位置資料。';
  }

  @override
  String telemetryLabelOn(Object distro) {
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
  String get telemetryCollectError => '無法蒐集遙測資料';

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
  String ubuntuProMagicAttachInstructions(Object url) {
    return '使用 <a href=\"https://$url\">$url</a> 連結來自動將系統綁定至 Ubuntu Pro';
  }

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';

  @override
  String get ubuntuProHeader => '綁定本機';

  @override
  String get ubuntuProOrAddTokenManually => '或是手動添加一個驗證碼';

  @override
  String get ubuntuProTokenTextfieldHint => '驗證碼';

  @override
  String get ubuntuProSubscriptionDescription => '取得最廣泛覆蓋的開放來源碼軟體安全訂閱方案';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(Object url) {
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
  String get ubuntuProOnBoardingSkipForNowDescription => '您稍後可以隨時在「軟體與更新」中啟用 Ubuntu Pro。';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => '啟用 Ubuntu Pro';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription => '將這台機器綁定到 Ubuntu Pro 訂閱，以獲得更多軟體包的安全更新，直至 2032 年。';

  @override
  String get ubuntuProSucessAttachHeader => '此機器已啟用 Ubuntu Pro';

  @override
  String get ubuntuProSucessAttachDescription => '您可以在「軟體與更新」中管理您的 Ubuntu Pro 支援服務。';
}
