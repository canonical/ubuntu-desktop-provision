// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_provision_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Georgian (`ka`).
class UbuntuProvisionLocalizationsKa extends UbuntuProvisionLocalizations {
  UbuntuProvisionLocalizationsKa([String locale = 'ka']) : super(locale);

  @override
  String get accessibilityPageTitle => 'წვდომადობა';

  @override
  String accessibilityPageHeader(String DISTRO) {
    return 'წვდომადობა $DISTRO-ში';
  }

  @override
  String accessibilityPageBody(String DISTRO) {
    return 'მოარგეთ $DISTRO თქვენს საჭიროებებს, სანამ დააყენებთ. პარამეტრების შეცვლა მოგვიანებით, სისტემის მორგების ფანჯარაში შეგეძლებათ.';
  }

  @override
  String get accessibilitySeeingLabel => 'მხედველობა';

  @override
  String get accessibilityHearingLabel => 'სმენა';

  @override
  String get accessibilityTypingLabel => 'კრეფა';

  @override
  String get accessibilityPointingLabel => 'დამიზნება და დაწკაპუნება';

  @override
  String get accessibilityZoomLabel => 'გადიდება';

  @override
  String get accessibilityHighContrastLabel => 'მაღალი კონტრასტი';

  @override
  String get accessibilityLargeTextLabel => 'დიდი ტექსტი';

  @override
  String get accessibilityReduceAnimationLabel => 'ანიმაციის შემცირება';

  @override
  String get accessibilityScreenReaderLabel => 'ეკრანის წამკითხავი';

  @override
  String get accessibilityVisualAlertsLabel => 'ვიზუალური გაფრთხილებები';

  @override
  String get accessibilityStickKeysLabel => 'წებოვანი ღილაკები';

  @override
  String get accessibilitySlowKeysLabel => 'ნელი ღილაკები';

  @override
  String get accessibilityMouseKeysLabel => 'თაგუნას ღილაკები';

  @override
  String get accessibilityDesktopZoomLabel => 'სამუშაო მაგიდის გადიდება';

  @override
  String get errorPageTitle => 'რაღაც არასწორია';

  @override
  String get errorPageUnexpected =>
      'უკაცრავად, მაგრამ ჩვენ არ ვართ დარწმუნებული, რა მოხდა. სცადეთ, გადატვირთოთ კომპიუტერი და დაყენების პროცესი თავიდან დაიწყოთ. ასევე შეგიძლიათ, <a>შეცდომის შესახებ მოგვწეროთ</a>.';

  @override
  String errorPageUbuntuBug(String SNAP) {
    return 'იმისათვის, რომ გააგზავნოთ ანგარიში შესაბამისი გამართვის ინფორმაციით, გაუვთ <pre>sudo ububuntu-log $SNAP</pre> ტერმინალში ან ბრძანების სტრიქონში (Alt+F2).';
  }

  @override
  String get errorPageShowLog => 'ჟურნალის ჩვენება';

  @override
  String get errorPageHideLog => 'ჟურნალის დამალვა';

  @override
  String get restart => 'გადატვირთვა';

  @override
  String get close => 'დახურვა';

  @override
  String get timezonePageTitle => 'აირჩიეთ თქვენი დროის სარტყელი';

  @override
  String get timezoneLocationLabel => 'მდებარეობა';

  @override
  String get timezoneTimezoneLabel => 'დროის სარტყელი';

  @override
  String get keyboardTitle => 'კლავიატურის განლაგება';

  @override
  String get keyboardHeader => 'აირჩიეთ თქვენი კლავიატურის განლაგება';

  @override
  String get keyboardTestHint => 'კლავიატურის შესამოწმებლად აკრიფეთ აქ';

  @override
  String get keyboardDetectTitle => 'კლავიატურის განლაგების დადგენა';

  @override
  String get keyboardDetectButton => 'აღმოჩენა';

  @override
  String get keyboardVariantLabel => 'კლავიატურის ვარიანტი:';

  @override
  String get keyboardPressKeyLabel => 'დააწექით ერთ-ერთ შემდეგ ღილაკს:';

  @override
  String get keyboardKeyPresentLabel =>
      'აქვს თქვენს კლავიატურას შემდეგი ღილაკი?';

  @override
  String get themePageTitle => 'აირჩიეთ თქვენი თემა';

  @override
  String get themePageHeader =>
      'ამის შეცვლა გარეგნობის პარამეტრებში ყოველთვის შეგიძლიათ.';

  @override
  String get themeDark => 'მუქი';

  @override
  String get themeLight => 'ღია';

  @override
  String localePageTitle(String DISTRO) {
    return 'მოგესალმებათ $DISTRO';
  }

  @override
  String get localeHeader => 'აირჩიეთ თქვენი ენა:';

  @override
  String get identityPageTitle => 'შექმენით თქვენი ანგარიში';

  @override
  String get identityAutoLogin => 'ავტომატური შესვლა';

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
  String get identityHostnameInfo =>
      'სახელი, რომელსაც ის იყენებს, როცა სხვა კომპიუტერებს ელაპარაკება.';

  @override
  String get identityHostnameRequired => 'კომპიუტერის სახელი აუცილებელია';

  @override
  String get identityHostnameTooLong => 'კომპიუტერის სახელი ძალიან გრძელია.';

  @override
  String get identityInvalidHostname => 'კომპიუტერის სახელი არასწორია';

  @override
  String get identityUsernameLabel => 'თქვენი მომხმარებლის სახელი';

  @override
  String get identityUsernameRequired => 'მომხმარებლის სახელი აუცილებელია';

  @override
  String get identityInvalidUsername => 'მომხმარებლის სახელი არასწორია';

  @override
  String get identityUsernameInUse => 'ეს მომხმარებლის სახელი უკვე არსებობს.';

  @override
  String get identityUsernameSystemReserved =>
      'სახელი დაცულია სისტემური გამოყენებისთვის.';

  @override
  String get identityUsernameTooLong => 'სახელი მეტისმეტად გრძელია.';

  @override
  String get identityUsernameInvalidChars =>
      'სახელი არასწორ სიმბოლოებს შეიცავს.';

  @override
  String get identityPasswordLabel => 'პაროლი';

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
  String get identityActiveDirectoryInfo =>
      'დომენს და სხვა დეტალებს შემდეგ ნაბიჯში შეიყვანთ.';

  @override
  String get activeDirectoryTitle => 'Active Directory-ში შესვლა';

  @override
  String get activeDirectoryHeader => 'შეხვალთ Active Directory-ში?';

  @override
  String activeDirectoryInfo(String DISTRO) {
    return '$DISTROმზადაა, რომ შეერწყას Active Directory-ს უფრო ადვილად სამართავად.';
  }

  @override
  String get activeDirectoryTestConnection => 'დომენთან მიერთების შემოწმება';

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
  String get activeDirectoryDomainMultipleDots =>
      'შეიცავს ერთზე მეტ მიმდევრობით წერტილს (..)';

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
  String get activeDirectoryErrorTitle =>
      'Active Directory-სთან კავშირის დამყარების შეცდომა';

  @override
  String get activeDirectoryErrorMessage =>
      'უკაცრავად, მაგრამ ამჟამად Active Directory-ის მორგება შეუძლებელია. როცა სისტემას ბოლომდე ჩატვირთავთ, დახმარებისთვის ეწვიეთ ვებგვერდს <a href=\"https://help.ubuntu.com/activedirectory\">help.ubuntu.com/activedirectory</a>.';

  @override
  String get networkPageTitle => 'ინტერნეტკავშირი';

  @override
  String get networkPageHeader => 'ინტერნეტთან დაკავშირება';

  @override
  String get networkPageBody =>
      'ინტერნეტთან კავშირი გააუმჯობესებს თქვენს დაყენებულ ოპერაციული სისტემის თავსებადობის გაუმჯობესებითა და დამატებითი პროგრამებით.';

  @override
  String get networkWiredOption => 'მავთულიანი მიერთების გამოყენება';

  @override
  String get networkWiredNone => 'მავთულიანი ქსელი აღმოჩენილი არაა';

  @override
  String get networkWiredOff => 'მავთულიანი მიერთება გამორთულია';

  @override
  String get networkWiredDisabled =>
      'ამ კომპიუტერზე, Ethernet-ის გამოსაყენებლად, აუცილებელია, სადენიანი ქსელი ჩართოთ';

  @override
  String get networkWiredEnable => 'მავთულიანი მიერთების ჩართვა';

  @override
  String get networkWifiOption => 'Wi-Fi ქსელთან მიერთება';

  @override
  String get networkWifiOff => 'უსადენო ქსელი გათიშულია';

  @override
  String get networkWifiNone => 'Wi-Fi მოწყობილობები აღმოჩენილი არაა';

  @override
  String get networkWifiDisabled =>
      'ამ კომპიუტერზე Wi-Fi-ის გამოსაყენებლად უსადენო ქსელის ჩართვა აუცილებელია';

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
  String get eulaPageTitle => 'სალიცენზი შეთანხმება';

  @override
  String get eulaReviewTerms => 'ლიცენზიის პირობების მიმოხილვა';

  @override
  String get eulaReadAndAcceptTerms =>
      'მანქანის მორგების გასაგრძელებლად ლიცენზიის პირობებს უნდა დაეთანხმოთ.';

  @override
  String get eulaAcceptTerms => 'წავიკითხე და ვეთანხმები ამ პირობებს';
}
