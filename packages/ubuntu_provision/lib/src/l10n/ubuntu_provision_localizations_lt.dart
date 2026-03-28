// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_provision_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lithuanian (`lt`).
class UbuntuProvisionLocalizationsLt extends UbuntuProvisionLocalizations {
  UbuntuProvisionLocalizationsLt([String locale = 'lt']) : super(locale);

  @override
  String get accessibilityPageTitle => 'Prieinamumas';

  @override
  String accessibilityPageHeader(String DISTRO) {
    return 'Prieinamumo galimybės $DISTRO sistemoje';
  }

  @override
  String accessibilityPageBody(String DISTRO) {
    return 'Pradžioje, prisitaikykite $DISTRO savo poreikiams. Vėliau šiuos nustatymus galėsite pakeisti „Sistemos nustatymuose“.';
  }

  @override
  String get accessibilitySeeingLabel => 'Rega (matymas)';

  @override
  String get accessibilityHearingLabel => 'Klausa (girdėjimas)';

  @override
  String get accessibilityTypingLabel => 'Rašymas';

  @override
  String get accessibilityPointingLabel => 'Pointing and clicking';

  @override
  String get accessibilityZoomLabel => 'Mastelio keitimas';

  @override
  String get accessibilityHighContrastLabel => 'Didelis kontrastas';

  @override
  String get accessibilityLargeTextLabel => 'Padidintas tekstas';

  @override
  String get accessibilityReduceAnimationLabel => 'Sumažinti animacijas';

  @override
  String get accessibilityScreenReaderLabel => 'Teksto skaityklė';

  @override
  String get accessibilityVisualAlertsLabel => 'Vaizdiniai įspėjimai';

  @override
  String get accessibilityStickKeysLabel => 'Kibieji klavišai';

  @override
  String get accessibilitySlowKeysLabel => 'Lėtieji klavišai';

  @override
  String get accessibilityMouseKeysLabel => 'Pelės valdymas klavišais';

  @override
  String get accessibilityDesktopZoomLabel => 'Darbastalio didinimas';

  @override
  String get errorPageTitle => 'Kažkas nutiko';

  @override
  String get errorPageUnexpected =>
      'Įvyko nežinoma klaida. Galite pabandyti iš naujo paleisti kompiuterį ir vėl pradėti įdiegimą. Taip pat galite <a>pranešti apie klaidą</a>.';

  @override
  String errorPageUbuntuBug(String SNAP) {
    return 'Norėdami išsiųsti automatinę klaidų ataskaitą su aktualia derinimo informacija, įvykdykite komandą <pre>sudo ubuntu-bug $SNAP</pre> terminale arba komandų konsolėje (Alt+F2).';
  }

  @override
  String get errorPageShowLog => 'Rodyti žurnalą';

  @override
  String get errorPageHideLog => 'Slėpti žurnalą';

  @override
  String get errorPageTechnicalDetails => 'Technical details';

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
  String get keyboardKeyPresentLabel =>
      'Ar šis klavišas yra jūsų klaviatūroje?';

  @override
  String get themePageTitle => 'Pasirinkite apipavidalinimą';

  @override
  String get themePageHeader =>
      'Vėliau išvaizdos nustatymuose bet kada galėsite tai pakeisti.';

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
  String get identityRequirePassword =>
      'Prisijungiant prie paskyros reikalauti slaptažodžio';

  @override
  String get identityRealNameLabel => 'Jūsų vardas';

  @override
  String get identityRealNameRequired => 'Reikia nurodyti vardą';

  @override
  String get identityRealNameTooLong => 'Šis vardas per ilgas.';

  @override
  String get identityHostnameLabel => 'Jūsų kompiuterio pavadinimas';

  @override
  String get identityHostnameInfo =>
      'Pavadinimas yra naudojamas bendraujant su kitais kompiuteriais.';

  @override
  String get identityHostnameRequired =>
      'Reikia nurodyti kompiuterio pavadinimą';

  @override
  String get identityHostnameTooLong =>
      'Šis kompiuterio pavadinimas per ilgas.';

  @override
  String get identityInvalidHostname =>
      'Kompiuterio pavadinimas yra netinkamas';

  @override
  String get identityUsernameLabel => 'Pasirinkite naudotojo vardą';

  @override
  String get identityUsernameRequired => 'Reikia nurodyti naudotojo vardą';

  @override
  String get identityInvalidUsername => 'Netinkamas naudotojo vardas';

  @override
  String get identityUsernameInUse => 'Šis naudotojo vardas jau yra.';

  @override
  String get identityUsernameSystemReserved =>
      'Šis vardas yra rezervuotas sisteminiam naudojimui.';

  @override
  String get identityUsernameTooLong => 'Šis vardas per ilgas.';

  @override
  String get identityUsernameInvalidChars =>
      'Šiame varde yra netinkamų simbolių.';

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
  String get identityActiveDirectoryInfo =>
      'Kitame žingsnyje įvesite domeną bei kitą išsamesnę informaciją.';

  @override
  String get activeDirectoryTitle => 'Konfigūruoti „Active Directory“';

  @override
  String get activeDirectoryHeader => 'Jungtis prie „Active Directory“?';

  @override
  String activeDirectoryInfo(String DISTRO) {
    return '$DISTRO sklandžiai integruojasi su „Active Directory“, užtikrinant paprastesnį sistemų administravimą.';
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
  String get activeDirectoryDomainMultipleDots =>
      'Turi kelis taškus iš eilės (..)';

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
  String get activeDirectoryErrorTitle =>
      'Klaida konfigūruojant ryšį su „Active Directory“';

  @override
  String get activeDirectoryErrorMessage =>
      'Atleiskite, šiuo metu „Active Directory“ negali būti nustatyta. Kai tik jūsų sistema bus paleista, apsilankykite adresu <a href=\"https://help.ubuntu.com/activedirectory\">help.ubuntu.com/activedirectory</a>, kad gautumėte išsamesnės informacijos.';

  @override
  String get networkPageTitle => 'Prisijunkite prie interneto';

  @override
  String get networkPageHeader => 'Prisijunkite prie interneto';

  @override
  String get networkPageBody =>
      'Interneto ryšys išplečia sistemos diegimą patikrinant suderinamumą bei atsiunčiant papildomus programų paketus.';

  @override
  String get networkWiredOption => 'Naudoti laidinį ryšį';

  @override
  String get networkWiredNone => 'Neaptikta jokio laidinio ryšio';

  @override
  String get networkWiredOff => 'Laidinis ryšys yra išjungtas';

  @override
  String get networkWiredDisabled =>
      'Norint šiame kompiuteryje naudoti laidinį tinklą, privalo būti įjungtas laidinis ryšys';

  @override
  String get networkWiredEnable => 'Įjungti laidinį ryšį';

  @override
  String get networkWifiOption => 'Prisijungti prie belaidžio (Wi-Fi) tinklo';

  @override
  String get networkWifiOff => 'Belaidis darbas tinkle išjungtas';

  @override
  String get networkWifiNone => 'Neaptikta jokių belaidžių (Wi-Fi) įrenginių';

  @override
  String get networkWifiDisabled =>
      'Norint šiame kompiuteryje naudoti belaidį (Wi-Fi) tinklą, privalo būti įjungtas belaidis darbas tinkle';

  @override
  String get networkWifiEnable => 'Įjungti belaidį (Wi-Fi)';

  @override
  String get networkHiddenWifiOption =>
      'Prisijungti prie paslėpto belaidžio (Wi-Fi) tinklo';

  @override
  String get networkHiddenWifiNameLabel => 'Tinklo pavadinimas';

  @override
  String get networkHiddenWifiNameRequired =>
      'Reikia nurodyti tinklo pavadinimą';

  @override
  String get networkNoneOption => 'Aš kol kas nenoriu jungtis prie interneto';

  @override
  String get eulaPageTitle => 'Licencijos sutartis';

  @override
  String get eulaReviewTerms => 'Perskaitykite licenciją';

  @override
  String get eulaReadAndAcceptTerms =>
      'Norėdami tęsti šio įdiegimo nustatymus, privalote perskaityti licencijos sutarties sąlygas ir su jomis sutikti.';

  @override
  String get eulaAcceptTerms => 'Aš perskaičiau ir sutinku su šiomis sąlygomis';

  @override
  String get successIconSemanticLabel => 'Sėkminga';

  @override
  String get closeIconSemanticLabel => 'Užverti';

  @override
  String get maximizeIconSemanticLabel => 'Išskleisti';

  @override
  String get minimizeIconSemanticLabel => 'Suskleisti';

  @override
  String get expandIconSemanticLabel => 'Išskleisti';

  @override
  String get collapseIconSemanticLabel => 'Suskleisti';
}
