import 'ubuntu_provision_localizations.dart';

/// The translations for Lithuanian (`lt`).
class UbuntuProvisionLocalizationsLt extends UbuntuProvisionLocalizations {
  UbuntuProvisionLocalizationsLt([String locale = 'lt']) : super(locale);

  @override
  String get accessibilityPageTitle => 'Prieinamumas';

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
  String get accessibilityHighContrastLabel => 'Didelis kontrastas';

  @override
  String get accessibilityLargeTextLabel => 'Padidintas tekstas';

  @override
  String get accessibilityReduceAnimationLabel => 'Reduce animation';

  @override
  String get accessibilityScreenReaderLabel => 'Teksto skaityklė';

  @override
  String get accessibilityVisualAlertsLabel => 'Visual alerts';

  @override
  String get accessibilityStickKeysLabel => 'Sticky keys';

  @override
  String get accessibilitySlowKeysLabel => 'Lėtieji klavišai';

  @override
  String get accessibilityMouseKeysLabel => 'Mouse keys';

  @override
  String get accessibilityDesktopZoomLabel => 'Desktop zoom';

  @override
  String get errorPageTitle => 'Kažkas nutiko';

  @override
  String get errorPageUnexpected => 'We\'re sorry, but we\'re not sure what the error is. You can try restarting your computer and start the installation process again. You can can also <a>report the issue</a>.';

  @override
  String errorPageUbuntuBug(String SNAP) {
    return 'To send an automated bug report including relevant debug information, please run <pre>sudo ubuntu-bug $SNAP</pre> in a terminal, or from the command console (Alt+F2).';
  }

  @override
  String get errorPageShowLog => 'Rodyti žurnalą';

  @override
  String get errorPageHideLog => 'Slėpti žurnalą';

  @override
  String get restart => 'Paleisti iš naujo';

  @override
  String get close => 'Užverti';

  @override
  String get timezonePageTitle => 'Pasirinkite laiko juostą';

  @override
  String get timezoneLocationLabel => 'Vieta';

  @override
  String get timezoneTimezoneLabel => 'Laiko juosta';

  @override
  String get keyboardTitle => 'Klaviatūros išdėstymas';

  @override
  String get keyboardHeader => 'Pasirinkite klaviatūros išdėstymą';

  @override
  String get keyboardTestHint => 'Rašykite čia, norėdami išbandyti klaviatūrą';

  @override
  String get keyboardDetectTitle => 'Aptikti klaviatūros išdėstymą';

  @override
  String get keyboardDetectButton => 'Aptikti';

  @override
  String get keyboardVariantLabel => 'Klaviatūros variantas:';

  @override
  String get keyboardPressKeyLabel => 'Paspauskite vieną iš šių klavišų:';

  @override
  String get keyboardKeyPresentLabel => 'Ar šis klavišas yra jūsų klaviatūroje?';

  @override
  String get themePageTitle => 'Pasirinkite apipavidalinimą';

  @override
  String get themePageHeader => 'Vėliau išvaizdos nustatymuose bet kada galėsite tai pakeisti.';

  @override
  String get themeDark => 'Tamsus';

  @override
  String get themeLight => 'Šviesus';

  @override
  String localePageTitle(String DISTRO) {
    return 'Jus sveikina $DISTRO';
  }

  @override
  String get localeHeader => 'Pasirinkite kalbą:';

  @override
  String get identityPageTitle => 'Nusistatykite paskyrą';

  @override
  String get identityAutoLogin => 'Automatiškai prisijungti prie paskyros';

  @override
  String get identityRequirePassword => 'Prisijungiant prie paskyros reikalauti slaptažodžio';

  @override
  String get identityRealNameLabel => 'Jūsų vardas';

  @override
  String get identityRealNameRequired => 'Reikia nurodyti vardą';

  @override
  String get identityRealNameTooLong => 'Šis vardas per ilgas.';

  @override
  String get identityHostnameLabel => 'Jūsų kompiuterio pavadinimas';

  @override
  String get identityHostnameInfo => 'Pavadinimas yra naudojamas bendraujant su kitais kompiuteriais.';

  @override
  String get identityHostnameRequired => 'Reikia nurodyti kompiuterio pavadinimą';

  @override
  String get identityHostnameTooLong => 'Šis kompiuterio pavadinimas per ilgas.';

  @override
  String get identityInvalidHostname => 'Kompiuterio pavadinimas yra netinkamas';

  @override
  String get identityUsernameLabel => 'Pasirinkite naudotojo vardą';

  @override
  String get identityUsernameRequired => 'Reikia nurodyti naudotojo vardą';

  @override
  String get identityInvalidUsername => 'Netinkamas naudotojo vardas';

  @override
  String get identityUsernameInUse => 'Šis naudotojo vardas jau yra.';

  @override
  String get identityUsernameSystemReserved => 'Šis vardas yra rezervuotas sisteminiam naudojimui.';

  @override
  String get identityUsernameTooLong => 'Šis vardas per ilgas.';

  @override
  String get identityUsernameInvalidChars => 'Šiame varde yra netinkamų simbolių.';

  @override
  String get identityPasswordLabel => 'Pasirinkite slaptažodį';

  @override
  String get identityPasswordRequired => 'Reikia nurodyti slaptažodį';

  @override
  String get identityConfirmPasswordLabel => 'Pakartokite slaptažodį';

  @override
  String get identityPasswordMismatch => 'Slaptažodžiai nesutampa';

  @override
  String get identityPasswordShow => 'Rodyti';

  @override
  String get identityPasswordHide => 'Slėpti';

  @override
  String get identityActiveDirectoryOption => 'Naudoti „Active Directory“';

  @override
  String get identityActiveDirectoryInfo => 'Kitame žingsnyje įvesite domeną bei kitą išsamesnę informaciją.';

  @override
  String get activeDirectoryTitle => 'Konfigūruoti „Active Directory“';

  @override
  String get activeDirectoryHeader => 'Log into Active Directory?';

  @override
  String activeDirectoryInfo(String DISTRO) {
    return '$DISTRO is designed to integrate seamlessly with Active Directory for easier administration.';
  }

  @override
  String get activeDirectoryTestConnection => 'Išbandyti jungiamumą su domenu';

  @override
  String get activeDirectoryDomainLabel => 'Domenas';

  @override
  String get activeDirectoryDomainEmpty => 'Būtina';

  @override
  String get activeDirectoryDomainTooLong => 'Per ilgas';

  @override
  String get activeDirectoryDomainInvalidChars => 'Netinkami simboliai';

  @override
  String get activeDirectoryDomainStartDot => 'Prasideda tašku (.)';

  @override
  String get activeDirectoryDomainEndDot => 'Pasibaigia tašku (.)';

  @override
  String get activeDirectoryDomainStartHyphen => 'Prasideda brūkšneliu (-)';

  @override
  String get activeDirectoryDomainEndHyphen => 'Pasibaigia brūkšneliu (-)';

  @override
  String get activeDirectoryDomainMultipleDots => 'Turi kelis taškus iš eilės (..)';

  @override
  String get activeDirectoryDomainNotFound => 'Domenas nerastas';

  @override
  String get activeDirectoryAdminLabel => 'Prisijungimo prie domeno naudotojas';

  @override
  String get activeDirectoryAdminEmpty => 'Būtina';

  @override
  String get activeDirectoryAdminInvalidChars => 'Netinkami simboliai';

  @override
  String get activeDirectoryPasswordLabel => 'Slaptažodis';

  @override
  String get activeDirectoryPasswordEmpty => 'Būtina';

  @override
  String get activeDirectoryErrorTitle => 'Klaida konfigūruojant ryšį su „Active Directory“';

  @override
  String get activeDirectoryErrorMessage => 'Atleiskite, šiuo metu „Active Directory“ negali būti nustatyta. Kai tik jūsų sistema bus paleista, apsilankykite adresu <a href=\"https://help.ubuntu.com/activedirectory\">help.ubuntu.com/activedirectory</a>, kad gautumėte išsamesnės informacijos.';

  @override
  String get networkPageTitle => 'Prisijunkite prie interneto';

  @override
  String get networkPageHeader => 'Prisijunkite prie interneto';

  @override
  String get networkPageBody => 'An internet connection will improve your installation with compatibility check and extra software packages.';

  @override
  String get networkWiredOption => 'Naudoti laidinį ryšį';

  @override
  String get networkWiredNone => 'Neaptikta jokio laidinio ryšio';

  @override
  String get networkWiredOff => 'Laidinis ryšys yra išjungtas';

  @override
  String get networkWiredDisabled => 'Norint šiame kompiuteryje naudoti laidinį tinklą, privalo būti įjungtas laidinis ryšys';

  @override
  String get networkWiredEnable => 'Įjungti laidinį ryšį';

  @override
  String get networkWifiOption => 'Prisijungti prie belaidžio (Wi-Fi) tinklo';

  @override
  String get networkWifiOff => 'Belaidis darbas tinkle išjungtas';

  @override
  String get networkWifiNone => 'Neaptikta jokių belaidžių (Wi-Fi) įrenginių';

  @override
  String get networkWifiDisabled => 'Norint šiame kompiuteryje naudoti belaidį (Wi-Fi) tinklą, privalo būti įjungtas belaidis darbas tinkle';

  @override
  String get networkWifiEnable => 'Įjungti belaidį (Wi-Fi)';

  @override
  String get networkHiddenWifiOption => 'Prisijungti prie paslėpto belaidžio (Wi-Fi) tinklo';

  @override
  String get networkHiddenWifiNameLabel => 'Tinklo pavadinimas';

  @override
  String get networkHiddenWifiNameRequired => 'Reikia nurodyti tinklo pavadinimą';

  @override
  String get networkNoneOption => 'Aš kol kas nenoriu jungtis prie interneto';

  @override
  String get eulaPageTitle => 'License agreement';

  @override
  String get eulaReviewTerms => 'Perskaitykite licenciją';

  @override
  String get eulaReadAndAcceptTerms => 'To continue setting up this machine, you must read and accept the license agreement terms.';

  @override
  String get eulaAcceptTerms => 'Aš perskaičiau ir sutinku su šiomis sąlygomis';
}
