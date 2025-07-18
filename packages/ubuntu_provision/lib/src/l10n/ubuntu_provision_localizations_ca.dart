// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_provision_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Catalan Valencian (`ca`).
class UbuntuProvisionLocalizationsCa extends UbuntuProvisionLocalizations {
  UbuntuProvisionLocalizationsCa([String locale = 'ca']) : super(locale);

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
      'We\'re sorry, but we\'re not sure what the error is. You can try restarting your computer and start the installation process again. You can can also <a>report the issue</a>.';

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
  String get close => 'Tanca';

  @override
  String get timezonePageTitle => 'On sou?';

  @override
  String get timezoneLocationLabel => 'Ubicació';

  @override
  String get timezoneTimezoneLabel => 'Fus horari';

  @override
  String get keyboardTitle => 'Disposició de teclat';

  @override
  String get keyboardHeader => 'Trieu la vostra distribució de teclat:';

  @override
  String get keyboardTestHint => 'Escriviu aquí per provar el vostre teclat';

  @override
  String get keyboardDetectTitle => 'Detecta la disposició del teclat';

  @override
  String get keyboardDetectButton => 'Detect';

  @override
  String get keyboardVariantLabel => 'Select your keyboard variant:';

  @override
  String get keyboardPressKeyLabel => 'Premeu una de les tecles següents:';

  @override
  String get keyboardKeyPresentLabel =>
      'Teniu la tecla següent al vostre teclat?';

  @override
  String get themePageTitle => 'Trieu l’aspecte';

  @override
  String get themePageHeader =>
      'You can always change this later in the appearance settings.';

  @override
  String get themeDark => 'Fosc';

  @override
  String get themeLight => 'Clar';

  @override
  String localePageTitle(String DISTRO) {
    return 'Welcome to $DISTRO';
  }

  @override
  String get localeHeader => 'Trieu la vostra llengua:';

  @override
  String get identityPageTitle => 'Qui sou?';

  @override
  String get identityAutoLogin => 'Entra de manera automàtica';

  @override
  String get identityRequirePassword =>
      'Fes que calgui una contrasenya per a entrar';

  @override
  String get identityRealNameLabel => 'El vostre nom';

  @override
  String get identityRealNameRequired => 'Cal un nom';

  @override
  String get identityRealNameTooLong => 'That name is too long.';

  @override
  String get identityHostnameLabel => 'El nom de l\'ordinador';

  @override
  String get identityHostnameInfo =>
      'El nom que utilitza quan es comunica amb altres ordinadors.';

  @override
  String get identityHostnameRequired => 'Cal un nom per a l\'ordinador';

  @override
  String get identityHostnameTooLong => 'That computer name is too long.';

  @override
  String get identityInvalidHostname => 'El nom de l\'ordinador no és vàlid';

  @override
  String get identityUsernameLabel => 'Trieu un nom d\'usuari';

  @override
  String get identityUsernameRequired => 'Cal un nom d\'usuari';

  @override
  String get identityInvalidUsername => 'El nom d\'usuari no és vàlid';

  @override
  String get identityUsernameInUse => 'That user name already exists.';

  @override
  String get identityUsernameSystemReserved =>
      'That name is reserved for system usage.';

  @override
  String get identityUsernameTooLong => 'Aquest nom és massa llarg.';

  @override
  String get identityUsernameInvalidChars =>
      'That name contains invalid characters.';

  @override
  String get identityPasswordLabel => 'Trieu una contrasenya';

  @override
  String get identityPasswordRequired => 'Cal una contrasenya';

  @override
  String get identityConfirmPasswordLabel => 'Confirmeu la contrasenya';

  @override
  String get identityPasswordMismatch => 'Les contrasenyes no coincideixen';

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
  String get networkPageTitle => 'Connecta a internet';

  @override
  String get networkPageHeader => 'Connect to the internet';

  @override
  String get networkPageBody =>
      'An internet connection will improve your installation with compatibility check and extra software packages.';

  @override
  String get networkWiredOption => 'Use wired connection';

  @override
  String get networkWiredNone => 'No wired connection detected';

  @override
  String get networkWiredOff => 'Wired connection is turned off';

  @override
  String get networkWiredDisabled =>
      'Per poder fer servir Ethernet a aquest ordinador, la connexió cablejada ha d\'estar habilitada';

  @override
  String get networkWiredEnable => 'Enable wired';

  @override
  String get networkWifiOption => 'Connectar a una xarxa Wi-Fi';

  @override
  String get networkWifiOff => 'Xarxa sense fils deshabilitada';

  @override
  String get networkWifiNone => 'No Wi-Fi devices detected';

  @override
  String get networkWifiDisabled =>
      'To use Wi-Fi on this computer, wireless networking must be enabled';

  @override
  String get networkWifiEnable => 'Enable Wi-Fi';

  @override
  String get networkHiddenWifiOption => 'Connecta a una xarxa Wi-Fi oculta';

  @override
  String get networkHiddenWifiNameLabel => 'Nom a la xarxa';

  @override
  String get networkHiddenWifiNameRequired => 'Cal un nom de xarxa';

  @override
  String get networkNoneOption => 'Ara mateix no vull connectar-me a Internet';

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
}
