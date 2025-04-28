// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_provision_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Sinhala Sinhalese (`si`).
class UbuntuProvisionLocalizationsSi extends UbuntuProvisionLocalizations {
  UbuntuProvisionLocalizationsSi([String locale = 'si']) : super(locale);

  @override
  String get accessibilityPageTitle => 'ප්‍රවේශ්‍යතාව';

  @override
  String accessibilityPageHeader(String DISTRO) {
    return '$DISTRO ප්‍රවේශ්‍යතාව';
  }

  @override
  String accessibilityPageBody(String DISTRO) {
    return 'Customise $DISTRO to your needs before you set up. You can change them later in System Settings.';
  }

  @override
  String get accessibilitySeeingLabel => 'දැකීම';

  @override
  String get accessibilityHearingLabel => 'ඇසීම';

  @override
  String get accessibilityTypingLabel => 'ලිවීම';

  @override
  String get accessibilityPointingLabel => 'දැක්වීම හා එබීම';

  @override
  String get accessibilityZoomLabel => 'විශාලනය';

  @override
  String get accessibilityHighContrastLabel => 'High contrast';

  @override
  String get accessibilityLargeTextLabel => 'විශාල පෙළ';

  @override
  String get accessibilityReduceAnimationLabel => 'Reduce animation';

  @override
  String get accessibilityScreenReaderLabel => 'තිරය කියවනය';

  @override
  String get accessibilityVisualAlertsLabel => 'Visual alerts';

  @override
  String get accessibilityStickKeysLabel => 'Sticky keys';

  @override
  String get accessibilitySlowKeysLabel => 'Slow keys';

  @override
  String get accessibilityMouseKeysLabel => 'මූසික යතුරු';

  @override
  String get accessibilityDesktopZoomLabel => 'වැඩතලය විශාලනය';

  @override
  String get errorPageTitle => 'යමක් වැරදී ඇත';

  @override
  String get errorPageUnexpected => 'We\'re sorry, but we\'re not sure what the error is. You can try restarting your computer and start the installation process again. You can can also <a>report the issue</a>.';

  @override
  String errorPageUbuntuBug(String SNAP) {
    return 'To send an automated bug report including relevant debug information, please run <pre>sudo ubuntu-bug $SNAP</pre> in a terminal, or from the command console (Alt+F2).';
  }

  @override
  String get errorPageShowLog => 'සටහන් පෙන්වන්න';

  @override
  String get errorPageHideLog => 'සටහන් සඟවන්න';

  @override
  String get restart => 'යළි අරඹන්න';

  @override
  String get close => 'වසන්න';

  @override
  String get timezonePageTitle => 'ඔබ කොහිද?';

  @override
  String get timezoneLocationLabel => 'ස්ථානය';

  @override
  String get timezoneTimezoneLabel => 'වේලා කලාපය';

  @override
  String get keyboardTitle => 'යතුරුපුවරුවේ පිරිසැලසුම';

  @override
  String get keyboardHeader => 'ඔබගේ යතුරුපුවරු පිරිසැලසුම තෝරන්න:';

  @override
  String get keyboardTestHint => 'ඔබගේ යතුරුපුවරුව පරීක්‍ෂාවට මෙතැන ලියන්න';

  @override
  String get keyboardDetectTitle => 'යතුරුපුවරුවේ පිරිසැලසුම අනාවරණය';

  @override
  String get keyboardDetectButton => 'අනාවරණය';

  @override
  String get keyboardVariantLabel => 'යතුරුපුවරු ප්‍රහේදය තෝරන්න:';

  @override
  String get keyboardPressKeyLabel => 'පහත යතුරු වලින් එකක් ඔබන්න:';

  @override
  String get keyboardKeyPresentLabel => 'පහත යතුර ඔබගේ යතුරුපුවරුවේ තිබේද?';

  @override
  String get themePageTitle => 'ඔබගේ පෙනුම තෝරන්න';

  @override
  String get themePageHeader => 'මෙය පසුව පෙනුම සැකසුම් හරහා වෙනස් කිරීමට හැකිය.';

  @override
  String get themeDark => 'අඳුරු';

  @override
  String get themeLight => 'දීප්ත';

  @override
  String localePageTitle(String DISTRO) {
    return '$DISTRO වෙත පිළිගනිමු';
  }

  @override
  String get localeHeader => 'ඔබගේ භාෂාව තෝරන්න:';

  @override
  String get identityPageTitle => 'ඔබ කවුද?';

  @override
  String get identityAutoLogin => 'ස්වයංක්‍රීයව පිවිසෙන්න';

  @override
  String get identityRequirePassword => 'ප්‍රවේශය සඳහා මාගේ මුරපදය වුවමනාය';

  @override
  String get identityRealNameLabel => 'ඔබගේ නම';

  @override
  String get identityRealNameRequired => 'නමක් වුවමනාය';

  @override
  String get identityRealNameTooLong => 'මෙම නම දිග වැඩියි.';

  @override
  String get identityHostnameLabel => 'ඔබගේ පරිගණකයේ නම';

  @override
  String get identityHostnameInfo => 'වෙනත් පරිගණක වෙත අමතන විට නම භාවිතා වේ.';

  @override
  String get identityHostnameRequired => 'පරිගණකයට නමක් වුවමනාය';

  @override
  String get identityHostnameTooLong => 'පරිගණකයේ නම දිග වැඩියි.';

  @override
  String get identityInvalidHostname => 'පරිගණකයේ නම වැරදිය';

  @override
  String get identityUsernameLabel => 'පරිශ්‍රීලක නාමයක් තෝරන්න';

  @override
  String get identityUsernameRequired => 'පරිශ්‍රීලක නාමයක් වුවමනාය';

  @override
  String get identityInvalidUsername => 'පරිශ්‍රීලක නාමය වැරදිය';

  @override
  String get identityUsernameInUse => 'පරිශ්‍රීලක නාමය දැනටමත් පවතී.';

  @override
  String get identityUsernameSystemReserved => 'එම නම පද්ධතියේ භාවිතයට වෙන් කර ඇත.';

  @override
  String get identityUsernameTooLong => 'නම ඉතා දිගයි.';

  @override
  String get identityUsernameInvalidChars => 'නමෙහි වලංගු නොවන අකුරු අඩංගුය.';

  @override
  String get identityPasswordLabel => 'මුරපදයක් තෝරන්න';

  @override
  String get identityPasswordRequired => 'මුරපදයක් වුවමනාය';

  @override
  String get identityConfirmPasswordLabel => 'මුරපදය තහවුරු කරන්න';

  @override
  String get identityPasswordMismatch => 'මුරපද නොගැළපේ';

  @override
  String get identityPasswordShow => 'පෙන්වන්න';

  @override
  String get identityPasswordHide => 'සඟවන්න';

  @override
  String get identityActiveDirectoryOption => 'සක්‍රිය නමාවලිය භාවිතා කරන්න';

  @override
  String get identityActiveDirectoryInfo => 'You\'ll enter domain and other details in the next step.';

  @override
  String get activeDirectoryTitle => 'සක්‍රිය නාමාවලියට පිවිසෙන්න';

  @override
  String get activeDirectoryHeader => 'සක්‍රිය නාමාවලියට පිවිසෙන්න ද?';

  @override
  String activeDirectoryInfo(String DISTRO) {
    return '$DISTRO is designed to integrate seamlessly with Active Directory for easier administration.';
  }

  @override
  String get activeDirectoryTestConnection => 'වසමට සබැඳුම අත්හදා බලන්න';

  @override
  String get activeDirectoryDomainLabel => 'වසම';

  @override
  String get activeDirectoryDomainEmpty => 'වුවමනාය';

  @override
  String get activeDirectoryDomainTooLong => 'දිග වැඩියි';

  @override
  String get activeDirectoryDomainInvalidChars => 'අකුරු වලංගු නොවේ';

  @override
  String get activeDirectoryDomainStartDot => 'තිතකින් (.) ඇරඹෙයි';

  @override
  String get activeDirectoryDomainEndDot => 'තිතකින් (.) නිමාවෙයි';

  @override
  String get activeDirectoryDomainStartHyphen => 'ඉරකින් (-) ඇරඹෙයි';

  @override
  String get activeDirectoryDomainEndHyphen => 'ඉරකින් (-) නිමාවෙයි';

  @override
  String get activeDirectoryDomainMultipleDots => 'Contains multiple sequenced dots (..)';

  @override
  String get activeDirectoryDomainNotFound => 'වසම හමු නොවිණි';

  @override
  String get activeDirectoryAdminLabel => 'Domain join user';

  @override
  String get activeDirectoryAdminEmpty => 'වුවමනාය';

  @override
  String get activeDirectoryAdminInvalidChars => 'අකුරු වලංගු නොවේ';

  @override
  String get activeDirectoryPasswordLabel => 'මුරපදය';

  @override
  String get activeDirectoryPasswordEmpty => 'වුවමනාය';

  @override
  String get activeDirectoryErrorTitle => 'Error configuring connection to Active Directory';

  @override
  String get activeDirectoryErrorMessage => 'Sorry, Active Directory can\'t be set up at the moment. Once your system is up and running, visit <a href=\"https://help.ubuntu.com/activedirectory\">help.ubuntu.com/activedirectory</a> for help.';

  @override
  String get networkPageTitle => 'අන්තර්ජාලයට සබඳින්න';

  @override
  String get networkPageHeader => 'මෙම පරිගණකය අන්තර්ජාලයට සම්බන්ධ කිරීමෙන් උබුන්ටු සඳහා අවශ්‍ය ඕනෑම අමතර මෘදුකාංගයක් ස්ථාපනයට මෙන්ම ඔබගේ වේලා කලාපය තෝරා ගැනීමට හැකිය.\n\nඊතර්නෙට් රැහැන සම්බන්ධ කරන්න හෝ වයි-ෆයි ජාලයක් තෝරන්න';

  @override
  String get networkPageBody => 'An internet connection will improve your installation with compatibility check and extra software packages.';

  @override
  String get networkWiredOption => 'රැහැන් සම්බන්ධතාවය යොදාගන්න';

  @override
  String get networkWiredNone => 'රැහැන් සම්බන්ධතාවයක් අනාවරණය නොවිණි';

  @override
  String get networkWiredOff => 'රැහැන් සම්බන්ධතාවය අක්‍රියයි';

  @override
  String get networkWiredDisabled => 'මෙම පරිගණකයේ ඊතර්නෙට් භාවිතයට, රැහැන්ගත සම්බන්ධතාවයක් සබල කළ යුතුය';

  @override
  String get networkWiredEnable => 'රැහැන්ගත සබල කරන්න';

  @override
  String get networkWifiOption => 'වයි-ෆයි ජාලයකට සබඳින්න';

  @override
  String get networkWifiOff => 'රැහැන් රහිත ජාලකරණය අබලයි';

  @override
  String get networkWifiNone => 'කිසිදු වයි-ෆයි උපාංගයක් අනාවරණය වී නැත';

  @override
  String get networkWifiDisabled => 'මෙම පරිගණකයේ වයි-ෆයි භාවිතයට, රැහැන් රහිත ජාලකරණය සබල කළ යුතුය';

  @override
  String get networkWifiEnable => 'වයි-ෆයි සබල කරන්න';

  @override
  String get networkHiddenWifiOption => 'සැඟවුණු වයි-ෆයි ජාලයකට සබඳින්න';

  @override
  String get networkHiddenWifiNameLabel => 'ජාලයේ නම';

  @override
  String get networkHiddenWifiNameRequired => 'ජාල නාමයක් වුවමනාය';

  @override
  String get networkNoneOption => 'දැන් අන්තර්ජාලයට සම්බන්ධ වීමට අවශ්‍ය නැත';

  @override
  String get eulaPageTitle => 'License agreement';

  @override
  String get eulaReviewTerms => 'Review the license terms';

  @override
  String get eulaReadAndAcceptTerms => 'To continue setting up this machine, you must read and accept the license agreement terms.';

  @override
  String get eulaAcceptTerms => 'I have read and accept these terms';
}
