import 'ubuntu_provision_localizations.dart';

/// The translations for German (`de`).
class UbuntuProvisionLocalizationsDe extends UbuntuProvisionLocalizations {
  UbuntuProvisionLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get accessibilityPageTitle => 'Barrierefreiheit';

  @override
  String accessibilityPageHeader(String DISTRO) {
    return 'Barrierefreiheit in $DISTRO';
  }

  @override
  String accessibilityPageBody(String DISTRO) {
    return 'Passen Sie $DISTRO an Ihre Bedürfnisse an, bevor Sie es einrichten. Sie können sie später in den Systemeinstellungen ändern.';
  }

  @override
  String get accessibilitySeeingLabel => 'Sehen';

  @override
  String get accessibilityHearingLabel => 'Hören';

  @override
  String get accessibilityTypingLabel => 'Tippen';

  @override
  String get accessibilityPointingLabel => 'Zeigen und Klicken';

  @override
  String get accessibilityZoomLabel => 'Zoom';

  @override
  String get accessibilityHighContrastLabel => 'Hoher Kontrast';

  @override
  String get accessibilityLargeTextLabel => 'Großer Text';

  @override
  String get accessibilityReduceAnimationLabel => 'Animationen reduzieren';

  @override
  String get accessibilityScreenReaderLabel => 'Bildschirmleser';

  @override
  String get accessibilityVisualAlertsLabel => 'Visuelle Warnhinweise';

  @override
  String get accessibilityStickKeysLabel => 'Haftbare Tasten';

  @override
  String get accessibilitySlowKeysLabel => 'Langsame Tasten';

  @override
  String get accessibilityMouseKeysLabel => 'Maustasten';

  @override
  String get accessibilityDesktopZoomLabel => 'Schreibtisch-Zoom';

  @override
  String get errorPageTitle => 'Etwas ist schiefgelaufen';

  @override
  String get errorPageUnexpected => 'Es tut uns leid, aber wir sind uns nicht sicher, was der Fehler ist. Sie können versuchen, Ihren Computer neu zu starten und den Installationsprozess erneut zu beginnen. Sie können auch das <a>Problem melden</a>.';

  @override
  String errorPageUbuntuBug(String SNAP) {
    return 'Um einen automatisierten Fehlerbericht mit relevanten Debug-Informationen zu senden, führen Sie bitte <pre>sudo ubuntu-bug $SNAP</pre> in einem Terminal oder von der Befehlskonsole (Alt+F2) aus.';
  }

  @override
  String get errorPageShowLog => 'Protokoll anzeigen';

  @override
  String get errorPageHideLog => 'Protokoll ausblenden';

  @override
  String get restart => 'Neustart';

  @override
  String get close => 'Schließen';

  @override
  String get timezonePageTitle => 'Wählen Sie Ihre Zeitzone aus';

  @override
  String get timezoneLocationLabel => 'Standort';

  @override
  String get timezoneTimezoneLabel => 'Zeitzone';

  @override
  String get keyboardTitle => 'Tastaturbelegung';

  @override
  String get keyboardHeader => 'Wählen Sie Ihre Tastaturbelegung aus';

  @override
  String get keyboardTestHint => 'Geben Sie hier etwas ein, um Ihre Tastaturbelegung zu überprüfen';

  @override
  String get keyboardDetectTitle => 'Tastaturbelegung erkennen';

  @override
  String get keyboardDetectButton => 'Erkennen';

  @override
  String get keyboardVariantLabel => 'Tastaturvariante:';

  @override
  String get keyboardPressKeyLabel => 'Bitte drücken Sie eine der folgenden Tasten:';

  @override
  String get keyboardKeyPresentLabel => 'Ist die folgende Taste auf Ihrer Tastatur vorhanden?';

  @override
  String get themePageTitle => 'Wählen Sie Ihr Thema aus';

  @override
  String get themePageHeader => 'Sie können dies später in den Einstellungen für das Erscheinungsbild jederzeit ändern.';

  @override
  String get themeDark => 'Dunkel';

  @override
  String get themeLight => 'Hell';

  @override
  String localePageTitle(String DISTRO) {
    return 'Willkommen bei $DISTRO';
  }

  @override
  String get localeHeader => 'Wählen Sie Ihre Sprache aus:';

  @override
  String get identityPageTitle => 'Ihr Konto einrichten';

  @override
  String get identityAutoLogin => 'Automatisch anmelden';

  @override
  String get identityRequirePassword => 'Mein Passwort zum Anmelden abfragen';

  @override
  String get identityRealNameLabel => 'Ihr Name';

  @override
  String get identityRealNameRequired => 'Ein Name ist erforderlich';

  @override
  String get identityRealNameTooLong => 'Dieser Name ist zu lang.';

  @override
  String get identityHostnameLabel => 'Name Ihres Computers';

  @override
  String get identityHostnameInfo => 'Der Name, der bei der Kommunikation mit anderen Computern verwendet wird.';

  @override
  String get identityHostnameRequired => 'Ein Computername ist erforderlich';

  @override
  String get identityHostnameTooLong => 'Dieser Computername ist zu lang.';

  @override
  String get identityInvalidHostname => 'Der Computername ist ungültig';

  @override
  String get identityUsernameLabel => 'Einen Benutzernamen auswählen';

  @override
  String get identityUsernameRequired => 'Ein Benutzername ist erforderlich';

  @override
  String get identityInvalidUsername => 'Der Benutzername ist ungültig';

  @override
  String get identityUsernameInUse => 'Dieser Benutzername existiert bereits.';

  @override
  String get identityUsernameSystemReserved => 'Dieser Name ist für die Systemnutzung reserviert.';

  @override
  String get identityUsernameTooLong => 'Dieser Name ist zu lang.';

  @override
  String get identityUsernameInvalidChars => 'Dieser Name enthält ungültige Zeichen.';

  @override
  String get identityPasswordLabel => 'Ein Passwort auswählen';

  @override
  String get identityPasswordRequired => 'Ein Passwort ist erforderlich';

  @override
  String get identityConfirmPasswordLabel => 'Bestätigen Sie Ihr Passwort';

  @override
  String get identityPasswordMismatch => 'Die Passwörter stimmen nicht überein';

  @override
  String get identityPasswordShow => 'Anzeigen';

  @override
  String get identityPasswordHide => 'Ausblenden';

  @override
  String get identityActiveDirectoryOption => 'Active Directory verwenden';

  @override
  String get identityActiveDirectoryInfo => 'Im nächsten Schritt geben Sie die Domäne und andere Details ein.';

  @override
  String get activeDirectoryTitle => 'Active Directory konfigurieren';

  @override
  String get activeDirectoryHeader => 'Bei Active Directory anmelden?';

  @override
  String activeDirectoryInfo(String DISTRO) {
    return '$DISTRO ist so konzipiert, dass es sich zur einfacheren Administration nahtlos in Active Directory integrieren lässt.';
  }

  @override
  String get activeDirectoryTestConnection => 'Domänenverbindung testen';

  @override
  String get activeDirectoryDomainLabel => 'Domäne';

  @override
  String get activeDirectoryDomainEmpty => 'Erforderlich';

  @override
  String get activeDirectoryDomainTooLong => 'Zu lang';

  @override
  String get activeDirectoryDomainInvalidChars => 'Ungültige Zeichen';

  @override
  String get activeDirectoryDomainStartDot => 'Beginnt mit einem Punkt (.)';

  @override
  String get activeDirectoryDomainEndDot => 'Endet mit einem Punkt (.)';

  @override
  String get activeDirectoryDomainStartHyphen => 'Beginnt mit einem Bindestrich (-)';

  @override
  String get activeDirectoryDomainEndHyphen => 'Endet mit einem Bindestrich (-)';

  @override
  String get activeDirectoryDomainMultipleDots => 'Enthält mehrere aufeinanderfolgende Punkte (..)';

  @override
  String get activeDirectoryDomainNotFound => 'Domäne nicht gefunden';

  @override
  String get activeDirectoryAdminLabel => 'Benutzername für den Domänenbeitritt';

  @override
  String get activeDirectoryAdminEmpty => 'Erforderlich';

  @override
  String get activeDirectoryAdminInvalidChars => 'Ungültige Zeichen';

  @override
  String get activeDirectoryPasswordLabel => 'Passwort';

  @override
  String get activeDirectoryPasswordEmpty => 'Erforderlich';

  @override
  String get activeDirectoryErrorTitle => 'Fehler beim Konfigurieren der Verbindung zum Active Directory';

  @override
  String get activeDirectoryErrorMessage => 'Entschuldigung, Active Directory kann im Moment nicht eingerichtet werden. Besuchen Sie für Hilfe <a href=\"https://help.ubuntu.com/activedirectory\">help.ubuntu.com/activedirectory</a>, sobald Ihr System hochgefahren und in Betrieb ist.';

  @override
  String get networkPageTitle => 'Mit einem Netzwerk verbinden';

  @override
  String get networkPageHeader => 'Mit dem Internet verbinden';

  @override
  String get networkPageBody => 'Eine Internetverbindung verbessert Ihre Installation mit Kompatibilitätsprüfung und zusätzlichen Softwarepaketen.';

  @override
  String get networkWiredOption => 'Kabelgebundene Verbindung verwenden';

  @override
  String get networkWiredNone => 'Keine kabelgebundene Verbindung erkannt';

  @override
  String get networkWiredOff => 'Kabelgebundene Verbindung ist ausgeschaltet';

  @override
  String get networkWiredDisabled => 'Für die Verwendung von Ethernet auf diesem Computer muss eine kabelgebundene Verbindung aktiviert sein';

  @override
  String get networkWiredEnable => 'Kabelgebundenes Ethernet aktivieren';

  @override
  String get networkWifiOption => 'Mit einem WLAN-Netzwerk verbinden';

  @override
  String get networkWifiOff => 'Drahtloses Netzwerk deaktiviert';

  @override
  String get networkWifiNone => 'Keine WLAN-Geräte erkannt';

  @override
  String get networkWifiDisabled => 'Für die Verwendung von WLAN auf diesem Computer muss das drahtlose Netzwerk aktiviert sein';

  @override
  String get networkWifiEnable => 'WLAN aktivieren';

  @override
  String get networkHiddenWifiOption => 'Mit einem versteckten WLAN-Netzwerk verbinden';

  @override
  String get networkHiddenWifiNameLabel => 'Netzwerkname';

  @override
  String get networkHiddenWifiNameRequired => 'Der Netzwerkname wird benötigt';

  @override
  String get networkNoneOption => 'Ich will gerade keine Verbindung zum Internet herstellen';

  @override
  String get eulaPageTitle => 'Lizenzvereinbarung';

  @override
  String get eulaReviewTerms => 'Prüfen Sie die Lizenzbedingungen';

  @override
  String get eulaReadAndAcceptTerms => 'Um mit der Einrichtung des Geräts fortzufahren, müssen Sie die Lizenzvereinbarung lesen und akzeptieren.';

  @override
  String get eulaAcceptTerms => 'Ich habe diese Bedingungen gelesen und akzeptiere sie';
}
