import 'ubuntu_provision_localizations.dart';

/// The translations for Chinese (`zh`).
class UbuntuProvisionLocalizationsZh extends UbuntuProvisionLocalizations {
  UbuntuProvisionLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String accessibilityPageTitle(Object DISTRO) {
    return 'Accessibility in $DISTRO';
  }

  @override
  String accessibilityPageBody(Object DISTRO) {
    return 'Customise $DISTRO to your needs before you set up. You can change them later in System Settings.';
  }

  @override
  String get accessibilitySeeingLabel => 'Seeing';

  @override
  String get accessibilityHearingLabel => 'Hearing';

  @override
  String get accessibilityTypingLabel => 'Typing';

  @override
  String get accessibilityPointingLabel => 'Pointing and clicking';

  @override
  String get accessibilityZoomLabel => 'Zoom';

  @override
  String get accessibilityHighContrastLabel => 'High contrast';

  @override
  String get accessibilityLargeTextLabel => 'Large text';

  @override
  String get accessibilityReduceAnimationLabel => 'Reduce animation';

  @override
  String get accessibilityScreenReaderLabel => 'Screen reader';

  @override
  String get accessibilityVisualAlertsLabel => 'Visual alerts';

  @override
  String get accessibilityStickKeysLabel => 'Sticky keys';

  @override
  String get accessibilitySlowKeysLabel => 'Slow keys';

  @override
  String get accessibilityMouseKeysLabel => 'Mouse keys';

  @override
  String get accessibilityDesktopZoomLabel => 'Desktop zoom';

  @override
  String get errorPageTitle => 'Something went wrong';

  @override
  String get errorPageUnexpected => 'An unexpected error has occurred';

  @override
  String get timezonePageTitle => '选择您的时区';

  @override
  String get timezoneLocationLabel => '位置';

  @override
  String get timezoneTimezoneLabel => '时区';

  @override
  String get keyboardTitle => '键盘布局';

  @override
  String get keyboardHeader => '选择您的键盘布局：';

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
  String localePageTitle(Object DISTRO) {
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
  String get activeDirectoryErrorMessage => '抱歉，活动目录目前无法设置。系统启动并运行后，请访问 <a href=\"https://help.ubuntu.com/activedirectory\">help.ubuntu.com/activedirectory</a> 寻求帮助。';

  @override
  String get networkPageTitle => '连接到互联网';

  @override
  String get networkPageHeader => '将这台电脑连接到互联网有助于 Ubuntu 安装所需的任何额外软件并选择您的时区。\n\n通过以太网电缆连接，或选择 Wi-Fi 网络';

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
}

/// The translations for Chinese, as used in Taiwan (`zh_TW`).
class UbuntuProvisionLocalizationsZhTw extends UbuntuProvisionLocalizationsZh {
  UbuntuProvisionLocalizationsZhTw(): super('zh_TW');

  @override
  String get timezonePageTitle => '請選擇您的時區';

  @override
  String get timezoneLocationLabel => '地點';

  @override
  String get timezoneTimezoneLabel => '時區';

  @override
  String get keyboardTitle => '鍵盤配置';

  @override
  String get keyboardHeader => '請選擇您的鍵盤配置：';

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
  String localePageTitle(Object DISTRO) {
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
  String get activeDirectoryErrorMessage => '抱歉，無法立即設定 Active Directory。當您的系統安裝完成時，請造訪 <a href=\"https://help.ubuntu.com/activedirectory\">help.ubuntu.com/activedirectory</a> 以取得協助。';

  @override
  String get networkPageTitle => '連接到網際網路';

  @override
  String get networkPageHeader => '將這台電腦連接到網際網路，可以讓 Ubuntu 安裝任何所需要的額外軟體，以及自動選擇您所在的時區。\n\n可透過有線網路或選擇 Wi-Fi 網路來連接';

  @override
  String get networkWiredOption => '使用有線網路';

  @override
  String get networkWiredNone => '未偵測到有線網路連接';

  @override
  String get networkWiredOff => '有線網路連線已關閉';

  @override
  String get networkWiredDisabled => '為了在本電腦上使用有線網路，必須啟用有線網路連接';

  @override
  String get networkWiredEnable => '啟用有線網路連接';

  @override
  String get networkWifiOption => '連接到 Wi-Fi 網路';

  @override
  String get networkWifiOff => '無線網路已關閉';

  @override
  String get networkWifiNone => '未偵測到 Wi-Fi 裝置';

  @override
  String get networkWifiDisabled => '為了在本電腦上使用 Wi-Fi，必須啟用無線網路';

  @override
  String get networkWifiEnable => '啟用 Wi-Fi';

  @override
  String get networkHiddenWifiOption => '連接到隱藏的 Wi-Fi 網路';

  @override
  String get networkHiddenWifiNameLabel => '網路名稱';

  @override
  String get networkHiddenWifiNameRequired => '網路名稱為必填欄位';

  @override
  String get networkNoneOption => '我現在不想要連接網路';
}
