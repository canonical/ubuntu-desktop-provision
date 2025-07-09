import 'ubuntu_provision_localizations.dart';

/// The translations for Danish (`da`).
class UbuntuProvisionLocalizationsDa extends UbuntuProvisionLocalizations {
  UbuntuProvisionLocalizationsDa([String locale = 'da']) : super(locale);

  @override
  String get accessibilityPageTitle => 'Tilgængelighed';

  @override
  String accessibilityPageHeader(String DISTRO) {
    return 'Tilgængelighed i $DISTRO';
  }

  @override
  String accessibilityPageBody(String DISTRO) {
    return 'Tilpas $DISTRO til dine behov før opsætning. Du kan ændre dem senere i Systemindstillinger.';
  }

  @override
  String get accessibilitySeeingLabel => 'Syn';

  @override
  String get accessibilityHearingLabel => 'Hørelse';

  @override
  String get accessibilityTypingLabel => 'Indtastning';

  @override
  String get accessibilityPointingLabel => 'Peg og klik';

  @override
  String get accessibilityZoomLabel => 'Zoom';

  @override
  String get accessibilityHighContrastLabel => 'Høj kontrast';

  @override
  String get accessibilityLargeTextLabel => 'Stor tekst';

  @override
  String get accessibilityReduceAnimationLabel => 'Reducér animation';

  @override
  String get accessibilityScreenReaderLabel => 'Skærmoplæser';

  @override
  String get accessibilityVisualAlertsLabel => 'Visuelle påmindelser';

  @override
  String get accessibilityStickKeysLabel => 'Klæbetaster';

  @override
  String get accessibilitySlowKeysLabel => 'Langsomme taster';

  @override
  String get accessibilityMouseKeysLabel => 'Musetaster';

  @override
  String get accessibilityDesktopZoomLabel => 'Skrivebordszoom';

  @override
  String get errorPageTitle => 'Noget gik galt';

  @override
  String get errorPageUnexpected => 'Vi beklager, men vi ved ikke helt, hvad fejlen er. Du kan genstarte computeren og starte installationsproceduren igen. Du kan også <a>indrapportere problemet</a>.';

  @override
  String errorPageUbuntuBug(String SNAP) {
    return 'Hvis du vil sende en automatisk fejlrapport med relevante fejlfindingsoplysninger, skal du køre <pre>sudo ubuntu-bug $SNAP</pre> i en terminal eller fra kommandokonsollen (Alt+F2).';
  }

  @override
  String get errorPageShowLog => 'Vis log';

  @override
  String get errorPageHideLog => 'Skjul log';

  @override
  String get restart => 'Genstart';

  @override
  String get close => 'Luk';

  @override
  String get timezonePageTitle => 'Vælg din tidszone';

  @override
  String get timezoneLocationLabel => 'Placering';

  @override
  String get timezoneTimezoneLabel => 'Tidszone';

  @override
  String get keyboardTitle => 'Tastaturopsætning';

  @override
  String get keyboardHeader => 'Vælg din tastaturopsætning';

  @override
  String get keyboardTestHint => 'Skriv her for at afprøve dit tastatur';

  @override
  String get keyboardDetectTitle => 'Registrér tastaturopsætning';

  @override
  String get keyboardDetectButton => 'Registrér';

  @override
  String get keyboardVariantLabel => 'Vælg din tastaturvariant:';

  @override
  String get keyboardPressKeyLabel => 'Tryk venligst på en af følgende taster:';

  @override
  String get keyboardKeyPresentLabel => 'Er følgende tast til stede på dit tastatur?';

  @override
  String get themePageTitle => 'Vælg dit tema';

  @override
  String get themePageHeader => 'Du kan altid ændre dette senere i indstillinger for udseende.';

  @override
  String get themeDark => 'Mørkt';

  @override
  String get themeLight => 'Lyst';

  @override
  String localePageTitle(String DISTRO) {
    return 'Velkommen til $DISTRO';
  }

  @override
  String get localeHeader => 'Vælg dit sprog:';

  @override
  String get identityPageTitle => 'Opret din konto';

  @override
  String get identityAutoLogin => 'Log ind automatisk';

  @override
  String get identityRequirePassword => 'Kræv min adgangskode for at logge ind';

  @override
  String get identityRealNameLabel => 'Dit navn';

  @override
  String get identityRealNameRequired => 'Et navn er påkrævet';

  @override
  String get identityRealNameTooLong => 'Navnet er for langt.';

  @override
  String get identityHostnameLabel => 'Din computers navn';

  @override
  String get identityHostnameInfo => 'Det navn den bruger, når den kommunikerer med andre computere.';

  @override
  String get identityHostnameRequired => 'Et computernavn er påkrævet';

  @override
  String get identityHostnameTooLong => 'Det computernavn er for langt.';

  @override
  String get identityInvalidHostname => 'Computernavnet er ugyldigt';

  @override
  String get identityUsernameLabel => 'Dit brugernavn';

  @override
  String get identityUsernameRequired => 'Et brugernavn er påkrævet';

  @override
  String get identityInvalidUsername => 'Brugernavnet er ugyldigt';

  @override
  String get identityUsernameInUse => 'Det brugernavn findes allerede.';

  @override
  String get identityUsernameSystemReserved => 'Det navn er reserveret til systembrug.';

  @override
  String get identityUsernameTooLong => 'Det navn er for langt.';

  @override
  String get identityUsernameInvalidChars => 'Det navn indeholder ugyldige tegn.';

  @override
  String get identityPasswordLabel => 'Adgangskode';

  @override
  String get identityPasswordRequired => 'En adgangskode er påkrævet';

  @override
  String get identityConfirmPasswordLabel => 'Bekræft adgangskode';

  @override
  String get identityPasswordMismatch => 'Adgangskoderne stemmer ikke overens';

  @override
  String get identityPasswordShow => 'Vis';

  @override
  String get identityPasswordHide => 'Skjul';

  @override
  String get identityActiveDirectoryOption => 'Brug Active Directory';

  @override
  String get identityActiveDirectoryInfo => 'Du kan indtaste domæne og andre oplysninger i næste trin.';

  @override
  String get activeDirectoryTitle => 'Log på Active Directory';

  @override
  String get activeDirectoryHeader => 'Log på Active Directory?';

  @override
  String activeDirectoryInfo(String DISTRO) {
    return '$DISTRO er designet til sømløs integrering med Active Directory for at lette administration.';
  }

  @override
  String get activeDirectoryTestConnection => 'Afprøv domæneforbindelse';

  @override
  String get activeDirectoryDomainLabel => 'Domæne';

  @override
  String get activeDirectoryDomainEmpty => 'Påkrævet';

  @override
  String get activeDirectoryDomainTooLong => 'For langt';

  @override
  String get activeDirectoryDomainInvalidChars => 'Ugyldige tegn';

  @override
  String get activeDirectoryDomainStartDot => 'Starter med et punktum (.)';

  @override
  String get activeDirectoryDomainEndDot => 'Slutter med et punktum (.)';

  @override
  String get activeDirectoryDomainStartHyphen => 'Starter med bindestreg (-)';

  @override
  String get activeDirectoryDomainEndHyphen => 'Slutter med bindestreg (-)';

  @override
  String get activeDirectoryDomainMultipleDots => 'Indeholder flere punktummer (..) efter hinanden';

  @override
  String get activeDirectoryDomainNotFound => 'Domæne ikke fundet';

  @override
  String get activeDirectoryAdminLabel => 'Domæne tilslut bruger';

  @override
  String get activeDirectoryAdminEmpty => 'Påkrævet';

  @override
  String get activeDirectoryAdminInvalidChars => 'Ugyldige tegn';

  @override
  String get activeDirectoryPasswordLabel => 'Adgangskode';

  @override
  String get activeDirectoryPasswordEmpty => 'Påkrævet';

  @override
  String get activeDirectoryErrorTitle => 'Fejl ved konfiguration af forbindelse til Active Directory';

  @override
  String get activeDirectoryErrorMessage => 'Beklager, Active Directory kan ikke indstilles i øjeblikket. Når dit system er oppe at køre, så besøg <a href=\"https://help.ubuntu.com/activedirectory\">help.ubuntu.com/activedirectory</a> for hjælp.';

  @override
  String get networkPageTitle => 'internetforbindelse';

  @override
  String get networkPageHeader => 'Forbind til internettet';

  @override
  String get networkPageBody => 'En internetforbindelse vil forbedre din installation med kompatibilitetstjek og ekstra softwarepakker.';

  @override
  String get networkWiredOption => 'Brug kablet forbindelse';

  @override
  String get networkWiredNone => 'Ingen kablet forbindelse registreret';

  @override
  String get networkWiredOff => 'Kablet forbindelse er slået fra';

  @override
  String get networkWiredDisabled => 'En kablet forbindelse skal være aktiveret for at bruge Ethernet på denne computer';

  @override
  String get networkWiredEnable => 'Aktivér kablet forbindelse';

  @override
  String get networkWifiOption => 'Opret forbindelse til et wi-fi-netværk';

  @override
  String get networkWifiOff => 'Trådløst netværk deaktiveret';

  @override
  String get networkWifiNone => 'Ingen wi-fi-enheder registreret';

  @override
  String get networkWifiDisabled => 'For at bruge wi-fi på denne computer skal trådløst netværk være aktiveret';

  @override
  String get networkWifiEnable => 'Aktivér wi-fi';

  @override
  String get networkHiddenWifiOption => 'Opret forbindelse til et skjult wi-fi-netværk';

  @override
  String get networkHiddenWifiNameLabel => 'Netværksnavn';

  @override
  String get networkHiddenWifiNameRequired => 'Et netværksnavn er påkrævet';

  @override
  String get networkNoneOption => 'Opret ikke forbindelse til internettet';

  @override
  String get eulaPageTitle => 'Licensaftale';

  @override
  String get eulaReviewTerms => 'Gennemse licensbetingelserne';

  @override
  String get eulaReadAndAcceptTerms => 'For at fortsætte med opsætning af denne maskine skal du læse og acceptere betingelserne i licensaftalen.';

  @override
  String get eulaAcceptTerms => 'Jeg har læst og accepterer disse betingelser';
}
