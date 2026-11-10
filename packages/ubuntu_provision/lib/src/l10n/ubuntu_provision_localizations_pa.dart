// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_provision_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Panjabi Punjabi (`pa`).
class UbuntuProvisionLocalizationsPa extends UbuntuProvisionLocalizations {
  UbuntuProvisionLocalizationsPa([String locale = 'pa']) : super(locale);

  @override
  String get accessibilityPageTitle => 'ਸੁਲਭਤਾ';

  @override
  String accessibilityPageHeader(String DISTRO) {
    return '$DISTRO ਵਿੱਚ ਅਸੈਸਬਿਲਟੀ';
  }

  @override
  String accessibilityPageBody(String DISTRO) {
    return 'Customise $DISTRO to your needs before you set up. You can change them later in the Settings app.';
  }

  @override
  String get accessibilitySeeingLabel => 'ਵੇਖਣਾ';

  @override
  String get accessibilityHearingLabel => 'ਸੁਣਨ';

  @override
  String get accessibilityTypingLabel => 'ਟਾਈਪਿੰਗ';

  @override
  String get accessibilityPointingLabel => 'ਪੁਆਇੰਟ ਅਤੇ ਕਲਿੱਕ ਕਰਨਾ';

  @override
  String get accessibilityZoomLabel => 'ਜ਼ੂਮ';

  @override
  String get accessibilityHighContrastLabel => 'ਵੱਧ ਕਨਟਰਾਸਟ';

  @override
  String get accessibilityLargeTextLabel => 'ਵੱਡੀ ਲਿਖਤ';

  @override
  String get accessibilityReduceAnimationLabel => 'ਐਨੀਮੇਸ਼ਨ ਘਟਾਓ';

  @override
  String get accessibilityScreenReaderLabel => 'ਸਕਰੀਨ ਰੀਡਰ';

  @override
  String get accessibilityVisualAlertsLabel => 'ਦਿੱਖ ਚੇਤਾਵਨੀਆਂ';

  @override
  String get accessibilityStickKeysLabel => 'ਸਟਿੱਕੀ ਕੁੰਜੀਆਂ';

  @override
  String get accessibilitySlowKeysLabel => 'ਹੌਲੀ ਕੁੰਜੀਆਂ';

  @override
  String get accessibilityMouseKeysLabel => 'ਮਾਊਸ ਕੁੰਜੀਆਂ';

  @override
  String get accessibilityDesktopZoomLabel => 'ਡੈਸਕਟਾਪ ਜ਼ੂਮ';

  @override
  String get errorPageTitle => 'ਕੁਝ ਗਲਤ ਵਾਪਰਿਆ ਹੈ';

  @override
  String get errorPageUnexpected =>
      'We\'re sorry, but we\'re not sure what the error is. You can try restarting your computer and start the installation process again. You can also <a>report the issue</a>.';

  @override
  String errorPageUbuntuBug(String SNAP) {
    return 'To send an automated bug report including relevant debug information, please run <pre>sudo ubuntu-bug $SNAP</pre> in a terminal, or from the command console (Alt+F2).';
  }

  @override
  String get errorPageShowLog => 'ਲੌਗ ਵੇਖਾਓ';

  @override
  String get errorPageHideLog => 'ਲੌਗ ਲੁਕਾਓ';

  @override
  String get errorPageTechnicalDetails => 'ਤਕਨੀਕੀ ਵੇਰਵੇ';

  @override
  String get restart => 'ਮੁੜ-ਚਾਲੂ';

  @override
  String get close => 'ਬੰਦ ਕਰੋ';

  @override
  String get timezonePageTitle => 'ਆਪਣਾ ਸਮਾਂ-ਖੇਤਰ ਚੁਣੋ';

  @override
  String get timezoneLocationLabel => 'ਟਿਕਾਣਾ';

  @override
  String get timezoneTimezoneLabel => 'ਸਮਾਂ-ਖੇਤਰ';

  @override
  String get keyboardTitle => 'ਕੀ-ਬੋਰਡ ਲੇਆਉਟ';

  @override
  String get keyboardHeader => 'ਆਪਣਾ ਕੀਬੋਰਡ ਲੇਆਉਟ ਚੁਣੋ:';

  @override
  String get keyboardTestHint => 'ਆਪਣੇ ਕੀਬੋਰਡ ਨੂੰ ਟੈਸਟ ਕਰਨ ਲਈ ਇੱਥੇ ਲਿਖੋ';

  @override
  String get keyboardDetectTitle => 'ਕੀਬੋਰਡ ਲੇਆਉਟ ਖੋਜੋ';

  @override
  String get keyboardDetectButton => 'ਪਤਾ ਲਗਾਓ';

  @override
  String get keyboardVariantLabel => 'ਆਪਣੇ ਕੀਬੋਰਡ ਦਾ ਵੇਰੀਐਂਟ ਚੁਣੋ:';

  @override
  String get keyboardPressKeyLabel => 'ਅੱਗੇ ਦਿੱਤੀਆਂ ਸਵਿੱਚਾਂ ਦੱਬੋ:';

  @override
  String get keyboardKeyPresentLabel =>
      'ਕੀ ਤੁਹਾਡੇ ਕੀਬੋਰਡ ਉੱਤੇ ਅੱਗੇ ਦਿੱਤੀ ਸਵਿੱਚ ਮੌਜੂਦ ਹੈ?';

  @override
  String get themePageTitle => 'ਆਪਣੇ ਥੀਮ ਨੂੰ ਚੁਣੋ';

  @override
  String get themePageHeader =>
      'You can always change this later in the appearance settings.';

  @override
  String get themeDark => 'ਗੂੜ੍ਹਾ';

  @override
  String get themeLight => 'ਹਲਕਾ';

  @override
  String localePageTitle(String DISTRO) {
    return '$DISTRO ਵਿੱਚ ਜੀ ਆਇਆਂ ਨੂੰ';
  }

  @override
  String get localeHeader => 'ਆਪਣੀ ਭਾਸ਼ਾ ਚੁਣੋ:';

  @override
  String get identityPageTitle => 'ਆਪਣਾ ਖਾਤਾ ਬਣਾਓ';

  @override
  String get identityAutoLogin => 'ਆਪਣੇ-ਆਪ ਲਾਗਇਨ ਕਰੋ';

  @override
  String get identityRequirePassword => 'ਲਾਗਇਨ ਕਰਨ ਲਈ ਮੇਰਾ ਪਾਸਵਰਡ ਚਾਹੀਦਾ ਹੈ';

  @override
  String get identityRealNameLabel => 'ਤੁਹਾਡਾ ਨਾਂ';

  @override
  String get identityRealNameRequired => 'ਨਾਂ ਚਾਹੀਦਾ ਹੈ';

  @override
  String get identityRealNameTooLong => 'ਉਹ ਨਾਂ ਬਹੁਤ ਲੰਮਾ ਹੈ।';

  @override
  String get identityInvalidRealName => 'ਨਾਂ ਵਾਜਬ ਨਹੀਂ ਹੈ';

  @override
  String get identityHostnameLabel => 'ਤੁਹਾਡੇ ਕੰਪਿਊਟਰ ਦਾ ਨਾਂ';

  @override
  String get identityHostnameInfo =>
      'ਉਹ ਨਾਂ, ਜਿਸ ਨੂੰ ਇਹ ਹੋਰ ਕੰਪਿਊਟਰਾਂ ਨਾਲ ਸੰਪਰਕ ਕਰਨ ਲਈ ਵਰਤਦਾ ਹੈ।';

  @override
  String get identityHostnameRequired => 'ਕੰਪਿਊਟਰ ਨਾਂ ਚਾਹੀਦਾ ਹੈ';

  @override
  String get identityHostnameTooLong => 'ਉਹ ਕੰਪਿਊਟਰ ਨਾਂ ਬਹੁਤ ਲੰਮਾ ਹੈ।';

  @override
  String get identityInvalidHostname => 'The computer name is invalid';

  @override
  String get identityUsernameLabel => 'ਤੁਹਾਡਾ ਵਰਤੋਂਕਾਰ-ਨਾਂ';

  @override
  String get identityUsernameRequired => 'ਵਰਤੋਂਕਾਰ-ਨਾਂ ਚਾਹੀਦਾ ਹੈ';

  @override
  String get identityInvalidUsername =>
      'The username is invalid: it must start with a lowercase letter and may only contain lowercase letters, digits, hyphens, and underscores.';

  @override
  String get identityUsernameInUse => 'ਉਹ ਵਰਤੋਂਕਾਰ-ਨਾਂ ਪਹਿਲਾਂ ਹੀ ਮੌਜੂਦ ਹੈ।';

  @override
  String get identityUsernameSystemReserved =>
      'ਉਹ ਨਾਂ ਸਿਸਟਮ ਵਰਤੋਂ ਲਈ ਰਾਖਵਾਂ ਹੈ।';

  @override
  String get identityUsernameTooLong => 'ਉਹ ਨਾਂ ਬਹੁਤ ਲੰਮਾ ਹੈ।';

  @override
  String get identityUsernameInvalidChars =>
      'That name contains invalid characters.';

  @override
  String get identityPasswordLabel => 'ਪਾਸਵਰਡ';

  @override
  String get identityPasswordRequired => 'ਪਾਸਵਰਡ ਚਾਹੀਦਾ ਹੈ';

  @override
  String get identityConfirmPasswordLabel => 'ਪਾਸਵਰਡ ਦੀ ਪੁਸ਼ਟੀ ਕਰੋ';

  @override
  String get identityPasswordMismatch => 'ਪਾਸਵਰਡ ਮਿਲਦੇ ਨਹੀਂ ਹਨ';

  @override
  String get identityPasswordShow => 'ਵੇਖਾਓ';

  @override
  String get identityPasswordHide => 'ਲੁਕਾਓ';

  @override
  String get identityActiveDirectoryOption => 'ਐਕਟਿਵ ਡਾਇਰੈਕਟਰੀ ਵਰਤੋ';

  @override
  String get identityActiveDirectoryInfo =>
      'You\'ll enter domain and other details in the next step.';

  @override
  String get activeDirectoryTitle => 'ਐਕਟਿਵ ਡਾਇਰੈਕਟਰੀ ਵਿੱਚ ਲਾਗ ਇਨ ਕਰੋ';

  @override
  String get activeDirectoryHeader => 'Log into Active Directory?';

  @override
  String activeDirectoryInfo(String DISTRO) {
    return '$DISTRO is designed to integrate seamlessly with Active Directory for easier administration.';
  }

  @override
  String get activeDirectoryTestConnection => 'Test domain connectivity';

  @override
  String get activeDirectoryDomainLabel => 'ਡੋਮੇਨ';

  @override
  String get activeDirectoryDomainEmpty => 'ਲਾਜ਼ਮੀ';

  @override
  String get activeDirectoryDomainTooLong => 'ਬਹੁਤ ਲੰਮਾ ਹੈ';

  @override
  String get activeDirectoryDomainInvalidChars => 'ਗਲਤ ਅੱਖਰ';

  @override
  String get activeDirectoryDomainStartDot => 'ਬਿੰਦੀ (.) ਨਾਲ ਸ਼ੁਰੂ ਹੁੰਦਾ ਹੈ';

  @override
  String get activeDirectoryDomainEndDot => 'ਬਿੰਦੀ (.) ਨਾਲ ਖਤਮ ਹੁੰਦਾ ਹੈ';

  @override
  String get activeDirectoryDomainStartHyphen =>
      'ਘਟਾਓ (-) ਦੇ ਨਿਸ਼ਾਨ ਨਾਲ ਸ਼ੁਰੂ ਹੁੰਦਾ ਹੈ';

  @override
  String get activeDirectoryDomainEndHyphen => 'ਹਾਈਫ਼ਨ (-) ਨਾਲ ਖ਼ਤਮ ਹੁੰਦਾ ਹੈ';

  @override
  String get activeDirectoryDomainMultipleDots =>
      'Contains multiple sequenced dots (..)';

  @override
  String get activeDirectoryDomainNotFound => 'Domain not found';

  @override
  String get activeDirectoryAdminLabel => 'Domain join user';

  @override
  String get activeDirectoryAdminEmpty => 'Required';

  @override
  String get activeDirectoryAdminInvalidChars => 'Invalid characters';

  @override
  String get activeDirectoryPasswordLabel => 'ਪਾਸਵਰਡ';

  @override
  String get activeDirectoryPasswordEmpty => 'ਲੋੜੀਂਦਾ';

  @override
  String get activeDirectoryErrorTitle =>
      'Error configuring connection to Active Directory';

  @override
  String get activeDirectoryErrorMessage =>
      'Sorry, Active Directory can\'t be set up at the moment. Once your system is up and running, visit <a href=\"https://help.ubuntu.com/activedirectory\">help.ubuntu.com/activedirectory</a> for help.';

  @override
  String get networkPageTitle => 'ਇੰਟਰਨੈੱਟ ਕਨੈਕਸ਼ਨ';

  @override
  String get networkPageHeader => 'ਇੰਟਰਨੈੱਟ ਨਾਲ ਕਨੈਕਟ ਕਰੋ';

  @override
  String get networkPageBody =>
      'ਇੰਟਰਨੈੱਟ ਕਨੈਕਸ਼ਨ ਅਨੁਕੂਲਤਾ ਦੀ ਜਾਂਚ ਅਤੇ ਵਾਧੂ ਸਾਫਟਵੇਅਰ ਪੈਕੇਜਾਂ ਨਾਲ ਤੁਹਾਡੀ ਇੰਸਟਾਲੇਸ਼ਨ ਨੂੰ ਸੁਧਾਰੇਗਾ।';

  @override
  String get networkWiredOption => 'ਤਾਰ ਵਾਲਾ ਕਨੈਕਸ਼ਨ ਵਰਤੋਂ';

  @override
  String get networkWiredNone => 'ਕੋਈ ਤਾਰ ਵਾਲਾ ਕਨੈਕਸ਼ਨ ਨਹੀਂ ਮਿਲਿਆ';

  @override
  String get networkWiredOff => 'ਤਾਰ ਵਾਲਾ ਕਨੈਕਸ਼ਨ ਬੰਦ ਹੈ';

  @override
  String get networkWiredDisabled =>
      'ਇਸ ਕੰਪਿਊਟਰ ਉੱਤੇ ਈਥਰਨੈੱਟ ਵਰਤਣ ਲਈ ਤਾਰ ਵਾਲਾ ਕਨੈਕਸ਼ਨ ਸਮਰੱਥ ਹੋਣਾ ਚਾਹੀਦਾ ਹੈ';

  @override
  String get networkWiredEnable => 'ਤਾਰ ਵਾਲਾ ਸਮਰੱਥ ਕਰੋ';

  @override
  String get networkWifiOption => 'ਵਾਈ-ਫਾਈ ਨੈੱਟਵਰਕ ਨਾਲ ਕਨੈਕਟ ਕਰੋ';

  @override
  String get networkWifiOff => 'ਬੇਤਾਰ ਨੈੱਟਵਰਕ ਅਸਮਰੱਥ ਹੈ';

  @override
  String get networkWifiNone => 'ਕੋਈ ਵਾਈ-ਫਾਈ ਡਿਵਾਈਸ ਨਹੀਂ ਲੱਭਿਆ';

  @override
  String get networkWifiDisabled =>
      'ਇਸ ਕੰਪਿਊਟਰ ਉੱਤੇ ਵਾਈ-ਫਾਈ ਵਰਤਣ ਲਈ, ਬੇਤਾਰ ਨੈੱਟਵਰਕਿੰਗ ਸਮਰੱਥ ਹੋਣੀ ਚਾਹੀਦੀ ਹੈ';

  @override
  String get networkWifiEnable => 'ਵਾਈ-ਫਾਈ ਸਮਰੱਥ ਕਰੋ';

  @override
  String get networkHiddenWifiOption => 'ਲੁਕਵੇਂ ਵਾਈ-ਫਾਈ ਨੈੱਟਵਰਕ ਨਾਲ ਕਨੈਕਟ ਕਰੋ';

  @override
  String get networkHiddenWifiNameLabel => 'ਨੈੱਟਵਰਕ ਨਾਂ';

  @override
  String get networkHiddenWifiNameRequired => 'ਨੈੱਟਵਰਕ ਨਾਂ ਚਾਹੀਦਾ ਹੈ';

  @override
  String get networkNoneOption => 'ਇੰਟਰਨੈੱਟ ਨਾਲ ਕਨੈਕਟ ਨਾ ਕਰੋ';

  @override
  String get eulaPageTitle => 'ਲਾਇਸੰਸ ਇਕਰਾਰਨਾਮਾ';

  @override
  String get eulaReviewTerms => 'Review the license terms';

  @override
  String get eulaReadAndAcceptTerms =>
      'To continue setting up this machine, you must read and accept the license agreement terms.';

  @override
  String get eulaAcceptTerms => 'I have read and accept these terms';

  @override
  String get successIconSemanticLabel => 'Success';

  @override
  String get closeIconSemanticLabel => 'Close';

  @override
  String get maximizeIconSemanticLabel => 'Maximize';

  @override
  String get minimizeIconSemanticLabel => 'Minimize';

  @override
  String get expandIconSemanticLabel => 'Expand';

  @override
  String get collapseIconSemanticLabel => 'Collapse';

  @override
  String get networkWifiSignalNone => 'No signal';

  @override
  String get networkWifiSignalWeak => 'Weak signal';

  @override
  String get networkWifiSignalOk => 'OK signal';

  @override
  String get networkWifiSignalGood => 'Good signal';

  @override
  String get networkWifiSignalExcellent => 'Excellent signal';

  @override
  String get networkWifiOpenNetwork => 'Open network';

  @override
  String get networkWifiSecureNetwork => 'Secure network';

  @override
  String get networkWifiConnecting => 'Connecting…';

  @override
  String get networkWifiConnected => 'Connected';

  @override
  String get logViewSemanticLabel => 'Log';
}
