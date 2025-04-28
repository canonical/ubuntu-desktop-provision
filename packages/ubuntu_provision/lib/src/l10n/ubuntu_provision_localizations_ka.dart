// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_provision_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Georgian (`ka`).
class UbuntuProvisionLocalizationsKa extends UbuntuProvisionLocalizations {
  UbuntuProvisionLocalizationsKa([String locale = 'ka']) : super(locale);

  @override
  String get accessibilityPageTitle => 'Accessibility';

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
  String get accessibilityHighContrastLabel => 'High contrast';

  @override
  String get accessibilityLargeTextLabel => 'Large text';

  @override
  String get accessibilityReduceAnimationLabel => 'Reduce animation';

  @override
  String get accessibilityScreenReaderLabel => 'Screen reader';

  @override
  String get accessibilityVisualAlertsLabel => 'Visual alerts';

  @override
  String get accessibilityStickKeysLabel => 'Sticky keys';

  @override
  String get accessibilitySlowKeysLabel => 'Slow keys';

  @override
  String get accessibilityMouseKeysLabel => 'Mouse keys';

  @override
  String get accessibilityDesktopZoomLabel => 'Desktop zoom';

  @override
  String get errorPageTitle => 'Something went wrong';

  @override
  String get errorPageUnexpected => 'We\'re sorry, but we\'re not sure what the error is. You can try restarting your computer and start the installation process again. You can can also <a>report the issue</a>.';

  @override
  String errorPageUbuntuBug(String SNAP) {
    return 'To send an automated bug report including relevant debug information, please run <pre>sudo ubuntu-bug $SNAP</pre> in a terminal, or from the command console (Alt+F2).';
  }

  @override
  String get errorPageShowLog => 'Show log';

  @override
  String get errorPageHideLog => 'Hide log';

  @override
  String get restart => 'Restart';

  @override
  String get close => 'Close';

  @override
  String get timezonePageTitle => 'აირჩიეთ თქვენი დროის სარტყელი';

  @override
  String get timezoneLocationLabel => 'მდებარეობა';

  @override
  String get timezoneTimezoneLabel => 'დროის სარტყელი';

  @override
  String get keyboardTitle => 'კლავიატური განლაგება';

  @override
  String get keyboardHeader => 'აირჩიეთ თქვენი კლავიატურის განლაგება';

  @override
  String get keyboardTestHint => 'კლავიატურის დასატესტად აქ აკრიფეთ';

  @override
  String get keyboardDetectTitle => 'კლავიატური განლაგების აღმოჩენა';

  @override
  String get keyboardDetectButton => 'აღმოჩენა';

  @override
  String get keyboardVariantLabel => 'კლავიატურის ვარიანტი:';

  @override
  String get keyboardPressKeyLabel => 'დააწექით ერთ-ერთ შემდეგ ღილაკს:';

  @override
  String get keyboardKeyPresentLabel => 'აქვს თქვენს კლავიატურას შემდეგი ღილაკი?';

  @override
  String get themePageTitle => 'აირჩიეთ თქვენი თემა';

  @override
  String get themePageHeader => 'ამისი შეცვლა გარეგნობის პარამეტრებში ყოველთვის შეგიძლიათ.';

  @override
  String get themeDark => 'მუქი';

  @override
  String get themeLight => 'ღია';

  @override
  String localePageTitle(String DISTRO) {
    return 'მოგესალმებით $DISTRO';
  }

  @override
  String get localeHeader => 'აირჩიეთ თქვენი ენა:';

  @override
  String get identityPageTitle => 'მოირგეთ თქვენი ანგარიში';

  @override
  String get identityAutoLogin => 'ავტომატურად შესვლა';

  @override
  String get identityRequirePassword => 'შესასვლელად პაროლის მოთხოვნა';

  @override
  String get identityRealNameLabel => 'თქვენი სახელი';

  @override
  String get identityRealNameRequired => 'სახელი აუცილებელია';

  @override
  String get identityRealNameTooLong => 'სახელი მეტისმეტად გრძელია.';

  @override
  String get identityHostnameLabel => 'თქვენი კომპიუტერის სახელი';

  @override
  String get identityHostnameInfo => 'სახელი, რომელსაც ის იყენებს, როცა სხვა კომპიუტერებს ელაპარაკება.';

  @override
  String get identityHostnameRequired => 'კომპიუტერის სახელი აუცილებელია';

  @override
  String get identityHostnameTooLong => 'კომპიუტერის სახელი ძალიან გრძელია.';

  @override
  String get identityInvalidHostname => 'კომპუტერის სახელი არასწორია';

  @override
  String get identityUsernameLabel => 'აირჩიეთ მომხმარებლის სახელი';

  @override
  String get identityUsernameRequired => 'მოხმარებლის სახელი აუცილებელია';

  @override
  String get identityInvalidUsername => 'მომხმარებლის სახელი არასწორია';

  @override
  String get identityUsernameInUse => 'ეს მომხმარებლის სახელი უკვე არსებობს.';

  @override
  String get identityUsernameSystemReserved => 'სახელი დაცულია სისტემური გამოყენებისთვის.';

  @override
  String get identityUsernameTooLong => 'სახელი მეტისმეტად გრძელია.';

  @override
  String get identityUsernameInvalidChars => 'სახელი არასწორ სიმბოლოებს შეიცავს.';

  @override
  String get identityPasswordLabel => 'აირჩიეთ პაროლი';

  @override
  String get identityPasswordRequired => 'პაროლი აუცილებელია';

  @override
  String get identityConfirmPasswordLabel => 'დაადასტურეთ პაროლი';

  @override
  String get identityPasswordMismatch => 'პაროლები არ ემთხვევა';

  @override
  String get identityPasswordShow => 'ჩვენება';

  @override
  String get identityPasswordHide => 'დამალვა';

  @override
  String get identityActiveDirectoryOption => 'Active Directory-ის გამოყენება';

  @override
  String get identityActiveDirectoryInfo => 'დომენს და სხვა დეტალებს შემდეგ ნაბიჯში შეიყვანთ.';

  @override
  String get activeDirectoryTitle => 'Active Directory-ის მორგება';

  @override
  String get activeDirectoryHeader => 'Log into Active Directory?';

  @override
  String activeDirectoryInfo(String DISTRO) {
    return '$DISTRO is designed to integrate seamlessly with Active Directory for easier administration.';
  }

  @override
  String get activeDirectoryTestConnection => 'დომენთან მიერთების დატესტვა';

  @override
  String get activeDirectoryDomainLabel => 'დომენი';

  @override
  String get activeDirectoryDomainEmpty => 'აუცილებელია';

  @override
  String get activeDirectoryDomainTooLong => 'ძალიან გრძელია';

  @override
  String get activeDirectoryDomainInvalidChars => 'არასწორი სიმბოლოები';

  @override
  String get activeDirectoryDomainStartDot => 'იწყება წერტილით (.)';

  @override
  String get activeDirectoryDomainEndDot => 'მთავრდება წერტილით (.)';

  @override
  String get activeDirectoryDomainStartHyphen => 'იწყება ტირეთი (-)';

  @override
  String get activeDirectoryDomainEndHyphen => 'სრულდება ტირეთი (-)';

  @override
  String get activeDirectoryDomainMultipleDots => 'შეიცავს ერთზე მეტ მიმდევრობით წერტილს (..)';

  @override
  String get activeDirectoryDomainNotFound => 'დომენი ვერ ვიპოვე';

  @override
  String get activeDirectoryAdminLabel => 'დომენში შესვლის მომხმარებელი';

  @override
  String get activeDirectoryAdminEmpty => 'აუცილებელია';

  @override
  String get activeDirectoryAdminInvalidChars => 'არასწორი სიმბოლოები';

  @override
  String get activeDirectoryPasswordLabel => 'პაროლი';

  @override
  String get activeDirectoryPasswordEmpty => 'აუცილებელია';

  @override
  String get activeDirectoryErrorTitle => 'Active Directory-სთან კავშირის დამყარების შეცდომა';

  @override
  String get activeDirectoryErrorMessage => 'Sorry, Active Directory can\'t be set up at the moment. Once your system is up and running, visit <a href=\"https://help.ubuntu.com/activedirectory\">help.ubuntu.com/activedirectory</a> for help.';

  @override
  String get networkPageTitle => 'ქსელთან მიერთება';

  @override
  String get networkPageHeader => 'Connect to the internet';

  @override
  String get networkPageBody => 'An internet connection will improve your installation with compatibility check and extra software packages.';

  @override
  String get networkWiredOption => 'მავთულიანი მიერთების გამოყენება';

  @override
  String get networkWiredNone => 'მავთულიანი ქსელი აღმოჩენილი არაა';

  @override
  String get networkWiredOff => 'მავთულიანი მიერთება გაითიშა';

  @override
  String get networkWiredDisabled => 'ამ კომპიუტერზე Ethernet-ის გამოსაყენებლად, აუცილებელია სადენიანი ქსელი ჩართოთ';

  @override
  String get networkWiredEnable => 'მავთულიანი მიერთების ჩართვა';

  @override
  String get networkWifiOption => 'Wi-Fi ქსელთან მიერთება';

  @override
  String get networkWifiOff => 'უსადენო ქსელი გაითიშა';

  @override
  String get networkWifiNone => 'Wi-Fi მოწყობილობები აღმოჩენილი არაა';

  @override
  String get networkWifiDisabled => 'ამ კომპიუტერზე Wi-Fi-ის გამოსაყენებლად უსადენო ქსელის ჩართვა აუცილებელია';

  @override
  String get networkWifiEnable => 'Wi-Fi-ის ჩართვა';

  @override
  String get networkHiddenWifiOption => 'დამალულ Wi-Fi ქსელთან მიერთება';

  @override
  String get networkHiddenWifiNameLabel => 'ქსელის სახელი';

  @override
  String get networkHiddenWifiNameRequired => 'ქსელის სახელი აუცილებელია';

  @override
  String get networkNoneOption => 'ინტერნეტთან მიერთება ჯერ არ მინდა';

  @override
  String get eulaPageTitle => 'License agreement';

  @override
  String get eulaReviewTerms => 'Review the license terms';

  @override
  String get eulaReadAndAcceptTerms => 'To continue setting up this machine, you must read and accept the license agreement terms.';

  @override
  String get eulaAcceptTerms => 'I have read and accept these terms';
}
