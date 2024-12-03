import 'ubuntu_provision_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class UbuntuProvisionLocalizationsTh extends UbuntuProvisionLocalizations {
  UbuntuProvisionLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get accessibilityPageTitle => 'Accessibility';

  @override
  String accessibilityPageHeader(String DISTRO) {
    return 'Accessibility in $DISTRO';
  }

  @override
  String accessibilityPageBody(String DISTRO) {
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
  String get errorPageUnexpected => 'We\'re sorry, but we\'re not sure what the error is. You can try restarting your computer and start the installation process again. You can can also <a>report the issue</a>.';

  @override
  String errorPageUbuntuBug(String SNAP) {
    return 'To send an automated bug report including relevant debug information, please run <pre>sudo ubuntu-bug $SNAP</pre> in a terminal, or from the command console (Alt+F2).';
  }

  @override
  String get errorPageShowLog => 'Show log';

  @override
  String get errorPageHideLog => 'Hide log';

  @override
  String get restart => 'Restart';

  @override
  String get close => 'ปิด';

  @override
  String get timezonePageTitle => 'เลือกเขตเวลาของคุณ';

  @override
  String get timezoneLocationLabel => 'ตำแหน่งที่ตั้ง';

  @override
  String get timezoneTimezoneLabel => 'เขตเวลา';

  @override
  String get keyboardTitle => 'ผังแป้นพิมพ์';

  @override
  String get keyboardHeader => 'เลือกผังแป้นพิมพ์ของคุณ';

  @override
  String get keyboardTestHint => 'พิมพ์ที่นี่ เพื่อทดสอบแป้นพิมพ์ของคุณ (กด Alt+Shift เพื่อสลับภาษา)';

  @override
  String get keyboardDetectTitle => 'ตรวจหาผังแป้นพิมพ์';

  @override
  String get keyboardDetectButton => 'ตรวจหา';

  @override
  String get keyboardVariantLabel => 'เลือกรูปแบบแป้นพิมพ์ของคุณ:';

  @override
  String get keyboardPressKeyLabel => 'โปรดกดปุ่มใดปุ่มหนึ่งในรายการนี้:';

  @override
  String get keyboardKeyPresentLabel => 'ปุ่มดังกล่าวมีอยู่บนแป้นพิมพ์หรือไม่?';

  @override
  String get themePageTitle => 'เลือกชุดตกแต่งของคุณ';

  @override
  String get themePageHeader => 'You can always change this later in the appearance settings.';

  @override
  String get themeDark => 'Dark';

  @override
  String get themeLight => 'Light';

  @override
  String localePageTitle(String DISTRO) {
    return 'Welcome to $DISTRO';
  }

  @override
  String get localeHeader => 'เลือกภาษาของคุณ:';

  @override
  String get identityPageTitle => 'สร้างบัญชีของคุณ';

  @override
  String get identityAutoLogin => 'เข้าระบบอัตโนมัติ';

  @override
  String get identityRequirePassword => 'ต้องป้อนรหัสผ่านเพื่อเข้าระบบ';

  @override
  String get identityRealNameLabel => 'ชื่อของคุณ';

  @override
  String get identityRealNameRequired => 'ต้องป้อนชื่อด้วย';

  @override
  String get identityRealNameTooLong => 'ชื่อนั้นยาวเกินไป';

  @override
  String get identityHostnameLabel => 'ชื่อคอมพิวเตอร์ของคุณ';

  @override
  String get identityHostnameInfo => 'ชื่อที่เครื่องใช้เมื่อติดต่อกับคอมพิวเตอร์เครื่องอื่น';

  @override
  String get identityHostnameRequired => 'ต้องป้อนชื่อคอมพิวเตอร์ด้วย';

  @override
  String get identityHostnameTooLong => 'ชื่อคอมพิวเตอร์นั้นยาวเกินไป';

  @override
  String get identityInvalidHostname => 'ชื่อคอมพิวเตอร์นั้นใช้ไม่ได้';

  @override
  String get identityUsernameLabel => 'ชื่อผู้ใช้ของคุณ';

  @override
  String get identityUsernameRequired => 'A username is required';

  @override
  String get identityInvalidUsername => 'ชื่อผู้ใช้นั้นใช้ไม่ได้';

  @override
  String get identityUsernameInUse => 'ชื่อผู้ใช้นั้นมีอยู่แล้ว';

  @override
  String get identityUsernameSystemReserved => 'ชื่อนั้นสงวนไว้สำหรับใช้โดยระบบ';

  @override
  String get identityUsernameTooLong => 'ชื่อนั้นยาวเกินไป';

  @override
  String get identityUsernameInvalidChars => 'ชื่อนั้นมีอักขระที่ใช้ไม่ได้';

  @override
  String get identityPasswordLabel => 'รหัสผ่าน';

  @override
  String get identityPasswordRequired => 'ต้องป้อนรหัสผ่านด้วย';

  @override
  String get identityConfirmPasswordLabel => 'ยืนยันรหัสผ่าน';

  @override
  String get identityPasswordMismatch => 'รหัสผ่านไม่ตรงกัน';

  @override
  String get identityPasswordShow => 'แสดง';

  @override
  String get identityPasswordHide => 'ซ่อน';

  @override
  String get identityActiveDirectoryOption => 'Use Active Directory';

  @override
  String get identityActiveDirectoryInfo => 'You\'ll enter domain and other details in the next step.';

  @override
  String get activeDirectoryTitle => 'Log into Active Directory';

  @override
  String get activeDirectoryHeader => 'Log into Active Directory?';

  @override
  String activeDirectoryInfo(String DISTRO) {
    return '$DISTRO is designed to integrate seamlessly with Active Directory for easier administration.';
  }

  @override
  String get activeDirectoryTestConnection => 'Test domain connectivity';

  @override
  String get activeDirectoryDomainLabel => 'Domain';

  @override
  String get activeDirectoryDomainEmpty => 'Required';

  @override
  String get activeDirectoryDomainTooLong => 'Too long';

  @override
  String get activeDirectoryDomainInvalidChars => 'Invalid characters';

  @override
  String get activeDirectoryDomainStartDot => 'Starts with a dot (.)';

  @override
  String get activeDirectoryDomainEndDot => 'Ends with a dot (.)';

  @override
  String get activeDirectoryDomainStartHyphen => 'Starts with a hyphen (-)';

  @override
  String get activeDirectoryDomainEndHyphen => 'Ends with a hyphen (-)';

  @override
  String get activeDirectoryDomainMultipleDots => 'Contains multiple sequenced dots (..)';

  @override
  String get activeDirectoryDomainNotFound => 'Domain not found';

  @override
  String get activeDirectoryAdminLabel => 'Domain join user';

  @override
  String get activeDirectoryAdminEmpty => 'Required';

  @override
  String get activeDirectoryAdminInvalidChars => 'Invalid characters';

  @override
  String get activeDirectoryPasswordLabel => 'Password';

  @override
  String get activeDirectoryPasswordEmpty => 'Required';

  @override
  String get activeDirectoryErrorTitle => 'Error configuring connection to Active Directory';

  @override
  String get activeDirectoryErrorMessage => 'Sorry, Active Directory can\'t be set up at the moment. Once your system is up and running, visit <a href=\"https://help.ubuntu.com/activedirectory\">help.ubuntu.com/activedirectory</a> for help.';

  @override
  String get networkPageTitle => 'การเชื่อมต่ออินเทอร์เน็ต';

  @override
  String get networkPageHeader => 'เชื่อมต่อกับอินเทอร์เน็ต';

  @override
  String get networkPageBody => 'An internet connection will improve your installation with compatibility check and extra software packages.';

  @override
  String get networkWiredOption => 'ใช้การเชื่อมต่อแบบโยงสาย';

  @override
  String get networkWiredNone => 'ไม่พบการเชื่อมต่อแบบโยงสาย';

  @override
  String get networkWiredOff => 'การเชื่อมต่อแบบโยงสายปิดอยู่';

  @override
  String get networkWiredDisabled => 'เมื่อต้องการใช้อีเทอร์เน็ตกับคอมพิวเตอร์เครื่องนี้ จะต้องเปิดใช้การเชื่อมต่อแบบโยงสาย';

  @override
  String get networkWiredEnable => 'เปิดใช้การเชื่อมต่อแบบโยงสาย';

  @override
  String get networkWifiOption => 'เชื่อมต่อกับเครือข่าย Wi-Fi';

  @override
  String get networkWifiOff => 'ระบบเครือข่ายแบบไร้สายปิดใช้อยู่';

  @override
  String get networkWifiNone => 'ไม่พบอุปกรณ์ Wi-Fi';

  @override
  String get networkWifiDisabled => 'เมื่อต้องการใช้ Wi-Fi กับคอมพิวเตอร์เครื่องนี้ จะต้องเปิดใช้ระบบเครือข่ายแบบไร้สาย';

  @override
  String get networkWifiEnable => 'เปิดใช้ Wi-Fi';

  @override
  String get networkHiddenWifiOption => 'เชื่อมต่อกับเครือข่าย Wi-Fi ที่ซ่อนอยู่';

  @override
  String get networkHiddenWifiNameLabel => 'ชื่อเครือข่าย';

  @override
  String get networkHiddenWifiNameRequired => 'ต้องป้อนชื่อเครือข่ายด้วย';

  @override
  String get networkNoneOption => 'ไม่ต้องเชื่อมต่อกับอินเทอร์เน็ต';

  @override
  String get eulaPageTitle => 'License agreement';

  @override
  String get eulaReviewTerms => 'Review the license terms';

  @override
  String get eulaReadAndAcceptTerms => 'To continue setting up this machine, you must read and accept the license agreement terms.';

  @override
  String get eulaAcceptTerms => 'I have read and accept these terms';
}
