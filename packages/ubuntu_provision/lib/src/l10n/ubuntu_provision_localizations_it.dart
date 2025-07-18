// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_provision_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class UbuntuProvisionLocalizationsIt extends UbuntuProvisionLocalizations {
  UbuntuProvisionLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get accessibilityPageTitle => 'Accessibilità';

  @override
  String accessibilityPageHeader(String DISTRO) {
    return 'Accessibilità in $DISTRO';
  }

  @override
  String accessibilityPageBody(String DISTRO) {
    return 'Personalizza $DISTRO in base alle tue esigenze prima della configurazione. Puoi modificarli in seguito in Impostazioni di sistema.';
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
  String get accessibilityHighContrastLabel => 'Alto contrasto';

  @override
  String get accessibilityLargeTextLabel => 'Testo grande';

  @override
  String get accessibilityReduceAnimationLabel => 'Reduce animation';

  @override
  String get accessibilityScreenReaderLabel => 'Lettore di schermo';

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
  String get restart => 'Riavvia';

  @override
  String get close => 'Chiudi';

  @override
  String get timezonePageTitle => 'Seleziona il tuo fuso orario';

  @override
  String get timezoneLocationLabel => 'Posizione';

  @override
  String get timezoneTimezoneLabel => 'Fuso orario';

  @override
  String get keyboardTitle => 'Disposizione della tastiera';

  @override
  String get keyboardHeader => 'Scegliere la disposizione della tastiera:';

  @override
  String get keyboardTestHint => 'Digitare qui per provare la tastiera';

  @override
  String get keyboardDetectTitle => 'Rileva disposizione tastiera';

  @override
  String get keyboardDetectButton => 'Detect';

  @override
  String get keyboardVariantLabel => 'Select your keyboard variant:';

  @override
  String get keyboardPressKeyLabel => 'Prego premere uno dei seguenti tasti:';

  @override
  String get keyboardKeyPresentLabel =>
      'Il seguente tasto è presente sulla propria tastiera?';

  @override
  String get themePageTitle => 'Scegli il aspetto';

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
  String get localeHeader => 'Scegli la tua lingua:';

  @override
  String get identityPageTitle => 'Informazioni personali';

  @override
  String get identityAutoLogin => 'Accedere automaticamente';

  @override
  String get identityRequirePassword => 'Require my password to log in';

  @override
  String get identityRealNameLabel => 'Your name';

  @override
  String get identityRealNameRequired => 'A name is required';

  @override
  String get identityRealNameTooLong => 'That name is too long.';

  @override
  String get identityHostnameLabel => 'Il nome del computer';

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
  String get identityUsernameLabel => 'Scegli uno username';

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
  String get identityPasswordLabel => 'Scegli una password';

  @override
  String get identityPasswordRequired => 'A password is required';

  @override
  String get identityConfirmPasswordLabel => 'Conferma la password';

  @override
  String get identityPasswordMismatch => 'The passwords do not match';

  @override
  String get identityPasswordShow => 'Mostra';

  @override
  String get identityPasswordHide => 'Nascondi';

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
  String get networkPageTitle => 'Connetti alla rete';

  @override
  String get networkPageHeader =>
      'Connettere questo computer alla rete permetterà a Ubuntu l\'installazione di software aggiuntivo necessario e a scegliere il tuo fuso orario.\n\nConnetti il computer via cavo Ethernet, o scegli una Rete Wi-Fi';

  @override
  String get networkPageBody =>
      'An internet connection will improve your installation with compatibility check and extra software packages.';

  @override
  String get networkWiredOption => 'Usa connessione cablata';

  @override
  String get networkWiredNone => 'Nessuna connessione cablata rilevata';

  @override
  String get networkWiredOff => 'La connessione cablata è disattivata';

  @override
  String get networkWiredDisabled =>
      'Per usufruire della connessione Ethernet in questo computer, una connessione cablata deve essere attiva';

  @override
  String get networkWiredEnable => 'Enable wired';

  @override
  String get networkWifiOption => 'Connetti a una rete Wi-Fi';

  @override
  String get networkWifiOff => 'Connessione senza fili disattivata';

  @override
  String get networkWifiNone => 'Nessun dispositivo Wi-Fi rilevato';

  @override
  String get networkWifiDisabled =>
      'Per usufruire della Wi-Fi in questo computer, la rete wireless deve essere abilitata';

  @override
  String get networkWifiEnable => 'Abilita Wi-Fi';

  @override
  String get networkHiddenWifiOption => 'Connetti a una rete Wi-Fi nascosta';

  @override
  String get networkHiddenWifiNameLabel => 'Nome della Rete';

  @override
  String get networkHiddenWifiNameRequired => 'È richiesto il nome della rete';

  @override
  String get networkNoneOption =>
      'Non voglio connettermi alla rete in questo momento';

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
}
