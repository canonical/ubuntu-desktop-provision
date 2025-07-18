// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_provision_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class UbuntuProvisionLocalizationsZh extends UbuntuProvisionLocalizations {
  UbuntuProvisionLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get accessibilityPageTitle => '可访问性';

  @override
  String accessibilityPageHeader(String DISTRO) {
    return '$DISTRO 中的可访问性';
  }

  @override
  String accessibilityPageBody(String DISTRO) {
    return '在您安装之前，按您的需要自定义 $DISTRO。您之后可以在“系统设置”中更改它们。';
  }

  @override
  String get accessibilitySeeingLabel => '视觉';

  @override
  String get accessibilityHearingLabel => '听觉';

  @override
  String get accessibilityTypingLabel => '打字';

  @override
  String get accessibilityPointingLabel => '指向与点击';

  @override
  String get accessibilityZoomLabel => '放大';

  @override
  String get accessibilityHighContrastLabel => '高对比度';

  @override
  String get accessibilityLargeTextLabel => '大号文本';

  @override
  String get accessibilityReduceAnimationLabel => '减少动画';

  @override
  String get accessibilityScreenReaderLabel => '屏幕阅读器';

  @override
  String get accessibilityVisualAlertsLabel => '视觉警报';

  @override
  String get accessibilityStickKeysLabel => '粘滞键';

  @override
  String get accessibilitySlowKeysLabel => '慢速键';

  @override
  String get accessibilityMouseKeysLabel => '鼠标键';

  @override
  String get accessibilityDesktopZoomLabel => '桌面缩放';

  @override
  String get errorPageTitle => '出问题了';

  @override
  String get errorPageUnexpected =>
      '很抱歉，但我们不确定问题所在。您可以尝试重新启动计算机，并再次启动安装进程。您也可以<a>报告问题</a>。';

  @override
  String errorPageUbuntuBug(String SNAP) {
    return '若要发送包含有关调试信息的自动化错误报告，请在终端中或从命令控制台（Alt+F2）执行 <pre>sudo ubuntu-bug $SNAP</pre>。';
  }

  @override
  String get errorPageShowLog => '显示日志';

  @override
  String get errorPageHideLog => '隐藏日志';

  @override
  String get restart => '重新启动';

  @override
  String get close => '关闭';

  @override
  String get timezonePageTitle => '选择您的时区';

  @override
  String get timezoneLocationLabel => '位置';

  @override
  String get timezoneTimezoneLabel => '时区';

  @override
  String get keyboardTitle => '键盘布局';

  @override
  String get keyboardHeader => '选择您的键盘布局';

  @override
  String get keyboardTestHint => '在此键入以测试您的键盘';

  @override
  String get keyboardDetectTitle => '检测键盘布局';

  @override
  String get keyboardDetectButton => '检测';

  @override
  String get keyboardVariantLabel => '键盘变体：';

  @override
  String get keyboardPressKeyLabel => '请按下以下按键中的任意一个：';

  @override
  String get keyboardKeyPresentLabel => '您的键盘上是否有以下键？';

  @override
  String get themePageTitle => '选择您的主题';

  @override
  String get themePageHeader => '稍后您可以在“外观设置”中进行更改。';

  @override
  String get themeDark => '深色';

  @override
  String get themeLight => '浅色';

  @override
  String localePageTitle(String DISTRO) {
    return '欢迎来到 $DISTRO';
  }

  @override
  String get localeHeader => '选择您的语言：';

  @override
  String get identityPageTitle => '设置您的帐户';

  @override
  String get identityAutoLogin => '自动登录';

  @override
  String get identityRequirePassword => '登录时需要密码';

  @override
  String get identityRealNameLabel => '您的姓名';

  @override
  String get identityRealNameRequired => '需要名字';

  @override
  String get identityRealNameTooLong => '名字过长。';

  @override
  String get identityHostnameLabel => '您的电脑主机名';

  @override
  String get identityHostnameInfo => '与其他计算机联络时使用的名称。';

  @override
  String get identityHostnameRequired => '需要计算机名称';

  @override
  String get identityHostnameTooLong => '电脑名称太长了。';

  @override
  String get identityInvalidHostname => '计算机主机名无效';

  @override
  String get identityUsernameLabel => '键入一个用户名';

  @override
  String get identityUsernameRequired => '需要用户名';

  @override
  String get identityInvalidUsername => '用户名无效';

  @override
  String get identityUsernameInUse => '这个用户名已经存在。';

  @override
  String get identityUsernameSystemReserved => '这个名称保留给系统使用。';

  @override
  String get identityUsernameTooLong => '名字过长.';

  @override
  String get identityUsernameInvalidChars => '这个名称包含无效字符。';

  @override
  String get identityPasswordLabel => '选择一个密码';

  @override
  String get identityPasswordRequired => '需要密码';

  @override
  String get identityConfirmPasswordLabel => '确认您的密码';

  @override
  String get identityPasswordMismatch => '密码不匹配';

  @override
  String get identityPasswordShow => '显示';

  @override
  String get identityPasswordHide => '隐藏';

  @override
  String get identityActiveDirectoryOption => '使用活动目录';

  @override
  String get identityActiveDirectoryInfo => '您将在下一步中输入域和其他详细信息。';

  @override
  String get activeDirectoryTitle => '配置活动目录';

  @override
  String get activeDirectoryHeader => '登录 Active Directory 吗？';

  @override
  String activeDirectoryInfo(String DISTRO) {
    return '$DISTRO 被设计为与 Active Directory 无缝集成，使管理更轻松。';
  }

  @override
  String get activeDirectoryTestConnection => '测试域连接';

  @override
  String get activeDirectoryDomainLabel => '域';

  @override
  String get activeDirectoryDomainEmpty => '必填';

  @override
  String get activeDirectoryDomainTooLong => '太长了';

  @override
  String get activeDirectoryDomainInvalidChars => '无效字符';

  @override
  String get activeDirectoryDomainStartDot => '以点（.）开头';

  @override
  String get activeDirectoryDomainEndDot => '以点（.）结尾';

  @override
  String get activeDirectoryDomainStartHyphen => '以连字符 （-） 开头';

  @override
  String get activeDirectoryDomainEndHyphen => '以连字符 （-） 结尾';

  @override
  String get activeDirectoryDomainMultipleDots => '包含多个有序点 (..)';

  @override
  String get activeDirectoryDomainNotFound => '未找到域';

  @override
  String get activeDirectoryAdminLabel => '域管理员';

  @override
  String get activeDirectoryAdminEmpty => '必填';

  @override
  String get activeDirectoryAdminInvalidChars => '无效字符';

  @override
  String get activeDirectoryPasswordLabel => '密码';

  @override
  String get activeDirectoryPasswordEmpty => '必填';

  @override
  String get activeDirectoryErrorTitle => '配置活动目录时出错';

  @override
  String get activeDirectoryErrorMessage =>
      '抱歉，活动目录目前无法设置。系统启动并运行后，请访问 <a href=\"https://help.ubuntu.com/activedirectory\">help.ubuntu.com/activedirectory</a> 寻求帮助。';

  @override
  String get networkPageTitle => '连接到互联网';

  @override
  String get networkPageHeader => '连接到互联网';

  @override
  String get networkPageBody => '连接网络后，兼容性检查与附加软件包可以改善您的安装。';

  @override
  String get networkWiredOption => '使用有线连接';

  @override
  String get networkWiredNone => '未检测到有线连接';

  @override
  String get networkWiredOff => '有线连接已关闭';

  @override
  String get networkWiredDisabled => '要在此电脑上使用网络，必须启用有线连接';

  @override
  String get networkWiredEnable => '启用有线连接';

  @override
  String get networkWifiOption => '连接到 Wi-Fi 网络';

  @override
  String get networkWifiOff => '无线网络已禁用';

  @override
  String get networkWifiNone => '找不到 Wi-Fi 设备';

  @override
  String get networkWifiDisabled => '要在此电脑上使用Wi-Fi，必须启用无线网络';

  @override
  String get networkWifiEnable => '启用 Wi-Fi';

  @override
  String get networkHiddenWifiOption => '连接到隐藏的 Wi-Fi 网络';

  @override
  String get networkHiddenWifiNameLabel => '网络名称';

  @override
  String get networkHiddenWifiNameRequired => '需要网络名称';

  @override
  String get networkNoneOption => '我现在不想连接到互联网';

  @override
  String get eulaPageTitle => '许可协议';

  @override
  String get eulaReviewTerms => '查看许可条款';

  @override
  String get eulaReadAndAcceptTerms => '要继续配置此计算机，您必须阅读并同意许可协议条款。';

  @override
  String get eulaAcceptTerms => '我已阅读并同意这些条款';

  @override
  String get successIconSemanticLabel => 'Success';

  @override
  String get closeIconSemanticLabel => 'Close';

  @override
  String get maximizeIconSemanticLabel => 'Maximize';

  @override
  String get minimizeIconSemanticLabel => 'Minimize';
}

/// The translations for Chinese, as used in Taiwan (`zh_TW`).
class UbuntuProvisionLocalizationsZhTw extends UbuntuProvisionLocalizationsZh {
  UbuntuProvisionLocalizationsZhTw() : super('zh_TW');

  @override
  String get accessibilityPageTitle => '無障礙功能';

  @override
  String accessibilityPageHeader(String DISTRO) {
    return '$DISTRO 中的無障礙功能';
  }

  @override
  String accessibilityPageBody(String DISTRO) {
    return '在設定之前，請依照您的需求自訂 $DISTRO。您也可以安裝後在「系統設定」中變更這些設定。';
  }

  @override
  String get accessibilitySeeingLabel => '視覺';

  @override
  String get accessibilityHearingLabel => '聽覺';

  @override
  String get accessibilityTypingLabel => '文字輸入';

  @override
  String get accessibilityPointingLabel => '指向與點擊';

  @override
  String get accessibilityZoomLabel => '放大';

  @override
  String get accessibilityHighContrastLabel => '高對比';

  @override
  String get accessibilityLargeTextLabel => '大文字';

  @override
  String get accessibilityReduceAnimationLabel => '減少動畫效果';

  @override
  String get accessibilityScreenReaderLabel => '螢幕閱讀器';

  @override
  String get accessibilityVisualAlertsLabel => '使用視覺效果取代警示音';

  @override
  String get accessibilityStickKeysLabel => '相黏鍵';

  @override
  String get accessibilitySlowKeysLabel => '慢速按鍵';

  @override
  String get accessibilityMouseKeysLabel => '滑鼠鍵';

  @override
  String get accessibilityDesktopZoomLabel => '桌面放大';

  @override
  String get errorPageTitle => '發生錯誤';

  @override
  String get errorPageUnexpected =>
      '很抱歉，我們並不確定具體發生了什麼錯誤。您可以試著重新啟動您的電腦並再次進行系統安裝流程。您也可以<a>回報問題</a>。';

  @override
  String errorPageUbuntuBug(String SNAP) {
    return '若要傳送包含相關除錯資訊的自動化錯誤報告，請在終端機中或從命令控制台（Alt+F2）執行 <pre>sudo ubuntu-bug $SNAP</pre>。';
  }

  @override
  String get errorPageShowLog => '顯示運行紀錄';

  @override
  String get errorPageHideLog => '隱藏運行紀錄';

  @override
  String get restart => '重新啟動';

  @override
  String get close => '關閉';

  @override
  String get timezonePageTitle => '請選擇您的時區';

  @override
  String get timezoneLocationLabel => '地點';

  @override
  String get timezoneTimezoneLabel => '時區';

  @override
  String get keyboardTitle => '鍵盤配置';

  @override
  String get keyboardHeader => '請選擇您的鍵盤配置';

  @override
  String get keyboardTestHint => '在這裡輸入以測試您的鍵盤';

  @override
  String get keyboardDetectTitle => '偵測鍵盤配置';

  @override
  String get keyboardDetectButton => '偵測';

  @override
  String get keyboardVariantLabel => '鍵盤變體：';

  @override
  String get keyboardPressKeyLabel => '請按以下其中一個鍵：';

  @override
  String get keyboardKeyPresentLabel => '以下按鍵有出現在您的鍵盤嗎？';

  @override
  String get themePageTitle => '請選擇您的佈景主題';

  @override
  String get themePageHeader => '您可以在外觀設定中隨時變更。';

  @override
  String get themeDark => '暗色';

  @override
  String get themeLight => '亮色';

  @override
  String localePageTitle(String DISTRO) {
    return '歡迎使用 $DISTRO';
  }

  @override
  String get localeHeader => '請選擇您的語言：';

  @override
  String get identityPageTitle => '設定您的帳號';

  @override
  String get identityAutoLogin => '自動登入';

  @override
  String get identityRequirePassword => '需要我的密碼才能登入';

  @override
  String get identityRealNameLabel => '您的姓名';

  @override
  String get identityRealNameRequired => '姓名為必填欄位';

  @override
  String get identityRealNameTooLong => '該姓名太長。';

  @override
  String get identityHostnameLabel => '您電腦的名稱';

  @override
  String get identityHostnameInfo => '當它與其它電腦溝通時所使用的名稱。';

  @override
  String get identityHostnameRequired => '電腦名稱為必填欄位';

  @override
  String get identityHostnameTooLong => '該電腦名稱太長。';

  @override
  String get identityInvalidHostname => '該電腦名稱無效';

  @override
  String get identityUsernameLabel => '輸入使用者名稱';

  @override
  String get identityUsernameRequired => '使用者名稱為必填欄位';

  @override
  String get identityInvalidUsername => '該使用者名稱無效';

  @override
  String get identityUsernameInUse => '該使用者名稱已存在。';

  @override
  String get identityUsernameSystemReserved => '該使用者名稱已為系統使用而保留。';

  @override
  String get identityUsernameTooLong => '該使用者名稱太長。';

  @override
  String get identityUsernameInvalidChars => '該使用者名稱包含無效字元。';

  @override
  String get identityPasswordLabel => '請輸入密碼';

  @override
  String get identityPasswordRequired => '密碼為必填欄位';

  @override
  String get identityConfirmPasswordLabel => '確認您的密碼';

  @override
  String get identityPasswordMismatch => '兩次密碼輸入不合';

  @override
  String get identityPasswordShow => '顯示密碼';

  @override
  String get identityPasswordHide => '隱藏密碼';

  @override
  String get identityActiveDirectoryOption => '使用 Active Directory';

  @override
  String get identityActiveDirectoryInfo => '您將會在下一步輸入網域與其他資訊。';

  @override
  String get activeDirectoryTitle => '設定 Active Directory';

  @override
  String get activeDirectoryHeader => '是否要進行 Active Directory 設定？';

  @override
  String activeDirectoryInfo(String DISTRO) {
    return '為管理方便，$DISTRO 被設計成可以無縫整合至 Active Directory。';
  }

  @override
  String get activeDirectoryTestConnection => '測試網域連接';

  @override
  String get activeDirectoryDomainLabel => '網域';

  @override
  String get activeDirectoryDomainEmpty => '必填';

  @override
  String get activeDirectoryDomainTooLong => '太長';

  @override
  String get activeDirectoryDomainInvalidChars => '無效字元';

  @override
  String get activeDirectoryDomainStartDot => '以 \".\" 起頭';

  @override
  String get activeDirectoryDomainEndDot => '以 \".\" 結尾';

  @override
  String get activeDirectoryDomainStartHyphen => '以 \"-\" 起頭';

  @override
  String get activeDirectoryDomainEndHyphen => '以 \"-\" 結尾';

  @override
  String get activeDirectoryDomainMultipleDots => '包含連續的點號 (..)';

  @override
  String get activeDirectoryDomainNotFound => '找不到網域';

  @override
  String get activeDirectoryAdminLabel => '接入網域的使用者';

  @override
  String get activeDirectoryAdminEmpty => '必填';

  @override
  String get activeDirectoryAdminInvalidChars => '無效字元';

  @override
  String get activeDirectoryPasswordLabel => '密碼';

  @override
  String get activeDirectoryPasswordEmpty => '必填';

  @override
  String get activeDirectoryErrorTitle => '在配置 Active Directory 連線時發生錯誤';

  @override
  String get activeDirectoryErrorMessage =>
      '抱歉，無法立即設定 Active Directory。當您的系統安裝完成時，請造訪 <a href=\"https://help.ubuntu.com/activedirectory\">help.ubuntu.com/activedirectory</a> 以取得協助。';

  @override
  String get networkPageTitle => '網路連線';

  @override
  String get networkPageHeader => '連線到網際網路';

  @override
  String get networkPageBody => '有效的網際網路連線可以透過硬體相容性檢查與安裝額外的軟體包來改進您的安裝體驗。';

  @override
  String get networkWiredOption => '使用有線網路';

  @override
  String get networkWiredNone => '未偵測到有線網路連線';

  @override
  String get networkWiredOff => '有線網路連線已關閉';

  @override
  String get networkWiredDisabled => '為了在本電腦上使用有線網路，必須啟用有線網路連線';

  @override
  String get networkWiredEnable => '啟用有線網路連線';

  @override
  String get networkWifiOption => '連線到 Wi-Fi 網路';

  @override
  String get networkWifiOff => '無線網路已關閉';

  @override
  String get networkWifiNone => '未偵測到 Wi-Fi 裝置';

  @override
  String get networkWifiDisabled => '為了在本電腦上使用 Wi-Fi，必須啟用無線網路';

  @override
  String get networkWifiEnable => '啟用 Wi-Fi';

  @override
  String get networkHiddenWifiOption => '連線到隱藏的 Wi-Fi 網路';

  @override
  String get networkHiddenWifiNameLabel => '網路名稱';

  @override
  String get networkHiddenWifiNameRequired => '網路名稱為必填欄位';

  @override
  String get networkNoneOption => '我現在不想要連線到網路';

  @override
  String get eulaPageTitle => '授權合約';

  @override
  String get eulaReviewTerms => '檢視授權條款';

  @override
  String get eulaReadAndAcceptTerms => '若要繼續設定本機，您必須閱讀並接受授權合約條款。';

  @override
  String get eulaAcceptTerms => '我已閱讀並接受這些條款';
}
