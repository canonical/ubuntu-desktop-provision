// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_provision_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Uighur Uyghur (`ug`).
class UbuntuProvisionLocalizationsUg extends UbuntuProvisionLocalizations {
  UbuntuProvisionLocalizationsUg([String locale = 'ug']) : super(locale);

  @override
  String get accessibilityPageTitle => 'قولايلىق';

  @override
  String accessibilityPageHeader(String DISTRO) {
    return '$DISTRO دىكى قولايلىقلىقى';
  }

  @override
  String accessibilityPageBody(String DISTRO) {
    return 'تەڭشەشتىن ئىلگىرى ئېھتىياجىڭىزغا ئاساسەن $DISTRO نى خاسلاشتۇرالايسىز. كېيىن ئۇلارنى سىستېما تەڭشىكىدىن ئۆزگەرتەلەيسىز.';
  }

  @override
  String get accessibilitySeeingLabel => 'كۆرۈش سېزىمى';

  @override
  String get accessibilityHearingLabel => 'ئاڭلاش سېزىمى';

  @override
  String get accessibilityTypingLabel => 'كىرگۈزۈش';

  @override
  String get accessibilityPointingLabel => 'نىشانلاش ۋە چېكىش';

  @override
  String get accessibilityZoomLabel => 'نىسبەت';

  @override
  String get accessibilityHighContrastLabel => 'يۇقىرى سېلىشتۇرما';

  @override
  String get accessibilityLargeTextLabel => 'چوڭ تېكىست';

  @override
  String get accessibilityReduceAnimationLabel => 'جانلاندۇرۇمنى ئازايتىش';

  @override
  String get accessibilityScreenReaderLabel => 'ئېكران ئوقۇغۇچ';

  @override
  String get accessibilityVisualAlertsLabel => 'كۆرۈنمە ئاگاھلاندۇرۇش';

  @override
  String get accessibilityStickKeysLabel => 'يېپىشقاق كۇنۇپكا';

  @override
  String get accessibilitySlowKeysLabel => 'ئاستا كۇنۇپكا';

  @override
  String get accessibilityMouseKeysLabel => 'چاشقىنەك كۇنۇپكىسى';

  @override
  String get accessibilityDesktopZoomLabel => 'ئۈستەلئۈستى نىسبىتى';

  @override
  String get errorPageTitle => 'كاشىلا كۆرۈلدى';

  @override
  String get errorPageUnexpected =>
      'كەچۈرۈڭ، قانداق خاتالىق كۆرۈلگەنلىكى ئېنىق ئەمەس. كومپيۇتېرىڭىزنى قايتا قوزغىتىپ ئاندىن ئورنىتىش جەريانىنى قايتا باشلاڭ. سىز يەنە <a>مەسىلە مەلۇم قىل</a>الايسىز.';

  @override
  String errorPageUbuntuBug(String SNAP) {
    return 'ئەگەر سازلاش ئۇچۇرىنى ئۆز ئىچىگە ئالغان ئاپتوماتىك كەمتۈك دوكلاتى يوللىماقچى بولسىڭىز، تېرمىنال ياكى بۇيرۇق سۇپىسى(Alt+F2) دا <pre>sudo ubuntu-bug $SNAP</pre> نى ئىجرا قىلىڭ.';
  }

  @override
  String get errorPageShowLog => 'خاتىرە كۆرسەت';

  @override
  String get errorPageHideLog => 'خاتىرە يوشۇر';

  @override
  String get errorPageTechnicalDetails => 'Technical details';

  @override
  String get restart => 'قايتا قوزغات';

  @override
  String get close => 'ياپ';

  @override
  String get timezonePageTitle => 'ۋاقىت رايونى تاللىنىدۇ';

  @override
  String get timezoneLocationLabel => 'ئورۇن';

  @override
  String get timezoneTimezoneLabel => 'ۋاقىت رايونى';

  @override
  String get keyboardTitle => 'ھەرپتاختا ئورۇنلاشتۇرۇلۇشى';

  @override
  String get keyboardHeader => 'ھەرپتاختا ئورۇنلاشتۇرۇلۇشى تاللىنىدۇ';

  @override
  String get keyboardTestHint => 'ھەرپتاختىڭىزنى سىناش ئۈچۈن بۇ جايغا كىرگۈزۈڭ';

  @override
  String get keyboardDetectTitle => 'ھەرپتاختا جايلاشتۇرۇشنى بايقايدۇ';

  @override
  String get keyboardDetectButton => 'بايقا';

  @override
  String get keyboardVariantLabel => 'ھەرپتاختا ئورۇنلاشتۇرۇلۇشى تاللىنىدۇ:';

  @override
  String get keyboardPressKeyLabel => 'تۆۋەندىكى كۇنۇپكىلاردىن بىرنى بېسىڭ:';

  @override
  String get keyboardKeyPresentLabel =>
      'ھەرپتاختىڭىزدا تۆۋەندىكى كۇنۇپكىلار بارمۇ؟';

  @override
  String get themePageTitle => 'ئۆرنەك تاللىنىدۇ';

  @override
  String get themePageHeader =>
      'كېيىن قىياپەت تەڭشىكىدىن خالىغان ۋاقىتتا ئۆزگەرتەلەيسىز.';

  @override
  String get themeDark => 'قاراڭغۇ';

  @override
  String get themeLight => 'يورۇق';

  @override
  String localePageTitle(String DISTRO) {
    return '$DISTRO غا خۇش كەلدىڭىز';
  }

  @override
  String get localeHeader => 'تىل تاللىنىدۇ:';

  @override
  String get identityPageTitle => 'ھېسابىڭىز قۇرۇلىدۇ';

  @override
  String get identityAutoLogin => 'ئۆزلۈكىدىن تىزىمغا كىرىدۇ';

  @override
  String get identityRequirePassword => 'تىزىمغا كىرگەندە ئىم سورايدۇ';

  @override
  String get identityRealNameLabel => 'ئاتىڭىز';

  @override
  String get identityRealNameRequired => 'ئىسىم زۆرۈر';

  @override
  String get identityRealNameTooLong => 'ئىسىم بەك ئۇزۇن.';

  @override
  String get identityHostnameLabel => 'كومپيۇتېرىڭىزنىڭ ئىسمى';

  @override
  String get identityHostnameInfo =>
      'باشقا كومپيۇتېرلار بىلەن ئالاقە قىلغاندا بۇ كومپيۇتېر ئىشلىتىدىغان ئىسم.';

  @override
  String get identityHostnameRequired => 'كومپيۇتېر ئىسمى زۆرۈر';

  @override
  String get identityHostnameTooLong => 'كومپيۇتېر ئىسمى بەك ئۇزۇن.';

  @override
  String get identityInvalidHostname => 'كومپيۇتېر ئىسمى ئىناۋەتسىز';

  @override
  String get identityUsernameLabel => 'ئىشلەتكۈچى ئاتىڭىز';

  @override
  String get identityUsernameRequired => 'ئىشلەتكۈچى ئاتى زۆرۈر';

  @override
  String get identityInvalidUsername => 'ئىشلەتكۈچى ئاتى ئىناۋەتسىز';

  @override
  String get identityUsernameInUse => 'ئىشلەتكۈچى ئاتى مەۋجۇت.';

  @override
  String get identityUsernameSystemReserved =>
      'بۇ ئات سىستېمىنىڭ ئىشلىتىشى ئۈچۈن قالدۇرۇلغان.';

  @override
  String get identityUsernameTooLong => 'ئىسىم بەك ئۇزۇن.';

  @override
  String get identityUsernameInvalidChars => 'ئىسىمدا ئىناۋەتسىز ھەرپ بار.';

  @override
  String get identityPasswordLabel => 'ئىم';

  @override
  String get identityPasswordRequired => 'ئىم زۆرۈر';

  @override
  String get identityConfirmPasswordLabel => 'ئىم جەزملە';

  @override
  String get identityPasswordMismatch => 'ئىم ماسلاشمىدى';

  @override
  String get identityPasswordShow => 'كۆرسەت';

  @override
  String get identityPasswordHide => 'يوشۇر';

  @override
  String get identityActiveDirectoryOption => 'ئاكتىپ مۇندەرىجىنى ئىشلىتىدۇ';

  @override
  String get identityActiveDirectoryInfo =>
      'كېيىنكى قەدەمدە دائىرە ۋە باشقا تەپسىلاتلارنى كىرگۈزەلەيسىز.';

  @override
  String get activeDirectoryTitle =>
      'ئاكتىپ مۇندەرىجىگە تىزىمغا كىرىش سەپلىمىسى';

  @override
  String get activeDirectoryHeader => 'ئاكتىپ مۇندەرىجىگە تىزىمغا كىرەمدۇ؟';

  @override
  String activeDirectoryInfo(String DISTRO) {
    return 'باشقۇرۇش ئاسان بولۇشى ئۈچۈن $DISTRO ئاكتىپ مۇندەرىجە بىلەن زىچ توپلاشتۇرۇپ لايىھەلىگەن.';
  }

  @override
  String get activeDirectoryTestConnection => 'دائىرە باغلىنىشىنى سىنا';

  @override
  String get activeDirectoryDomainLabel => 'دائىرە';

  @override
  String get activeDirectoryDomainEmpty => 'زۆرۈر';

  @override
  String get activeDirectoryDomainTooLong => 'بەك ئۇزۇن';

  @override
  String get activeDirectoryDomainInvalidChars => 'ئىناۋەتسىز ھەرپ';

  @override
  String get activeDirectoryDomainStartDot => 'چېكىت (.) تىن باشلىنىدۇ';

  @override
  String get activeDirectoryDomainEndDot => 'چېكىت (.) بىلەن ئاخىرلىشىدۇ';

  @override
  String get activeDirectoryDomainStartHyphen => 'سىزىقچە (-) بىلەن باشلىنىدۇ';

  @override
  String get activeDirectoryDomainEndHyphen => 'سىزىقچە (-) بىلەن ئاخىرلىشىدۇ';

  @override
  String get activeDirectoryDomainMultipleDots =>
      'تەرتىپلىك كۆپ چېكىت (..) بار';

  @override
  String get activeDirectoryDomainNotFound => 'دائىرە تېپىلمىدى';

  @override
  String get activeDirectoryAdminLabel => 'دائىرىگە قوشۇلغان ئىشلەتكۈچى';

  @override
  String get activeDirectoryAdminEmpty => 'زۆرۈر';

  @override
  String get activeDirectoryAdminInvalidChars => 'ئىناۋەتسىز ھەرپ';

  @override
  String get activeDirectoryPasswordLabel => 'ئىم';

  @override
  String get activeDirectoryPasswordEmpty => 'زۆرۈر';

  @override
  String get activeDirectoryErrorTitle =>
      'ئاكتىپ مۇندەرىجىگە ئۇلىنىش تەڭشەشتە خاتالىق';

  @override
  String get activeDirectoryErrorMessage =>
      'كەچۈرۈڭ ، ئاكتىپ مۇندەرىجە ھازىرچە قۇرۇلمايدۇ. سىستېمىڭىز قوزغالغاندىن كېيىن <a href=\"https://help.ubuntu.com/activedirectory\">help.ubuntu.com/activedirectory</a> نى زىيارەت قىلىڭ.';

  @override
  String get networkPageTitle => 'ئىنتېرنېت باغلىنىشى';

  @override
  String get networkPageHeader => 'ئىنتېرنېتقا باغلا';

  @override
  String get networkPageBody =>
      'ئىنتېرنېتقا باغلانغاندىن كېيىن، ماسلىشىشچانلىق تەكشۈرۈشى ۋە قوشۇمچە يۇمشاق دېتال بوغچىسى ئورنىتىشىڭىزنى ياخشىلايدۇ.';

  @override
  String get networkWiredOption => 'سىملىق تور باغلىنىشى ئىشلىتىدۇ';

  @override
  String get networkWiredNone => 'ھېچقانداق سىملىق تور باغلىنىشى بايقالمىدى';

  @override
  String get networkWiredOff => 'سىملىق تور باغلىنىشى تاقاق';

  @override
  String get networkWiredDisabled =>
      'بۇ كومپيۇتېردىكى دائىرىلىك تورنى ئىشلىتىشتە، سىملىق تور چوقۇم قوزغىتىلىشى كېرەك';

  @override
  String get networkWiredEnable => 'سىملىق تورنى قوزغات';

  @override
  String get networkWifiOption => 'Wi-Fi تورىغا باغلان';

  @override
  String get networkWifiOff => 'سىمسىز تور چەكلەنگەن';

  @override
  String get networkWifiNone => 'ھېچقانداق Wi-Fi تورى بايقالمىدى';

  @override
  String get networkWifiDisabled =>
      'بۇ كومپيۇتېردىكى Wi-Fi يەنى سىمسىز تورنى ئىشلىتىشتە، سىمسىز تور چوقۇم قوزغىتىلىشى كېرەك';

  @override
  String get networkWifiEnable => 'Wi-Fi نى قوزغات';

  @override
  String get networkHiddenWifiOption => 'يوشۇرۇن Wi-Fi تورىغا باغلىنىدۇ';

  @override
  String get networkHiddenWifiNameLabel => 'تور ئىسمى';

  @override
  String get networkHiddenWifiNameRequired => 'تور ئىسمى زۆرۈر';

  @override
  String get networkNoneOption => 'ئىنتېرنېتقا باغلىما';

  @override
  String get eulaPageTitle => 'ئىجازەت كېلىشىمى';

  @override
  String get eulaReviewTerms => 'ئىجازەتنامە ماددىلىرىنى كۆرسىتىدۇ';

  @override
  String get eulaReadAndAcceptTerms =>
      'بۇ كومپيۇتېرنى تەڭشەشنى داۋاملاشتۇرسىڭىز، چوقۇم ئىجازەت كېلىشىمىنىڭ ماددىلىرىنى ئوقۇپ ۋە قوشۇلىسىز.';

  @override
  String get eulaAcceptTerms => 'بۇ ماددىلارنى ئوقۇدۇم ۋە قوشۇلىمەن';

  @override
  String get successIconSemanticLabel => 'مۇۋەپپەقىيەتلىك';

  @override
  String get closeIconSemanticLabel => 'ياپ';

  @override
  String get maximizeIconSemanticLabel => 'چوڭايت';

  @override
  String get minimizeIconSemanticLabel => 'كىچىكلەت';

  @override
  String get expandIconSemanticLabel => 'ياي';

  @override
  String get collapseIconSemanticLabel => 'يىغ';
}
