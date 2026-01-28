// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_provision_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Basque (`eu`).
class UbuntuProvisionLocalizationsEu extends UbuntuProvisionLocalizations {
  UbuntuProvisionLocalizationsEu([String locale = 'eu']) : super(locale);

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
  String get errorPageUnexpected =>
      'We\'re sorry, but we\'re not sure what the error is. You can try restarting your computer and start the installation process again. You can also <a>report the issue</a>.';

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
  String get close => 'Close';

  @override
  String get timezonePageTitle => 'Select your timezone';

  @override
  String get timezoneLocationLabel => 'Location';

  @override
  String get timezoneTimezoneLabel => 'Timezone';

  @override
  String get keyboardTitle => 'Teklatuaren diseinua';

  @override
  String get keyboardHeader => 'Aukeratu zure teklatuaren diseinua:';

  @override
  String get keyboardTestHint => 'Idatzi hemen zure teklatua probatzeko';

  @override
  String get keyboardDetectTitle => 'Detektatu teklatuaren diseinua';

  @override
  String get keyboardDetectButton => 'Detect';

  @override
  String get keyboardVariantLabel => 'Select your keyboard variant:';

  @override
  String get keyboardPressKeyLabel =>
      'Mesedez, sakatu hurrengo tekletariko bat:';

  @override
  String get keyboardKeyPresentLabel =>
      'Hurrengo tekla zure teklatuan al dago?';

  @override
  String get themePageTitle => 'Choose your theme';

  @override
  String get themePageHeader =>
      'You can always change this later in the appearance settings.';

  @override
  String get themeDark => 'Dark';

  @override
  String get themeLight => 'Light';

  @override
  String localePageTitle(String DISTRO) {
    return 'Welcome to $DISTRO';
  }

  @override
  String get localeHeader => 'Aukeratu zure hizkuntza:';

  @override
  String get identityPageTitle => 'Create your account';

  @override
  String get identityAutoLogin => 'Log in automatically';

  @override
  String get identityRequirePassword => 'Require my password to log in';

  @override
  String get identityRealNameLabel => 'Your name';

  @override
  String get identityRealNameRequired => 'A name is required';

  @override
  String get identityRealNameTooLong => 'That name is too long.';

  @override
  String get identityHostnameLabel => 'Your computer\'s name';

  @override
  String get identityHostnameInfo =>
      'The name it uses when it talks to other computers.';

  @override
  String get identityHostnameRequired => 'A computer name is required';

  @override
  String get identityHostnameTooLong => 'That computer name is too long.';

  @override
  String get identityInvalidHostname => 'The computer name is invalid';

  @override
  String get identityUsernameLabel => 'Your username';

  @override
  String get identityUsernameRequired => 'A username is required';

  @override
  String get identityInvalidUsername => 'The username is invalid';

  @override
  String get identityUsernameInUse => 'That user name already exists.';

  @override
  String get identityUsernameSystemReserved =>
      'That name is reserved for system usage.';

  @override
  String get identityUsernameTooLong => 'That name is too long.';

  @override
  String get identityUsernameInvalidChars =>
      'That name contains invalid characters.';

  @override
  String get identityPasswordLabel => 'Password';

  @override
  String get identityPasswordRequired => 'A password is required';

  @override
  String get identityConfirmPasswordLabel => 'Confirm password';

  @override
  String get identityPasswordMismatch => 'The passwords do not match';

  @override
  String get identityPasswordShow => 'Show';

  @override
  String get identityPasswordHide => 'Hide';

  @override
  String get identityActiveDirectoryOption => 'Use Active Directory';

  @override
  String get identityActiveDirectoryInfo =>
      'You\'ll enter domain and other details in the next step.';

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
  String get activeDirectoryPasswordLabel => 'Password';

  @override
  String get activeDirectoryPasswordEmpty => 'Required';

  @override
  String get activeDirectoryErrorTitle =>
      'Error configuring connection to Active Directory';

  @override
  String get activeDirectoryErrorMessage =>
      'Sorry, Active Directory can\'t be set up at the moment. Once your system is up and running, visit <a href=\"https://help.ubuntu.com/activedirectory\">help.ubuntu.com/activedirectory</a> for help.';

  @override
  String get networkPageTitle => 'Konektatu internetera';

  @override
  String get networkPageHeader => 'Connect to the internet';

  @override
  String get networkPageBody =>
      'An internet connection will improve your installation with compatibility check and extra software packages.';

  @override
  String get networkWiredOption => 'Erabili kable bidezko konexioa';

  @override
  String get networkWiredNone => 'Ez da kable bidezko konexiorik hauteman';

  @override
  String get networkWiredOff => 'Kable bidezko konexioa desaktibatuta dago';

  @override
  String get networkWiredDisabled =>
      'Ordenagailu honetan Ethernet erabiltzeko, kable bidezko konexioa gaitu behar da';

  @override
  String get networkWiredEnable => 'Gaitu kable bidezko konexioa';

  @override
  String get networkWifiOption => 'Konektatu Wi-Fi sare batera';

  @override
  String get networkWifiOff => 'Haririk habeko sarea desgaituta dago';

  @override
  String get networkWifiNone => 'Ez da Wi-Fi gailurik hauteman';

  @override
  String get networkWifiDisabled =>
      'Ordenagailu honetan Wi-Fia erabiltzeko, haririk gabeko sareak gaitu behar dira';

  @override
  String get networkWifiEnable => 'Gaitu Wi-Fia';

  @override
  String get networkHiddenWifiOption => 'Konektatu ezkutuko Wi-Fi sare batera';

  @override
  String get networkHiddenWifiNameLabel => 'Sarearen izena';

  @override
  String get networkHiddenWifiNameRequired => 'Sare-izena behar da';

  @override
  String get networkNoneOption => 'Ez dut internetera konektatu nahi oraingoz';

  @override
  String get eulaPageTitle => 'License agreement';

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
}
