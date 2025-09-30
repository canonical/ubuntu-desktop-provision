// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_provision_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class UbuntuProvisionLocalizationsSv extends UbuntuProvisionLocalizations {
  UbuntuProvisionLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get accessibilityPageTitle => 'Tillgänglighet';

  @override
  String accessibilityPageHeader(String DISTRO) {
    return 'Tillgänglighet i $DISTRO';
  }

  @override
  String accessibilityPageBody(String DISTRO) {
    return 'Anpassa $DISTRO för att passa dina behov innan du installerar. Du kan ändra dem senare i Systeminställningar.';
  }

  @override
  String get accessibilitySeeingLabel => 'Seende';

  @override
  String get accessibilityHearingLabel => 'Hörsel';

  @override
  String get accessibilityTypingLabel => 'Skrivning';

  @override
  String get accessibilityPointingLabel => 'Peka och klicka';

  @override
  String get accessibilityZoomLabel => 'Zoom';

  @override
  String get accessibilityHighContrastLabel => 'Hög kontrast';

  @override
  String get accessibilityLargeTextLabel => 'Stor text';

  @override
  String get accessibilityReduceAnimationLabel => 'Minska animation';

  @override
  String get accessibilityScreenReaderLabel => 'Skärmläsare';

  @override
  String get accessibilityVisualAlertsLabel => 'Visuella larm';

  @override
  String get accessibilityStickKeysLabel => 'Tröga tangenter';

  @override
  String get accessibilitySlowKeysLabel => 'Långsamma tangenter';

  @override
  String get accessibilityMouseKeysLabel => 'Mus tangenter';

  @override
  String get accessibilityDesktopZoomLabel => 'Skrivbordszoom';

  @override
  String get errorPageTitle => 'Något gick fel';

  @override
  String get errorPageUnexpected =>
      'Vi är ledsna, men vi är inte säkra på vad felet är. Du kan prova att starta om datorn och starta installationsprocessen igen. Du kan också <a>rapportera problemet</a>.';

  @override
  String errorPageUbuntuBug(String SNAP) {
    return 'För att skicka en automatiserad buggrapport som inkluderar relevant felsökningsinformation, vänligen kör <pre>sudo ubuntu-bug$SNAP</pre> i en terminal, eller från kommandokonsolen (Alt+F2).';
  }

  @override
  String get errorPageShowLog => 'Visa logg';

  @override
  String get errorPageHideLog => 'Dölj logg';

  @override
  String get restart => 'Starta om';

  @override
  String get close => 'Stäng';

  @override
  String get timezonePageTitle => 'Välj din tidszon';

  @override
  String get timezoneLocationLabel => 'Plats';

  @override
  String get timezoneTimezoneLabel => 'Tidszon';

  @override
  String get keyboardTitle => 'Tangentbordslayout';

  @override
  String get keyboardHeader => 'Välj din tangentbordslayout';

  @override
  String get keyboardTestHint => 'Skriv här för att testa ditt tangentbord';

  @override
  String get keyboardDetectTitle => 'Upptäck tangentbordslayout';

  @override
  String get keyboardDetectButton => 'Upptäck';

  @override
  String get keyboardVariantLabel => 'Tangentbordsvariant:';

  @override
  String get keyboardPressKeyLabel =>
      'Vänligen tryck på en av följande tangenter:';

  @override
  String get keyboardKeyPresentLabel =>
      'Finns följande tangent på ditt tangentbord?';

  @override
  String get themePageTitle => 'Välj ditt tema';

  @override
  String get themePageHeader =>
      'Du kan alltid ändra detta senare i utseendeinställningarna.';

  @override
  String get themeDark => 'Mörk';

  @override
  String get themeLight => 'Ljus';

  @override
  String localePageTitle(String DISTRO) {
    return 'Välkommen till $DISTRO';
  }

  @override
  String get localeHeader => 'Välj ditt språk:';

  @override
  String get identityPageTitle => 'Ställ in ditt konto';

  @override
  String get identityAutoLogin => 'Logga in automatiskt';

  @override
  String get identityRequirePassword => 'Kräv mitt lösenord för att logga in';

  @override
  String get identityRealNameLabel => 'Ditt namn';

  @override
  String get identityRealNameRequired => 'Ett namn krävs';

  @override
  String get identityRealNameTooLong => 'Det namnet är för långt.';

  @override
  String get identityHostnameLabel => 'Din dators namn';

  @override
  String get identityHostnameInfo =>
      'Namnet den använder när den pratar med andra datorer.';

  @override
  String get identityHostnameRequired => 'Ett datornamn krävs';

  @override
  String get identityHostnameTooLong => 'Det datornamnet är för långt.';

  @override
  String get identityInvalidHostname => 'Datornamnet är ogiltigt';

  @override
  String get identityUsernameLabel => 'Välj ett användarnamn';

  @override
  String get identityUsernameRequired => 'Ett användarnamn krävs';

  @override
  String get identityInvalidUsername => 'Användarnamnet är ogiltigt';

  @override
  String get identityUsernameInUse => 'Det användarnamnet existerar redan.';

  @override
  String get identityUsernameSystemReserved =>
      'Det namnet är reserverat för systemanvändning.';

  @override
  String get identityUsernameTooLong => 'Det namnet är för långt.';

  @override
  String get identityUsernameInvalidChars =>
      'Det namnet innehåller ogiltiga tecken.';

  @override
  String get identityPasswordLabel => 'Välj ett lösenord';

  @override
  String get identityPasswordRequired => 'Ett lösenord krävs';

  @override
  String get identityConfirmPasswordLabel => 'Bekräfta ditt lösenord';

  @override
  String get identityPasswordMismatch => 'Lösenorden stämmer inte överens';

  @override
  String get identityPasswordShow => 'Visa';

  @override
  String get identityPasswordHide => 'Dölj';

  @override
  String get identityActiveDirectoryOption => 'Använd Active Directory';

  @override
  String get identityActiveDirectoryInfo =>
      'Du anger domän och andra detaljer i nästa steg.';

  @override
  String get activeDirectoryTitle => 'Konfigurera Active Directory';

  @override
  String get activeDirectoryHeader => 'Logga in med Active Directory?';

  @override
  String activeDirectoryInfo(String DISTRO) {
    return '$DISTRO är designad för att integreras sömlöst med Active Directory för enklare administration.';
  }

  @override
  String get activeDirectoryTestConnection => 'Testa domänanslutning';

  @override
  String get activeDirectoryDomainLabel => 'Domän';

  @override
  String get activeDirectoryDomainEmpty => 'Krävs';

  @override
  String get activeDirectoryDomainTooLong => 'För lång';

  @override
  String get activeDirectoryDomainInvalidChars => 'Ogiltiga tecken';

  @override
  String get activeDirectoryDomainStartDot => 'Börjar med en punkt (.)';

  @override
  String get activeDirectoryDomainEndDot => 'Slutar med en punkt (.)';

  @override
  String get activeDirectoryDomainStartHyphen =>
      'Börjar med ett bindestreck (-)';

  @override
  String get activeDirectoryDomainEndHyphen => 'Slutar med ett bindestreck (-)';

  @override
  String get activeDirectoryDomainMultipleDots =>
      'Innehåller flera sekvenserade punkter (..)';

  @override
  String get activeDirectoryDomainNotFound => 'Domän hittades inte';

  @override
  String get activeDirectoryAdminLabel => 'Domän gå med användare';

  @override
  String get activeDirectoryAdminEmpty => 'Krävs';

  @override
  String get activeDirectoryAdminInvalidChars => 'Ogiltiga tecken';

  @override
  String get activeDirectoryPasswordLabel => 'Lösenord';

  @override
  String get activeDirectoryPasswordEmpty => 'Krävs';

  @override
  String get activeDirectoryErrorTitle =>
      'Fel vid konfiguration av anslutning till Active Directory';

  @override
  String get activeDirectoryErrorMessage =>
      'Tyvärr, Active Directory kan inte ställas in just nu. när ditt system är igång, besök <a href=\"https://help.ubuntu.com/activedirectory\">help.ubuntu.com/activedirectory</a> för hjälp.';

  @override
  String get networkPageTitle => 'Anslut till ett nätverk';

  @override
  String get networkPageHeader => 'Anslut till internet';

  @override
  String get networkPageBody =>
      'En internetanslutning kommer att förbättra din installation med kompatibilitetskontroll och extra paket för programvara.';

  @override
  String get networkWiredOption => 'Använd trådbunden anslutning';

  @override
  String get networkWiredNone => 'Ingen trådbunden anslutning upptäcktes';

  @override
  String get networkWiredOff => 'Den trådbundna anslutningen är avstängd';

  @override
  String get networkWiredDisabled =>
      'För att använda Ethernet på den här datorn måste en trådbunden anslutning vara aktiverad';

  @override
  String get networkWiredEnable => 'Aktivera trådbunden';

  @override
  String get networkWifiOption => 'Anslut till ett Wi-Fi nätverk';

  @override
  String get networkWifiOff => 'Trådlöst nätverk inaktiverat';

  @override
  String get networkWifiNone => 'Inga Wi-Fi-enheter upptäcktes';

  @override
  String get networkWifiDisabled =>
      'För att kunna använda Wi-Fi på den här datorn måste trådlöst nätverk vara aktiverat';

  @override
  String get networkWifiEnable => 'Aktivera Wi-Fi';

  @override
  String get networkHiddenWifiOption => 'Anslut till ett dolt Wi-Fi-nätverk';

  @override
  String get networkHiddenWifiNameLabel => 'Nätverksnamn';

  @override
  String get networkHiddenWifiNameRequired => 'Ett nätverksnamn krävs';

  @override
  String get networkNoneOption => 'Jag vill inte ansluta till internet just nu';

  @override
  String get eulaPageTitle => 'Licensavtal';

  @override
  String get eulaReviewTerms => 'Läs licensvillkoren';

  @override
  String get eulaReadAndAcceptTerms =>
      'För att fortsätta konfigurera den här maskinen måste du läsa och acceptera villkoren för licensavtalet.';

  @override
  String get eulaAcceptTerms => 'Jag har läst och accepterar dessa villkor';

  @override
  String get successIconSemanticLabel => 'Lyckats';

  @override
  String get closeIconSemanticLabel => 'Stäng';

  @override
  String get maximizeIconSemanticLabel => 'Maximera';

  @override
  String get minimizeIconSemanticLabel => 'Minimera';
}
