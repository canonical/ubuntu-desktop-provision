// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_bootstrap_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Uighur Uyghur (`ug`).
class UbuntuBootstrapLocalizationsUg extends UbuntuBootstrapLocalizations {
  UbuntuBootstrapLocalizationsUg([String locale = 'ug']) : super(locale);

  @override
  String get appTitle => 'Ubuntu ئۈستەلئۈستى ئورناتقۇچ';

  @override
  String windowTitle(String RELEASE) {
    return '‏$RELEASE نى ئورنات';
  }

  @override
  String get autoinstallDirectTitle => 'ئۆزلۈكىدىن ئورنىتىش';

  @override
  String get autoinstallDirectHeader => 'ئۆزلۈكىدىن ئورنىتىش ھۆججىتىنى ئەكىر';

  @override
  String get autoinstallDirectUrlLabel =>
      'ئۆزلۈكىدىن ئورنىتىش ھۆججىتىنىڭ تور ئادرېسىنى كىرگۈزەلەيسىز:';

  @override
  String get autoinstallDirectFileLabel => 'ياكى يەرلىك ھۆججەت تاللىنىدۇ:';

  @override
  String get autoinstallDirectFileButtonLabel => 'ھۆججەت تاللىنىدۇ…';

  @override
  String get autoinstallDirectFileClearButtonLabel => 'ھۆججەتنى تازىلا';

  @override
  String get autoinstallDirectFilePickerTitle => 'ھۆججەت تاللىنىدۇ';

  @override
  String get autoinstallDirectFilePickerFilterLabel => 'YAML ھۆججەت';

  @override
  String get autoinstallDirectImportButtonLabel => 'ئەكىر';

  @override
  String get autoinstallDirectErrorNetworkTitle =>
      'ئۆزلۈكىدىن ئورنىتىش ھۆججىتىنى زىيارەت قىلغىلى بولمايدۇ';

  @override
  String get autoinstallDirectErrorNetworkBody =>
      'تور ئادرېسىنىڭ توغرىلىقىنى تەكشۈرۈڭ، ئىنتېرنېت باغلىنىشىنى سىناڭ ياكى سەل تۇرۇپ قايتا سىناڭ.';

  @override
  String get autoinstallDirectErrorInvalidUrlTitle => 'ئىناۋەتسىز تور ئادرېسى';

  @override
  String get autoinstallDirectErrorInvalidUrlBody =>
      'تور ئادرېسىنىڭ توغرا ئىكەنلىكىنى تەكشۈرۈڭ ياكى يەرلىك ھۆججەتنى تاللاڭ.';

  @override
  String get autoinstallDirectErrorInvalidContentTitle =>
      'ئىناۋەتسىز ئۆزلۈكىدىن ئورنىتىش ھۆججىتى';

  @override
  String get autoinstallDirectErrorInvalidContentBody =>
      'ھۆججەتنى تەكشۈرۈڭ ياكى باشقا بىرىنى تەمىنلەڭ.';

  @override
  String get autoinstallDirectErrorFileSystemTitle =>
      'ئۆزلۈكىدىن ئورنىتىش ھۆججىتىنى ئوقۇغىلى بولمايدۇ';

  @override
  String get autoinstallDirectErrorFileSystemBody =>
      'ئىجازىتىڭىزنى تەكشۈرۈڭ ياكى باشقا ھۆججەت تەمىنلەڭ.';

  @override
  String get autoinstallDirectErrorUnkownTitle => 'يوچۇن خاتالىق';

  @override
  String get autoinstallTitle => 'ئورنىتىش تۈرى';

  @override
  String autoinstallHeader(String DISTRO) {
    return '$DISTRO نى قانداق ئورناتماقچى؟';
  }

  @override
  String get autoinstallInstructions =>
      'autoinstall.yaml نىڭ تور ئادرېسى ياكى يەرلىك ھۆججەت يولى كىرگۈزۈلىدۇ:';

  @override
  String get autoinstallInteractiveOption => 'تەسىرلىشىشچان ئورنىتىش';

  @override
  String get autoinstallInteractiveDescription =>
      'ئورنىتىشتا قەدەممۇ-قەدەم يېتەكلەشكە ئېھتىياجلىق ئىشلەتكۈچىلەرگە ماس كېلىدۇ.';

  @override
  String get autoinstallDirectOption =>
      'ئۆزلۈكىدىن ئورنىتىش ھۆججىتى ئارقىلىق ئاپتوماتلاشتۇرۇلغان';

  @override
  String get autoinstallDirectDescription =>
      'ئۆزلۈكسىز ۋە تەكرار سىستېما سەپلەيدىغان autoinstall.yaml ھۆججىتىگە ئىگە ئالىي ئىشلەتكۈچىلەرگە ماس كېلىدۇ.';

  @override
  String get autoinstallLandscapeOption => 'Landscape ئاپتوماتلاشتۇرغان';

  @override
  String get autoinstallLandscapeDescription =>
      'Landscape ئارقىلىق ئۆزلۈكىدىن ئورنىتىش ھۆججىتى تەمىنلەيدىغان تەشكىلنىڭ ئىشلەتكۈچىلىرىگە ماس كېلىدۇ.';

  @override
  String get autoinstallErrorMessage =>
      'A command in the autoinstall file failed to run during installation.';

  @override
  String get autoinstallErrorInstructions =>
      'You will need to restart the installation. Check the autoinstall file, choose a different installation type, or contact your IT support.';

  @override
  String get changeButtonText => 'ئۆزگەرت';

  @override
  String get quitButtonText => 'ئورنىتىشتىن چېكىن';

  @override
  String loadingPageTitle(String DISTRO) {
    return '$DISTRO غا خۇش كەلدىڭىز';
  }

  @override
  String loadingHeader(String DISTRO) {
    return '$DISTRO نى تەييارلاۋاتىدۇ…';
  }

  @override
  String get warningLabel => 'ئاگاھلاندۇرۇش:';

  @override
  String tryOrInstallTitle(String DISTRO) {
    return '$DISTRO نى سىنايدۇ ياكى ئورنىتىدۇ';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return '$DISTRO نى قانداق بىر تەرەپ قىلماقچى؟';
  }

  @override
  String get tryOrInstallRepairOption => 'ئوڭشاپ ئورنىتىش';

  @override
  String get tryOrInstallRepairDescription =>
      'ئوڭشاش پۈتۈك ۋە تەڭشەكلەرگە چېقىلماستىن ئورنىتىلغان بارلىق يۇمشاق دېتاللارنى قايتا ئورنىتىدۇ.';

  @override
  String tryOption(String RELEASE) {
    return '‏$RELEASE نى سىناي';
  }

  @override
  String tryDescription(String RELEASE) {
    return 'كومپيۇتېرىڭىزغا ھېچقانداق ئۆزگەرتىش ئېلىپ بارماستىن $RELEASE نى سىنىيالايسىز.';
  }

  @override
  String installOption(String RELEASE) {
    return '‏$RELEASE نى ئورنات';
  }

  @override
  String installDescription(String RELEASE) {
    return 'نۆۋەتتىكى مەشغۇلات سىستېمىسىنىڭ ئورنىغا $RELEASE نى ئورنىتىدۇ (ياكى ئۇنىڭ ئورنىغا) ئالماشتۇرىدۇ. بۇنىڭغا ئانچە كۆپ ۋاقىت كەتمەيدۇ.';
  }

  @override
  String tryOrInstallReleaseNotesLabel(String url) {
    return 'سىز <a href=\"$url\">تارقىتىش ئىزاھاتى</a>نى ئوقۇشنى ئارزۇ قىلىشىڭىز مۇمكىن.';
  }

  @override
  String get rstTitle => 'تېز ساقلاش تېخنىكىسى (RST) بايقالدى';

  @override
  String get rstHeader =>
      'ئورنىتىشنى داۋاملاشتۇرۇش ئۈچۈن RST نى چەكلىشىڭىز كېرەك';

  @override
  String get rstDisable =>
      'بۇ كومپيۇتېردا Intel شىركىتىنىڭ RST (تېز ساقلاش تېخنىكىسى) ئىشلىتىلگەن. تۆۋەندە RST نى چەكلىيەلەيسىز:';

  @override
  String get rstDisableWindows =>
      'Windows، ئەگەر ئۇنىڭ بىلەن قوش سىستېما قوزغىتىش ئىشلەتسىڭىز';

  @override
  String get rstDisableBios => 'BIOS تەڭشىكى';

  @override
  String rstInstructions(String url) {
    return 'مۇناسىۋەتلىك چۈشەندۈرۈشكە ئېرىشىش ئۈچۈن ئۈسكۈنىدىكى QR كودى تارىلىدۇ ياكى تۆۋەندىكى زىيارەت قىلىنىدۇ: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'بىخەتەر قوزغىلىش سەپلىمىسى';

  @override
  String get configureSecureBootDescription =>
      'سىز ئۈچىنچى تەرەپ قوزغاتقۇ يۇمشاق دېتالىنى ئورنىتىشنى تاللىدىڭىز. بۇ بىخەتەر قوزغىلىشنى تاقاشنى تەلەپ قىلىدۇ.\nشۇنىڭ ئۈچۈن دەرھال بىخەتەر شىفىرلىق ئاچقۇچتىن بىرنى تاللىشىڭىز كېرەك ھەمدە سىستېما قايتا قوزغىتىلغاندا ئۇنى كىرگۈزۈشىڭىز كېرەك.';

  @override
  String get configureSecureBootOption => 'بىخەتەر قوزغىلىش سەپلىمىسى';

  @override
  String get chooseSecurityKey => 'بىخەتەرلىك ئاچقۇچى تاللىنىدۇ';

  @override
  String get confirmSecurityKey => 'بىخەتەرلىك ئاچقۇچىنى جەزملەش';

  @override
  String get dontInstallDriverSoftwareNow =>
      'ھازىرچە قوزغاتقۇ يۇمشاق دېتالنى ئورناتمايدۇ';

  @override
  String get dontInstallDriverSoftwareNowDescription =>
      'ئۇنى كېيىن يۇمشاق دېتال ۋە يېڭىلاشتىن ئورنىتالايسىز.';

  @override
  String get configureSecureBootSecurityKeyRequired =>
      'بىخەتەرلىك ئاچقۇچى زۆرۈر';

  @override
  String get secureBootSecurityKeysDontMatch => 'بىخەتەرلىك ئاچقۇچى ماسلاشمىدى';

  @override
  String get showSecurityKey => 'كۆرسەت';

  @override
  String get hideSecurityKey => 'يوشۇر';

  @override
  String get updatesOtherSoftwarePageTitle => 'پىروگرامما';

  @override
  String get updatesOtherSoftwarePageDescription =>
      'قايسى ئەپلەرنى ئورناتماقچى؟';

  @override
  String get codecsAndDriversPageTitle => 'كومپيۇتېرىڭىزنى ئەلالاشتۇرىدۇ';

  @override
  String get codecsAndDriversPageDescription =>
      'تەۋسىيە قىلىنغان مەخسۇس يۇمشاق دېتالنى ئورنىتامدۇ؟';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return 'كۆڭۈلدىكى ئەھۋالدا $DISTRO نىڭ ئۆزىدە مەخسۇس يۇمشاق دېتال يوق. قوشۇمچە يۇمشاق دېتال ئورنىتىش كومپيۇتېرىڭىزنىڭ ئۈنۈمىنى ياخشىلىشى مۇمكىن.';
  }

  @override
  String get codecsAndDriversNvidiaNote => 'NVIDIA كۆرسىتىش كارتىسى بايقالدى';

  @override
  String get codecsAndDriversNvidiaBody =>
      'NVIDIA كۆرسىتىش كارتىسىنىڭ ئۈنۈمىنى جارى قىلدۇرۇش ئۈچۈن، قوشۇمچە قوزغاتقۇ ئورنىتىش كۈچلۈك تەۋسىيە قىلىنىدۇ.';

  @override
  String get fullInstallationTitle => 'كېڭەيتىلگەن تاللاش';

  @override
  String get fullInstallationSubtitle =>
      'تورسىز تاللاپ ئورنىتىشقا دوستانە ئىشخانا يۈرۈشلۈك قورالى ۋە توركۆرگۈ.';

  @override
  String get minimalInstallationTitle => 'كۆڭۈلدىكى تاللاش';

  @override
  String get minimalInstallationSubtitle =>
      'پەقەت زۆرۈر يۇمشاق دېتال، توركۆرگۈ ۋە ئاساسىي قوراللار ئورنىتىلىدۇ.';

  @override
  String get otherOptions => 'باشقا تاللانما';

  @override
  String get installThirdPartyTitle =>
      'كۆرسىتىش ۋە Wi-Fi قاتتىق دېتالى شۇنداقلا قوشۇمچە ۋاسىتە پىچىمى ئۈچۈن ئۈچىنچى تەرەپ يۇمشاق دېتاللىرىنى ئورنىتىدۇ';

  @override
  String get installThirdPartySubtitle =>
      'مەزكۇر يۇمشاق دېتال ئۇنىڭ پۈتۈكلىرىدىكى ئىجازەتنامىنىڭ چەكلىمىسىگە ئۇچرايدۇ. بەزىلىرى خۇسۇسلارنىڭ ئىگىدارچىلىقىدا.';

  @override
  String get installDriversTitle =>
      'كۆرسىتىش ۋە Wi-Fi قاتتىق دېتالى شۇنداقلا قوشۇمچە ۋاسىتە پىچىمى ئۈچۈن ئۈچىنچى تەرەپ يۇمشاق دېتالىنى ئورنىتىدۇ';

  @override
  String get installDriversSubtitle =>
      'NVIDIA قوزغاتقۇ ۋە ئوخشىشىپ كېتىدىغان يۇمشاق بىلەنلا چەكلەنمەسلىكى مۇمكىن';

  @override
  String get installCodecsTitle =>
      'قوشۇمچە ۋاسىتە پىچىمىنى قوللاش ئۈچۈن چۈشۈرۈپ ئورنىتىدۇ';

  @override
  String get installCodecsSubtitle =>
      'MP3، MP4، MOV ۋە ئوخشىشىپ كېتىدىغان كودلىغۇچ بىلەنلا چەكلەنمەسلىكى مۇمكىن';

  @override
  String get batteryWarning => 'كومپيۇتېر توك مەنبەسىگە چېتىلمىغان.';

  @override
  String get offlineWarning => 'سىز نۆۋەتتە تورسىز ھالەتتە';

  @override
  String get choosePassphraseHeader => 'ئىم ئىبارە قۇر';

  @override
  String get choosePassphraseBody =>
      'كومپيۇتېرىڭىزنى ھەر قېتىم ئاچقاندا ئىم ئىبارە كىرگۈزۈشىڭىز كېرەك. بۇ ئىم ئىبارە ئىشلەتكۈچى ئىمدىن پەرقلىق.';

  @override
  String get choosePassphraseInfoHeader => 'ئىم ئىبارىنى ياخشى ساقلاڭ';

  @override
  String get choosePassphraseInfoBody =>
      'ئەگەر ئۇنى يوقىتىپ قويسىڭىز، ھەممە سانلىق مەلۇماتىڭىزنى يوقىتىسىز.';

  @override
  String get chooseOptionalPassphraseInfoHeader =>
      'ئىم ئىبارە ۋە ئەسلىگە كەلتۈرۈش ئاچقۇچىنى بىخەتەر بىر جايغا ساقلاڭ';

  @override
  String get chooseOptionalPassphraseInfoBody =>
      'ئەگەر ئۇنى يوقىتىپ قويسىڭىز، ھەممە سانلىق مەلۇماتىڭىزنى يوقىتىسىز. ئىم ئىبارە ئەسلىگە كەلتۈرۈش ئاچقۇچى ياكى ئىشلەتكۈچى ئىمنىڭ ئورنىنى ئالالمايدۇ.';

  @override
  String get passphrasePageTitle => 'شىفىرلاش';

  @override
  String get passphrasePageHeaderPassphrase => 'شىفىرلاش ئىم ئىبارە تەڭشىكى';

  @override
  String get passphrasePageHeaderPin => 'شىفىرلاش PIN تەڭشىكى';

  @override
  String get passphrasePageBodyPassphrase =>
      'كومپيۇتېرىڭىزنى ھەر قېتىم ئاچقاندا ئىم ئىبارە كىرگۈزۈشىڭىز كېرەك. بۇ ئىم ئىبارە ئىشلەتكۈچى ئىمدىن پەرقلىق. ئۇنى كېيىن ئۆزگەرتەلەيسىز ئەمما ئۇنى چەكلىيەلمەيسىز. ئەگەر ئىم ئىبارىنى ئۇنتۇپ قالسىڭىز، ئەسلىگە كەلتۈرۈش ئاچقۇچى ئارقىلىق دىسكىنى زىيارەت قىلىش ئىجازىتىنى قايتا بېرەلەيسىز.';

  @override
  String get passphrasePageBodyPin =>
      'كومپيۇتېرىڭىزنى ھەر قېتىم ئاچقاندا PIN كىرگۈزۈشىڭىز كېرەك. بۇ PIN ئىشلەتكۈچى ئىمدىن پەرقلىق. ئۇنى كېيىن ئۆزگەرتەلەيسىز ئەمما ئۇنى چەكلىيەلمەيسىز. ئەگەر PIN نى ئۇنتۇپ قالسىڭىز، ئەسلىگە كەلتۈرۈش ئاچقۇچى ئارقىلىق دىسكىنى زىيارەت قىلىش ئىجازىتىنى قايتا بېرەلەيسىز.';

  @override
  String get passphrasePageChoosePassphraseHint => 'ئىم ئىبارە';

  @override
  String get passphrasePageConfirmPassphraseHint => 'جەزملەش ئىم ئىبارە';

  @override
  String get passphrasePageRequiredPassphrase => 'ئىم ئىبارە زۆرۈر';

  @override
  String get passphrasePageMismatchPassphrase => 'ئىم ئىبارە ماس كەلمىدى';

  @override
  String get passphrasePageChoosePinHint => 'PIN';

  @override
  String get passphrasePageConfirmPinHint => 'جەزملەش PIN';

  @override
  String get passphrasePageRequiredPin => 'PIN كىرگۈزۈش زۆرۈر';

  @override
  String get passphrasePageMismatchPin => 'PIN ماس كەلمىدى';

  @override
  String get passphraseTypePassphraseTileTitle => 'ئىم ئىبارە زۆرۈر';

  @override
  String get passphraseTypePassphraseTileSubTitle =>
      'ئەڭ بىخەتەر. كومپيۇتېرىڭىزنى ھەر قېتىم ئاچقاندا ئۇزۇنراق ئىم ئىبارە كىرگۈزۈشىڭىز كېرەك.';

  @override
  String get passphraseTypePinTileTitle => 'PIN زۆرۈر';

  @override
  String get passphraseTypePinTileSubTitle =>
      'بىخەتەررەك. كومپيۇتېرىڭىزنى ھەر قېتىم ئاچقاندا ئۇزۇنراق رەقەم PIN كىرگۈزۈشىڭىز كېرەك.';

  @override
  String get passphraseTypeNoneTileTitle => 'دىسكا قۇلۇپىنى ئۆزلۈكىدىن ئاچىدۇ';

  @override
  String get passphraseTypePageHeader => 'قوشۇمچە بىخەتەرلىك';

  @override
  String get passphraseTypePageBody =>
      'كۆڭۈلدىكى ئەھۋالدا، قوزغالغاندا كومپيۇتېرنىڭ ئىشەنچ سۇپا مودېلى (TPM) نىڭ قۇلۇپى ئېچىلىدۇ. سىز يەنە باشقا تاللانما ئارقىلىق سانلىق مەلۇماتلىرىڭىزنى قوغدىيالايسىز.';

  @override
  String get passphrasePagePassphraseEntropyBelowMin =>
      'ئاجىز ئىم ئىبارە، ئۇزۇنراق ياكى تېخىمۇ مۇرەككەپ قىلىڭ';

  @override
  String get passphrasePagePassphraseEntropyBelowOptimal =>
      'ياخشى ئىم ئىبار، تېخىمۇ بىخەتەر بولۇشى ئۈچۈن ئۇزۇنراق ياكى تېخىمۇ مۇرەككەپ قىلىڭ';

  @override
  String get passphrasePagePassphraseEntropyOptimal => 'كۈچلۈك ئىم ئىبارە';

  @override
  String get passphrasePagePinEntropyBelowMin =>
      'ئاجىز PIN، ئۇزۇنراق ياكى مۆلچەرلەشنى تەسلەشتۈرۈڭ';

  @override
  String get passphrasePagePinEntropyBelowOptimal =>
      'ياخشى PIN، تېخىمۇ بىخەتەر بولۇشى ئۈچۈن ئۇزۇنراق ياكى مۆلچەرلەشنى تەسلەشتۈرۈڭ';

  @override
  String get passphrasePagePinEntropyOptimal => 'PIN يېتەرلىك ئۇزۇن';

  @override
  String get installationTypeTitle => 'دىسكا تەڭشىكى';

  @override
  String installationTypeHeader(String DISTRO) {
    return '$DISTRO نى قانداق ئورناتماقچى؟';
  }

  @override
  String installationTypeOSDetected(String os) {
    return 'مەزكۇر كومپيۇتېردا $os بار ئىكەن. قانداق قىلىسىز؟';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return 'مەزكۇر كومپيۇتېردا $os1 ۋە $os2 بار ئىكەن. قانداق قىلىسىز؟';
  }

  @override
  String get installationTypeMultiOSDetected =>
      'مەزكۇر كومپيۇتېردا بىر قانچە مەشغۇلات سىستېمىسى بار ئىكەن. قانداق قىلىسىز؟';

  @override
  String get installationTypeNoOSDetected =>
      'مەزكۇر كومپيۇتېردا ھېچقانداق مەشغۇلات سىستېمىسى يوق ئىكەن. قانداق قىلىسىز؟';

  @override
  String installationTypeErase(String DISTRO) {
    return 'دىسكىنى ئۆچۈرۈپ \$$DISTRO نى ئورنىتىدۇ';
  }

  @override
  String get installationTypeEraseInfo =>
      'دىسكىدىكى بارلىق سانلىق مەلۇمات ۋە رايون ئۆچۈرۈلىدۇ، مەشغۇلات سىستېمىسىمۇ شۇنىڭ ئىچىدە.';

  @override
  String get installationTypeAdvancedLabel => 'ئالىي تاللانما';

  @override
  String get installationTypeAdvancedTitle => 'شىفىرلاش ۋە ھۆججەت سىستېمىسى';

  @override
  String get installationTypeExperimental => 'تەجرىبە';

  @override
  String get installationTypeNone => 'شىفىرلاش يوق';

  @override
  String get installationTypeNoneInfo =>
      'شىفىرلانمىغان ئۆلچەملىك ھۆججەت سىستېمىسى.';

  @override
  String get installationTypeNoneSelected => 'ھېچقايسىسى تاللانمىدى';

  @override
  String get installationTypeLVM =>
      'شىفىرلانمىغان لوگىكىلىق دىسكا باشقۇرۇش (LVM) نى ئىشلىتىدۇ';

  @override
  String get installationTypeLVMSelected => 'LVM تاللاندى';

  @override
  String get installationTypeLVMEncryption => 'ئىم ئىبارە بىلەن شىفىرلايدۇ';

  @override
  String installationTypeLVMEncryptionInfoResolute(String advancedHint) {
    return 'كومپيۇتېرىڭىزنى ھەر قېتىم ئاچقاندا ئىم ئىبارە كىرگۈزۈشىڭىز كېرەك. $advancedHint';
  }

  @override
  String get installationTypeLVMEncryptionInfo2 =>
      'بۇ مەشغۇلات LUKS شىفىرلاشنى LVM غا ئىشلىتىدۇ.';

  @override
  String get installationTypeLVMEncryptionSelected =>
      'LVM ۋە شىفىرلاش تاللاندى';

  @override
  String get installationTypeEncryptInfo =>
      'كېيىنكى باسقۇچتا بىخەتەرلىك ئاچقۇچىنى تاللايسىز.';

  @override
  String get installationTypeZFS => 'شىفىرلانمىغان ZFS نى ئىشلىتىدۇ';

  @override
  String get installationTypeZFSEncryption =>
      'ZFS نى ئىشلىتىپ ئىم ئىبارە بىلەن شىفىرلايدۇ';

  @override
  String get installationTypeZFSEncryptionInfo =>
      'ZFS نى ئىشلىتىپ يەرلىك شىفىرلايدۇ. كومپيۇتېرىڭىزنى ھەر قېتىم ئاچقاندا ئىم ئىبارە كىرگۈزۈشىڭىز كېرەك.';

  @override
  String get installationTypeZFSSelected => 'ZFS تاللاندى';

  @override
  String get installationTypeZFSEncryptionSelected =>
      'ZFS ۋە مەخپىيلەشتۈرۈش تاللاندى';

  @override
  String get installationTypeTPM =>
      'قاتتىق دېتال قوللايدىغان شىفىرلاشنى ئىشلىتىدۇ';

  @override
  String get installationTypeTPMInfoResolute =>
      'قوزغالغاندا دىسكىنىڭ قۇلۇپى ئۆزلۈكىدىن ئېچىلىدۇ.';

  @override
  String get installationTypeTPMInfoUnavailable =>
      'بۇ كومپيۇتېردا ئىشلەتكىلى بولمايدۇ.';

  @override
  String get installationTypeTPMSelected => 'TPM تاللاندى';

  @override
  String installationTypeReinstall(String os) {
    return '$os نى ئۆچۈرۈپ قايتا ئورنىتىدۇ';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">ئاگاھلاندۇرۇش:</font> بۇنىڭدا $os دىكى بارلىق پروگرامما، پۈتۈك، سۈرەت، نەغمە ۋە باشقا ھەممە ھۆججەت ئۆچۈرۈلىدۇ.';
  }

  @override
  String installationTypeAlongside(String product, String os) {
    return '$product نى $os بىلەن يانداش ئورنىتىدۇ';
  }

  @override
  String installationTypeAlongsideDual(String product, String os1, String os2) {
    return '$product نى $os1 ۋە $os2 بىلەن يانداش ئورنىتىدۇ';
  }

  @override
  String installationTypeAlongsideMulti(String product) {
    return '$product نى مەۋجۇت مەشغۇلات سىستېمىسى بىلەن يانداش ئورنىتىدۇ';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return '$product نى باشقا رايونغا يانداش ئورنىتىدۇ';
  }

  @override
  String installationTypeAlongsideInfo(String product) {
    return 'چوڭلۇقىنى ئۆزگەرتىدىغان رايوندىن بىرنى تاللاپ ھەمدە $product غا بوشلۇق قۇرىدۇ. قوزغىلىۋاتقاندا مەشغۇلات سىستېمىسىنى تاللىيالايسىز.';
  }

  @override
  String installationTypeEraseAndInstall(String os, String product) {
    return '$os نى ئۆچۈرۈپ $product نى ئورنىتىدۇ';
  }

  @override
  String installationTypeEraseAndInstallInfo(String os) {
    return 'نۆۋەتتىكى $os ئورناتقان بارلىق ھۆججەت ۋە سانلىق مەلۇمات مەڭگۈلۈك ئۆچۈرۈلىدۇ.';
  }

  @override
  String get installationTypeManual => 'قولدا ئورنىتىش';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'دىسكا سەپلىمىسىنى ئۆزى تەڭشەيدىغان ئالىي ئىشلەتكۈچىلەرگە ماس كېلىدۇ.';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'دىسكىنى ئۆچۈرۈپ \$$DISTRO نى ئورنىتىدۇ';
  }

  @override
  String get selectGuidedStorageInfo => 'تاللىغان دىسكىدىن باشتىن باشلايدۇ.';

  @override
  String get selectGuidedStorageDriveDropdownLabel => 'قوزغاتقۇچ تاللىنىدۇ:';

  @override
  String get selectGuidedStoragePartitionDropdownLabel => 'رايون تاللىنىدۇ:';

  @override
  String get selectGuidedStorageInfoLabel => 'پۈتكۈل دىسكا ئىشلىتىلىدۇ:';

  @override
  String get selectGuidedStorageInstallNow => 'ھازىر ئورنات';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return '$DISTRO نى نەگە ئورنىتىدىغانلىقى تاللىنىدۇ';
  }

  @override
  String get installAlongsideSpaceDivider =>
      'تۆۋەندىكى بۆلگۈچنى سۆرەش ئارقىلىق دىسكا بوشلۇقى ئاجرىتىلىدۇ:';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return '$num كىچىك رايون يوشۇرۇن، تېخىمۇ تەپسىلىي تىزگىنلەش ئۈچۈن <a href=\"$url\">ئالىي رايونغا ئايرىش قورالى</a> نى ئىشلىتىڭ';
  }

  @override
  String get installAlongsideResizePartition => 'رايون چوڭلۇقىنى ئۆزگەرتىدۇ';

  @override
  String get installAlongsideAllocateSpace => 'بوشلۇق تەقسىملەيدۇ';

  @override
  String get installAlongsideFiles => 'ھۆججەت';

  @override
  String get installAlongsidePartition => 'رايون:';

  @override
  String get installAlongsideSize => 'چوڭلۇقى:';

  @override
  String get installAlongsideAvailable => 'ئىشلىتىلىشچان:';

  @override
  String get allocateDiskSpace => 'قولدا رايونغا ئايرىش';

  @override
  String get allocateDiskSpaceInvalidMountPointSlash =>
      'ئېگەرلەش نۇقتىسى چوقۇم «/» دىن باشلىنىدۇ';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace =>
      'ئېگەرلەش نۇقتىسى بوشلۇقنى ئۆز ئىچىگە ئالمايدۇ';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(
      String mountpoint, String format) {
    return '$format نى $mountpoint ھۆججەت سىستېمىسى قوللىمايدۇ';
  }

  @override
  String get diskHeadersDevice => 'ئۈسكۈنە';

  @override
  String get diskHeadersType => 'تىپى';

  @override
  String get diskHeadersMountPoint => 'ئېگەرلەش نۇقتىسى';

  @override
  String get diskHeadersSize => 'چوڭلۇقى';

  @override
  String get diskHeadersUsed => 'ئىشلىتىلگىنى';

  @override
  String get diskHeadersSystem => 'سىستېما';

  @override
  String get diskHeadersFormat => 'پىچىمى';

  @override
  String get freeDiskSpace => 'ئەركىن بوشلۇق';

  @override
  String get newPartitionTable => 'يېڭى دىسكا رايون جەدۋىلى';

  @override
  String get newPartitionTableConfirmationTitle => 'يېڭى بوش دىسكا رايونى';

  @override
  String get newPartitionTableConfirmationMessage =>
      'پۈتكۈل ئۈسكۈنىدە يېڭى دىسكا رايون جەدۋىلى قۇرغاندا نۆۋەتتىكى بارلىق دىسكا رايونىنى ئۆچۈرۈۋېتىدۇ. ئەگەر لازىم بولسا بۇ مەشغۇلاتتىن يېنىۋالغىلى بولىدۇ.';

  @override
  String get tooManyPrimaryPartitions => 'ئاساسىي رايون بەك كۆپ';

  @override
  String get partitionLimitReached => 'يۇقىرى چېكىگە يەتتى';

  @override
  String get bootLoaderDevice => 'قوزغىتىش يېتەكلىگۈچ ئورنىتىدىغان ئۈسكۈنە';

  @override
  String get partitionCreateTitle => 'دىسكا رايونى قۇر';

  @override
  String get partitionEditTitle => 'دىسكا رايوننى تەھرىرلە';

  @override
  String get partitionSizeLabel => 'چوڭلۇقى:';

  @override
  String get partitionTypeLabel => 'يېڭى دىسكا رايونىنىڭ تۈرى:';

  @override
  String get partitionTypePrimary => 'ئاساسىي';

  @override
  String get partitionTypeLogical => 'لوگىكىلىق';

  @override
  String get partitionLocationLabel => 'يېڭى دىسكا رايونىنىڭ ئورنى:';

  @override
  String get partitionLocationBeginning => 'مەزكۇر بوشلۇقنىڭ بېشى';

  @override
  String get partitionLocationEnd => 'مەزكۇر بوشلۇقنىڭ ئاخىرى';

  @override
  String get partitionFormatLabel => 'ئىشلىتىلگىنى:';

  @override
  String get partitionFormatNone => 'پىچماي قالدۇر';

  @override
  String partitionFormatKeep(String format) {
    return '$format پىچىمىدا قالدۇرىدۇ';
  }

  @override
  String get partitionErase => 'رايوننى پىچىدۇ';

  @override
  String get partitionMountPointLabel => 'ئېگەرلەش نۇقتىسى:';

  @override
  String get confirmPageTitle => 'ئورنىتىشقا تەييارلاندى';

  @override
  String get confirmHeader => 'تاللىشىڭىزنى تەكشۈرىدۇ';

  @override
  String get confirmDiskEncryptionLVM => 'LUKS (LVM)';

  @override
  String get confirmDiskEncryptionZFS => 'LUKS (ZFS)';

  @override
  String get confirmDiskEncryptionTPM => 'TPM';

  @override
  String get confirmDiskEncryptionNone => 'يوق';

  @override
  String get confirmDevicesTitle => 'ئۈسكۈنە';

  @override
  String get confirmEntryApplications => 'پىروگرامما';

  @override
  String get confirmEntryDiskSetup => 'ئورنىتىش تۈرى';

  @override
  String get confirmEntryDiskEncryption => 'دىسكا شىفىرلاش';

  @override
  String get confirmEntryInstallationDisk => 'ئورنىتىش دىسكىسى';

  @override
  String get confirmEntryProprietarySoftware => 'مەخسۇس يۇمشاق دېتال';

  @override
  String get confirmSectionGeneralTitle => 'ئادەتتىكى';

  @override
  String get confirmSectionSecurityAndMoreTitle => 'بىخەتەرلىك ۋە باشقىلار';

  @override
  String get confirmPartitionsTitle => 'دىسكا رايونى';

  @override
  String get confirmPartitionTables =>
      'تۆۋەندىكى ئۈسكۈنىنىڭ دىسكا رايون جەدۋىلى ئۆزگەردى:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmProprietarySoftwareCodecs => 'كودلىغۇچ-يەشكۈچ';

  @override
  String get confirmProprietarySoftwareCodecsDrivers => 'كودلىغۇچ ۋە قوزغاتقۇچ';

  @override
  String get confirmProprietarySoftwareDrivers => 'قوزغاتقۇ';

  @override
  String get confirmInstallButton => 'ئورنات';

  @override
  String get confirmTableErased => 'ئۆچۈرۈلدى';

  @override
  String get confirmTableUnchanged => 'ئۆزگەرتىلمىدى';

  @override
  String confirmTableResized(String oldsize, String newsize) {
    return 'چوڭلۇقى $oldsize دىن $newsize غا ئۆزگەرتىلدى';
  }

  @override
  String confirmTableCreatedFormattedMounted(String format, String mountpoint) {
    return '$mountpoint غا ئىشلىتىش ئۈچۈن $format سۈپىتىدە پىچىلىپ قۇرۇلدى';
  }

  @override
  String confirmTableFormattedMounted(String format, String mountpoint) {
    return '$mountpoint غا ئىشلىتىش ئۈچۈن $format سۈپىتىدە پىچىلدى';
  }

  @override
  String confirmTableMounted(String mountpoint) {
    return '$mountpoint غا ئىشلىتىلىدۇ';
  }

  @override
  String confirmTableFormatted(String format) {
    return '$format سۈپىتىدە پىچىلدى';
  }

  @override
  String get installationCompleteTitle => 'ئورنىتىش تامام';

  @override
  String readyToUse(String system) {
    return '$system ئورنىتىلدى ۋە ئىشلىتىشكە تەييار';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system** دىسكىغا كۆچۈرۈلدى';
  }

  @override
  String restartInto(String system) {
    return '$system غا قايتا قوزغىلىپ كىرىدۇ';
  }

  @override
  String get restartWarningBody =>
      'قايتا قوزغىتىلسا ئورنىتىشنى تاماملايدۇ ياكى سىناشنى داۋاملاشتۇرىدۇ.\nھەر قانداق ئۆزگەرتىشىڭىز ساقلانمايدۇ.';

  @override
  String get rebootToConfigureWarning =>
      'ئورنىتىش جەريانىنى داۋاملاشتۇرۇش ئۈچۈن كومپيۇتېرنى قايتا قوزغىتىش زۆرۈر.';

  @override
  String get shutdown => 'تاقا';

  @override
  String get restartNow => 'ھازىر قايتا قوزغات';

  @override
  String get continueTesting => 'سىناشنى داۋاملاشتۇر';

  @override
  String get bitlockerInfoTitle => 'BitLocker بايقالدى';

  @override
  String get bitlockerInfoDescription =>
      'بىر ياكى بىر قانچە دىسكا رايونى BitLocker بىلەن شىفىرلانغان.';

  @override
  String get bitlockerInfoDisable =>
      'Windows بىلەن يانداش ئورنىتىش ئۈچۈن، Windows تىكى BitLocker نى چەكلەش كېرەك.';

  @override
  String get bitlockerInfoRecovery =>
      'ئورناتقاندىن كېيىن Windows قوزغالغاندا ئەسلىگە قايتۇرۇش شىفىرلىق ئاچقۇچىنى سورىشى مۇمكىن.';

  @override
  String bitlockerInfoInstructions(String url) {
    return 'چۈشەندۈرۈشى ئۈچۈن <a href=\"$url\">BitLocker يېتەكچىسى</a>نى زىيارەت قىلىڭ.';
  }

  @override
  String get bitlockerWarningTitle =>
      'ئەگەر BitLocker ئەسلىگە قايتۇرۇش ئاچقۇچىڭىز بولمىسا بارلىق سانلىق مەلۇماتلىرىڭىزنى يوقىتىشىڭىز مۇمكىن';

  @override
  String get restartComputer => 'كومپيۇتېرنى قايتا قوزغات';

  @override
  String get restartComputerTitle => 'كومپيۇتېرنى قايتا قوزغىتامدۇ؟';

  @override
  String get restartInstaller => 'Restart installer';

  @override
  String get restartIntoWindows => 'قايتا قوزغىتىپ Windows قا كىرىدۇ';

  @override
  String get restartIntoWindowsTitle => 'قايتا قوزغىتىپ Windows قا كىرەمدۇ؟';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return 'كومپيۇتېرنى راستتىنلا قايتا قوزغىتامسىز؟ سىز سەل تۇرۇپ $DISTRO ئورنىتىشنى قايتا قوزغاتسىڭىز ئاندىن $DISTRO ئورنىتىشنى تاماملىيالايسىز.';
  }

  @override
  String installationSlidesTitle(String RELEASE) {
    return '$RELEASE غا خۇش كەلدىڭىز';
  }

  @override
  String get installationSlidesAvailable => 'ئىشلىتىلىشچان:';

  @override
  String get installationSlidesIncluded => 'ئىچىدە:';

  @override
  String get installationSlidesWelcomeTitle =>
      'تېز، ئەركىن يەنى ھەقسىز، يېڭى ئىقتىدارلار بىلەن تولغان';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return '$DISTRO نىڭ يېڭى نەشرى ھېسابلاشنى ئىلگىرى ھەر قانداق ۋاقىتتىكىدىن تېخىمۇ ئاسانلاشتۇردى.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'مەيلى سىز ئىجادكار، مەزمۇن ياراتقۇچى، ئويۇن ئوينىغۇچى ياكى سىستېما باشقۇرغۇچى بولۇڭ، $RELEASE نەشرىدىن خىزمەت ئۈنۈمىنى ئاشۇرۇپ، ئىشلىتىش تەسىراتىنى كۈچەيتىدىغان يېڭى قوراللارنى تاپالايسىز.';
  }

  @override
  String get installationSlidesSoftwareTitle =>
      'سىز ئېھتىياجلىق ھەممە پىروگرامما بار';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'Ubuntu يۇمشاق دېتال مەركىزىدە Snap دۇكىنى ۋە $DISTRO يۇمشاق دېتال ئامبىرىدىن مىڭلىغان يۇمشاق دېتالنى ئورنىتىپ، باشقۇرۇپ ۋە يېڭىلىيالايسىز.';
  }

  @override
  String get installationSlidesDevelopmentTitle =>
      'ئەڭ ياخشى ئوچۇق كودلۇق يۇمشاق دېتالدا ئىجادىيەت بىلەن شۇغۇللىنىڭ';

  @override
  String installationSlidesDevelopmentBody(String DISTRO, Object OS) {
    return '$DISTRO پىروگرامما ياكى تور ئىجادىيىتى، ئۇچۇر ئىلمى ۋە AI/ML شۇنداقلا يۈرگۈزۈش ۋە باشقۇرۇشنىڭ كۆڭۈلدىكىدەك خىزمەت پونكىتى. ھەر بىر $DISTRO نەشرىدە ئەڭ يېڭى قورال زەنجىرى بولۇپلا قالماي يەنە بارلىق ئاساسىي ئېقىمدىكى IDE نى قوللايدۇ.';
  }

  @override
  String get installationSlidesCreativityTitle => 'تەسەۋۋۇرىڭىزنى كۈچەيتىدۇ';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return 'ئەگەر سىز لايىھەلىگۈچى، كارتون فىلىم لايىھەلىگۈچى، سىن ئىجادىيەتچىسى ياكى ئويۇن ئىجادكارى بولسىڭىز، ئىش ئېقىمىنى ئوچۇق كودلۇق ۋە كەسىپ ئۆلچىمىنى قوللايدىغان يۇمشاق دېتال ۋە ئەپنى $DISTRO غا ئەكىرىش ئىنتايىن ئاددىي.';
  }

  @override
  String get installationSlidesGamingTitle =>
      'ئويۇن ئوينىغۇچىلارغا بەك ماس كېلىدۇ';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return '$DISTRO ئەڭ يېڭى نەشرىدىكى NVIDIA ۋە Mesa قوزغاتقۇنى قوللاپ ئۈنۈم ۋە ماسلىشىشچانلىقنى ياخشىلىدى. Windows تىكى مىڭلىغان ئويۇننى $DISTRO دا Steam قاتارلىق پىروگراممىلار ئارقىلىق قوشۇمچە سەپلەش ئېلىپ بارماستىن راۋان ئوينىغىلى بولىدۇ.';
  }

  @override
  String get installationSlidesSecurityTitle =>
      'شەخسىيەت ۋە بىخەتەرلىك كاپالەتكە ئىگە';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return '$DISTRO توردا شەخسىيەت بىخەتەرلىكىگە كاپالەتلىك قىلىدىغان ھەممە قورالنى تەمىنلەيدۇ. $DISTRO نىڭ ئىچىدە مۇداپىئە تېمى ۋە مەۋھۇم شەخسىي تور يەنى VPN بار بولۇپ، شەخسىيەتنى مەركەز قىلغان بىر يۈرۈش پىروگراممىنى تەمىنلەپ، سانلىق مەلۇماتلىرىڭىزنى ئۆزىڭىزنىڭ تولۇق تىزگىنلىشىگە كاپالەتلىك قىلىدۇ.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return 'بارلىق $DISTRO نەشرى 5 يىللىق بىخەتەرلىك يامىقىنى ئۆز ئىچىگە ئالىدۇ، ئەگەر Ubuntu Pro مۇشتەرىلىكى بولسا 10 يىلغا ئۇزارتقىلى بولىدۇ.';
  }

  @override
  String get installationSlidesProductivityTitle =>
      'ئىشلەپچىقىرىش ئۈنۈمىنى ئاشۇرىدۇ';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return '$DISTRO نىڭ ئۈستەلئۈستى نەشرىگە LibreOffice ئالدىن ئورنىتىلغان بولۇپ، Microsoft Office بىلەن ماسلىشىدىغان ئوچۇق كودلۇق ئىشخانا يۈرۈشلۈك يۇمشاق دېتالى، پۈتۈك، ئېلېكتىرونلۇق جەدۋەل ۋە سىيرىلما بىر تەرەپ قىلىشقا ئىشلىتىلىدۇ. ئۇنىڭدىن باشقا يەنە ئالقىشلىنىۋاتقان ھەمكارلىشىش قورالىمۇ تەمىنلەنگەن.';
  }

  @override
  String get installationSlidesAccessibilityTitle => 'ھەممەيلەن ئىشلىتەلەيدۇ';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return '$DISTRO نىڭ غايىسى: كومپيۇتېرنى ھەممە ئادەم ئىشلىتەلەيدىغان بولۇشتۇر. ئۇنىڭدىكى ئالىي دەرىجىلىك قولايلىق قورال ۋە باشقا نۇرغۇن تاللانمىلار رەڭ، تېكىست چوڭلۇقى، تىل قاتارلىقلارنىڭ ھەممىسىنى ئۆزگەرتىش، شۇنداقلا سىز قەيەردە، كىم بولۇشىڭىزدىن قەتئىينەزەر $DISTRO ھېسابلاشنى ئاسانلاشتۇرىدۇ.';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'Orca ئېكران ئوقۇغۇچ';

  @override
  String get installationSlidesAccessibilityLanguages => 'تىل قوللاش';

  @override
  String get installationSlidesSupportTitle => 'ياردەم ۋە قوللاش';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return 'ئىگە تەرەپ $DISTRO قوللانمىسىنى توردا ۋە يان بالداقتىكى ياردەم سىنبەلگە ئارقىلىق زىيارەت قىلغىلى بولىدۇ.';
  }

  @override
  String get installationSlidesSupportCommunity =>
      'Ask Ubuntu ھەر خىل مەسىلە ۋە جاۋابلار بار، Ubuntu Discourse يېڭىياچى ۋە تەجرىبىلىك ئىشلەتكۈچىلەرگە يېتەكچى ۋە مۇنازىرە سۇپىسى تەمىنلەيدۇ.';

  @override
  String get installationSlidesSupportEnterprise =>
      'كارخانا ئىشلەتكۈچىلىرى ئۈچۈن Canonical شىركىتى سودا جەھەتتىن قوللاش بىلەن تەمىنلەپ، كارخانىدا خىزمەت مۇھىتىدا Ubuntu نى بىخەتەر ئورنىتىپ باشقۇرۇشنى ئاسانلاشتۇرىدۇ.';

  @override
  String get installationSlidesSupportResources => 'پايدىلىق مەنبەلەر:';

  @override
  String get installationSlidesSupportDocumentation => 'ئىگە تەرەپ قوللانما';

  @override
  String get installationSlidesSupportUbuntuPro =>
      'Ubuntu Pro نىڭ 24/7 كارخانا دەرىجىسىدىكى قوللىشى';

  @override
  String get nextSlideSemanticLabel => 'كېيىنكى سىيرىلما';

  @override
  String get previousSlideSemanticLabel => 'ئالدىنقى سىيرىلما';

  @override
  String get playSlideshowSemanticLabel => 'تام تەسۋىرنى كۆرسىتىدۇ';

  @override
  String get pauseSlideshowSemanticLabel => 'تام تەسۋىرنى ۋاقىتلىق توختىتىدۇ';

  @override
  String get toggleLogsSemanticLabel => 'ئورنىتىش خاتىرىسىنى ئالماشتۇرىدۇ';

  @override
  String get copyingFiles => 'ھۆججەت كۆچۈرۈۋاتىدۇ…';

  @override
  String get installingSystem => 'سىستېما ئورنىتىۋاتىدۇ…';

  @override
  String get configuringSystem => 'سىستېمىنى تەڭشەۋاتىدۇ…';

  @override
  String get installationFailed => 'ئورنىتالمىدى';

  @override
  String get notEnoughDiskSpaceTitle => 'يېتەرلىك دىسكا بوشلۇقى يوق';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return '$DISTRO نى ئورنىتىشقا يېتەرلىك دىسكا بوشلۇقى يوق';
  }

  @override
  String notEnoughDiskSpaceBody(String DISTRO) {
    return 'تاللىغان دىسكىدا $DISTRO نى ئورنىتىشقا يېتەرلىك دىسكا بوشلۇقى يوق. بوشلۇق تەييارلاش ئۈچۈن ئورناتقۇچتىن چېكىنىڭ ياكى باشقا دىسكا تاللاڭ.';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'ئىشلىتىلىشچان:';

  @override
  String get notEnoughDiskSpaceRequired => 'زۆرۈر:';

  @override
  String get refreshPageTitle => 'يېڭىلانما بار';

  @override
  String get refreshHeader => 'ئورناتقۇچنىڭ يېڭىلانمىسى بار';

  @override
  String get refreshUpdateNow => 'ھازىر يېڭىلا';

  @override
  String get refreshInfo =>
      'ئەڭ يېڭى نەشرىگە يېڭىلانسا ئىشەنچلىكلىكىنى ياخشىلاپ، تېخىمۇ كۆپ ئىقتىدارىغا ئېرىشكىلى بولىدۇ.';

  @override
  String get refreshReady => 'يېڭىلانما تەييار';

  @override
  String refreshCurrent(String snap, String version) {
    return 'نۆۋەتتىكى$snap نىڭ نەشرى $version.';
  }

  @override
  String refreshInstall(String version) {
    return 'يېڭىلىنىدىغان نەشرى $version';
  }

  @override
  String refreshUpToDate(String version) {
    return 'نۆۋەتتىكى نەشرى $version ئەڭ يېڭىسى.';
  }

  @override
  String refreshUpdating(String snap) {
    return '$snap نى يېڭىلاۋاتىدۇ…';
  }

  @override
  String get refreshRestart =>
      'داۋاملاشتۇرۇش ئۈچۈن ئورناتقۇچنى تاقاپ ۋە قايتا قوزغىتىڭ';

  @override
  String get refreshCloseLabel => 'ئورناتقۇچنى ياپ';

  @override
  String refreshSnapPrerequisites(String snap) {
    return '$snap نىڭ ئالدىنقى شەرتىگە كاپالەتلىك قىلىۋاتىدۇ…';
  }

  @override
  String refreshSnapRefresh(String snap) {
    return '$snap نى يېڭىلاۋاتىدۇ…';
  }

  @override
  String refreshSnapCheckRerefresh(String snap) {
    return '$snap نىڭ قايتا يېڭىلىنىشىنى تەكشۈرۈۋاتىدۇ…';
  }

  @override
  String refreshSnapPrepare(String snap) {
    return '$snap نى تەييارلاۋاتىدۇ…';
  }

  @override
  String refreshSnapDownload(String snap) {
    return '$snap نى چۈشۈرۈۋاتىدۇ…';
  }

  @override
  String refreshSnapValidate(String snap) {
    return '$snap نى دەلىللەۋاتىدۇ…';
  }

  @override
  String refreshSnapMount(String snap) {
    return '$snap نى ئېگەرلەۋاتىدۇ…';
  }

  @override
  String refreshSnapStopServices(String snap) {
    return '$snap مۇلازىمىتىنى توختىتىۋاتىدۇ…';
  }

  @override
  String refreshSnapRemoveAliases(String snap) {
    return '$snap لەقىمىنى چىقىرىۋېتىۋاتىدۇ…';
  }

  @override
  String refreshSnapUnlink(String snap) {
    return '$snap ئۇلانمىسىنى ئۈزۈۋاتىدۇ…';
  }

  @override
  String refreshSnapUpdateAssets(String snap) {
    return '$snap مەنبەسىنى يېڭىلاۋاتىدۇ…';
  }

  @override
  String refreshSnapUpdateKernelCommandLine(String snap) {
    return '$snap نىڭ يادرو بۇيرۇق قۇرىنى يېڭىلاۋاتىدۇ…';
  }

  @override
  String refreshSnapCopyData(String snap) {
    return '$snap سانلىق مەلۇماتىنى كۆچۈرۈۋاتىدۇ…';
  }

  @override
  String refreshSnapSetupProfiles(String snap) {
    return '$snap نىڭ بىخەتەرلىك سەپلىمە ھۆججىتىنى تەڭشەۋاتىدۇ…';
  }

  @override
  String refreshSnapLink(String snap) {
    return '$snap غا باغلاۋاتىدۇ…';
  }

  @override
  String refreshSnapAutoConnect(String snap) {
    return '$snap نىڭ كۆرۈنۈش قىستۇرمىسى ۋە ئوقۇرىغا باغلاۋاتىدۇ…';
  }

  @override
  String refreshSnapSetAutoAliases(String snap) {
    return 'ئاپتوماتىك $snap لەقىمىنى تەڭشەۋاتىدۇ…';
  }

  @override
  String refreshSnapSetupAliases(String snap) {
    return '$snap لەقىمىنى تەڭشەۋاتىدۇ…';
  }

  @override
  String refreshSnapStartServices(String snap) {
    return '$snap مۇلازىمىتىنى قوزغىتىۋاتىدۇ…';
  }

  @override
  String refreshSnapCleanup(String snap) {
    return '$snap نى تازىلاۋاتىدۇ…';
  }

  @override
  String get recoveryKeyTitle => 'ئەسلىگە كەلتۈرۈش ئاچقۇچى';

  @override
  String get recoveryKeyTitleBadgeLabel => 'مۇھىم';

  @override
  String get recoveryKeyHeader => 'ئەسلىگە كەلتۈرۈش ئاچقۇچىنى ساقلايدۇ';

  @override
  String get recoveryKeyInfoHeader =>
      'ئەسلىگە قايتۇرۇش ئاچقۇچىڭىز بولمىسا بارلىق سانلىق مەلۇماتلىرىڭىزنى يوقىتىشىڭىز مۇمكىن';

  @override
  String get recoveryKeyTextFieldLabel => 'ئەسلىگە كەلتۈرۈش ئاچقۇچى';

  @override
  String get recoveryKeyStorageAdvice =>
      'ئەگەر قوزغالغاندا شىفىر يېشەلمىسە، بۇ شىفىرلىق ئاچقۇچنى تەمىنلىشىڭىز كېرەك. ئەگەر ئاچقۇچ بولمىسا، ھېچقانداق سانلىق مەلۇماتىڭىزنى زىيارەت قىلالمايسىز. ئۇنى ئىم باشقۇرغۇچقا ئوخشاش بىخەتەر بىر جايغا ساقلاڭ.';

  @override
  String get recoveryKeyConfirmation =>
      'ئەسلىگە كەلتۈرۈش ئاچقۇچىنى بىخەتەر جايغا ساقلىدىم';

  @override
  String get recoveryKeyLinkLabel => 'مول بىلىم';

  @override
  String get recoveryKeySaveToFileLabel => 'ھۆججەتكە ساقلا';

  @override
  String get recoveryKeyShowQrCodeLabel => 'QR كودىنى كۆرسەت';

  @override
  String recoveryKeyQrDialogTitle(String DISTRO) {
    return '$DISTRO ئۈستەلئۈستى - ئەسلىگە كەلتۈرۈش ئاچقۇچى';
  }

  @override
  String get recoveryKeyQrDialogBody =>
      'QR كودىنى تاراپ ئەسلىگە كەلتۈرۈش ئاچقۇچىنى ئىم باشقۇرغۇچقا ئوخشاش بىرەر بىخەتەر جايدا ساقلاڭ. كېيىن ئىشلىتىش ئۈچۈن ئۇنى سۈرەتكە تارتسىڭىزمۇ بولىدۇ.';

  @override
  String get recoveryKeyClipboardNotifiaction => 'چاپلاش تاختىسىغا كۆچۈرۈلدى';

  @override
  String get recoveryKeyExceptionFileSystemTitle =>
      'ئەسلىگە كەلتۈرۈش ئاچقۇچى ساقلانمىدى';

  @override
  String get recoveryKeyExceptionDisallowedPathTitle =>
      'ئەسلىگە كەلتۈرۈش ئاچقۇچ ھۆججىتىنى ۋاقىتلىق ئورۇنغا ساقلىيالمايدۇ';

  @override
  String get recoveryKeyExceptionUnknownTitle => 'يوچۇن خاتالىق';

  @override
  String get recoveryKeyExceptionFileSystemBody =>
      'ئۇ قىسقۇچ ئورنىغا يېزىش ئىجازىتىڭىز يوق. پەرقلىق ئورۇننى سىناڭ ياكى باشقا ئۇسۇلنى ئىشلىتىڭ.';

  @override
  String get recoveryKeyExceptionDisallowedPathBody =>
      'كۆچمە دىسكىغا ئوخشاش پەرقلىق ئورۇننى سىناڭ ياكى باشقا ئۇسۇلنى ئىشلىتىڭ.';

  @override
  String get recoveryKeyFilePickerTitle =>
      'ئەسلىگە كەلتۈرۈش ئاچقۇچىنى ساقلايدۇ';

  @override
  String get recoveryKeyFilePickerFilter => 'تېكىست ھۆججەت';

  @override
  String landscapeMagicAttachInstructions(String url) {
    return 'QR كودىنى تاراڭ ياكى <a href=\"https://$url\">$url</a> غا تۆۋەندىكى كودنى كىرگۈزۈڭ';
  }

  @override
  String get landscapePageTitle => 'ئۆزلۈكىدىن ئورنىتىش';

  @override
  String get landscapeHeader => 'Landscape غا تىزىمغا كىرىڭ';

  @override
  String get landscapeDomainHeader => 'Landscape دائىرىنى كىرگۈزۈڭ (FQDN)';

  @override
  String get landscapeDomainHintText => 'Landscape دائىرە ئىسمى (FQDN)';

  @override
  String get landscapeDomainInstructions =>
      'تەشكىلىڭىزنىڭ Landscape دائىرە ئىسمىنى تەمىنلەپ تىزىمغا كىرىپ ئۆزلۈكىدىن ئورنىتىش ھۆججىتىگە ئېرىشىڭ. ئۇچۇر تېخنىكا قوللىغۇچىڭىزدىن FQDN غا ئېرىشەلەيسىز.';

  @override
  String get landscapeDomainTextField => 'Landscape دائىرە ئىسمى (FQDN)';

  @override
  String get next => 'كېيىنكى';

  @override
  String get landscapeDomainInvalidDomainWarning =>
      'دائىرە ئىسمى ئىناۋەتسىز، تەكشۈرۈڭ ياكى ئۇچۇر تېخنىكا قوللىغۇچىڭىز بىلەن ئالاقىلىشىڭ';

  @override
  String get landscapeDomainNoInternetTitleWarning =>
      'داۋاملاشتۇرۇش ئۈچۈن ئىنتېرنېتقا باغلاش كېرەك';

  @override
  String get landscapeDomainNoInternetDescriptionWarning =>
      'چوقۇم ئىنتېرنېتقا باغلاپ Landscape دىن ئۆزلۈكىدىن ئورنىتىش ھۆججىتىنى چۈشۈرۈش كېرەك';

  @override
  String get landscapeCodeExpiredWarning => 'كودنىڭ ۋاقتى ئۆتكەن، قايتا سىناڭ';

  @override
  String get landscapeLoginFailedWarning => 'تىزىمغا كىرەلمىدى، قايتا سىناڭ';

  @override
  String get landscapeErrorPageTitle =>
      'ھېسابىڭىزدا ئۆزلۈكىدىن ئورنىتىشنى ئىشلەتكىلى بولمايدۇ';

  @override
  String get landscapeErrorPageBody =>
      'ئۇچۇر تېخنىكا قوللىغۇچىڭىز بىلەن ئالاقىلىشىڭ ياكى باشقا ئورنىتىش تاللانمىسىنى سىناڭ.';

  @override
  String landscapeErrorPageCode(String code) {
    return 'خاتالىق كودى: $code';
  }

  @override
  String get landscapeConfirmPageSuccessInfoTitle =>
      'Ubuntu تەشكىلىڭىز تەمىنلىگەن سەپلىمە بىلەن ئورنىتىدۇ';

  @override
  String get landscapeConfirmPageSuccessInfoContent =>
      'تۆۋەندە Landscape دىن ئەكىرگەن ئۆزلۈكىدىن ئورنىتىش ھۆججىتىنى كۆرەلەيسىز.';

  @override
  String get successIconSemanticLabel => 'مۇۋەپپەقىيەتلىك';

  @override
  String get errorIconSemanticLabel => 'خاتالىق';

  @override
  String get closeIconSemanticLabel => 'ياپ';

  @override
  String get maximizeIconSemanticLabel => 'چوڭايت';

  @override
  String get minimizeIconSemanticLabel => 'كىچىكلەت';

  @override
  String get tpmActionPageTitle =>
      'قاتتىق دېتال قوللايدىغان شىفىرلاشنى قوزغاتقىلى بولمايدۇ';

  @override
  String get tpmActionBadgeLabel => 'زۆرۈر مەشغۇلات';

  @override
  String get tpmActionDetailsLabel => 'تېخنىكىلىق تەپسىلات';

  @override
  String get tpmActionConfirmLabel => 'جەزملە';

  @override
  String tpmActionSolutionLabel(int n, String text) {
    return 'ھەل قىلىش لايىھەسى $n: $text';
  }

  @override
  String tpmActionSingleSolutionLabel(String text) {
    return 'لايىھە: $text';
  }

  @override
  String get tpmActionDocumentationLinkLabel =>
      'قاتتىق دېتال قوللايدىغان شىفىرلاش ھەققىدىكى مول بىلىم';

  @override
  String get tpmActionErrorSupportLabel =>
      'تۆۋەندىكى ھەل قىلىش لايىھەسىنى سىناڭ، ئۇچۇر تېخنىكا قوللىغۇچىسى بىلەن ئالاقىلىشىڭ ياكى باشقا شىفىرلاش ئۇسۇلىنى تاللاڭ.';

  @override
  String get tpmActionErrorSupportSingleLabel =>
      'تۆۋەندىكى لايىھەنى سىناڭ، ئۇچۇر تېخنىكا قوللىغۇچىسى بىلەن ئالاقىلىشىڭ ياكى پەرقلىق شىفىرلاش ئۇسۇلىنى تاللاڭ.';

  @override
  String get tpmActionErrorSupportNoActionLabel =>
      'ئۇچۇر تېخنىكا قوللىغۇچىسى بىلەن ئالاقىلىشىڭ ياكى باشقا شىفىرلاش ئۇسۇلىنى تاللاڭ.';

  @override
  String get tpmActionErrorKindInternal => 'ئىچكى خاتالىق.';

  @override
  String get tpmActionErrorKindShutdownRequired => 'توكتىن ئۈزۈش زۆرۈر.';

  @override
  String get tpmActionErrorKindRebootRequired => 'قايتا قوزغىتىش زۆرۈر.';

  @override
  String get tpmActionErrorKindUnexpectedAction => 'كۈتۈلمىگەن مەشغۇلات.';

  @override
  String get tpmActionErrorKindMissingArgument => 'ئەركىن ئۆزگەرگۈچى كەم.';

  @override
  String get tpmActionErrorKindInvalidArgument => 'ئىناۋەتسىز ئۆزگەرگۈچى.';

  @override
  String get tpmActionErrorKindActionFailed => 'مەشغۇلات مەغلۇپ بولدى.';

  @override
  String get tpmActionErrorKindRunningInVm =>
      'نۆۋەتتىكى مۇھىت مەۋھۇم كومپيۇتېر.';

  @override
  String get tpmActionErrorKindSystemNotEfi =>
      'بۇ كومپيۇتېر مەزكۇر شىفىرلاش ئۇسۇلىنى قوللىمايدىغان كونىراق مۇقىم دېتال (كونا BIOS) ئىشلىتىۋاتىدۇ.';

  @override
  String get tpmActionErrorKindEfiVariableAccess =>
      'بۇ كومپيۇتېرنىڭ مۇقىم دېتالىدا مەسىلە بار.';

  @override
  String get tpmActionErrorKindNoSuitableTpm2Device =>
      'بۇ كومپيۇتېردا مەزكۇر شىفىرلاش ئۇسۇلىغا زۆرۈر بولغان بىخەتەرلىك قاتتىق دېتالى (TPM 2.0) يوق.';

  @override
  String get tpmActionErrorKindTpmDeviceDisabled =>
      'بۇ كومپيۇتېردا TPM چەكلەنگەن.';

  @override
  String get tpmActionErrorKindTpmHierarchiesOwned =>
      'بۇ كومپيۇتېرنىڭ TPM نى باشقا سىستېما ياكى پىروگرامما ئىشلىتىۋاتىدۇ.';

  @override
  String get tpmActionErrorKindTpmDeviceLockoutLockedOut =>
      'نۆۋەتتە بۇ كومپيۇتېرنىڭ TPM ى قۇلۇپلانغان.';

  @override
  String get tpmActionErrorKindInsufficientTpmStorage =>
      'بۇ كومپيۇتېرنىڭ TPM دا ساقلاش بوشلۇقى يېتەرلىك ئەمەس.';

  @override
  String get tpmActionErrorKindUnsupportedPlatform =>
      'بۇ كومپيۇتېر قاتتىق دېتال ئاساسىدىكى شىفىرلاش بىلەن ماسلاشمايدۇ.';

  @override
  String get tpmActionErrorKindUefiDebuggingEnabled =>
      'UEFI سازلاش قوزغىتىلغان.';

  @override
  String get tpmActionErrorKindInsufficientDmaProtection =>
      'بۇ كومپيۇتېردا زۆرۈر بولغان بىخەتەرلىك ئىقتىدارى (DMA قوغداش) كەم.';

  @override
  String get tpmActionErrorKindNoKernelIommu =>
      'بۇ كومپيۇتېردا زۆرۈر بولغان بىخەتەرلىك ئىقتىدارى (IOMMU) كەم.';

  @override
  String get tpmActionErrorKindHostSecurity =>
      'بۇ كومپيۇتېرنىڭ بىخەتەرلىك سەپلىمىسىدە مەسىلە بار.';

  @override
  String get tpmActionErrorKindSysPrepApplicationsPresent =>
      'بەلكىم كومپيۇتېرنىڭ TPM ى بىلەن بىخەتەر ئۇلىنىشقا توسقۇنلۇق قىلىدىغان يۇمشاق دېتال كومپيۇتېر قوزغىتىلغاندىلا ئىجرا بولۇۋاتىدۇ.';

  @override
  String get tpmActionErrorKindAbsolutePresent =>
      'بۇ كومپيۇتېردا مۇتلەق ئۆزلۈكسىزلىك بۆلىكى قوزغىتىلغان.';

  @override
  String get tpmActionErrorKindInvalidSecureBootMode =>
      'بۇ كومپيۇتېردا بىخەتەر قوزغىتىش ھالىتى چەكلەنگەن ياكى «جايلاشتۇرۇلغان» ھالەتتە تەڭشەلمىگەن.';

  @override
  String get tpmActionErrorKindWeakSecureBootAlgorithmDetected =>
      'بۇ كومپيۇتېردىكى بەزى گۇۋاھنامە دەلىللەش يۇمشاق دېتالىنىڭ ۋاقتى ئۆتكەن ياكى ئاجىز بىخەتەرلىك قوغداش ئۇسۇلى ئىشلىتىلگەن.';

  @override
  String get tpmActionErrorKindPreOsSecureBootAuthByEnrolledDigests =>
      'بۇ كومپيۇتېر قوزغىتىلغاندا دەلىللەيدىغان يۇمشاق دېتالنى يول قويۇش تىزىمىنى قولدا دەلىللەش يولغا قويۇلغان.';

  @override
  String get tpmActionErrorKindAddonDriversPresent =>
      'قوشۇلما قوزغاتقۇ مەۋجۇت.';

  @override
  String get tpmActionErrorKindGenericTpm =>
      'بۇ كومپيۇتېرنىڭ TPM دا مەسىلە بار.';

  @override
  String get tpmActionErrorKindGenericFirmware =>
      'بۇ كومپيۇتېرنىڭ مۇقىم دېتالىدا مەسىلە بار.';

  @override
  String get tpmActionFixActionReboot => 'قايتا قوزغات';

  @override
  String get tpmActionFixActionShutdown => 'توكنى ئۈز';

  @override
  String get tpmActionFixActionRebootToFwSettings =>
      'قايتا قوزغىتىپ مۇقىم دېتال تەڭشىكىگە كىرىدۇ';

  @override
  String get tpmActionFixActionRebootToFwSettingsInstructions =>
      'ئەگەر مۇقىم دېتال تەڭشىكى ئۆزلۈكىدىن يۈكلەنمىسە، قايتا قوزغىتىپ ۋە قوزغىلىۋاتقاندا تەڭشەك كۇنۇپكىسى تەكرار بېسىلىدۇ (ئادەتتە F2، F10 ياكى Delete).';

  @override
  String get tpmActionFixActionRebootToFwSettingsInsufficientDmaProtection =>
      'DMA قوغداشنى قولدا قوزغىتىدۇ';

  @override
  String get tpmActionFixActionRebootToFwSettingsInsufficientTpmStorage =>
      'TPM نى قولدا تازىلايدۇ';

  @override
  String get tpmActionFixActionRebootToFwSettingsInvalidSecureBootMode =>
      'بىخەتەر قوزغىتىشنى قولدا قوزغىتىدۇ';

  @override
  String get tpmActionFixActionRebootToFwSettingsNoKernelIommu =>
      'IOMMU نى قولدا قوزغىتىدۇ';

  @override
  String get tpmActionFixActionRebootToFwSettingsNoSuitablePcrBank =>
      'PCR ئامبىرىنى قولدا قوزغىتىدۇ';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmDeviceDisabled =>
      'TPM نى قولدا قوزغىتىدۇ';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmDeviceLockoutLockedOut =>
      'TPM نى قولدا تازىلايدۇ';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmHierarchiesOwned =>
      'TPM نى قولدا تازىلايدۇ';

  @override
  String get tpmActionFixActionRebootToFwSettingsAbsolutePresent =>
      'مۇتلەق ئۆزلۈكسىزلىك بۆلىكى قولدا چەكلەنگەن';

  @override
  String get tpmActionFixActionContactOem => 'OEM بىلەن ئالاقىلىشىش';

  @override
  String get tpmActionFixActionContactOsVendor =>
      'مەشغۇلات سىستېمىسىنى تەمىنلىگۈچى بىلەن ئالاقىلىشىش';

  @override
  String get tpmActionFixActionEnableTpmViaFirmware =>
      'قايتا قوزغىتىلغاندا TPM نى قوزغىتىدۇ';

  @override
  String get tpmActionFixActionEnableAndClearTpmViaFirmware =>
      'قايتا قوزغىتىلغاندا TPM نى قوزغىتىدۇ ۋە تازىلايدۇ';

  @override
  String get tpmActionFixActionClearTpmViaFirmware =>
      'قايتا قوزغىتىلغاندا TPM نى تازىلايدۇ';

  @override
  String get tpmActionFixActionClearTpm => 'TPM نى تازىلا';

  @override
  String get tpmActionFixActionProceed => 'پەرۋا قىلما';

  @override
  String get tpmActionFixActionRebootDescription =>
      'ئالدىنقى مەشغۇلاتنى تاماملاش ئۈچۈن كومپيۇتېرنى قايتا قوزغىتىدۇ.';

  @override
  String get tpmActionFixActionRebootTpmDeviceFailureDescription =>
      'كومپيۇتېر قايتا قوزغىتىلسا مەسىلە ئوڭشىلىشى مۇمكىن.';

  @override
  String get tpmActionFixActionShutdownDescription =>
      'ئالدىنقى مەشغۇلاتنى تاماملاش ئۈچۈن كومپيۇتېرنىڭ توك مەنبەسىنى ئۈزۈش كېرەك.';

  @override
  String get tpmActionFixActionRebootToFwSettingsDescription =>
      'بۇنى كومپيۇتېرنىڭ مۇقىم دېتال تەڭشىكىدە قىلالايسىز.';

  @override
  String get tpmActionFixActionRebootToFwSettingsWithDocsDescription =>
      'بۇنى كومپيۇتېرنىڭ مۇقىم دېتال تەڭشىكىدە قىلالىشىڭىز مۇمكىن. كورسەتمە ئۈچۈن CPU تەمىنلىگۈچىنىڭ قوللانمىسىنى تەكشۈرۈڭ.';

  @override
  String get tpmActionFixActionRebootToFwSettingsInvalidSecureBootModeHint =>
      'بىخەتەر قوزغىتىش ھالىتىنىڭ «ئورنىتىلغان» غا تەڭشەلگەنلىكىنى تەكشۈرىدۇ.';

  @override
  String get tpmActionFixActionRebootToFwSettingsNoKernelIommuHint =>
      'بۇ ئىقتىدار «كۆرۈنۈشلەشتۈرۈش تېخنىكىسى»، «VT-d» ياكى «AMD-Vi\"» دەپ ئاتىلىشى مۇمكىن.';

  @override
  String get tpmActionFixActionProceedDescription =>
      'بۇ مەسىلىگە پەرۋا قىلمىغاندا بىخەتەرلىكى تۆۋەنرەك ئورنىتىش نەتىجىسى كېلىپ چىقىشى مۇمكىن.';

  @override
  String get tpmActionRestartLabel => 'قايتا قوزغات';

  @override
  String get tpmActionRestartAndEnableTpmLabel =>
      'قايتا قوزغىتىپ ۋە TPM نى قوزغىتىدۇ';

  @override
  String get tpmActionRestartAndClearTpmLabel =>
      'قايتا قوزغىتىپ ۋە TPM نى تازىلايدۇ';

  @override
  String get tpmActionIgnoreAndContinueLabel => 'پەرۋا قىلماي داۋاملاشتۇر';

  @override
  String get tpmActionFixActionClearTpmWarningTitle =>
      'TPM تازىلانسا بارلىق شىفىرلىق ئاچقۇچ ئۆچۈرۈلىدۇ';

  @override
  String get tpmActionFixActionClearTpmWarningBody =>
      'ئەگەر ئەسلىگە كەلتۈرۈش ئاچقۇچىڭىز بولمىسا شىفىرلانغان دىسكىدىكى سانلىق مەلۇماتنى زىيارەت قىلىش ئىجازىتىڭىزدىن مەھرۇم قالىسىز. بۇ مەشغۇلاتتا TPM غا تايىنىدىغان دەلىللەش ۋە گۇۋاھنامىگە ئوخشاش ئىقتىدارلار ئۈنۈمىنى يوقىتىدۇ.';

  @override
  String get tpmActionFixActionClearTpmConfirmationLabel =>
      'مەن TPM نى تازىلاشنىڭ ئاقىۋىتىنى چۈشىنىمەن';

  @override
  String get tpmActionFixActionCaveatConfirm =>
      'قايتا قوزغىتىلغاندا بۇ مەشغۇلاتنى جەزملىشىڭىزنى سورىشى مۇمكىن.';

  @override
  String get tpmActionFixActionCaveatRetry =>
      'ئاندىن ئورنىتىشنى قايتا باشلىشىڭىز كېرەك بولىدۇ.';

  @override
  String get tpmActionErrorTitle => 'بۇ ھەل قىلىش لايىھەسى مەغلۇپ بولدى';

  @override
  String get tpmActionErrorDescription =>
      'باشقا ھەل قىلىش لايىھەسىنى سىناڭ ياكى ئۇچۇر تېخنىكا قوللىغۇچىسى بىلەن ئالاقىلىشىڭ.';

  @override
  String get manualPartitioningWarningBody =>
      'باشقىنى سىناڭ. يەنە <a href=\"\">خاتالىق دوكلاتى يوللا</a>يالايسىز.';
}
