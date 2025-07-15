import 'ubuntu_provision_localizations.dart';

/// The translations for Dutch Flemish (`nl`).
class UbuntuProvisionLocalizationsNl extends UbuntuProvisionLocalizations {
  UbuntuProvisionLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get accessibilityPageTitle => 'Toegankelijkheid';

  @override
  String accessibilityPageHeader(String DISTRO) {
    return 'Toegankelijkheid in $DISTRO';
  }

  @override
  String accessibilityPageBody(String DISTRO) {
    return 'Personaliseer $DISTRO zoals u het wil voor u de set-up doet. U kan ze later veranderen in de systeeminstellingen.';
  }

  @override
  String get accessibilitySeeingLabel => 'Zicht';

  @override
  String get accessibilityHearingLabel => 'Gehoor';

  @override
  String get accessibilityTypingLabel => 'Typen';

  @override
  String get accessibilityPointingLabel => 'Aanwijzen en klikken';

  @override
  String get accessibilityZoomLabel => 'Zoom';

  @override
  String get accessibilityHighContrastLabel => 'Hoog contrast';

  @override
  String get accessibilityLargeTextLabel => 'Grote tekst';

  @override
  String get accessibilityReduceAnimationLabel => 'Verminder animatie';

  @override
  String get accessibilityScreenReaderLabel => 'Schermaflezer';

  @override
  String get accessibilityVisualAlertsLabel => 'Visuele meldingen';

  @override
  String get accessibilityStickKeysLabel => 'Plaktoetsen';

  @override
  String get accessibilitySlowKeysLabel => 'Traagtoetsen';

  @override
  String get accessibilityMouseKeysLabel => 'Muistoetsen';

  @override
  String get accessibilityDesktopZoomLabel => 'Desktop zoom';

  @override
  String get errorPageTitle => 'Er ging iets fout';

  @override
  String get errorPageUnexpected => 'Het spijt ons, maar we weten niet wat de fout is. U kunt proberen de computer te herstarten en opnieuw te beginnen met de installatie. U kan ook <a>het probleem melden</a>.';

  @override
  String errorPageUbuntuBug(String SNAP) {
    return 'Om een automatische bug report met relevante debuginformatie te versturen, voer het commando <pre>sudo ubuntu-bug$SNAP</pre> uit in de terminal of vanuit de commandconsole (Alt+F2).';
  }

  @override
  String get errorPageShowLog => 'Toon logboek';

  @override
  String get errorPageHideLog => 'Verberg logboek';

  @override
  String get restart => 'Herstarten';

  @override
  String get close => 'Sluiten';

  @override
  String get timezonePageTitle => 'Kies uw tijdzone';

  @override
  String get timezoneLocationLabel => 'Locatie';

  @override
  String get timezoneTimezoneLabel => 'Tijdzone';

  @override
  String get keyboardTitle => 'Toetsenbordindeling';

  @override
  String get keyboardHeader => 'Kies de indeling van uw toetsenbord';

  @override
  String get keyboardTestHint => 'Type hieronder om het toetsenbord te testen';

  @override
  String get keyboardDetectTitle => 'Toetsenbordindeling bepalen';

  @override
  String get keyboardDetectButton => 'Detecteren';

  @override
  String get keyboardVariantLabel => 'Selecteer uw toetsenbordvariant:';

  @override
  String get keyboardPressKeyLabel => 'Duw op een van de volgende toetsen:';

  @override
  String get keyboardKeyPresentLabel => 'Staat volgende toets op uw toetsenbord?';

  @override
  String get themePageTitle => 'Kies uw thema';

  @override
  String get themePageHeader => 'U kan het thema later altijd veranderen in de weergave-instellingen.';

  @override
  String get themeDark => 'Donker';

  @override
  String get themeLight => 'Licht';

  @override
  String localePageTitle(String DISTRO) {
    return 'Welkom bij $DISTRO';
  }

  @override
  String get localeHeader => 'Kies uw taal:';

  @override
  String get identityPageTitle => 'Maak uw account aan';

  @override
  String get identityAutoLogin => 'Automatisch inloggen';

  @override
  String get identityRequirePassword => 'Vereis het wachtwoord om in te loggen';

  @override
  String get identityRealNameLabel => 'Uw naam';

  @override
  String get identityRealNameRequired => 'Een naam is vereist';

  @override
  String get identityRealNameTooLong => 'Die naam is te lang.';

  @override
  String get identityHostnameLabel => 'De naam van de computer';

  @override
  String get identityHostnameInfo => 'De naam die het gebruikt om te praten met andere computers.';

  @override
  String get identityHostnameRequired => 'Een naam voor de computer is nodig';

  @override
  String get identityHostnameTooLong => 'De naam voor de computer is te lang.';

  @override
  String get identityInvalidHostname => 'De naam van de computer is ongeldig';

  @override
  String get identityUsernameLabel => 'Uw gebruikersnaam';

  @override
  String get identityUsernameRequired => 'Een gebruikersnaam is nodig';

  @override
  String get identityInvalidUsername => 'De gebruikersnaam is ongeldig';

  @override
  String get identityUsernameInUse => 'Die gebruikersnaam bestaat al.';

  @override
  String get identityUsernameSystemReserved => 'Die naam wordt gereserveerd door het systeem.';

  @override
  String get identityUsernameTooLong => 'Die naam is te lang.';

  @override
  String get identityUsernameInvalidChars => 'Die naam bevat ongeldige tekens.';

  @override
  String get identityPasswordLabel => 'Wachtwoord';

  @override
  String get identityPasswordRequired => 'Een wachtwoord is vereist';

  @override
  String get identityConfirmPasswordLabel => 'Wachtwoord bevestigen';

  @override
  String get identityPasswordMismatch => 'De wachtwoorden komen niet overeen';

  @override
  String get identityPasswordShow => 'Tonen';

  @override
  String get identityPasswordHide => 'Verbergen';

  @override
  String get identityActiveDirectoryOption => 'Maak gebruik van Active Directory';

  @override
  String get identityActiveDirectoryInfo => 'Het domein en andere details kan u invullen in de volgende stap.';

  @override
  String get activeDirectoryTitle => 'Inloggen bij Active Directory';

  @override
  String get activeDirectoryHeader => 'Inloggen bij Active Directory?';

  @override
  String activeDirectoryInfo(String DISTRO) {
    return '$DISTRO is ontworpen om naadloos te integreren met Active Directory voor eenvoudiger beheer.';
  }

  @override
  String get activeDirectoryTestConnection => 'Domeinconnectie testen';

  @override
  String get activeDirectoryDomainLabel => 'Domein';

  @override
  String get activeDirectoryDomainEmpty => 'Vereist';

  @override
  String get activeDirectoryDomainTooLong => 'Te lang';

  @override
  String get activeDirectoryDomainInvalidChars => 'Ongeldige tekens';

  @override
  String get activeDirectoryDomainStartDot => 'Begint met een punt (.)';

  @override
  String get activeDirectoryDomainEndDot => 'Eindigt met een punt (.)';

  @override
  String get activeDirectoryDomainStartHyphen => 'Begint met een streepje (-)';

  @override
  String get activeDirectoryDomainEndHyphen => 'Eindigt met een streepje (-)';

  @override
  String get activeDirectoryDomainMultipleDots => 'Bevat meerdere punten achter elkaar (..)';

  @override
  String get activeDirectoryDomainNotFound => 'Domein niet gevonden';

  @override
  String get activeDirectoryAdminLabel => 'Domeinlid gebruiker';

  @override
  String get activeDirectoryAdminEmpty => 'Vereist';

  @override
  String get activeDirectoryAdminInvalidChars => 'Ongeldige tekens';

  @override
  String get activeDirectoryPasswordLabel => 'Wachtwoord';

  @override
  String get activeDirectoryPasswordEmpty => 'Vereist';

  @override
  String get activeDirectoryErrorTitle => 'Fout bij het configureren van de verbinding met Active Directory';

  @override
  String get activeDirectoryErrorMessage => 'Sorry, Active Directory kan niet worden ingesteld op dit moment. Zodra het systeem volledig geïnstalleerd is, bezoek <a href=\"https://help.ubuntu.com/activedirectory\">help.ubuntu.com/activedirectory</a> om hulp te krijgen.';

  @override
  String get networkPageTitle => 'Internetverbinding';

  @override
  String get networkPageHeader => 'Verbind met het internet';

  @override
  String get networkPageBody => 'Een internetverbinding zorgt ervoor dat de installatie slaagt op meer computers en dat er meer software geïnstalleerd kan worden.';

  @override
  String get networkWiredOption => 'Gebruik een bekabelde verbinding';

  @override
  String get networkWiredNone => 'Geen bekabelde verbinding gevonden';

  @override
  String get networkWiredOff => 'Bekabelde verbindingen staan uit';

  @override
  String get networkWiredDisabled => 'Om Ethernet te gebruiken op deze computer, moeten bekabelde verbindingen aan staan';

  @override
  String get networkWiredEnable => 'Bekabeld aanzetten';

  @override
  String get networkWifiOption => 'Verbind met een wifi-netwerk';

  @override
  String get networkWifiOff => 'Draadloze netwerken staan uit';

  @override
  String get networkWifiNone => 'Geen wifi-apparaten gevonden';

  @override
  String get networkWifiDisabled => 'Om wifi te gebruiken op deze computer, moeten draadloze verbindingen aan staan';

  @override
  String get networkWifiEnable => 'Wifi aanzetten';

  @override
  String get networkHiddenWifiOption => 'Verbind met een verborgen wifi-netwerk';

  @override
  String get networkHiddenWifiNameLabel => 'Naam van het netwerk';

  @override
  String get networkHiddenWifiNameRequired => 'De naam van het netwerk is vereist';

  @override
  String get networkNoneOption => 'Verbind je niet met het internet';

  @override
  String get eulaPageTitle => 'Gebruiksrechtovereenkomst';

  @override
  String get eulaReviewTerms => 'Bekijk de gebruiksrechtovereenkomsten';

  @override
  String get eulaReadAndAcceptTerms => 'Om dit apparaat verder in te stellen, moet u de gebruiksrechtovereenkomsten lezen en accepteren.';

  @override
  String get eulaAcceptTerms => 'Ik heb deze regels gelezen en ga akkoord';
}
