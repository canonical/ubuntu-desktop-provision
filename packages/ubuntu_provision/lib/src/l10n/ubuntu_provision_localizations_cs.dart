// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_provision_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Czech (`cs`).
class UbuntuProvisionLocalizationsCs extends UbuntuProvisionLocalizations {
  UbuntuProvisionLocalizationsCs([String locale = 'cs']) : super(locale);

  @override
  String get accessibilityPageTitle => 'Přístupnost';

  @override
  String accessibilityPageHeader(String DISTRO) {
    return 'Přístupnost v $DISTRO';
  }

  @override
  String accessibilityPageBody(String DISTRO) {
    return 'Před nastavením si $DISTRO přizpůsobte svým potřebám. Volby si můžete později změnit v Nastavení systému.';
  }

  @override
  String get accessibilitySeeingLabel => 'Zrak';

  @override
  String get accessibilityHearingLabel => 'Sluch';

  @override
  String get accessibilityTypingLabel => 'Psaní';

  @override
  String get accessibilityPointingLabel => 'Ukazování a klikání';

  @override
  String get accessibilityZoomLabel => 'Přiblížení';

  @override
  String get accessibilityHighContrastLabel => 'Vysoký kontrast';

  @override
  String get accessibilityLargeTextLabel => 'Velký text';

  @override
  String get accessibilityReduceAnimationLabel => 'Omezení animací';

  @override
  String get accessibilityScreenReaderLabel => 'Čtečka obrazovky';

  @override
  String get accessibilityVisualAlertsLabel => 'Vizuální upozornění';

  @override
  String get accessibilityStickKeysLabel => 'Lepivé klávesy';

  @override
  String get accessibilitySlowKeysLabel => 'Pomalé klávesy';

  @override
  String get accessibilityMouseKeysLabel => 'Klávesy myší';

  @override
  String get accessibilityDesktopZoomLabel => 'Přiblížení plochy';

  @override
  String get errorPageTitle => 'Něco se pokazilo';

  @override
  String get errorPageUnexpected =>
      'Je nám líto, ale nejsme si jisti, v čem je chyba. Můžete zkusit restartovat počítač a spustit proces instalace znovu. Můžete také <a>problém nahlásit</a>.';

  @override
  String errorPageUbuntuBug(String SNAP) {
    return 'Chcete-li odeslat automatické hlášení chyb včetně příslušných ladicích informací, zadejte prosím do terminálu nebo do příkazové konzole (Alt+F2) příkaz <pre>sudo ubuntu-bug $SNAP</pre>.';
  }

  @override
  String get errorPageShowLog => 'Zobrazit záznam';

  @override
  String get errorPageHideLog => 'Skrýt záznam';

  @override
  String get restart => 'Restartovat';

  @override
  String get close => 'Zavřít';

  @override
  String get timezonePageTitle => 'Vyberte své časové pásmo';

  @override
  String get timezoneLocationLabel => 'Umístění';

  @override
  String get timezoneTimezoneLabel => 'Časové pásmo';

  @override
  String get keyboardTitle => 'Rozvržení klávesnice';

  @override
  String get keyboardHeader => 'Zvolte si rozvržení klávesnice';

  @override
  String get keyboardTestHint => 'Rozvržení si vyzkoušejte zde';

  @override
  String get keyboardDetectTitle => 'Zjistit rozvržení klávesnice';

  @override
  String get keyboardDetectButton => 'Zjistit';

  @override
  String get keyboardVariantLabel => 'Vyberte variantu své klávesnice:';

  @override
  String get keyboardPressKeyLabel =>
      'Stiskněte některou z následujících kláves:';

  @override
  String get keyboardKeyPresentLabel =>
      'Máte na klávesnici následující klávesu?';

  @override
  String get themePageTitle => 'Zvolte si motiv vzhledu';

  @override
  String get themePageHeader =>
      'Toto je pak možné kdykoli změnit v nastavení vzhledu.';

  @override
  String get themeDark => 'Tmavý';

  @override
  String get themeLight => 'Světlý';

  @override
  String localePageTitle(String DISTRO) {
    return 'Vítejte v $DISTRO';
  }

  @override
  String get localeHeader => 'Zvolte si jazyk:';

  @override
  String get identityPageTitle => 'Vytvořte si účet';

  @override
  String get identityAutoLogin => 'Přihlásit se automaticky';

  @override
  String get identityRequirePassword => 'Při přihlašování vyžadovat heslo';

  @override
  String get identityRealNameLabel => 'Vaše jméno';

  @override
  String get identityRealNameRequired => 'Je třeba zadat jméno';

  @override
  String get identityRealNameTooLong => 'Jméno je příliš dlouhé.';

  @override
  String get identityHostnameLabel => 'Název pro váš počítač';

  @override
  String get identityHostnameInfo =>
      'Tento název slouží při komunikaci s ostatními počítači.';

  @override
  String get identityHostnameRequired => 'Je třeba zadat název pro počítač';

  @override
  String get identityHostnameTooLong => 'Název počítače je příliš dlouhý.';

  @override
  String get identityInvalidHostname => 'Tento název pro počítač nelze použít';

  @override
  String get identityUsernameLabel => 'Vaše uživatelské jméno';

  @override
  String get identityUsernameRequired => 'Je třeba zadat uživatelské jméno';

  @override
  String get identityInvalidUsername => 'Toto uživatelské jméno nelze použít';

  @override
  String get identityUsernameInUse => 'Toto uživatelské jméno už existuje.';

  @override
  String get identityUsernameSystemReserved =>
      'Toto jméno je vyhrazeno pro využití systémem.';

  @override
  String get identityUsernameTooLong => 'Toto jméno je příliš dlouhé.';

  @override
  String get identityUsernameInvalidChars =>
      'Toto jméno obsahuje neplatné znaky.';

  @override
  String get identityPasswordLabel => 'Heslo';

  @override
  String get identityPasswordRequired => 'Je třeba zadat heslo';

  @override
  String get identityConfirmPasswordLabel => 'Zopakujte heslo';

  @override
  String get identityPasswordMismatch => 'Hesla se navzájem liší';

  @override
  String get identityPasswordShow => 'Zobrazit';

  @override
  String get identityPasswordHide => 'Skrýt';

  @override
  String get identityActiveDirectoryOption => 'Použít Active Directory';

  @override
  String get identityActiveDirectoryInfo =>
      'V dalším kroku zadáte doménu a další podrobnosti.';

  @override
  String get activeDirectoryTitle => 'Přihlásit se do Active Directory';

  @override
  String get activeDirectoryHeader => 'Přihlásit se do Active Directory?';

  @override
  String activeDirectoryInfo(String DISTRO) {
    return '$DISTRO je pro snadnější správu navrženo tak, aby se hladce propojovalo se službou Active Directory.';
  }

  @override
  String get activeDirectoryTestConnection => 'Vyzkoušet spojení s doménou';

  @override
  String get activeDirectoryDomainLabel => 'Doména';

  @override
  String get activeDirectoryDomainEmpty => 'Vyžadováno';

  @override
  String get activeDirectoryDomainTooLong => 'Příliš dlouhé';

  @override
  String get activeDirectoryDomainInvalidChars => 'Neplatné znaky';

  @override
  String get activeDirectoryDomainStartDot => 'Začíná tečkou (.)';

  @override
  String get activeDirectoryDomainEndDot => 'Končí tečkou (.)';

  @override
  String get activeDirectoryDomainStartHyphen => 'Začíná pomlčkou (-)';

  @override
  String get activeDirectoryDomainEndHyphen => 'Končí pomlčkou (-)';

  @override
  String get activeDirectoryDomainMultipleDots =>
      'Obsahuje několik teček za sebou (..)';

  @override
  String get activeDirectoryDomainNotFound => 'Doména nenalezena';

  @override
  String get activeDirectoryAdminLabel =>
      'Uživatel s oprávněním pro přidání do domény';

  @override
  String get activeDirectoryAdminEmpty => 'Vyžadováno';

  @override
  String get activeDirectoryAdminInvalidChars => 'Neplatné znaky';

  @override
  String get activeDirectoryPasswordLabel => 'Heslo';

  @override
  String get activeDirectoryPasswordEmpty => 'Vyžadováno';

  @override
  String get activeDirectoryErrorTitle =>
      'Chyba při nastavování připojení k Active Directory';

  @override
  String get activeDirectoryErrorMessage =>
      'Žel se teď nedaří nastavit pro Active Directory. Po spuštění nového systému navštivte <a href=\"https://help.ubuntu.com/activedirectory\">help.ubuntu.com/activedirectory</a>, kde získáte další informace.';

  @override
  String get networkPageTitle => 'Připojení k Internetu';

  @override
  String get networkPageHeader => 'Připojit k Internetu';

  @override
  String get networkPageBody =>
      'Připojení k Internetu vylepší instalaci kontrolou kompatibility a dodatečnými softwarovými balíčky.';

  @override
  String get networkWiredOption => 'Použít drátové připojení';

  @override
  String get networkWiredNone => 'Nezjištěno žádné drátové připojení';

  @override
  String get networkWiredOff => 'Drátové připojení je vypnuto';

  @override
  String get networkWiredDisabled =>
      'Aby na tomto počítači bylo možné použít rozhraní Ethernet, je třeba zapnout drátové připojení';

  @override
  String get networkWiredEnable => 'Zapnout drátové';

  @override
  String get networkWifiOption => 'Připojit k síti Wi-Fi';

  @override
  String get networkWifiOff => 'Bezdrátové připojení je vypnuté';

  @override
  String get networkWifiNone => 'Nezjištěna žádná zařízení Wi-Fi';

  @override
  String get networkWifiDisabled =>
      'Aby na tomto počítači bylo možné použít rozhraní Wi-Fi, je třeba zapnout bezdrátové připojení';

  @override
  String get networkWifiEnable => 'Zapnout Wi-Fi';

  @override
  String get networkHiddenWifiOption => 'Připojit ke skryté síti Wi-Fi';

  @override
  String get networkHiddenWifiNameLabel => 'Název sítě';

  @override
  String get networkHiddenWifiNameRequired => 'Je vyžadován název sítě';

  @override
  String get networkNoneOption => 'Nepřipojovat k Internetu';

  @override
  String get eulaPageTitle => 'Licenční smlouva';

  @override
  String get eulaReviewTerms => 'Přečtěte si licenční podmínky';

  @override
  String get eulaReadAndAcceptTerms =>
      'Pokud chcete pokračovat v nastavování tohoto počítače, je třeba si přečíst a přijmout podmínky licenční smlouvy.';

  @override
  String get eulaAcceptTerms =>
      'Přečetl(a) jsem si tyto podmínky a souhlasím s nimi';

  @override
  String get successIconSemanticLabel => 'Úspěch';

  @override
  String get closeIconSemanticLabel => 'Zavřít';

  @override
  String get maximizeIconSemanticLabel => 'Maximalizovat';

  @override
  String get minimizeIconSemanticLabel => 'Minimalizovat';

  @override
  String get expandIconSemanticLabel => 'Expand';

  @override
  String get collapseIconSemanticLabel => 'Collapse';
}
