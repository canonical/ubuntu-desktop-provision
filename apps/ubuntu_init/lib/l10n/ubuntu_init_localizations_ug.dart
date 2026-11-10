// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_init_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Uighur Uyghur (`ug`).
class UbuntuInitLocalizationsUg extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsUg([String locale = 'ug']) : super(locale);

  @override
  String get welcomePageTitle => 'خۇش كەلدىڭىز';

  @override
  String welcomePageHeader(String distro) {
    return '$distro غا خۇش كەلدىڭىز';
  }

  @override
  String get welcomeWhatsNew => 'قانداق يېڭىلىق بار؟';

  @override
  String get welcomeStartTitle => 'راۋان باشلىنىش';

  @override
  String get welcomeStartSubtitle => 'تېخىمۇ ئاددىي ئورنىتىش تەسىراتى.';

  @override
  String get welcomeStoreTitle => 'يېڭى ئۇسلۇبتىكى ئەپ دۇكىنى';

  @override
  String get welcomeStoreSubtitle =>
      'سىز ياقتۇرىدىغان يۇمشاق دېتالنى ئىزدەش ئەزەلدىن بۇنداق ئاسان بولۇپ باقمىغان.';

  @override
  String get welcomeSecurityTitle => 'كۈچەيتىلگەن بىخەتەرلىك';

  @override
  String get welcomeSecuritySubtitle =>
      'قاتتىق ئاساسىدىكى شىفىرلاش يېڭى تاللانمىسى ياكى ZFS شىفىرلاش.';

  @override
  String welcomeChangelogLabel(String url) {
    return '<a href=\"$url\">ئۆزگىرىش خاتىرىسىنى كۆرسەت</a>';
  }

  @override
  String get telemetryPageTitle => 'ئۇچۇر توپلاش';

  @override
  String telemetryHeader(String distro) {
    return '$distro نى ياخشىلاشقا ياردەم';
  }

  @override
  String telemetryDescription(String distro) {
    return 'سىستېما سانلىق مەلۇماتلىرىڭىزنى بىز بىلەن ئورتاقلىشىش ئارقىلىق $distro نى ياخشىلاشقا ياردەملىشىڭ. بۇ ماشىنىڭىزنىڭ تىپى، ئورنىتىلغان يۇمشاق دېتال ۋە سىز ۋاقىت رايونىنى تاللىغان ئورۇنغا ئوخشاش نەرسىلەرنى ئۆز ئىچىگە ئالىدۇ.';
  }

  @override
  String telemetryLabelOn(String distro) {
    return 'ھەئە، سىستېما سانلىق مەلۇماتىنى $distro قوشۇنىدىكىلەرگە ھەمبەھىرلە';
  }

  @override
  String get telemetryLabelOff => 'ياق، سىستېما سانلىق مەلۇماتىنى ھەمبەھىرلىمە';

  @override
  String get telemetryReportLabel => 'تۇنجى دوكلاتنى كۆرسەت';

  @override
  String get telemetryReportTitle => 'دوكلات تەپسىلاتى';

  @override
  String get telemetryLegalLabel => 'قانۇنىي ئۇقتۇرۇش';

  @override
  String get telemetryCollectError => 'يىراقتىن ئۇچۇر توپلىيالمىدى';

  @override
  String get privacyPageTitle => 'ئورۇن مۇلازىمىتى';

  @override
  String get privacyLocationTitle => 'ئورۇن ئۇچۇرى مۇلازىمىتىنى قوزغىتامدۇ؟';

  @override
  String get privacyLocationSubtitle =>
      'ئەپنىڭ جۇغراپىيەلىك ئورۇن ئۇچۇرىڭىزنى بىلىشىگە يول قويىدۇ.\nبۇنى خالىغان ۋاقىتتا سىستېما تەڭشەكتىن ئۆزگەرتەلەيسىز.';

  @override
  String get privacyLocationEnable => 'ئورۇن مۇلازىمىتى';

  @override
  String get privacyPolicyLink => 'سانلىق مەلۇمات شەخسىيىتى';

  @override
  String ubuntuProMagicAttachInstructions(String url) {
    return '<a href=\"https://$url\">$url</a> دا بۇ كودنى ئىشلىتىپ سىستېمىنى Ubuntu Pro بىلەن باغلىيالايدۇ';
  }

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';

  @override
  String get ubuntuProHeader => 'بۇ ماشىنىغا باغلا';

  @override
  String get ubuntuProOrAddTokenManually => 'ياكى پەرمان تاختىسىنى قولدا قوشۇڭ';

  @override
  String get ubuntuProTokenTextfieldHint => 'پەرمان تاختا';

  @override
  String get ubuntuProSubscriptionDescription =>
      'ئوچۇق كودلۇق يۇمشاق دېتال بىخەتەرلىكى ئائىت كەڭ دائىرىدىكى قوللاشقا ئېرىشىدۇ';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(String url) {
    return 'شەخسىي ئىشلەتكۈچىلەر ئۈچۈن ھەمىشە ھەقسىز. كارخانا 30 كۈن ھەقسىز ئىشلىتەلەيدۇ. <a href=\"https://$url\">مول بىلىم</a>';
  }

  @override
  String get ubuntuProTokenAttachButton => 'باغلا';

  @override
  String get ubuntuProTokenAttachError => 'ئىناۋەتسىز پەرمان تاختا';

  @override
  String get ubuntuProTokenAttachSucess => 'ئىناۋەتلىك پەرمان تاختا';

  @override
  String get ubuntuProTokenAttachErrorVariant =>
      'ئىناۋەتسىز پەرمان تاختا، قايتا سىناڭ';

  @override
  String get ubuntuProOnBoardingSkipForNow => 'ھازىرچە ئاتلا';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription =>
      'سىز كېيىن يۇمشاق دېتال ۋە ئەپ يېڭىلانمىدىن Ubuntu Pro نى قوزغىتالايسىز.';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => 'Ubuntu Pro نى قوزغات';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription =>
      'بۇ كومپيۇتېرنى Ubuntu Pro غا باغلاپ، كەڭ دائىرىدىكى يۇمشاق دېتال بوغچىسىنىڭ بىخەتەرلىك يېڭىلىنىشىغا 2032-يىلىغىچە ئېرىشەلەيسىز.';

  @override
  String get ubuntuProSucessAttachHeader =>
      'ھازىر بۇ كومپيۇتېردا Ubuntu Pro قوزغىتىلدى';

  @override
  String get ubuntuProSucessAttachDescription =>
      'يۇمشاق دېتال ۋە ئەپ يېڭىلانمىدىن Ubuntu Pro قوللاش مۇلازىمىتىنى باشقۇرالايسىز.';

  @override
  String get successIconSemanticLabel => 'مۇۋەپپەقىيەتلىك';

  @override
  String get closeIconSemanticLabel => 'ياپ';

  @override
  String get maximizeIconSemanticLabel => 'چوڭايت';

  @override
  String get minimizeIconSemanticLabel => 'كىچىكلەت';
}
