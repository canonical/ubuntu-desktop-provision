// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_bootstrap_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Georgian (`ka`).
class UbuntuBootstrapLocalizationsKa extends UbuntuBootstrapLocalizations {
  UbuntuBootstrapLocalizationsKa([String locale = 'ka']) : super(locale);

  @override
  String get appTitle => 'Ubuntu Desktop-ის დაყენების პროგრამა';

  @override
  String windowTitle(String RELEASE) {
    return '$RELEASE-ის დაყენება';
  }

  @override
  String get autoinstallDirectTitle => 'ავტომატური დაყენება';

  @override
  String get autoinstallDirectHeader => 'ავტოდაყენების ფაილის შემოტანა';

  @override
  String get autoinstallDirectUrlLabel =>
      'შეგიძლიათ, შეიყვანოთ ავტოდაყენების ფაილის URL:';

  @override
  String get autoinstallDirectFileLabel => 'ან აირჩიეთ ლოკალური ფაილი:';

  @override
  String get autoinstallDirectFileButtonLabel => 'ფაილის არჩევა...';

  @override
  String get autoinstallDirectFileClearButtonLabel => 'ფაილის გასუფთავება';

  @override
  String get autoinstallDirectFilePickerTitle => 'ფაილის არჩევა';

  @override
  String get autoinstallDirectFilePickerFilterLabel => 'YAML ფაილები';

  @override
  String get autoinstallDirectImportButtonLabel => 'შემოტანა';

  @override
  String get autoinstallDirectErrorNetworkTitle =>
      'ავტოდაყენების ფაილი ხელმისაწვდომი არაა';

  @override
  String get autoinstallDirectErrorNetworkBody =>
      'შეამოწმეთ, სწორია, თუ არა URL, შეამოწმეთ კავშირი ინტერნეტთან, ან მოგვიანებით სცადეთ.';

  @override
  String get autoinstallDirectErrorInvalidUrlTitle => 'არასწორი URL';

  @override
  String get autoinstallDirectErrorInvalidUrlBody =>
      'შეამოწმეთ URL-ის სისწორე, ან აირჩიეთ ლოკალური ფაილი.';

  @override
  String get autoinstallDirectErrorInvalidContentTitle =>
      'არასწორი ავტოდაყენების ფაილი';

  @override
  String get autoinstallDirectErrorInvalidContentBody =>
      'შეამოწმეთ ფაილი, ან აირჩიეთ სხვა.';

  @override
  String get autoinstallDirectErrorFileSystemTitle =>
      'ავტოდაყენების ფაილი წაკითხვადი არაა';

  @override
  String get autoinstallDirectErrorFileSystemBody =>
      'შეამოწმეთ წვდომები, ან აირჩიეთ სხვა ფაილი.';

  @override
  String get autoinstallDirectErrorUnkownTitle => 'უცნობი შეცდომა';

  @override
  String get autoinstallTitle => 'დაყენების ტიპი';

  @override
  String autoinstallHeader(String DISTRO) {
    return 'როგორ გნებავთ $DISTRO-ის დაყენება?';
  }

  @override
  String get autoinstallInstructions =>
      'შეიყვანეთ autoinstall.yaml-ის ბმული, ან ლოკალური ფაილის ბილიკი:';

  @override
  String get autoinstallInteractiveOption => 'ინტერაქტიური დაყენება';

  @override
  String get autoinstallInteractiveDescription =>
      'მომხმარებლებისთვის, რომლებსაც სურთ დახმარება დაყენების ყველა ნაბიჯზე.';

  @override
  String get autoinstallDirectOption => 'ავტომატიზებული ავტოდაყენების ფაილით';

  @override
  String get autoinstallDirectDescription =>
      'გამოცდილი მომხმარებლები, რომლებსაც autoinstall.yaml ფაილი აქვთ განმეორებადი სისტემების დასაყენებლად.';

  @override
  String get autoinstallLandscapeOption =>
      'ავტომატიზებულია Landscape-ისთან ერთად';

  @override
  String get autoinstallLandscapeDescription =>
      'მომხმარებლებისთვის და ორგანიზაციებისთვის, რომლებსაც აქვთ autoinstall ფაილი Landscape-დან.';

  @override
  String get autoinstallErrorMessage =>
      'A command in the autoinstall file failed to run during installation.';

  @override
  String get autoinstallErrorInstructions =>
      'You will need to restart the installation. Check the autoinstall file, choose a different installation type, or contact your IT support.';

  @override
  String get changeButtonText => 'შეცვლა';

  @override
  String get quitButtonText => 'დაყენებიდან გასვლა';

  @override
  String loadingPageTitle(String DISTRO) {
    return 'მოგესალმებათ $DISTRO';
  }

  @override
  String loadingHeader(String DISTRO) {
    return '$DISTRO-ის მომზადება…';
  }

  @override
  String get warningLabel => 'გაფრთხილება:';

  @override
  String tryOrInstallTitle(String DISTRO) {
    return 'სცადეთ ან დააყენეთ $DISTRO';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return 'რა გნებავთ, უქნათ $DISTRO-ს?';
  }

  @override
  String get tryOrInstallRepairOption => 'დაყენებული ვერსიის შეკეთება';

  @override
  String get tryOrInstallRepairDescription =>
      'რემონტი თავიდან დააყენებს ყველა დაყენებულ პროგრამას დოკუმენტებისა და პარამეტრების ხელისხლების გარეშე.';

  @override
  String tryOption(String RELEASE) {
    return '$RELEASE-ის ცდა';
  }

  @override
  String tryDescription(String RELEASE) {
    return '\$$RELEASE-ის ცდა კომპიუტერში ცვლილებების შეტანის გარეშე შეგიძლიათ.';
  }

  @override
  String installOption(String RELEASE) {
    return '$RELEASE-ის დაყენება';
  }

  @override
  String installDescription(String RELEASE) {
    return 'დააყენთ $RELEASE თქვენს ოპერაციულ სისტემასთან ერთად (ან მის გარეშე). ამას დიდი ხანი არ დასჭირდება.';
  }

  @override
  String tryOrInstallReleaseNotesLabel(String url) {
    return 'შეიძლება, გნებავთ, წაიკითხოთ <a href=\"$url\">რელიზის შენიშვნები</a>.';
  }

  @override
  String get rstTitle => 'RST ჩართულია';

  @override
  String get rstHeader => 'დაყენების გასაგრძელებლად RST უნდა გამორთოთ';

  @override
  String get rstDisable =>
      'თქვენი კომპიუტერი იყენებს Intel RST (Rapid Storage Technology). RST შეგიძლიათ, გამორთოთ:';

  @override
  String get rstDisableWindows =>
      'Windows, თუ იყენებთ ორმაგ ჩატვირთვას Windows-თან ერთად';

  @override
  String get rstDisableBios => 'BIOS-ის პარამეტრები';

  @override
  String rstInstructions(String url) {
    return 'ინსტრუქციებისთვის დაასკანერეთ QR კოდი სხვა მოწყობილობაზე, ან ეწვიეთ ვებვერდს <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'Secure Boot-ის მორგება';

  @override
  String get configureSecureBootDescription =>
      'თქვენ აირჩიეთ მესამე პირების მიერ მოწოდებული პროგრამების დაყენება. ამას დაცული ჩატვირთვის გამორთვა სჭირდება.\nამისათვის საჭიროა, უსაფრთხოების გასაღები ახლა აირჩიოთ, ან შეიყვანოთ ის, როცა სისტემა გადაიტვირთება.';

  @override
  String get configureSecureBootOption => 'Secure Boot-ის მორგება';

  @override
  String get chooseSecurityKey => 'უსაფრთხოების გასაღების არჩევა';

  @override
  String get confirmSecurityKey => 'უსაფრთხოების გასაღების დადასტურება';

  @override
  String get dontInstallDriverSoftwareNow => 'დრაივერის ჯერ არდაყენება';

  @override
  String get dontInstallDriverSoftwareNowDescription =>
      'შეგიძლიათ მოგვიანებით დააყენოთ პროგრამებისა და განახლებების ცენტრიდან.';

  @override
  String get configureSecureBootSecurityKeyRequired =>
      'აუცილებელია უსაფრთხოების გასაღები';

  @override
  String get secureBootSecurityKeysDontMatch =>
      'უსაფრთხოების გასაღებები არ ემთხვევა';

  @override
  String get showSecurityKey => 'ჩვენება';

  @override
  String get hideSecurityKey => 'დამალვა';

  @override
  String get updatesOtherSoftwarePageTitle => 'აპლიკაციები';

  @override
  String get updatesOtherSoftwarePageDescription =>
      'დასაწყისისთვის, რომელი პროგრამების დაყენება გსურთ?';

  @override
  String get codecsAndDriversPageTitle => 'თქვენი კომპიუტერის ოპტიმიზაცია';

  @override
  String get codecsAndDriversPageDescription =>
      'დავაყენო რეკომენდებული არაუფასო პროგრამები?';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return '$DISTRO-ს ფასიანი პროგრამები ნაგულისხმევად არ მოჰყვება. დამატებითი პროგრამების დაყენებამ, შეიძლება, თქვენი კომპიუტერის წარმადობა გაზარდოს.';
  }

  @override
  String get codecsAndDriversNvidiaNote =>
      'აღმოჩენილია NVIDIA-ის გრაფიკული ბარათი';

  @override
  String get codecsAndDriversNvidiaBody =>
      'NVIDIA-ის გრაფიკული ბარათებიდან საუკეთესო წარმადობის ასაღებად დამატებითი დრაივერების დაყენება მკაცრადაა რეკომენდებული.';

  @override
  String get fullInstallationTitle => 'გაფართოებული არჩევანი';

  @override
  String get fullInstallationSubtitle =>
      'ინტერნეტის გარეშე მუშაობის შემძლე საოფისე პროგრამები, ხელსაწყოები და ბრაუზერი.';

  @override
  String get minimalInstallationTitle => 'ნაგულისხმევი არჩევანი';

  @override
  String get minimalInstallationSubtitle =>
      'მხოლოდ ძირითადი პროგრამები და ბრაუზერი.';

  @override
  String get otherOptions => 'სხვა პარამეტრები';

  @override
  String get installThirdPartyTitle =>
      'მესამე პირების მიერ მოწოდებული პროგრამების დაყენება გრაფიკისა და Wi-Fi-ის აპარატურისთვის და დამატებითი მედიის ფორმატებისთვის';

  @override
  String get installThirdPartySubtitle =>
      'ეს პროგრამა ვრცელდება სალიცენზიო შეთანხმებით, რომლებიც დოკუმენტაციასთან ერთად მოჰყვება. ზოგიერთი მათგანი დახურული კოდითაა.';

  @override
  String get installDriversTitle =>
      'მესამე პირების მიერ მოწოდებული პროგრამების დაყენება გრაფიკისთვის და Wi-Fi-ის აპარატურისთვის';

  @override
  String get installDriversSubtitle =>
      'NVIDIA-ის დრაივერები და მსგავსი პროგრამები';

  @override
  String get installCodecsTitle =>
      'დამატებითი მედიის ფორმატების მხარდაჭერის გადმოწერა და დაყენება';

  @override
  String get installCodecsSubtitle =>
      'შეიცავს MP3, MP4, MOV და მსგავსები და სხვა';

  @override
  String get batteryWarning => 'კომპიუტერი დენის წყაროზე მიერთებული არაა.';

  @override
  String get offlineWarning => 'ამჟამად ინტერნეტთან მიერთებული არ ბრძანდებით';

  @override
  String get choosePassphraseHeader => 'საკვანძო ფრაზის შექმნა';

  @override
  String get choosePassphraseBody =>
      'თქვენი საკვანძო ფრაზის შეყვანა დაგჭირდებათ ყოველ ჯერზე, როცა კომპიუტერს ჩართავთ. ეს საკვანძო ფრაზა განსხვავდება თქვენი მომხმარებლის პაროლისგან.';

  @override
  String get choosePassphraseInfoHeader =>
      'დარწმუნდით, რომ შეინახეთ თქვენი საკვანძო ფრაზა';

  @override
  String get choosePassphraseInfoBody =>
      'თუ დაკარგავთ, მონაცემებთან წვდომა აღარ გექნებათ.';

  @override
  String get chooseOptionalPassphraseInfoHeader =>
      'შეინახეთ თქვენი საკვანძო ფრაზა და აღდგენის გასაღები სადმე უსაფრთხო ადგილას';

  @override
  String get chooseOptionalPassphraseInfoBody =>
      'თუ თქვენს საკვანძო ფრაზას დაკარგავთ, ასევე სრულად დაკარგავთ თქვენს მონაცემებსაც. საკვანძო ფრაზა არ ანაცვლებს თქვენს აღდგენის გასაღებს, ან თქვენი მომხმარებლის პაროლს.';

  @override
  String get passphrasePageTitle => 'დაშიფვრა';

  @override
  String get passphrasePageHeaderPassphrase =>
      'დაშიფვრის საკვანძო ფრაზის მორგება';

  @override
  String get passphrasePageHeaderPin => 'დაშიფვრის PIN-კოდის მორგება';

  @override
  String get passphrasePageBodyPassphrase =>
      'თქვენი საკვანძო ფრაზის შეყვანა დაგჭირდებათ ყოველ ჯერზე, როცა კომპიუტერს ჩართავთ. ეს საკვანძო ფრაზა განსხვავდება თქვენი მომხმარებლის პაროლისგან. მისი შეცვლა მოგვიანებით შეგეძლებათ, მაგრამ არა გამორთვა. თუ საკვანძო ფრაზა დაგავიწყდებათ, დისკთან წვდომის დაბრუნებას აღდგენის გასაღებით შეძლებთ.';

  @override
  String get passphrasePageBodyPin =>
      'თქვენი PIN-კოდის შეყვანა დაგჭირდებათ ყოველ ჯერზე, როცა კომპიუტერს ჩართავთ. ეს PIN-კოდი განსხვავდება თქვენი მომხმარებლის პაროლისგან. მისი შეცვლა მოგვიანებითაც შეგეძლებათ, მაგრამ არა მისი გამორთვა. თუ PIN-კოდი დაგავიწყდებათ, დისკზე წვდომის დაბრუნებას აღდგენის გასაღების გამოყენებით შეძლებთ.';

  @override
  String get passphrasePageChoosePassphraseHint => 'საკვანძო ფრაზა';

  @override
  String get passphrasePageConfirmPassphraseHint =>
      'დაადასტურეთ საკვანძო ფრაზა';

  @override
  String get passphrasePageRequiredPassphrase => 'საკვანძო ფრაზა აუცილებელია';

  @override
  String get passphrasePageMismatchPassphrase => 'საკვანძო ფრაზები არ ემთხვევა';

  @override
  String get passphrasePageChoosePinHint => 'PIN';

  @override
  String get passphrasePageConfirmPinHint => 'დაადასტურეთ PIN';

  @override
  String get passphrasePageRequiredPin => 'PIN-კოდი აუცილებელია';

  @override
  String get passphrasePageMismatchPin => 'PIN-კოდები არ ემთხვევა';

  @override
  String get passphraseTypePassphraseTileTitle => 'საკვანძო ფრაზის მოთხოვნა';

  @override
  String get passphraseTypePassphraseTileSubTitle =>
      'ყველაზე დაცული. დაგჭირდებათ, შეიყვანოთ უფრო გრძელი საკვანძო ფრაზა ყოველ ჯერზე, რამდენჯერაც კომპიუტერს ჩართავთ.';

  @override
  String get passphraseTypePinTileTitle => 'PIN-კოდის მოთხოვნა';

  @override
  String get passphraseTypePinTileSubTitle =>
      'უფრო დაცული. დაგჭირდებათ, შეიყვანოთ რიცხვითი PIN-კოდი ყოველ ჯერზე, როცა კომპიუტერს ჩართავთ.';

  @override
  String get passphraseTypeNoneTileTitle => 'დისკის ავტომატური განბლოკვა';

  @override
  String get passphraseTypePageHeader => 'დამატებითი უსაფრთხოება';

  @override
  String get passphraseTypePageBody =>
      'ნაგულისხმევად კომპიუტერის სანდო პლატფორმის მოდული (TPM) განბლოკავს დისკს კომპიუტერის ჩართვისას. ასევე გაქვთ არჩევანი, კიდევ უფრო მეტადაც კი დაიცვათ თქვენი მონაცემები.';

  @override
  String get passphrasePagePassphraseEntropyBelowMin =>
      'საკვანძო ფრაზა სუსტია. გახადეთ ის უფრო გრძელი და რთული';

  @override
  String get passphrasePagePassphraseEntropyBelowOptimal =>
      'მისაღები საკვანძო ფრაზა. დააგრძელეთ და გაართულეთ ის უკეთესი უსაფრთხოებისთვის';

  @override
  String get passphrasePagePassphraseEntropyOptimal => 'ძლიერი საკვანძო ფრაზა';

  @override
  String get passphrasePagePinEntropyBelowMin =>
      'სუსტი PIN-კოდი. გახადეთ ის უფრო გრძელი და რთულად ამოსაცნობი';

  @override
  String get passphrasePagePinEntropyBelowOptimal =>
      'მისაღები PIN-კოდი. დააგრძელეთ და გაართულეთ ის უკეთესი უსაფრთხოებისთვის';

  @override
  String get passphrasePagePinEntropyOptimal => 'PIN-კოდი საკმარისად გრძელია';

  @override
  String get installationTypeTitle => 'დისკის მორგება';

  @override
  String installationTypeHeader(String DISTRO) {
    return 'როგორ გნებავთ, $DISTRO დააყენოთ?';
  }

  @override
  String installationTypeOSDetected(String os) {
    return 'ამ კომპიუტერზე ახლა დაყენებულია $os. რა გნებავთ, ვქნა?';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return 'ამ კომპიუტერზე ამჟამად დაყენებულია $os1 და $os2. რა გნებავთ, ვქნა?';
  }

  @override
  String get installationTypeMultiOSDetected =>
      'ამ კომპიუტერზე ამჟამად ერთზე მეტი ოპერაციული სისტემა აყენია. რა გნებავთ, ვქნა?';

  @override
  String get installationTypeNoOSDetected =>
      'ამ კომპიუტერზე ამჟამად აღმოჩენადი სისტემა დადენილი არაა. რა გნებავთ, ვქნა?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'დისკის წაშლა და $DISTRO-ის დაყენება';
  }

  @override
  String get installationTypeEraseInfo =>
      'დისკის ყველა დანაყოფზე ყველა მონაცემი წაიშლება ოპერაციული სისტემების ჩათვლით.';

  @override
  String get installationTypeAdvancedLabel =>
      'დამატებითი პარამეტრების ჩვენება...';

  @override
  String get installationTypeAdvancedTitle => 'დაშიფვრა და ფაილური სისტემა';

  @override
  String get installationTypeExperimental => 'ექსპერიმენტული';

  @override
  String get installationTypeNone => 'დაშიფვრის გარეშე';

  @override
  String get installationTypeNoneInfo =>
      'სტანდარტული ფაილური სისტემა დაშიფვრის გარეშე.';

  @override
  String get installationTypeNoneSelected => 'არჩეული არაფერია';

  @override
  String get installationTypeLVM => 'LVM-ის გამოყენება დაშიფვრის გარეშე';

  @override
  String get installationTypeLVMSelected => 'არჩეულია LVM';

  @override
  String get installationTypeLVMEncryption => 'დაშიფვრა საკვანძო ფრაზით';

  @override
  String installationTypeLVMEncryptionInfoResolute(String advancedHint) {
    return 'You will need to enter a passphrase every time you turn on your computer. $advancedHint';
  }

  @override
  String get installationTypeLVMEncryptionInfo2 =>
      'This uses LVM with LUKS encryption.';

  @override
  String get installationTypeLVMEncryptionSelected =>
      'არჩეულია LVM და დაშიფვრა';

  @override
  String get installationTypeEncryptInfo =>
      'შემდეგ ნაბიჯზე უსაფრთხოების გასაღებს აირჩევთ.';

  @override
  String get installationTypeZFS => 'ZFS-ის გამოყენება დაშიფვრის გარეშე';

  @override
  String get installationTypeZFSEncryption =>
      'დაშიფვრა საკვანძო ფრაზით ZFS-ის გამოყენებით';

  @override
  String get installationTypeZFSEncryptionInfo =>
      'საკუთარი დაშიფვრა ZFS-თან ერთად. საკვანძო ფრაზის შეყვანა კომპიუტერის ყოველი ჩართვისას დაგჭირდებათ.';

  @override
  String get installationTypeZFSSelected => 'არჩეულია ZFS';

  @override
  String get installationTypeZFSEncryptionSelected =>
      'არჩეულია ZFS და დაშიფვრა';

  @override
  String get installationTypeTPM =>
      'აპარატურით მხარდაჭერილი დაშიფვრის გამოყენება';

  @override
  String get installationTypeTPMInfoResolute =>
      'The disk will unlock automatically during startup.';

  @override
  String get installationTypeTPMInfoUnavailable =>
      'Not available on this computer.';

  @override
  String get installationTypeTPMSelected => 'არჩეულია TPM';

  @override
  String installationTypeReinstall(String os) {
    return '$os-ის წაშლა და თავიდან დაყენება';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">გაფრთხილება:</font> ეს თქვენი $os-ის ყველა პროგრამას, დოკუმენტებს, სურათებს და ყველა სხვა ფაილს წაშლის.';
  }

  @override
  String installationTypeAlongside(String product, String os) {
    return '$product-ის დაყენება $os-ისთან ერთად';
  }

  @override
  String installationTypeAlongsideDual(String product, String os1, String os2) {
    return '$product-ის დაყენება $os1-სა და $os2-ისთან ერთად';
  }

  @override
  String installationTypeAlongsideMulti(String product) {
    return '$product-ის დაყენება არსებულ ოპერაციულ სისტემებთან ერთად';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return '$product-ის დაყენება სხვა დანაყოფების გვერდით';
  }

  @override
  String installationTypeAlongsideInfo(String product) {
    return 'აირჩიეთ დანაყოფი ზომის შესაცვლელად, ან შექმენით სივრცე $product-ისთვის. ოპერაციული სისტემის არჩევა ჩატვირთვის დროს შეგეძლებათ.';
  }

  @override
  String installationTypeEraseAndInstall(String os, String product) {
    return '$os-ის წაშლა და $product-ის დაყენება';
  }

  @override
  String installationTypeEraseAndInstallInfo(String os) {
    return 'არსებული $os-ის დაყენების დანაყოფებიდან ყველა ფაილი და მონაცემი სამუდამოდ წაიშლება.';
  }

  @override
  String get installationTypeManual => 'ხელით დაყენება';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'განვითარებული მომხმარებლებისთვის, რომლებსაც დისკის დაყოფის მორგება სურთ.';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'დისკის წაშლა და $DISTRO-ის დაყენება';
  }

  @override
  String get selectGuidedStorageInfo => 'დაიწყეთ ნულიდან არჩეულ დისკზე.';

  @override
  String get selectGuidedStorageDriveDropdownLabel => 'აირჩიეთ დისკი:';

  @override
  String get selectGuidedStoragePartitionDropdownLabel => 'აირჩიეთ დანაყოფი:';

  @override
  String get selectGuidedStorageInfoLabel => 'გამოყენებული იქნება მთელი დისკი:';

  @override
  String get selectGuidedStorageInstallNow => 'დაყენება ახლა';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return 'აირჩიეთ, სად გნებავთ $DISTRO-ის დაყენება';
  }

  @override
  String get installAlongsideSpaceDivider =>
      'გამოჰყავით დისკზე ადგილი ქვემოთ გამყოფის გადათრევით:';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return '$num პატარა დანაყოფი დამალულია. მართვის მეტი სადავის ხელში ასაღებად გამოიყენეთ <a href=\"$url\">დაყოფის დამატებითი პროგრამა</a>';
  }

  @override
  String get installAlongsideResizePartition => 'დანაყოფის ზომის შეცვლა';

  @override
  String get installAlongsideAllocateSpace => 'ადგილის გამოყოფა';

  @override
  String get installAlongsideFiles => 'ფაილები';

  @override
  String get installAlongsidePartition => 'დანაყოფი:';

  @override
  String get installAlongsideSize => 'ზომა:';

  @override
  String get installAlongsideAvailable => 'ხელმისაწვდომი:';

  @override
  String get allocateDiskSpace => 'ხელით დაყოფა';

  @override
  String get allocateDiskSpaceInvalidMountPointSlash =>
      'მიმაგრების წერტილები \"/\"-ით უნდა იწყებოდეს';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace =>
      'მიმაგრების წერტილები არ შეიძლება, ჰარეებს შეიცავდეს';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(
      String mountpoint, String format) {
    return '$format მხარდაჭერილი ფაილური სისტემა არაა მიმაგრების წერტილისთვის $mountpoint';
  }

  @override
  String get diskHeadersDevice => 'მოწყობილობა';

  @override
  String get diskHeadersType => 'ტიპი';

  @override
  String get diskHeadersMountPoint => 'მიმაგრების წერტილი';

  @override
  String get diskHeadersSize => 'ზომა';

  @override
  String get diskHeadersUsed => 'გამოყენებულია';

  @override
  String get diskHeadersSystem => 'სისტემა';

  @override
  String get diskHeadersFormat => 'ფორმატი';

  @override
  String get freeDiskSpace => 'თავისუფალი ადგილი';

  @override
  String get newPartitionTable => 'ახალი დანაყოფების ცხრილი';

  @override
  String get newPartitionTableConfirmationTitle => 'ახალი ცარიელი დანაყოფი';

  @override
  String get newPartitionTableConfirmationMessage =>
      'ახალი დანაყოფების ცხრილის შექმნა მთელ მოწყობილობაზე ზედ ამჟამად არსებულ ყველა დანაყოფს წაშლით. ეს ქმედება სურვილის შემთხვევაში დაბრუნებადია.';

  @override
  String get tooManyPrimaryPartitions => 'მეტისმეტად ბევრი ძირითადი დანაყოფი';

  @override
  String get partitionLimitReached => 'ზღვარი მიღწეულია';

  @override
  String get bootLoaderDevice => 'მოწყობილობა ჩამტვირთავის დასაყენებლად';

  @override
  String get partitionCreateTitle => 'დანაყოფის შექმნა';

  @override
  String get partitionEditTitle => 'დანაყოფის ჩასწორება';

  @override
  String get partitionSizeLabel => 'ზომა:';

  @override
  String get partitionTypeLabel => 'ტიპი ახალი დანაყოფისთვის:';

  @override
  String get partitionTypePrimary => 'ძირითადი';

  @override
  String get partitionTypeLogical => 'ლოგიკური';

  @override
  String get partitionLocationLabel => 'მდებარეობა ახალი დანაყოფისთვის:';

  @override
  String get partitionLocationBeginning => 'ამ სივრცის დასაწყისში';

  @override
  String get partitionLocationEnd => 'ამ ადგილის ბოლოში';

  @override
  String get partitionFormatLabel => 'გამოიყენება, როგორც:';

  @override
  String get partitionFormatNone => 'დაუფორმატებლად დატოვება';

  @override
  String partitionFormatKeep(String format) {
    return '$format-ის ფორმატში დატოვება';
  }

  @override
  String get partitionErase => 'დანაყოფის დაფორმატება';

  @override
  String get partitionMountPointLabel => 'მიმაგრების წერტილი:';

  @override
  String get confirmPageTitle => 'დაყენებისთვის მზადაა';

  @override
  String get confirmHeader => 'გადახედეთ თქენს არჩევანს';

  @override
  String get confirmDiskEncryptionLVM => 'LUKS (LVM)';

  @override
  String get confirmDiskEncryptionZFS => 'LUKS (ZFS)';

  @override
  String get confirmDiskEncryptionTPM => 'TPM';

  @override
  String get confirmDiskEncryptionNone => 'არცერთი';

  @override
  String get confirmDevicesTitle => 'მოწყობილობები';

  @override
  String get confirmEntryApplications => 'აპლიკაციები';

  @override
  String get confirmEntryDiskSetup => 'დაყენების ტიპი';

  @override
  String get confirmEntryDiskEncryption => 'დისკის დაშიფვრა';

  @override
  String get confirmEntryInstallationDisk => 'დაყენების დისკი';

  @override
  String get confirmEntryProprietarySoftware => 'ფასიანი პროგრამები';

  @override
  String get confirmSectionGeneralTitle => 'ზოგადი';

  @override
  String get confirmSectionSecurityAndMoreTitle => 'უსაფრთხოება & მეტი';

  @override
  String get confirmPartitionsTitle => 'დანაყოფები';

  @override
  String get confirmPartitionTables =>
      'შეიცვლება შემდეგი მოწყობილობების დანაყოფების ცხრილი:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmProprietarySoftwareCodecs => 'კოდეკები';

  @override
  String get confirmProprietarySoftwareCodecsDrivers =>
      'კოდეკები და დრაივერები';

  @override
  String get confirmProprietarySoftwareDrivers => 'დრაივერები';

  @override
  String get confirmInstallButton => 'დაყენება';

  @override
  String get confirmTableErased => 'წაშლილია';

  @override
  String get confirmTableUnchanged => 'უცვლელია';

  @override
  String confirmTableResized(String oldsize, String newsize) {
    return 'ზომა შეიცვალა $oldsize-დან $newsize-ზე';
  }

  @override
  String confirmTableCreatedFormattedMounted(String format, String mountpoint) {
    return 'შეიქმნა და დაფორმატდა, როგორც $format. გამოიყენება მიმაგრების წერტილისთვის $mountpoint';
  }

  @override
  String confirmTableFormattedMounted(String format, String mountpoint) {
    return 'დაფორმატებულია, როგორც $format. მიმაგრებულია საქაღალდეზე $mountpoint';
  }

  @override
  String confirmTableMounted(String mountpoint) {
    return 'გამოიყენება $mountpoint-ისთვის';
  }

  @override
  String confirmTableFormatted(String format) {
    return 'დაფორმატებულია, როგორც $format';
  }

  @override
  String get installationCompleteTitle => 'დაყენება დასრულდა';

  @override
  String readyToUse(String system) {
    return '$system დაყენებულია და მზადაა გამოსაყენებლად';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system** დაკოპირდა დისკზე';
  }

  @override
  String restartInto(String system) {
    return '$system-ში გადატვირთვა';
  }

  @override
  String get restartWarningBody =>
      'გადატვირთეთ დაყენების დასასრულებლად, ან გააგრძელეთ შემოწმება.\nცვლილებები, რომელსაც შეიტანთ, შენახული არ იქნება.';

  @override
  String get rebootToConfigureWarning =>
      'დაყენების პროცესის გასაგრძელებლად საჭიროა, გადატვირთოთ კომპიუტერი.';

  @override
  String get shutdown => 'გამორთვა';

  @override
  String get restartNow => 'გადატვირთვა ახლავე';

  @override
  String get continueTesting => 'შემოწმების გაგრძელება';

  @override
  String get bitlockerInfoTitle => 'აღმოჩენილია BitLocker';

  @override
  String get bitlockerInfoDescription =>
      'ერთი ან მეტი დანაყოფი დაშიფრულია BitLocker-ით.';

  @override
  String get bitlockerInfoDisable =>
      'Windows-თან ერთად დასაყენებლად გამორთეთ BitLocker Windows-ში.';

  @override
  String get bitlockerInfoRecovery =>
      'Windows-მა დაყენების შემდეგ გადატვირთვისას, შეიძლება, აღდგენის გასაღებები მოგთხოვოთ.';

  @override
  String bitlockerInfoInstructions(String url) {
    return 'ინსტრუქციებისთვის ეწვიეთ <a href=\"$url\">BitLocker-ის სახელმძღვანელოს</a>.';
  }

  @override
  String get bitlockerWarningTitle =>
      'BitLocker-ის აღდგენის გასაღებების გარეშე, შეიძლება, მონაცემები სულ დაკარგოთ';

  @override
  String get restartComputer => 'კომპიუტერის გადატვირთვა';

  @override
  String get restartComputerTitle => 'გადავტვირთო კომპიუტერი?';

  @override
  String get restartInstaller => 'Restart installer';

  @override
  String get restartIntoWindows => 'Windows-ში გადატვირთვა';

  @override
  String get restartIntoWindowsTitle => 'გადავიტვირთო Windows-ში?';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return 'მართლა გნებავთ თქვენი კომპიუტერის გადატვირთვა? $DISTRO-ის დაყენების დაწყება მოგვიანებით თავიდან მოგიწევთ $DISTRO-ის დაყენების დასასრულებლად.';
  }

  @override
  String installationSlidesTitle(String RELEASE) {
    return 'მოგესალმებათ $RELEASE';
  }

  @override
  String get installationSlidesAvailable => 'ხელმისაწვდომია:';

  @override
  String get installationSlidesIncluded => 'ჩასმულია:';

  @override
  String get installationSlidesWelcomeTitle =>
      'სწრაფი, უფასო და სავსე ახალი ფუნქციონალით';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return '$DISTRO-ის უკანასკნელი ვერსია კომპიუტერთან მუშაობას წარმოუდგენლად აადვილებს.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'თუ ბრძანდებით პროგრამისტი, ხელოვანი, გეიმერი, ან ადმინისტრატორი, თქვენ იპოვით ახალ პროგრამებს თქვენი პროდუქტიულობის გასაზრდელად და $RELEASE-ში გამოცდილების გასაღრმავებლად.';
  }

  @override
  String get installationSlidesSoftwareTitle =>
      'ყველა აპლიკაცია, რომელიც გჭირდებათ';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'დააყენეთ, მართეთ და განაახლეთ ყველა თქვენი აპი Ubuntu Software-ში ათასობით აპლიკაციის ჩათვლით ორივე, Snap Store-დან და $DISTRO-ის არქივიდან.';
  }

  @override
  String get installationSlidesDevelopmentTitle =>
      'წერეთ პროგრამები ღია კოდის საუკეთესო ნაწილით';

  @override
  String installationSlidesDevelopmentBody(String DISTRO, Object OS) {
    return '$DISTRO იდეალური სამუშაო ადგილია აპის ან ვების დასაწერად, მონაცემთა მეცნიერებისთვის, ხი/მს-ისთვის და devops/ადმინისტრატორებისთვის. ყოველ $DISTRO-ის რელიზი შეიცავს საუკეთესო ხელსაწყოებს და აქვს ყველა ძირითადი IDE-ის მხარდაჭერა.';
  }

  @override
  String get installationSlidesCreativityTitle =>
      'განავრცეთ თქვენი კრეატიულობა';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return 'თუ ბრძანდებით ანიმატორი, დიზაინერი, ქმნით ვიდეოებს, ან წერთ თამაშებს, თქვენი სამუშაოს გადმოტანა ადვილია $DISTRO-ზე ღია კოდის მქონე და სტანდარტული პროგრამებითა და აპლიკაციებით.';
  }

  @override
  String get installationSlidesGamingTitle => 'საუკეთესო თამაშებისთვის';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return '$DISTRO-ს აქვს უახლესი NVIDIA-ის და Mesa-ის დრაივერების მხარდაჭერა საუკეთესო წარმადობისა და თავსებადობის მისაღებად. ათასობით Windows-ის თამაში $DISTRO-ზე მუშაობს Steam-ით დამატებითი მოთხოვნების გარეშე.';
  }

  @override
  String get installationSlidesSecurityTitle => 'კონფიდენციალური და უსაფრთხო';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return '$DISTRO მოგაწვდოით ყველა პროგრამას, რომელიც ინტერნეტში კონფიდენციალურად და დაცულად სამუშაოდაა საჭირო. ჩაშენებული ქსელური ფარით, VPN-ის მხარდაჭერით და კონფიდენციალობის დამცველი პროგრამებით შეგიძლიათ, დარწმუნებული ბრძანდებოდეთ, რომ თქვენს მონაცემებს, მხოლოდ, თქვენ მართავთ.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return 'ყველა $DISTRO LTS გამოცემა მოდის ხუთწლიანი უსაფრთხოების პაჩებით და შეგიძლიათ მისი 10 წლამდე გაგრძელება Ubuntu pro გამოწერით.';
  }

  @override
  String get installationSlidesProductivityTitle =>
      'გააძლიერეთ თქვენი პროდუქტიულობა';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return '$DISTRO შეიცავს LibreOffice-ის. საოფისე პაკეტს, რომელიც თავსებადია Microsoft Office-ისთან დოკუმენტების, ელცხრილების და პრეზენტაციების შესაქმნელად. ასევე ხელმისაწვდომია კოლაბორაციის პოპულარული პროგრამები.';
  }

  @override
  String get installationSlidesAccessibilityTitle => 'წვდომა ყველასთვის';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return '$DISTRO-ის ფილოსოფიის გულში დევს რწმენა, რომ კომპიუტერები ყველასთვისაა. დამატებითი წვდომადობის პროგრამებით და არჩევნით, შეცვალოთ თქვენი ენა, ფერები და ტექსტის ზომა, $DISTRO კომპიუტერთან მუშაობას აადვილებს - ვინც და სადაც არ უნდა ბრძანდებოდეთ.';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'ეკრანის წამკითხავი Orca';

  @override
  String get installationSlidesAccessibilityLanguages => 'ენის მხარდაჭერა';

  @override
  String get installationSlidesSupportTitle => 'დახმარება და მხარდაჭერა';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return '$DISTRO-ის ოფიციალური დოკუმენტაცია ხელმისაწვდომია ორივეგან, ინტერნეტშიც და დახმარების ხატულათიც.';
  }

  @override
  String get installationSlidesSupportCommunity =>
      'Ak Ubuntu მოიცავს კითხვაპასუხის დიდ დიაპაზონს და Ubuntu Discourse მოგაწვდით სახელმძღვანელოებს და კამათის თემებს ახალი და გამოცდილი მომხმარებლებისთვის.';

  @override
  String get installationSlidesSupportEnterprise =>
      'კორპორატიული მომხმარებლებისთვის Canonical-ს ფასიანი მხარდაჭერა აქვს, რომ კომპანიაში Ubuntu-ზე გადართვა მისი მართვა პრობლემების გარეშე შეგეძლოთ.';

  @override
  String get installationSlidesSupportResources => 'სასარგებლო რესურსები:';

  @override
  String get installationSlidesSupportDocumentation =>
      'ოფიციალური დოკუმენტაცია';

  @override
  String get installationSlidesSupportUbuntuPro =>
      'კორპორატიული 24/7 მხარდაჭერა Ubuntu Pro-ისთან ერთად';

  @override
  String get nextSlideSemanticLabel => 'შემდეგი სლაიდი';

  @override
  String get previousSlideSemanticLabel => 'წინა სლაიდი';

  @override
  String get playSlideshowSemanticLabel => 'სლაიდშოუს დაკვრა';

  @override
  String get pauseSlideshowSemanticLabel => 'სლაიდშოუს პაუზა';

  @override
  String get toggleLogsSemanticLabel => 'დაყენების ჟურნალის გადართვა';

  @override
  String get copyingFiles => 'ფაილების კოპირება…';

  @override
  String get installingSystem => 'მიმდინარეობს სისტემის დაყენება…';

  @override
  String get configuringSystem => 'სისტემის მორგება.…';

  @override
  String get installationFailed => 'დაყენება ჩავარდა';

  @override
  String get notEnoughDiskSpaceTitle => 'დისკზე ადგილი საკმარისი არაა';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return '$DISTRO-ის დასაყენებლად დისკზე ადგილი საკმარისი არაა';
  }

  @override
  String notEnoughDiskSpaceBody(String DISTRO) {
    return 'არჩეულ დისკზე $DISTRO-ის დასაყენებლად დისკზე ადგილი საკმარისი არაა. გადით დაყენების პროგრამიდან და გაათავისუფლეთ ადგილი, ან სხვა დისკი აირჩიეთ.';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'ხელმისაწვდომია:';

  @override
  String get notEnoughDiskSpaceRequired => 'აუცილებელია:';

  @override
  String get refreshPageTitle => 'ხელმისაწვდომია განახლებები';

  @override
  String get refreshHeader =>
      'დაყენების პროგრამისთვის ხელმისაწვდომია განახლება';

  @override
  String get refreshUpdateNow => 'განახლება ახლა';

  @override
  String get refreshInfo =>
      'განახლდით უახლეს ვერსიამდე გაუმჯობესებული საიმედოობისთვის და მეტი შესაძლებლობებისთვის.';

  @override
  String get refreshReady => 'განახლება მზადაა';

  @override
  String refreshCurrent(String snap, String version) {
    return '$snap-ის მიმდინარე ვერსიაა $version.';
  }

  @override
  String refreshInstall(String version) {
    return '$version ვერსიამდე აწევა';
  }

  @override
  String refreshUpToDate(String version) {
    return 'მიმდინარე ვერსია $version უახლესია.';
  }

  @override
  String refreshUpdating(String snap) {
    return '$snap-ის განახლება...';
  }

  @override
  String get refreshRestart =>
      'გასაგრძელებლად აირჩიეთ დაყენების პროგრამა და გაუშვით ის თავიდან';

  @override
  String get refreshCloseLabel => 'დაყენების პროგრამის დახურვა';

  @override
  String refreshSnapPrerequisites(String snap) {
    return '$snap-ის მოთხოვნების გადამოწმება...';
  }

  @override
  String refreshSnapRefresh(String snap) {
    return '$snap-ის მონაცემების განახლება...';
  }

  @override
  String refreshSnapCheckRerefresh(String snap) {
    return '$snap-ის მონაცემების განახლების შემოწმება...';
  }

  @override
  String refreshSnapPrepare(String snap) {
    return '$snap-ის მომზადება...';
  }

  @override
  String refreshSnapDownload(String snap) {
    return '$snap-ის გადმოწერა...';
  }

  @override
  String refreshSnapValidate(String snap) {
    return '$snap-ის გადამოწმება...';
  }

  @override
  String refreshSnapMount(String snap) {
    return '$snap-ის მიმაგრება...';
  }

  @override
  String refreshSnapStopServices(String snap) {
    return '$snap-ის სერვისების გაჩერება...';
  }

  @override
  String refreshSnapRemoveAliases(String snap) {
    return '$snap-ის ფსევდონიმების წაშლა...';
  }

  @override
  String refreshSnapUnlink(String snap) {
    return '$snap-ის მოხსნა...';
  }

  @override
  String refreshSnapUpdateAssets(String snap) {
    return '$snap-ის მონაცემების განახლება...';
  }

  @override
  String refreshSnapUpdateKernelCommandLine(String snap) {
    return '$snap-ის ბირთვის ბრძანების სტრიქონის განახლება...';
  }

  @override
  String refreshSnapCopyData(String snap) {
    return '$snap-ის მონაცემების კოპირება...';
  }

  @override
  String refreshSnapSetupProfiles(String snap) {
    return '$snap-ის უსაფრთხოების პროფილების მორგება...';
  }

  @override
  String refreshSnapLink(String snap) {
    return '$snap-ის მიერთება...';
  }

  @override
  String refreshSnapAutoConnect(String snap) {
    return '$snap-ის კაუჭებისა და სლოტების დაკავშირება...';
  }

  @override
  String refreshSnapSetAutoAliases(String snap) {
    return '$snap-ის ავტომატური ფსევდონიმების დაყენება...';
  }

  @override
  String refreshSnapSetupAliases(String snap) {
    return '$snap-ის ფსევდონიმების მორგება...';
  }

  @override
  String refreshSnapStartServices(String snap) {
    return '$snap-ის სერვისების გაშვება...';
  }

  @override
  String refreshSnapCleanup(String snap) {
    return '$snap-ის მოსუფთავება...';
  }

  @override
  String get recoveryKeyTitle => 'აღდგენის გასაღები';

  @override
  String get recoveryKeyTitleBadgeLabel => 'მნიშვნელოვანი';

  @override
  String get recoveryKeyHeader => 'თქვენი აღდგენის გასაღების შენახვა';

  @override
  String get recoveryKeyInfoHeader =>
      'აღდგენის გასაღების გარეშე შეიძლება, თქვენი მონაცემები მთლიანად დაკარგოთ';

  @override
  String get recoveryKeyTextFieldLabel => 'აღდგენის გასაღები';

  @override
  String get recoveryKeyStorageAdvice =>
      'თუ გაშვებისას გაშიფვრა ვერ მოხერხდება, დაგჭირდებათ, ეს გასაღები შეიყვანოთ. ამ გასაღების გარეშე თქვენს მონაცემებთან წვდომას სრულად დაკარგავთ. შეინახეთ ის სადმე სანდო ადგილას, მაგალითად - პაროლების მმართველში.';

  @override
  String get recoveryKeyConfirmation =>
      'მე შევინახე აღდგენის გასაღები უსაფრთხო ადგილას';

  @override
  String get recoveryKeyLinkLabel => 'გაიგეთ მეტი';

  @override
  String get recoveryKeySaveToFileLabel => 'შენახვა ფაილში';

  @override
  String get recoveryKeyShowQrCodeLabel => 'QR კოდის ჩვენება';

  @override
  String recoveryKeyQrDialogTitle(String DISTRO) {
    return '$DISTRO Desktop - აღდგენის გასაღები';
  }

  @override
  String get recoveryKeyQrDialogBody =>
      'დაასკანერეთ QR კოდი აღდგენის გასაღებების დასაკოპირებლად და შეინახეთ ის სადმე უსაფრთხო ადგილად, მაგ: პაროლების მმართველში. ასევე შეგიძლიათ, სურათი გადაუღოთ.';

  @override
  String get recoveryKeyClipboardNotifiaction => 'დაკოპირდა ბუფერში';

  @override
  String get recoveryKeyExceptionFileSystemTitle =>
      'აღდგენის გასაღების ფაილი შენახული არაა';

  @override
  String get recoveryKeyExceptionDisallowedPathTitle =>
      'აღდგენის გასაღების ფაილს დროებით ადგილას ვერ შეინახავთ';

  @override
  String get recoveryKeyExceptionUnknownTitle => 'უცნობი შეცდომა';

  @override
  String get recoveryKeyExceptionFileSystemBody =>
      'თქვენ არ გაქვთ იმ საქაღალდეში ჩაწერის უფლება. სცადეთ სხვა მდებარეობა, ან გამოიყენეთ სხვა მეთოდი.';

  @override
  String get recoveryKeyExceptionDisallowedPathBody =>
      'სცადეთ სხვა მდებარეობა. მაგალითად: მოხსნადი დისკი, ან გამოიყენეთ სხვა მეთოდი.';

  @override
  String get recoveryKeyFilePickerTitle => 'აღდგენის გასაღების ფაილის შენახვა';

  @override
  String get recoveryKeyFilePickerFilter => 'ტექსტური ფაილები';

  @override
  String landscapeMagicAttachInstructions(String url) {
    return 'დაასკანერეთ QR კოდი, ან შეიყვანეთ კოდი ბმულზე <a href=\"https://$url\">$url</a>';
  }

  @override
  String get landscapePageTitle => 'ავტომატური დაყენება';

  @override
  String get landscapeHeader => 'Landscape-ში შეცვლა';

  @override
  String get landscapeDomainHeader => 'შეიყვანეთ Landscape-ის დომენი (FQDN)';

  @override
  String get landscapeDomainHintText => 'Laandscape-ის დომენი (FQDN)';

  @override
  String get landscapeDomainInstructions =>
      'შეიყვანეთ თქვენი ორგანიზაციის Landscape-ის დომენი, რომ შეხვიდეთ და გადმოწეროთ ავტოდაყენების ფაილი. FQDN-ის მიღება თქვენი IT მხარდაჭერის გუნდისგან შეგიძლიათ.';

  @override
  String get landscapeDomainTextField => 'Landscape-ის დომენი (FQDN)';

  @override
  String get next => 'შემდეგი';

  @override
  String get landscapeDomainInvalidDomainWarning =>
      'დომენი არასწორია. შეამოწმეთ ის, ან დაუკავშირდით IT მხარდაჭერის გუნდს';

  @override
  String get landscapeDomainNoInternetTitleWarning =>
      'გასაგრძელებლად დაუკავშირდით ინტერნეტს';

  @override
  String get landscapeDomainNoInternetDescriptionWarning =>
      'Landscape-დან ავტოდაყენების ფაილის გამოსათხოვად ინტერნეტი აუცილებელია';

  @override
  String get landscapeCodeExpiredWarning =>
      'კოდის ვადა ამოიწურა. თავიდან სცადეთ';

  @override
  String get landscapeLoginFailedWarning => 'შესვლა ჩავარდა. თავიდან სცადეთ';

  @override
  String get landscapeErrorPageTitle =>
      'თქვენი ანგარიშისთვის ავტომატური დაყენება ხელმისაწვდომი არაა';

  @override
  String get landscapeErrorPageBody =>
      'დაუკავშირდით თქვენი IT მხარდაჭერის გუნდს, ან სცადეთ სხვა დაყენების ვარიანტი.';

  @override
  String landscapeErrorPageCode(String code) {
    return 'შეცდომის კოდი: $code';
  }

  @override
  String get landscapeConfirmPageSuccessInfoTitle =>
      'Ubuntu-ის დაყენება თქვენი ორგანიზაციის მიერ მოწოდებული კონფიგურაციით მოხდება';

  @override
  String get landscapeConfirmPageSuccessInfoContent =>
      'Landscape-დან შემოტანილი ავტოდაყენების ფაილის გადახედვა ქვემოთ შეგიძლიათ.';

  @override
  String get successIconSemanticLabel => 'წარმატება';

  @override
  String get errorIconSemanticLabel => 'შეცდომა';

  @override
  String get closeIconSemanticLabel => 'დახურვა';

  @override
  String get maximizeIconSemanticLabel => 'გაშლა მთელ ეკრანზე';

  @override
  String get minimizeIconSemanticLabel => 'ჩაკეცვა';

  @override
  String get tpmActionPageTitle => 'აპარატურით მხარდაჭერილი დაშიფვრა';

  @override
  String get tpmActionBadgeLabel => 'საჭიროა ქმედება';

  @override
  String get tpmActionDetailsLabel => 'ტექნიკური დეტალები';

  @override
  String get tpmActionConfirmLabel => 'დადასტურება';

  @override
  String tpmActionSolutionLabel(int n, String text) {
    return 'Solution $n: $text';
  }

  @override
  String tpmActionSingleSolutionLabel(String text) {
    return 'Solution: $text';
  }

  @override
  String get tpmActionDocumentationLinkLabel =>
      'Learn more about hardware-backed encryption';

  @override
  String get tpmActionErrorSupportLabel =>
      'Try the solutions below, contact IT support, or choose a different encryption method.';

  @override
  String get tpmActionErrorSupportSingleLabel =>
      'Try the solution below, contact IT support, or choose a different encryption method.';

  @override
  String get tpmActionErrorSupportNoActionLabel =>
      'Contact IT support, or choose a different encryption method.';

  @override
  String get tpmActionErrorKindInternal => 'შიდა';

  @override
  String get tpmActionErrorKindShutdownRequired => 'საჭიროა გამორთვა';

  @override
  String get tpmActionErrorKindRebootRequired => 'საჭიროა გადატვირთვა';

  @override
  String get tpmActionErrorKindUnexpectedAction => 'მოულოდნელი ქმედება';

  @override
  String get tpmActionErrorKindMissingArgument => 'ნაკლული არგუმენტი';

  @override
  String get tpmActionErrorKindInvalidArgument => 'არასწორი არგუმენტი';

  @override
  String get tpmActionErrorKindActionFailed => 'ქმედება ჩავარდა';

  @override
  String get tpmActionErrorKindRunningInVm => 'გაშვებულია ვმ-ში';

  @override
  String get tpmActionErrorKindSystemNotEfi => 'სისტემაში EFI ჩართული არაა';

  @override
  String get tpmActionErrorKindEfiVariableAccess => 'წვდომა EFI-ის ცვლადებთან';

  @override
  String get tpmActionErrorKindNoSuitableTpm2Device =>
      'შესაბამისი TPM2 მოწყობილობის გარეშე';

  @override
  String get tpmActionErrorKindTpmDeviceDisabled =>
      'TPM-ის მოწყობილობა გამორთულია';

  @override
  String get tpmActionErrorKindTpmHierarchiesOwned =>
      'TPM-ის საკუთარი იერარქია';

  @override
  String get tpmActionErrorKindTpmDeviceLockoutLockedOut =>
      'TPM მოწყობილობის დაბლოკვა დაბლოკილია';

  @override
  String get tpmActionErrorKindInsufficientTpmStorage =>
      'არასაკმარისი TPM-ის საცავი';

  @override
  String get tpmActionErrorKindUnsupportedPlatform => 'მხარდაუჭერელი პლატფორმა';

  @override
  String get tpmActionErrorKindUefiDebuggingEnabled =>
      'UEFI-ის გამართვა ჩართულია';

  @override
  String get tpmActionErrorKindInsufficientDmaProtection =>
      'არასაკმარისი DMA-ის დაცვა';

  @override
  String get tpmActionErrorKindNoKernelIommu => 'ბირთვის IOMMU-ის გარეშე';

  @override
  String get tpmActionErrorKindHostSecurity => 'ჰოსტის უსაფრთხოება';

  @override
  String get tpmActionErrorKindSysPrepApplicationsPresent =>
      'აღმოჩენილია სისტემის მომზადების აპლიკაციები';

  @override
  String get tpmActionErrorKindAbsolutePresent =>
      'აბსოლუტური მნიშვნელობა არსებობს';

  @override
  String get tpmActionErrorKindInvalidSecureBootMode =>
      'არასწორი SecureBoot-ის რეჟიმი';

  @override
  String get tpmActionErrorKindWeakSecureBootAlgorithmDetected =>
      'აღმოჩენილია SecureBoot-ის სუსტი ალგორითმი';

  @override
  String get tpmActionErrorKindPreOsSecureBootAuthByEnrolledDigests =>
      'This computer is using a manual allowlist to verify software at startup.';

  @override
  String get tpmActionErrorKindAddonDriversPresent =>
      'Add-on drivers are present.';

  @override
  String get tpmActionErrorKindGenericTpm =>
      'There is an issue with this computer\'s TPM.';

  @override
  String get tpmActionErrorKindGenericFirmware =>
      'There is an issue with this computer\'s firmware.';

  @override
  String get tpmActionFixActionReboot => 'გადატვირთვა';

  @override
  String get tpmActionFixActionShutdown => 'გამორთვა';

  @override
  String get tpmActionFixActionRebootToFwSettings =>
      'გადატვირთვა მიკროკოდის მორგებაზე';

  @override
  String get tpmActionFixActionRebootToFwSettingsInstructions =>
      'If firmware settings do not load automatically, restart and press the settings key repeatedly during startup (commonly F2, F10 or Delete).';

  @override
  String get tpmActionFixActionRebootToFwSettingsInsufficientDmaProtection =>
      'Enable DMA protection manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsInsufficientTpmStorage =>
      'Clear TPM manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsInvalidSecureBootMode =>
      'Enable secure boot manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsNoKernelIommu =>
      'Enable IOMMU manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsNoSuitablePcrBank =>
      'Enable PCR banks manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmDeviceDisabled =>
      'Enable TPM manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmDeviceLockoutLockedOut =>
      'Clear TPM manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmHierarchiesOwned =>
      'Clear TPM manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsAbsolutePresent =>
      'Disable Absolute Persistence Module manually';

  @override
  String get tpmActionFixActionContactOem => 'კავშირი OEM-თან';

  @override
  String get tpmActionFixActionContactOsVendor =>
      'დაკავშირება ოს-ის მომწოდებელთან';

  @override
  String get tpmActionFixActionEnableTpmViaFirmware =>
      'TPM-ის ჩართვა მიკროკოდიდან';

  @override
  String get tpmActionFixActionEnableAndClearTpmViaFirmware =>
      'TPM-ის ჩართვა და გასუფთავება მიკროკოდიდან';

  @override
  String get tpmActionFixActionClearTpmViaFirmware =>
      'TPM-ის გასუფთავება მიკროკოდიდან';

  @override
  String get tpmActionFixActionClearTpm => 'TPM-ის გასუფთავება';

  @override
  String get tpmActionFixActionProceed => 'გაგრძელება';

  @override
  String get tpmActionFixActionRebootDescription =>
      'Restart the computer to complete previous actions.';

  @override
  String get tpmActionFixActionRebootTpmDeviceFailureDescription =>
      'Restarting the computer may fix the issue.';

  @override
  String get tpmActionFixActionShutdownDescription =>
      'Power off the computer to complete previous actions.';

  @override
  String get tpmActionFixActionRebootToFwSettingsDescription =>
      'You can do this in your computer\'s firmware settings.';

  @override
  String get tpmActionFixActionRebootToFwSettingsWithDocsDescription =>
      'You might be able to do this in your computer\'s firmware settings. Check the documentation of the CPU vendor for guidance.';

  @override
  String get tpmActionFixActionRebootToFwSettingsInvalidSecureBootModeHint =>
      'Check secure boot mode is set to \"deployed\".';

  @override
  String get tpmActionFixActionRebootToFwSettingsNoKernelIommuHint =>
      'This feature might be referred to as \"Virtualization Technology\", \"VT-d\" or \"AMD-Vi\".';

  @override
  String get tpmActionFixActionProceedDescription =>
      'Ignoring this issue might result in a less secure installation.';

  @override
  String get tpmActionRestartLabel => 'Restart';

  @override
  String get tpmActionRestartAndEnableTpmLabel => 'Restart and enable TPM';

  @override
  String get tpmActionRestartAndClearTpmLabel => 'Restart and clear TPM';

  @override
  String get tpmActionIgnoreAndContinueLabel => 'Ignore and continue';

  @override
  String get tpmActionFixActionClearTpmWarningTitle =>
      'Clearing the TPM erases all encryption keys';

  @override
  String get tpmActionFixActionClearTpmWarningBody =>
      'You will lose access to all data in encrypted drives for which you do not have recovery keys. It will also break other features that depend on the TPM, such as authentication and certificates.';

  @override
  String get tpmActionFixActionClearTpmConfirmationLabel =>
      'I understand the consequences of clearing the TPM';

  @override
  String get tpmActionFixActionCaveatConfirm =>
      'You might be asked to confirm this action on restart.';

  @override
  String get tpmActionFixActionCaveatRetry =>
      'Then you will need to start the installation again.';

  @override
  String get tpmActionErrorTitle => 'This solution failed';

  @override
  String get tpmActionErrorDescription =>
      'Try a different solution or contact IT support.';

  @override
  String get manualPartitioningWarningBody =>
      'Try something else. You may also <a href=\"\">send an error report</a>.';
}
