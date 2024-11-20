import 'ubuntu_provision_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Serbian (`sr`).
class UbuntuProvisionLocalizationsSr extends UbuntuProvisionLocalizations {
  UbuntuProvisionLocalizationsSr([String locale = 'sr']) : super(locale);

  @override
  String get accessibilityPageTitle => 'Приступачност';

  @override
  String accessibilityPageHeader(String DISTRO) {
    return 'Приступачност у $DISTRO';
  }

  @override
  String accessibilityPageBody(String DISTRO) {
    return 'Прилагодите $DISTRO својим потребама пре него што подесите. Можете их касније променити у Системским подешавањима.';
  }

  @override
  String get accessibilitySeeingLabel => 'Вид';

  @override
  String get accessibilityHearingLabel => 'Слух';

  @override
  String get accessibilityTypingLabel => 'Куцање';

  @override
  String get accessibilityPointingLabel => 'Показивање и кликање';

  @override
  String get accessibilityZoomLabel => 'Зум';

  @override
  String get accessibilityHighContrastLabel => 'Висок контраст';

  @override
  String get accessibilityLargeTextLabel => 'Велики текст';

  @override
  String get accessibilityReduceAnimationLabel => 'Смањи анимацију';

  @override
  String get accessibilityScreenReaderLabel => 'Читач екрана';

  @override
  String get accessibilityVisualAlertsLabel => 'Визуелна обавештења';

  @override
  String get accessibilityStickKeysLabel => 'Лепљиви тастери';

  @override
  String get accessibilitySlowKeysLabel => 'Спори тастери';

  @override
  String get accessibilityMouseKeysLabel => 'Тастери миша';

  @override
  String get accessibilityDesktopZoomLabel => 'Зум радне површине';

  @override
  String get errorPageTitle => 'Нешто је пошло наопако';

  @override
  String get errorPageUnexpected => 'Жао нам је, али нисмо сигурни у чему је грешка. Можете покушати да поново покренете рачунар и започнете процес инсталације поново. Такође можете <a>пријавити проблем</a>.';

  @override
  String errorPageUbuntuBug(String SNAP) {
    return 'Да бисте послали аутоматизовани извештај о грешци који укључује релевантне информације за отклањање грешака, покрените <pre>sudo ubuntu-bug $SNAP</pre> у терминалу, или са конзоле (Alt+F2).';
  }

  @override
  String get errorPageShowLog => 'Прикажи дневник';

  @override
  String get errorPageHideLog => 'Сакриј дневник';

  @override
  String get restart => 'Поново покрени';

  @override
  String get close => 'Затвори';

  @override
  String get timezonePageTitle => 'Изаберите своју временску зону';

  @override
  String get timezoneLocationLabel => 'Локација';

  @override
  String get timezoneTimezoneLabel => 'Временска зона';

  @override
  String get keyboardTitle => 'Распоред тастатуре';

  @override
  String get keyboardHeader => 'Изаберите ваш распоред тастатуре';

  @override
  String get keyboardTestHint => 'Куцајте овде како би испробали вашу тастатуру';

  @override
  String get keyboardDetectTitle => 'Откриј распоред тастатуре';

  @override
  String get keyboardDetectButton => 'Откриј';

  @override
  String get keyboardVariantLabel => 'Изаберите варијанту тастатуре:';

  @override
  String get keyboardPressKeyLabel => 'Молимо притисните један од следећих тастера:';

  @override
  String get keyboardKeyPresentLabel => 'Да ли следећи тастер постоји на вашој тастатури?';

  @override
  String get themePageTitle => 'Изаберите своју тему';

  @override
  String get themePageHeader => 'Ово увек можете променити касније у подешавањима изгледа.';

  @override
  String get themeDark => 'Тамна';

  @override
  String get themeLight => 'Светла';

  @override
  String localePageTitle(String DISTRO) {
    return 'Добродошли у $DISTRO';
  }

  @override
  String get localeHeader => 'Изаберите ваш језик:';

  @override
  String get identityPageTitle => 'Направите свој налог';

  @override
  String get identityAutoLogin => 'Аутоматски се пријави';

  @override
  String get identityRequirePassword => 'Захтевај моју лозинку за пријаву';

  @override
  String get identityRealNameLabel => 'Ваше име';

  @override
  String get identityRealNameRequired => 'Име је обавезно';

  @override
  String get identityRealNameTooLong => 'То име је предуго.';

  @override
  String get identityHostnameLabel => 'Име вашег рачунара';

  @override
  String get identityHostnameInfo => 'Име које користи када комуницира са другим рачунарима.';

  @override
  String get identityHostnameRequired => 'Име рачунара је обавезно';

  @override
  String get identityHostnameTooLong => 'То име рачунара је предуго.';

  @override
  String get identityInvalidHostname => 'Име рачунара је неважеће';

  @override
  String get identityUsernameLabel => 'Ваше корисничко име';

  @override
  String get identityUsernameRequired => 'Корисничко име је обавезно';

  @override
  String get identityInvalidUsername => 'Корисничко име је неважеће';

  @override
  String get identityUsernameInUse => 'То корисничко име већ постоји.';

  @override
  String get identityUsernameSystemReserved => 'То име је резервисано за системску употребу.';

  @override
  String get identityUsernameTooLong => 'То име је предуго.';

  @override
  String get identityUsernameInvalidChars => 'То име садржи неважеће знакове.';

  @override
  String get identityPasswordLabel => 'Лозинка';

  @override
  String get identityPasswordRequired => 'Потребна је лозинка';

  @override
  String get identityConfirmPasswordLabel => 'Потврдите лозинку';

  @override
  String get identityPasswordMismatch => 'Лозинке се не поклапају';

  @override
  String get identityPasswordShow => 'Прикажи';

  @override
  String get identityPasswordHide => 'Сакриј';

  @override
  String get identityActiveDirectoryOption => 'Користи Active Directory';

  @override
  String get identityActiveDirectoryInfo => 'Унећете домен и друге детаље у следећем кораку.';

  @override
  String get activeDirectoryTitle => 'Пријавите се у Active Directory';

  @override
  String get activeDirectoryHeader => 'Пријавите се у Active Directory?';

  @override
  String activeDirectoryInfo(String DISTRO) {
    return '$DISTRO је дизајниран да се беспрекорно интегрише са Active Directory ради лакше администрације.';
  }

  @override
  String get activeDirectoryTestConnection => 'Тестирајте повезаност домена';

  @override
  String get activeDirectoryDomainLabel => 'Домен';

  @override
  String get activeDirectoryDomainEmpty => 'Потребно';

  @override
  String get activeDirectoryDomainTooLong => 'Превише дуго';

  @override
  String get activeDirectoryDomainInvalidChars => 'Неисправни знакови';

  @override
  String get activeDirectoryDomainStartDot => 'Почиње са тачком (.)';

  @override
  String get activeDirectoryDomainEndDot => 'Завршава се са тачком (.)';

  @override
  String get activeDirectoryDomainStartHyphen => 'Почиње са цртицом (-)';

  @override
  String get activeDirectoryDomainEndHyphen => 'Завршава се са цртицом (-)';

  @override
  String get activeDirectoryDomainMultipleDots => 'Садржи више узастопних тачака (..)';

  @override
  String get activeDirectoryDomainNotFound => 'Домен није пронађен';

  @override
  String get activeDirectoryAdminLabel => 'Корисник за придруживање домену';

  @override
  String get activeDirectoryAdminEmpty => 'Потребно';

  @override
  String get activeDirectoryAdminInvalidChars => 'Неисправни знакови';

  @override
  String get activeDirectoryPasswordLabel => 'Лозинка';

  @override
  String get activeDirectoryPasswordEmpty => 'Потребно';

  @override
  String get activeDirectoryErrorTitle => 'Грешка при конфигурисању везе са Active Directory';

  @override
  String get activeDirectoryErrorMessage => 'Жао нам је, Active Directory тренутно не може бити подешен. Када ваш систем буде покренут, посетите <a href=\"https://help.ubuntu.com/activedirectory\">help.ubuntu.com/activedirectory</a> за помоћ.';

  @override
  String get networkPageTitle => 'Интернет веза';

  @override
  String get networkPageHeader => 'Повежите се на интернет';

  @override
  String get networkPageBody => 'Интернет веза ће побољшати вашу инсталацију провером компатибилности и додатним софтверским пакетима.';

  @override
  String get networkWiredOption => 'Користите жичану везу';

  @override
  String get networkWiredNone => 'Није откривена жичана веза';

  @override
  String get networkWiredOff => 'Жичана веза је искључена';

  @override
  String get networkWiredDisabled => 'Да бисте користили Ethernet на овом рачунару, жичана веза мора бити омогућена';

  @override
  String get networkWiredEnable => 'Омогући жичану везу';

  @override
  String get networkWifiOption => 'Повежите се на Wi-Fi мрежу';

  @override
  String get networkWifiOff => 'Бежично умрежавање је онемогућено';

  @override
  String get networkWifiNone => 'Није откривен ниједан Wi-Fi уређај';

  @override
  String get networkWifiDisabled => 'Да бисте користили Wi-Fi на овом рачунару, бежично умрежавање мора бити омогућено';

  @override
  String get networkWifiEnable => 'Омогући Wi-Fi';

  @override
  String get networkHiddenWifiOption => 'Повежите се на скривену Wi-Fi мрежу';

  @override
  String get networkHiddenWifiNameLabel => 'Назив мреже';

  @override
  String get networkHiddenWifiNameRequired => 'Потребан је назив мреже';

  @override
  String get networkNoneOption => 'Не повезујте се на интернет';

  @override
  String get eulaPageTitle => 'Лиценцни уговор';

  @override
  String get eulaReviewTerms => 'Прегледајте услове лиценце';

  @override
  String get eulaReadAndAcceptTerms => 'Да бисте наставили са подешавањем овог рачунара, морате прочитати и прихватити услове лиценцног уговора.';

  @override
  String get eulaAcceptTerms => 'Прочитао сам и прихватам ове услове';
}
