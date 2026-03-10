// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_provision_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kannada (`kn`).
class UbuntuProvisionLocalizationsKn extends UbuntuProvisionLocalizations {
  UbuntuProvisionLocalizationsKn([String locale = 'kn']) : super(locale);

  @override
  String get accessibilityPageTitle => 'ಪ್ರವೇಶಿಸುವಿಕೆ';

  @override
  String accessibilityPageHeader(String DISTRO) {
    return '$DISTRO ನಲ್ಲಿ ಪ್ರವೇಶಿಸುವಿಕೆ';
  }

  @override
  String accessibilityPageBody(String DISTRO) {
    return 'ನೀವು ಹೊಂದಿಸುವ ಮೊದಲು ನಿಮ್ಮ ಅಗತ್ಯಗಳಿಗೆ $DISTRO ಅನ್ನು ಕಸ್ಟಮೈಸ್ ಮಾಡಿ. ನೀವು ಅವುಗಳನ್ನು ನಂತರ ಸಿಸ್ಟಂ ಸೆಟ್ಟಿಂಗ್‌ಗಳಲ್ಲಿ ಬದಲಾಯಿಸಬಹುದು.';
  }

  @override
  String get accessibilitySeeingLabel => 'ನೋಡುತ್ತಿದ್ದೇನೆ';

  @override
  String get accessibilityHearingLabel => 'ಕೇಳುವಿಕೆ';

  @override
  String get accessibilityTypingLabel => 'ಟೈಪಿಂಗ್';

  @override
  String get accessibilityPointingLabel => 'ಸೂಚಿಸುವುದು ಮತ್ತು ಕ್ಲಿಕ್ ಮಾಡುವುದು';

  @override
  String get accessibilityZoomLabel => 'ಜೂಮ್ ಮಾಡಿ';

  @override
  String get accessibilityHighContrastLabel => 'ಹೆಚ್ಚಿನ ಕಾಂಟ್ರಾಸ್ಟ್';

  @override
  String get accessibilityLargeTextLabel => 'ದೊಡ್ಡ ಪಠ್ಯ';

  @override
  String get accessibilityReduceAnimationLabel => 'ಅನಿಮೇಷನ್ ಅನ್ನು ಕಡಿಮೆ ಮಾಡಿ';

  @override
  String get accessibilityScreenReaderLabel => 'ಸ್ಕ್ರೀನ್ ರೀಡರ್';

  @override
  String get accessibilityVisualAlertsLabel => 'ದೃಶ್ಯ ಎಚ್ಚರಿಕೆಗಳು';

  @override
  String get accessibilityStickKeysLabel => 'ಅಂಟಿಕೊಳ್ಳುವ ಕೀಲಿಗಳು';

  @override
  String get accessibilitySlowKeysLabel => 'ನಿಧಾನ ಕೀಲಿಗಳು';

  @override
  String get accessibilityMouseKeysLabel => 'ಮೌಸ್ ಕೀಗಳು';

  @override
  String get accessibilityDesktopZoomLabel => 'ಡೆಸ್ಕ್‌ಟಾಪ್ ಜೂಮ್';

  @override
  String get errorPageTitle => 'ಏನೋ ತಪ್ಪಾಗಿದೆ';

  @override
  String get errorPageUnexpected =>
      'ನಮ್ಮನ್ನು ಕ್ಷಮಿಸಿ, ಆದರೆ ದೋಷ ಏನೆಂದು ನಮಗೆ ಖಚಿತವಿಲ್ಲ. ನಿಮ್ಮ ಕಂಪ್ಯೂಟರ್ ಅನ್ನು ಮರುಪ್ರಾರಂಭಿಸಲು ನೀವು ಪ್ರಯತ್ನಿಸಬಹುದು ಮತ್ತು ಅನುಸ್ಥಾಪನ ಪ್ರಕ್ರಿಯೆಯನ್ನು ಮತ್ತೆ ಪ್ರಾರಂಭಿಸಬಹುದು. ನೀವು <a>ಸಮಸ್ಯೆಯನ್ನು ವರದಿ ಮಾಡಬಹುದು</a>.';

  @override
  String errorPageUbuntuBug(String SNAP) {
    return 'ಸಂಬಂಧಿತ ಡೀಬಗ್ ಮಾಹಿತಿಯನ್ನು ಒಳಗೊಂಡಂತೆ ಸ್ವಯಂಚಾಲಿತ ದೋಷ ವರದಿಯನ್ನು ಕಳುಹಿಸಲು, ದಯವಿಟ್ಟು <pre>sudo ubuntu-bug $SNAP</pre> ಅನ್ನು ಟರ್ಮಿನಲ್‌ನಲ್ಲಿ ಅಥವಾ ಕಮಾಂಡ್ ಕನ್ಸೋಲ್‌ನಿಂದ (Alt F2) ರನ್ ಮಾಡಿ.';
  }

  @override
  String get errorPageShowLog => 'ಲಾಗ್ ತೋರಿಸು';

  @override
  String get errorPageHideLog => 'ಲಾಗ್ ಅನ್ನು ಮರೆಮಾಡಿ';

  @override
  String get errorPageTechnicalDetails => 'Technical details';

  @override
  String get restart => 'ಮರುಪ್ರಾರಂಭಿಸಿ';

  @override
  String get close => 'ಮುಚ್ಚಿ';

  @override
  String get timezonePageTitle => 'ನಿಮ್ಮ ಸಮಯವಲಯವನ್ನು ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get timezoneLocationLabel => 'ಸ್ಥಳ';

  @override
  String get timezoneTimezoneLabel => 'ಸಮಯವಲಯ';

  @override
  String get keyboardTitle => 'ಕೀಬೋರ್ಡ್ ಲೇಔಟ್';

  @override
  String get keyboardHeader => 'ನಿಮ್ಮ ಕೀಬೋರ್ಡ್ ವಿನ್ಯಾಸವನ್ನು ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get keyboardTestHint => 'ನಿಮ್ಮ ಕೀಬೋರ್ಡ್ ಪರೀಕ್ಷಿಸಲು ಇಲ್ಲಿ ಟೈಪ್ ಮಾಡಿ';

  @override
  String get keyboardDetectTitle => 'ಕೀಬೋರ್ಡ್ ವಿನ್ಯಾಸವನ್ನು ಪತ್ತೆ ಮಾಡಿ';

  @override
  String get keyboardDetectButton => 'ಪತ್ತೆ ಮಾಡಿ';

  @override
  String get keyboardVariantLabel => 'ನಿಮ್ಮ ಕೀಬೋರ್ಡ್ ರೂಪಾಂತರವನ್ನು ಆಯ್ಕೆಮಾಡಿ:';

  @override
  String get keyboardPressKeyLabel =>
      'ದಯವಿಟ್ಟು ಕೆಳಗಿನ ಕೀಗಳಲ್ಲಿ ಒಂದನ್ನು ಒತ್ತಿರಿ:';

  @override
  String get keyboardKeyPresentLabel =>
      'ನಿಮ್ಮ ಕೀಬೋರ್ಡ್‌ನಲ್ಲಿ ಈ ಕೆಳಗಿನ ಕೀ ಇದೆಯೇ?';

  @override
  String get themePageTitle => 'ನಿಮ್ಮ ಥೀಮ್ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get themePageHeader =>
      'ಗೋಚರತೆ ಸೆಟ್ಟಿಂಗ್‌ಗಳಲ್ಲಿ ನೀವು ಇದನ್ನು ಯಾವಾಗ ಬೇಕಾದರೂ ಬದಲಾಯಿಸಬಹುದು.';

  @override
  String get themeDark => 'ಕತ್ತಲು';

  @override
  String get themeLight => 'ಬೆಳಕು';

  @override
  String localePageTitle(String DISTRO) {
    return '$DISTRO ಗೆ ಸುಸ್ವಾಗತ';
  }

  @override
  String get localeHeader => 'ನಿಮ್ಮ ಭಾಷೆಯನ್ನು ಆರಿಸಿ:';

  @override
  String get identityPageTitle => 'ನಿಮ್ಮ ಖಾತೆಯನ್ನು ರಚಿಸಿ';

  @override
  String get identityAutoLogin => 'ಸ್ವಯಂಚಾಲಿತವಾಗಿ ಲಾಗ್ ಇನ್ ಮಾಡಿ';

  @override
  String get identityRequirePassword =>
      'ಲಾಗ್ ಇನ್ ಮಾಡಲು ನನ್ನ ಪಾಸ್‌ವರ್ಡ್ ಅಗತ್ಯವಿದೆ';

  @override
  String get identityRealNameLabel => 'ನಿಮ್ಮ ಹೆಸರು';

  @override
  String get identityRealNameRequired => 'ಒಂದು ಹೆಸರು ಅಗತ್ಯವಿದೆ';

  @override
  String get identityRealNameTooLong => 'ಆ ಹೆಸರು ತುಂಬಾ ಉದ್ದವಾಗಿದೆ.';

  @override
  String get identityHostnameLabel => 'ನಿಮ್ಮ ಕಂಪ್ಯೂಟರ್ ಹೆಸರು';

  @override
  String get identityHostnameInfo =>
      'ಇತರ ಕಂಪ್ಯೂಟರ್‌ಗಳೊಂದಿಗೆ ಮಾತನಾಡುವಾಗ ಅದು ಬಳಸುವ ಹೆಸರು.';

  @override
  String get identityHostnameRequired => 'ಕಂಪ್ಯೂಟರ್ ಹೆಸರು ಅಗತ್ಯವಿದೆ';

  @override
  String get identityHostnameTooLong => 'ಆ ಕಂಪ್ಯೂಟರ್ ಹೆಸರು ತುಂಬಾ ಉದ್ದವಾಗಿದೆ.';

  @override
  String get identityInvalidHostname => 'ಕಂಪ್ಯೂಟರ್ ಹೆಸರು ಅಮಾನ್ಯವಾಗಿದೆ';

  @override
  String get identityUsernameLabel => 'ನಿಮ್ಮ ಬಳಕೆದಾರ ಹೆಸರು';

  @override
  String get identityUsernameRequired => 'ಬಳಕೆದಾರಹೆಸರು ಅಗತ್ಯವಿದೆ';

  @override
  String get identityInvalidUsername => 'ಬಳಕೆದಾರಹೆಸರು ಅಮಾನ್ಯವಾಗಿದೆ';

  @override
  String get identityUsernameInUse => 'ಆ ಬಳಕೆದಾರ ಹೆಸರು ಈಗಾಗಲೇ ಅಸ್ತಿತ್ವದಲ್ಲಿದೆ.';

  @override
  String get identityUsernameSystemReserved =>
      'ಆ ಹೆಸರನ್ನು ಸಿಸ್ಟಮ್ ಬಳಕೆಗಾಗಿ ಕಾಯ್ದಿರಿಸಲಾಗಿದೆ.';

  @override
  String get identityUsernameTooLong => 'ಆ ಹೆಸರು ತುಂಬಾ ಉದ್ದವಾಗಿದೆ.';

  @override
  String get identityUsernameInvalidChars =>
      'ಆ ಹೆಸರು ಅಮಾನ್ಯ ಅಕ್ಷರಗಳನ್ನು ಒಳಗೊಂಡಿದೆ.';

  @override
  String get identityPasswordLabel => 'ಪಾಸ್ವರ್ಡ್';

  @override
  String get identityPasswordRequired => 'ಪಾಸ್ವರ್ಡ್ ಅಗತ್ಯವಿದೆ';

  @override
  String get identityConfirmPasswordLabel => 'ಪಾಸ್ವರ್ಡ್ ಅನ್ನು ದೃಢೀಕರಿಸಿ';

  @override
  String get identityPasswordMismatch => 'ಪಾಸ್‌ವರ್ಡ್‌ಗಳು ಹೊಂದಿಕೆಯಾಗುತ್ತಿಲ್ಲ';

  @override
  String get identityPasswordShow => 'ತೋರಿಸು';

  @override
  String get identityPasswordHide => 'ಮರೆಮಾಡಿ';

  @override
  String get identityActiveDirectoryOption => 'ಸಕ್ರಿಯ ಡೈರೆಕ್ಟರಿಯನ್ನು ಬಳಸಿ';

  @override
  String get identityActiveDirectoryInfo =>
      'ಮುಂದಿನ ಹಂತದಲ್ಲಿ ನೀವು ಡೊಮೇನ್ ಮತ್ತು ಇತರ ವಿವರಗಳನ್ನು ನಮೂದಿಸುತ್ತೀರಿ.';

  @override
  String get activeDirectoryTitle => 'ಸಕ್ರಿಯ ಡೈರೆಕ್ಟರಿಗೆ ಲಾಗ್ ಇನ್ ಮಾಡಿ';

  @override
  String get activeDirectoryHeader => 'ಸಕ್ರಿಯ ಡೈರೆಕ್ಟರಿಗೆ ಲಾಗ್ ಇನ್ ಮಾಡಬೇಕೆ?';

  @override
  String activeDirectoryInfo(String DISTRO) {
    return 'ಸುಲಭವಾದ ಆಡಳಿತಕ್ಕಾಗಿ ಸಕ್ರಿಯ ಡೈರೆಕ್ಟರಿಯೊಂದಿಗೆ ಮನಬಂದಂತೆ ಸಂಯೋಜಿಸಲು $DISTRO ಅನ್ನು ವಿನ್ಯಾಸಗೊಳಿಸಲಾಗಿದೆ.';
  }

  @override
  String get activeDirectoryTestConnection => 'ಡೊಮೇನ್ ಸಂಪರ್ಕವನ್ನು ಪರೀಕ್ಷಿಸಿ';

  @override
  String get activeDirectoryDomainLabel => 'ಡೊಮೇನ್';

  @override
  String get activeDirectoryDomainEmpty => 'ಅಗತ್ಯವಿದೆ';

  @override
  String get activeDirectoryDomainTooLong => 'ತುಂಬಾ ಉದ್ದವಾಗಿದೆ';

  @override
  String get activeDirectoryDomainInvalidChars => 'ಅಮಾನ್ಯ ಅಕ್ಷರಗಳು';

  @override
  String get activeDirectoryDomainStartDot => 'ಚುಕ್ಕೆಯಿಂದ ಪ್ರಾರಂಭವಾಗುತ್ತದೆ (.)';

  @override
  String get activeDirectoryDomainEndDot => 'ಚುಕ್ಕೆಯೊಂದಿಗೆ ಕೊನೆಗೊಳ್ಳುತ್ತದೆ (.)';

  @override
  String get activeDirectoryDomainStartHyphen =>
      'ಹೈಫನ್ (-) ನೊಂದಿಗೆ ಪ್ರಾರಂಭವಾಗುತ್ತದೆ';

  @override
  String get activeDirectoryDomainEndHyphen =>
      'ಹೈಫನ್ (-) ನೊಂದಿಗೆ ಕೊನೆಗೊಳ್ಳುತ್ತದೆ';

  @override
  String get activeDirectoryDomainMultipleDots =>
      'ಬಹು ಅನುಕ್ರಮ ಚುಕ್ಕೆಗಳನ್ನು ಒಳಗೊಂಡಿದೆ (..)';

  @override
  String get activeDirectoryDomainNotFound => 'ಡೊಮೇನ್ ಕಂಡುಬಂದಿಲ್ಲ';

  @override
  String get activeDirectoryAdminLabel => 'ಡೊಮೇನ್ ಸೇರ್ಪಡೆ ಬಳಕೆದಾರ';

  @override
  String get activeDirectoryAdminEmpty => 'ಅಗತ್ಯವಿದೆ';

  @override
  String get activeDirectoryAdminInvalidChars => 'ಅಮಾನ್ಯ ಅಕ್ಷರಗಳು';

  @override
  String get activeDirectoryPasswordLabel => 'ಪಾಸ್ವರ್ಡ್';

  @override
  String get activeDirectoryPasswordEmpty => 'ಅಗತ್ಯವಿದೆ';

  @override
  String get activeDirectoryErrorTitle =>
      'ಸಕ್ರಿಯ ಡೈರೆಕ್ಟರಿಗೆ ಸಂಪರ್ಕವನ್ನು ಕಾನ್ಫಿಗರ್ ಮಾಡುವಲ್ಲಿ ದೋಷ';

  @override
  String get activeDirectoryErrorMessage =>
      'ಕ್ಷಮಿಸಿ, ಈ ಸಮಯದಲ್ಲಿ ಸಕ್ರಿಯ ಡೈರೆಕ್ಟರಿಯನ್ನು ಹೊಂದಿಸಲು ಸಾಧ್ಯವಿಲ್ಲ. ಒಮ್ಮೆ ನಿಮ್ಮ ಸಿಸ್ಟಂ ಚಾಲನೆಯಲ್ಲಿದೆ, ಸಹಾಯಕ್ಕಾಗಿ <a href=\"https://help.ubuntu.com/activedirectory\">help.ubuntu.com/activedirectory</a> ಗೆ ಭೇಟಿ ನೀಡಿ.';

  @override
  String get networkPageTitle => 'ಇಂಟರ್ನೆಟ್ ಸಂಪರ್ಕ';

  @override
  String get networkPageHeader =>
      'ಇಂಟರ್ನೆಟ್‌ಗೆ ಸಂಪರ್ಕಪಡಿಸಿಇಂಟರ್ನೆಟ್‌ಗೆ ಸಂಪರ್ಕಪಡಿಸಿ';

  @override
  String get networkPageBody =>
      'ಇಂಟರ್ನೆಟ್ ಸಂಪರ್ಕವು ಹೊಂದಾಣಿಕೆಯ ಪರಿಶೀಲನೆ ಮತ್ತು ಹೆಚ್ಚುವರಿ ಸಾಫ್ಟ್‌ವೇರ್ ಪ್ಯಾಕೇಜ್‌ಗಳೊಂದಿಗೆ ನಿಮ್ಮ ಸ್ಥಾಪನೆಯನ್ನು ಸುಧಾರಿಸುತ್ತದೆ.';

  @override
  String get networkWiredOption => 'ತಂತಿ ಸಂಪರ್ಕವನ್ನು ಬಳಸಿ';

  @override
  String get networkWiredNone => 'ಯಾವುದೇ ವೈರ್ಡ್ ಸಂಪರ್ಕ ಪತ್ತೆಯಾಗಿಲ್ಲ';

  @override
  String get networkWiredOff => 'ತಂತಿ ಸಂಪರ್ಕವನ್ನು ಆಫ್ ಮಾಡಲಾಗಿದೆ';

  @override
  String get networkWiredDisabled =>
      'ಈ ಕಂಪ್ಯೂಟರ್‌ನಲ್ಲಿ ಈಥರ್ನೆಟ್ ಅನ್ನು ಬಳಸಲು, ವೈರ್ಡ್ ಸಂಪರ್ಕವನ್ನು ಸಕ್ರಿಯಗೊಳಿಸಬೇಕು';

  @override
  String get networkWiredEnable => 'ವೈರ್ಡ್ ಅನ್ನು ಸಕ್ರಿಯಗೊಳಿಸಿ';

  @override
  String get networkWifiOption => 'Wi-Fi ನೆಟ್‌ವರ್ಕ್‌ಗೆ ಸಂಪರ್ಕಪಡಿಸಿ';

  @override
  String get networkWifiOff => 'ವೈರ್‌ಲೆಸ್ ನೆಟ್‌ವರ್ಕಿಂಗ್ ನಿಷ್ಕ್ರಿಯಗೊಳಿಸಲಾಗಿದೆ';

  @override
  String get networkWifiNone => 'ಯಾವುದೇ Wi-Fi ಸಾಧನಗಳು ಪತ್ತೆಯಾಗಿಲ್ಲ';

  @override
  String get networkWifiDisabled =>
      'ಈ ಕಂಪ್ಯೂಟರ್‌ನಲ್ಲಿ ವೈ-ಫೈ ಬಳಸಲು, ವೈರ್‌ಲೆಸ್ ನೆಟ್‌ವರ್ಕಿಂಗ್ ಅನ್ನು ಸಕ್ರಿಯಗೊಳಿಸಬೇಕು';

  @override
  String get networkWifiEnable => 'Wi-Fi ಸಕ್ರಿಯಗೊಳಿಸಿ';

  @override
  String get networkHiddenWifiOption => 'ಗುಪ್ತ ವೈ-ಫೈ ನೆಟ್‌ವರ್ಕ್‌ಗೆ ಸಂಪರ್ಕಪಡಿಸಿ';

  @override
  String get networkHiddenWifiNameLabel => 'ನೆಟ್ವರ್ಕ್ ಹೆಸರು';

  @override
  String get networkHiddenWifiNameRequired => 'ನೆಟ್‌ವರ್ಕ್ ಹೆಸರಿನ ಅಗತ್ಯವಿದೆ';

  @override
  String get networkNoneOption => 'ಇಂಟರ್ನೆಟ್‌ಗೆ ಸಂಪರ್ಕಿಸಬೇಡಿ';

  @override
  String get eulaPageTitle => 'ಪರವಾನಗಿ ಒಪ್ಪಂದ';

  @override
  String get eulaReviewTerms => 'ಪರವಾನಗಿ ನಿಯಮಗಳನ್ನು ಪರಿಶೀಲಿಸಿ';

  @override
  String get eulaReadAndAcceptTerms =>
      'ಈ ಯಂತ್ರವನ್ನು ಹೊಂದಿಸುವುದನ್ನು ಮುಂದುವರಿಸಲು, ನೀವು ಪರವಾನಗಿ ಒಪ್ಪಂದದ ನಿಯಮಗಳನ್ನು ಓದಬೇಕು ಮತ್ತು ಒಪ್ಪಿಕೊಳ್ಳಬೇಕು.';

  @override
  String get eulaAcceptTerms =>
      'ನಾನು ಈ ನಿಯಮಗಳನ್ನು ಓದಿದ್ದೇನೆ ಮತ್ತು ಒಪ್ಪಿಕೊಂಡಿದ್ದೇನೆ';

  @override
  String get successIconSemanticLabel => 'ಯಶಸ್ಸು';

  @override
  String get closeIconSemanticLabel => 'ಮುಚ್ಚಿ';

  @override
  String get maximizeIconSemanticLabel => 'ಗರಿಷ್ಠಗೊಳಿಸು';

  @override
  String get minimizeIconSemanticLabel => 'ಕಡಿಮೆಗೊಳಿಸು';

  @override
  String get expandIconSemanticLabel => 'ವಿಸ್ತರಿಸು';

  @override
  String get collapseIconSemanticLabel => 'ಕುಗ್ಗಿಸು';
}
