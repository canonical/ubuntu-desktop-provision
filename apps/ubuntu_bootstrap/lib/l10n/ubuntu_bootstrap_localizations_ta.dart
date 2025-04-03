import 'ubuntu_bootstrap_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class UbuntuBootstrapLocalizationsTa extends UbuntuBootstrapLocalizations {
  UbuntuBootstrapLocalizationsTa([String locale = 'ta']) : super(locale);

  @override
  String get appTitle => 'உபுண்டு டெச்க்டாப் நிறுவி';

  @override
  String windowTitle(String RELEASE) {
    return 'நிறுவு$RELEASE';
  }

  @override
  String get autoinstallDirectTitle => 'தானியங்கு நிறுவல்';

  @override
  String get autoinstallDirectHeader => 'ஆட்டோஇன்ச்டால் கோப்பை இறக்குமதி செய்க';

  @override
  String get autoinstallDirectUrlLabel => 'ஆட்டோஇன்ச்டால் கோப்பின் முகவரி ஐ உள்ளிடலாம்:';

  @override
  String get autoinstallDirectFileLabel => 'அல்லது உள்ளக கோப்பைத் தேர்ந்தெடுக்கவும்:';

  @override
  String get autoinstallDirectFileButtonLabel => 'கோப்பைத் தேர்ந்தெடுக்கவும் ...';

  @override
  String get autoinstallDirectFileClearButtonLabel => 'கோப்பை அழிக்கவும்';

  @override
  String get autoinstallDirectFilePickerTitle => 'கோப்பைத் தேர்வுசெய்க';

  @override
  String get autoinstallDirectFilePickerFilterLabel => 'யாம்எல் கோப்புகள்';

  @override
  String get autoinstallDirectImportButtonLabel => 'இறக்குமதி';

  @override
  String get autoinstallDirectErrorNetworkTitle => 'ஆட்டோஇன்ச்டால் கோப்பு அடைய முடியாது';

  @override
  String get autoinstallDirectErrorNetworkBody => 'முகவரி சரியானது என்பதை சரிபார்க்கவும், உங்கள் இணைய இணைப்பை சோதிக்கவும் அல்லது பின்னர் முயற்சிக்கவும்.';

  @override
  String get autoinstallDirectErrorInvalidUrlTitle => 'தவறான முகவரி';

  @override
  String get autoinstallDirectErrorInvalidUrlBody => 'முகவரி சரியானது என்பதை சரிபார்க்கவும் அல்லது உள்ளக கோப்பைத் தேர்ந்தெடுக்கவும்.';

  @override
  String get autoinstallDirectErrorInvalidContentTitle => 'தவறான ஆட்டோஇன்ச்டால் கோப்பு';

  @override
  String get autoinstallDirectErrorInvalidContentBody => 'கோப்பைச் சரிபார்க்கவும் அல்லது வேறு ஒன்றை வழங்கவும்.';

  @override
  String get autoinstallDirectErrorFileSystemTitle => 'ஆட்டோஇன்ச்டால் கோப்பு படிக்க முடியாது';

  @override
  String get autoinstallDirectErrorFileSystemBody => 'உங்கள் அனுமதிகளை சரிபார்க்கவும் அல்லது வேறு கோப்பை வழங்கவும்.';

  @override
  String get autoinstallDirectErrorUnkownTitle => 'தெரியாத பிழை';

  @override
  String get autoinstallTitle => 'நிறுவல் வகை';

  @override
  String autoinstallHeader(String DISTRO) {
    return '$DISTRO ஐ எவ்வாறு நிறுவ விரும்புகிறீர்கள்?';
  }

  @override
  String get autoinstallInstructions => 'AutoInstall.yaml முகவரி அல்லது உள்ளக கோப்பு பாதையை உள்ளிடவும்:';

  @override
  String get autoinstallInteractiveOption => 'ஊடாடும் நிறுவல்';

  @override
  String get autoinstallInteractiveDescription => 'நிறுவலின் மூலம் படிப்படியாக வழிநடத்த விரும்பும் பயனர்களுக்கு.';

  @override
  String get autoinstallDirectOption => 'ஆட்டோஇன்ச்டால் கோப்புடன் தானியங்கி';

  @override
  String get autoinstallDirectDescription => 'நிலையான மற்றும் மீண்டும் மீண்டும் செய்யக்கூடிய கணினி அமைப்புகளுக்கு ஆட்டோஇன்ச்டால்.யாம்லைக் கொண்ட மேம்பட்ட பயனர்களுக்கு.';

  @override
  String get autoinstallLandscapeOption => 'நிலப்பரப்புடன் தானியங்கி';

  @override
  String get autoinstallLandscapeDescription => 'நிலப்பரப்பு வழியாக ஆட்டோஇன்ச்டால் கோப்பை வழங்கும் நிறுவனங்களில் உள்ள பயனர்களுக்கு.';

  @override
  String get changeButtonText => 'மாற்று';

  @override
  String get quitButtonText => 'நிறுவலை விட்டு';

  @override
  String loadingPageTitle(String DISTRO) {
    return 'Welcome to $DISTRO';
  }

  @override
  String loadingHeader(String DISTRO) {
    return '$DISTRO…';
  }

  @override
  String get warningLabel => 'எச்சரிக்கை:';

  @override
  String tryOrInstallTitle(String DISTRO) {
    return 'Try or install $DISTRO';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return '$DISTRO உடன் நீங்கள் என்ன செய்ய விரும்புகிறீர்கள்?';
  }

  @override
  String get tryOrInstallRepairOption => 'நிறுவலை பழுதுபார்';

  @override
  String get tryOrInstallRepairDescription => 'பழுதுபார்ப்பு ஆவணங்கள் அல்லது அமைப்புகளைத் தொடாமல் நிறுவப்பட்ட அனைத்து மென்பொருளையும் மீண்டும் நிறுவும்.';

  @override
  String tryOption(String RELEASE) {
    return 'சோதி $RELEASE';
  }

  @override
  String tryDescription(String RELEASE) {
    return 'உங்கள் கணினியில் எந்த மாற்றமும் செய்யாமல் $RELEASEஐ சோதிக்கலாம்.';
  }

  @override
  String installOption(String RELEASE) {
    return 'நிறுவு$RELEASE';
  }

  @override
  String installDescription(String RELEASE) {
    return 'உங்கள் தற்போதைய இயக்க முறைமையுடன் (அல்லது அதற்கு பதிலாக) $RELEASE ஐ நிறுவவும். இது அதிக நேரம் எடுக்கக்கூடாது.';
  }

  @override
  String tryOrInstallReleaseNotesLabel(String url) {
    return 'நீங்கள் <a href = \"$url\"> வெளியீட்டு குறிப்புகள் </a> ஐப் படிக்க விரும்பலாம்.';
  }

  @override
  String get rstTitle => 'RSTயை முடக்கு';

  @override
  String get rstHeader => 'நிறுவலைத் தொடர நீங்கள் RST ஐ முடக்க வேண்டும்';

  @override
  String get rstDisable => 'உங்கள் கணினி இன்டெல் ஆர்எச்டி (விரைவான சேமிப்பக தொழில்நுட்பம்) பயன்படுத்துகிறது. நீங்கள் rst ஐ முடக்கலாம்:';

  @override
  String get rstDisableWindows => 'சாளரங்கள், நீங்கள் விண்டோசுடன் இரட்டை துவக்க அமைப்பைப் பயன்படுத்துகிறீர்கள் என்றால்';

  @override
  String get rstDisableBios => 'பயாச் அமைப்புகள்';

  @override
  String rstInstructions(String url) {
    return 'வழிமுறைகளுக்கு, QR குறியீட்டை மற்றொரு சாதனத்தில் ச்கேன் செய்யுங்கள் அல்லது பார்வையிடவும்: <a href = \"https: // $url\"> $url </a>';
  }

  @override
  String get configureSecureBootTitle => 'பாதுகாப்பான துவக்கத்தை உள்ளமைக்கவும்';

  @override
  String get configureSecureBootDescription => 'மூன்றாம் தரப்பு இயக்கி மென்பொருளை நிறுவ நீங்கள் தேர்ந்தெடுத்துள்ளீர்கள். இதற்கு பாதுகாப்பான துவக்கத்தை அணைக்க வேண்டும்.\n இதைச் செய்ய, நீங்கள் இப்போது ஒரு பாதுகாப்பு விசையைத் தேர்வு செய்ய வேண்டும், மேலும் கணினி மறுதொடக்கம் செய்யும்போது அதை உள்ளிடவும்.';

  @override
  String get configureSecureBootOption => 'பாதுகாப்பான துவக்கத்தை உள்ளமைக்கவும்';

  @override
  String get chooseSecurityKey => 'பாதுகாப்பு விசையைத் தேர்வுசெய்க';

  @override
  String get confirmSecurityKey => 'பாதுகாப்பு விசையை உறுதிப்படுத்தவும்';

  @override
  String get dontInstallDriverSoftwareNow => 'இப்போது இயக்கி மென்பொருளை நிறுவ வேண்டாம்';

  @override
  String get dontInstallDriverSoftwareNowDescription => 'மென்பொருள் மற்றும் புதுப்பிப்புகளிலிருந்து அதை பின்னர் நிறுவலாம்.';

  @override
  String get configureSecureBootSecurityKeyRequired => 'பாதுகாப்பு விசை தேவை';

  @override
  String get secureBootSecurityKeysDontMatch => 'பாதுகாப்பு விசைகள் பொருந்தவில்லை';

  @override
  String get showSecurityKey => 'காட்டு';

  @override
  String get hideSecurityKey => 'மறை';

  @override
  String get updatesOtherSoftwarePageTitle => 'பயன்பாடுகள்';

  @override
  String get updatesOtherSoftwarePageDescription => 'தொடங்க என்ன பயன்பாடுகளை நிறுவ விரும்புகிறீர்கள்?';

  @override
  String get codecsAndDriversPageTitle => 'உங்கள் கணினியை மேம்படுத்தவும்';

  @override
  String get codecsAndDriversPageDescription => 'பரிந்துரைக்கப்பட்ட தனியுரிம மென்பொருளை நிறுவவா?';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return '$DISTRO முன்னிருப்பாக தனியுரிம மென்பொருள் இல்லாத கப்பல்கள். கூடுதல் மென்பொருளை நிறுவுவது உங்கள் கணினியின் செயல்திறனை மேம்படுத்தலாம்.';
  }

  @override
  String get codecsAndDriversNvidiaNote => 'என்விடியா கிராபிக்ச் அட்டை கண்டறியப்பட்டது';

  @override
  String get codecsAndDriversNvidiaBody => 'என்விடியா கிராஃபிக் கார்டுகளின் சிறந்த செயல்திறனுக்காக, கூடுதல் இயக்கிகளை நிறுவுவது கடுமையாக பரிந்துரைக்கப்படுகிறது.';

  @override
  String get fullInstallationTitle => 'நீட்டிக்கப்பட்ட தேர்வு';

  @override
  String get fullInstallationSubtitle => 'அலுவலக கருவிகள், பயன்பாடுகள் மற்றும் வலை உலாவியின் இணைப்பில்லாத நட்பு தேர்வு.';

  @override
  String get minimalInstallationTitle => 'இயல்புநிலை தேர்வு';

  @override
  String get minimalInstallationSubtitle => 'அத்தியாவசியங்கள், வலை உலாவி மற்றும் அடிப்படை பயன்பாடுகள்.';

  @override
  String get otherOptions => 'பிற விருப்பங்கள்';

  @override
  String get installThirdPartyTitle => 'கிராபிக்ச் மற்றும் வைஃபை வன்பொருள் மற்றும் கூடுதல் ஊடக வடிவங்களுக்காக மூன்றாம் தரப்பு மென்பொருளை நிறுவவும்';

  @override
  String get installThirdPartySubtitle => 'இந்த மென்பொருள் அதன் ஆவணங்களுடன் சேர்க்கப்பட்ட உரிம விதிமுறைகளுக்கு உட்பட்டது. சில தனியுரிமமானவை.';

  @override
  String get installDriversTitle => 'கிராபிக்ச் மற்றும் வைஃபை வன்பொருளுக்காக மூன்றாம் தரப்பு மென்பொருளை நிறுவவும்';

  @override
  String get installDriversSubtitle => 'என்விடியா டிரைவர்கள் மற்றும் ஒத்ததாக இல்லை';

  @override
  String get installCodecsTitle => 'கூடுதல் ஊடக வடிவங்களுக்கான ஆதரவைப் பதிவிறக்கி நிறுவவும்';

  @override
  String get installCodecsSubtitle => 'எம்பி 3, எம்பி 4, மூவ் மற்றும் ஒத்ததாக இல்லை';

  @override
  String get batteryWarning => 'கணினி ஒரு ஆற்றல் மூலத்தில் செருகப்படவில்லை.';

  @override
  String get offlineWarning => 'நீங்கள் தற்போது ஆஃப்லைனில் இருக்கிறீர்கள்';

  @override
  String get choosePassphraseTitle => 'வட்டு கடவுச்சொல்';

  @override
  String get choosePassphraseHeader => 'ஒரு கடவுச்சொல்லை உருவாக்கவும்';

  @override
  String get choosePassphraseBody => 'உங்கள் கோப்புகளை குறியாக்க உங்களுக்கு ஒரு கடவுச்சொல் தேவை. உங்கள் கணினியை இயக்கும் ஒவ்வொரு முறையும் உங்கள் கடவுச்சொற்றுக்கு கேட்கப்படுவீர்கள்.';

  @override
  String get choosePassphraseHint => 'கடவுச்சொற்றைத் தேர்வுசெய்க';

  @override
  String get choosePassphraseConfirmHint => 'பாச்ஃபிரேசை உறுதிப்படுத்தவும்';

  @override
  String get choosePassphraseRequired => 'ஒரு கடவுச்சொல் தேவை';

  @override
  String get choosePassphraseMismatch => 'கடவுச்சொற்கள் பொருந்தவில்லை';

  @override
  String get choosePassphraseInfoHeader => 'உங்கள் கடவுச்சொல் எங்காவது பாதுகாப்பாக சேமிக்கவும்';

  @override
  String get choosePassphraseInfoBody => 'உங்கள் கடவுச்சொல் இழந்தால், உங்கள் எல்லா தரவையும் இழப்பீர்கள்.';

  @override
  String get chooseOptionalPassphraseHeader => 'ஒரு கடவுச்சொற்றொடரை உருவாக்கவும் (விரும்பினால்)';

  @override
  String get chooseOptionalPassphraseBody => 'உங்கள் வன்பொருள் வேறுபாடின்மை செய்யப்பட்டாலும் உங்கள் தரவைப் பாதுகாக்க ஒரு கடவுச்சொல் உதவும். உங்கள் கணினியை இயக்கும் ஒவ்வொரு முறையும் நீங்கள் பாச்ஃபிரேசை உள்ளிட வேண்டும். நீங்கள் அதை பின்னர் அகற்ற முடியாது';

  @override
  String get chooseOptionalPassphraseInfoHeader => 'உங்கள் கடவுச்சொல் மற்றும் மீட்பு விசையை எங்காவது பாதுகாப்பாக சேமிக்கவும்';

  @override
  String get chooseOptionalPassphraseInfoBody => 'உங்கள் கடவுச்சொல் இழந்தால், உங்கள் எல்லா தரவையும் இழப்பீர்கள். பாச்ஃபிரேச் மீட்பு விசை அல்லது உங்கள் பயனர் கடவுச்சொல்லை மாற்றாது.';

  @override
  String get createPassphrase => 'ஒரு கடவுச்சொல்லை உருவாக்கவும்';

  @override
  String get confirmPassphrase => 'பாச்ஃபிரேசை உறுதிப்படுத்தவும்';

  @override
  String get installationTypeTitle => 'நிறுவல் வகை';

  @override
  String installationTypeHeader(String DISTRO) {
    return '$DISTRO ஐ எவ்வாறு நிறுவ விரும்புகிறீர்கள்?';
  }

  @override
  String installationTypeOSDetected(String os) {
    return 'இந்த கணினி தற்போது அதில் $os உள்ளது. நீங்கள் என்ன செய்ய விரும்புகிறீர்கள்?';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return 'இந்த கணினி தற்போது அதில் $os1 மற்றும் $os2 உள்ளது. நீங்கள் என்ன செய்ய விரும்புகிறீர்கள்?';
  }

  @override
  String get installationTypeMultiOSDetected => 'இந்த கணினி தற்போது பல இயக்க முறைமைகளைக் கொண்டுள்ளது. நீங்கள் என்ன செய்ய விரும்புகிறீர்கள்?';

  @override
  String get installationTypeNoOSDetected => 'இந்த கணினியில் தற்போது எந்த இயங்கு தளங்களும் கண்டறியப்படவில்லை.என்ன செய்ய விரும்புகிறீர்கள்?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'வட்டை அழித்து $DISTRO நிறுவவும்';
  }

  @override
  String get installationTypeEraseInfo => 'இயக்க முறைமைகள் உட்பட வட்டில் உள்ள அனைத்து தரவு மற்றும் பகிர்வுகளும் அழிக்கப்படும்.';

  @override
  String get installationTypeAdvancedLabel => 'மேம்பட்ட விருப்பங்களைக் காட்டு ...';

  @override
  String get installationTypeAdvancedTitle => 'குறியாக்கம் மற்றும் கோப்பு முறைமை';

  @override
  String get installationTypeExperimental => 'சோதனை';

  @override
  String get installationTypeNone => 'குறியாக்கம் இல்லை';

  @override
  String get installationTypeNoneInfo => 'குறியாக்கம் இல்லாமல் நிலையான கோப்பு முறைமை.';

  @override
  String get installationTypeNoneSelected => 'எதுவும் தேர்வாகவில்லை';

  @override
  String get installationTypeLVM => 'குறியாக்கம் இல்லாமல் எல்விஎம் பயன்படுத்தவும்';

  @override
  String get installationTypeLVMSelected => 'எல்விஎம் தேர்ந்தெடுக்கப்பட்டது';

  @override
  String get installationTypeLVMEncryption => 'ஒரு கடவுச்சொல்லுடன் குறியாக்கம்';

  @override
  String get installationTypeLVMEncryptionInfo => 'உங்கள் கணினியை இயக்கும் ஒவ்வொரு முறையும் நீங்கள் ஒரு கடவுச்சொற்றாக்க வேண்டும். இது எல்விஎம் உடன் லக்ச் குறியாக்கத்தைப் பயன்படுத்துகிறது.';

  @override
  String get installationTypeLVMEncryptionSelected => 'எல்விஎம் மற்றும் குறியாக்கம் தேர்ந்தெடுக்கப்பட்டது';

  @override
  String get installationTypeEncryptInfo => 'அடுத்த கட்டத்தில் பாதுகாப்பு விசையை நீங்கள் தேர்வு செய்வீர்கள்.';

  @override
  String get installationTypeZFS => 'குறியாக்கம் இல்லாமல் ZFS ஐப் பயன்படுத்தவும்';

  @override
  String get installationTypeZFSEncryption => 'ZFS ஐப் பயன்படுத்தி கடவுச்சொற்றுடன் குறியாக்கம்';

  @override
  String get installationTypeZFSEncryptionInfo => 'ZFS உடன் சொந்த குறியாக்கம். உங்கள் கணினியை இயக்கும் ஒவ்வொரு முறையும் நீங்கள் ஒரு கடவுச்சொற்றாக்க வேண்டும்.';

  @override
  String get installationTypeZFSSelected => 'ZFS தேர்ந்தெடுக்கப்பட்டது';

  @override
  String get installationTypeZFSEncryptionSelected => 'ZF கள் மற்றும் குறியாக்கம் தேர்ந்தெடுக்கப்பட்டது';

  @override
  String get installationTypeTPM => 'வன்பொருள் உதவி குறியாக்கத்தைப் பயன்படுத்தவும்';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return '<a href = \"$url\"> இந்த விருப்பத்தைத் தேர்ந்தெடுப்பதற்கு முன் டிபிஎம் குறியாக்கத்தைப் பற்றி படிக்கவும் </a>. இது உங்கள் வன்பொருள் அல்லது எதிர்கால $DISTRO வெளியீடுகளுடன் செயல்படாது.';
  }

  @override
  String get installationTypeTPMSelected => 'டிபிஎம் தேர்ந்தெடுக்கப்பட்டது';

  @override
  String installationTypeReinstall(String os) {
    return '$os ஐ அழித்து மீண்டும் நிறுவவும்';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color = \"$color\"> எச்சரிக்கை: </font> இது உங்கள் $os நிரல்கள், ஆவணங்கள், புகைப்படங்கள், இசை மற்றும் வேறு எந்த கோப்புகளையும் நீக்கும்.';
  }

  @override
  String installationTypeAlongside(String product, String os) {
    return 'Install $product alongside $os';
  }

  @override
  String installationTypeAlongsideDual(String product, String os1, String os2) {
    return 'Install $product alongside $os1 and $os2';
  }

  @override
  String installationTypeAlongsideMulti(String product) {
    return 'தற்போதுள்ள இயக்க முறைமைகளுடன் $product ஐ நிறுவவும்';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return 'பிற பகிர்வுகளுடன் $product ஐ நிறுவவும்';
  }

  @override
  String installationTypeAlongsideInfo(String product) {
    return 'Select a partition to resize and create space for $product. You can choose your operating system during boot.';
  }

  @override
  String installationTypeEraseAndInstall(String os, String product) {
    return '$os ஐ அழித்து $product நிறுவவும்';
  }

  @override
  String installationTypeEraseAndInstallInfo(String os) {
    return 'தற்போதுள்ள $os நிறுவலில் இருந்து அனைத்து கோப்புகளும் தரவுகளும் நிரந்தரமாக நீக்கப்படும்.';
  }

  @override
  String get installationTypeManual => 'கையேடு நிறுவல்';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'தனிப்பயனாக்கப்பட்ட வட்டு அமைப்புகளைத் தேடும் மேம்பட்ட பயனர்களுக்கு.';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'வட்டை அழித்து $DISTRO நிறுவவும்';
  }

  @override
  String get selectGuidedStorageInfo => 'நீங்கள் தேர்ந்தெடுத்த வட்டில் புதிதாகத் தொடங்கவும்.';

  @override
  String get selectGuidedStorageDriveDropdownLabel => 'டிரைவைத் தேர்ந்தெடுக்கவும்:';

  @override
  String get selectGuidedStoragePartitionDropdownLabel => 'பகிர்வைத் தேர்ந்தெடுக்கவும்:';

  @override
  String get selectGuidedStorageInfoLabel => 'முழு வட்டு பயன்படுத்தப்படும்:';

  @override
  String get selectGuidedStorageInstallNow => 'இப்போது நிறுவு';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return '$DISTRO ஐ எங்கு நிறுவ வேண்டும் என்பதைத் தேர்வுசெய்க';
  }

  @override
  String get installAlongsideSpaceDivider => 'கீழே உள்ள வகுப்பாளரை இழுப்பதன் மூலம் இயக்கி இடத்தை ஒதுக்கவும்:';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return '$num சிறிய பகிர்வுகள் மறைக்கப்பட்டுள்ளன, மேலும் கட்டுப்பாட்டுக்கு <a href = \"$url\"> மேம்பட்ட பகிர்வு கருவி </a> ஐப் பயன்படுத்தவும்';
  }

  @override
  String get installAlongsideResizePartition => 'பகிர்வு மறுஅளவிடுதல்';

  @override
  String get installAlongsideAllocateSpace => 'இடத்தை ஒதுக்கவும்';

  @override
  String get installAlongsideFiles => 'கோப்புகள்';

  @override
  String get installAlongsidePartition => 'பகிர்வு:';

  @override
  String get installAlongsideSize => 'அளவு:';

  @override
  String get installAlongsideAvailable => 'கிடைக்கிறது:';

  @override
  String get allocateDiskSpace => 'கையேடு பகிர்வு';

  @override
  String get allocateDiskSpaceInvalidMountPointSlash => 'மவுண்ட் புள்ளிகள் \"/\" உடன் தொடங்க வேண்டும்';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace => 'மவுண்ட் புள்ளிகளில் இடைவெளிகளைக் கொண்டிருக்க முடியாது';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(Object format, Object mountpoint) {
    return '$format is not a supported filesystem for $mountpoint';
  }

  @override
  String get diskHeadersDevice => 'சாதனம்';

  @override
  String get diskHeadersType => 'வகை';

  @override
  String get diskHeadersMountPoint => 'மவுண்ட் புள்ளி';

  @override
  String get diskHeadersSize => 'அளவு';

  @override
  String get diskHeadersUsed => 'பயன்படுத்தப்பட்ட அளவு';

  @override
  String get diskHeadersSystem => 'கணினி';

  @override
  String get diskHeadersFormat => 'வடிவம்';

  @override
  String get freeDiskSpace => 'காலி இடம்';

  @override
  String get newPartitionTable => 'புதிய பகிர்வு அட்டவணை';

  @override
  String get newPartitionTableConfirmationTitle => 'புதிய வெற்று பகிர்வு';

  @override
  String get newPartitionTableConfirmationMessage => 'ஒரு முழு சாதனத்திலும் புதிய பகிர்வு அட்டவணையை உருவாக்குவது அதன் தற்போதைய பகிர்வுகள் அனைத்தையும் அகற்றும். தேவைப்பட்டால் இந்த செயல்பாட்டை செயல்தவிர்க்கலாம்.';

  @override
  String get tooManyPrimaryPartitions => 'பல முதன்மை பகிர்வுகள்';

  @override
  String get partitionLimitReached => 'வரம்பு எட்டப்பட்டது';

  @override
  String get bootLoaderDevice => 'துவக்க ஏற்றி நிறுவலுக்கான சாதனம்';

  @override
  String get partitionCreateTitle => 'பகிர்வை உருவாக்கு';

  @override
  String get partitionEditTitle => 'பகிர்வைத் திருத்து';

  @override
  String get partitionSizeLabel => 'அளவு:';

  @override
  String get partitionTypeLabel => 'புதிய பகிர்வுக்கு தட்டச்சு செய்க:';

  @override
  String get partitionTypePrimary => 'முதன்மை';

  @override
  String get partitionTypeLogical => 'தர்க்கரீதியான';

  @override
  String get partitionLocationLabel => 'புதிய பகிர்வுக்கான இடம்:';

  @override
  String get partitionLocationBeginning => 'இந்த இடத்தின் தொடக்கத்திலிருந்து';

  @override
  String get partitionLocationEnd => 'இந்த இடத்தின் முடிவில்';

  @override
  String get partitionFormatLabel => 'பயன்படுத்தப்பட்ட அளவு:';

  @override
  String get partitionFormatNone => 'முறையிடாமல் விடுங்கள்';

  @override
  String partitionFormatKeep(String format) {
    return 'வடிவமைக்க $format ஆக விடுங்கள்';
  }

  @override
  String get partitionErase => 'பகிர்வை வடிவமைக்கவும்';

  @override
  String get partitionMountPointLabel => 'மவுண்ட் புள்ளி:';

  @override
  String get confirmPageTitle => 'நிறுவ தயாராக உள்ளது';

  @override
  String get confirmHeader => 'உங்கள் தேர்வுகளை மதிப்பாய்வு செய்யவும்';

  @override
  String get confirmDiskEncryptionLVM => 'லக்ச் (எல்விஎம்)';

  @override
  String get confirmDiskEncryptionZFS => 'லுக்ச் (ZFS)';

  @override
  String get confirmDiskEncryptionTPM => 'டிபிஎம்';

  @override
  String get confirmDiskEncryptionNone => 'எதுவுமில்லை';

  @override
  String get confirmDevicesTitle => 'சாதனங்கள்';

  @override
  String get confirmEntryApplications => 'பயன்பாடுகள்';

  @override
  String get confirmEntryDiskSetup => 'நிறுவல் வகை';

  @override
  String get confirmEntryDiskEncryption => 'வட்டு குறியாக்கம்';

  @override
  String get confirmEntryInstallationDisk => 'நிறுவல் வட்டு';

  @override
  String get confirmEntryProprietarySoftware => 'தனியுரிம மென்பொருள்';

  @override
  String get confirmSectionGeneralTitle => 'பொது';

  @override
  String get confirmSectionSecurityAndMoreTitle => 'பாதுகாப்பு மற்றும் பல';

  @override
  String get confirmPartitionsTitle => 'பகிர்வுகள்';

  @override
  String get confirmPartitionTables => 'பின்வரும் சாதனங்களின் பகிர்வு அட்டவணைகள் மாற்றப்பட்டுள்ளன:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmProprietarySoftwareCodecs => 'கோடெக்குகள்';

  @override
  String get confirmProprietarySoftwareCodecsDrivers => 'கோடெக்குகள் மற்றும் இயக்கிகள்';

  @override
  String get confirmProprietarySoftwareDrivers => 'ஓட்டுநர்கள்';

  @override
  String get confirmInstallButton => 'நிறுவவும்';

  @override
  String get confirmTableErased => 'அழிக்கப்பட்டது';

  @override
  String get confirmTableUnchanged => 'மாறாமல்';

  @override
  String confirmTableResized(String oldsize, String newsize) {
    return '$oldsize இலிருந்து $newsize வரை மாற்றியமைக்கப்பட்டது';
  }

  @override
  String confirmTableCreatedFormattedMounted(String format, String mountpoint) {
    return 'Created and formatted as $format used for $mountpoint';
  }

  @override
  String confirmTableFormattedMounted(String format, String mountpoint) {
    return 'Formatted as $format used for $mountpoint';
  }

  @override
  String confirmTableMounted(String mountpoint) {
    return 'Used for $mountpoint';
  }

  @override
  String confirmTableFormatted(String format) {
    return '$format';
  }

  @override
  String get installationCompleteTitle => 'நிறுவல் முடிவுற்றது';

  @override
  String readyToUse(String system) {
    return '$system நிறுவப்பட்டு பயன்படுத்த தயாராக உள்ளது';
  }

  @override
  String rebootToConfigure(String system) {
    return '** $system ** வட்டில் நகலெடுக்கப்பட்டுள்ளது';
  }

  @override
  String restartInto(String system) {
    return 'Restart into $system';
  }

  @override
  String get restartWarningBody => 'நிறுவலை முடிக்க மறுதொடக்கம் செய்யுங்கள் அல்லது சோதனையைத் தொடரவும்.\n நீங்கள் செய்யும் எந்த மாற்றங்களும் சேமிக்கப்படாது.';

  @override
  String get rebootToConfigureWarning => 'நிறுவல் செயல்முறையைத் தொடர நீங்கள் கணினியை மறுதொடக்கம் செய்ய வேண்டும்.';

  @override
  String get shutdown => 'மூடு';

  @override
  String get restartNow => 'இப்போது மறுதொடக்கம் செய்யுங்கள்';

  @override
  String get continueTesting => 'சோதனை தொடரவும்';

  @override
  String get bitlockerInfoTitle => 'பிட்லாக்கர் கண்டறியப்பட்டது';

  @override
  String get bitlockerInfoDescription => 'ஒன்று அல்லது அதற்கு மேற்பட்ட பகிர்வுகள் பிட்லாக்கருடன் குறியாக்கம் செய்யப்படுகின்றன.';

  @override
  String get bitlockerInfoDisable => 'விண்டோசுடன் நிறுவ, சாளரங்களில் பிட்லாக்கரை முடக்கு.';

  @override
  String get bitlockerInfoRecovery => 'நிறுவலுக்குப் பிறகு துவக்கத்தில் மீட்பு விசைகளை சாளரங்கள் கோரலாம்.';

  @override
  String bitlockerInfoInstructions(String url) {
    return 'அறிவுறுத்தல்களுக்கு, <a href = \"$url\"> பிட்லாக் கையேடு </a> ஐப் பார்வையிடவும்.';
  }

  @override
  String get bitlockerWarningTitle => 'பிட்லாக்கர் மீட்பு விசைகள் இல்லாமல் உங்கள் எல்லா தரவையும் இழக்க நேரிடும்';

  @override
  String get restartComputer => 'கணினியை மறுதொடக்கம் செய்யுங்கள்';

  @override
  String get restartComputerTitle => 'கணினியை மறுதொடக்கம் செய்யவா?';

  @override
  String get restartIntoWindows => 'சன்னல்களில் மறுதொடக்கம் செய்யுங்கள்';

  @override
  String get restartIntoWindowsTitle => 'சன்னல்களில் மறுதொடக்கம் செய்யவா?';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return 'உங்கள் கணினியை மறுதொடக்கம் செய்ய விரும்புகிறீர்களா? நிறுவலை முடிக்க $DISTRO நிறுவலை நீங்கள் மறுதொடக்கம் செய்ய வேண்டும்.';
  }

  @override
  String installationSlidesTitle(String RELEASE) {
    return '$RELEASE';
  }

  @override
  String get installationSlidesAvailable => 'கிடைக்கிறது:';

  @override
  String get installationSlidesIncluded => 'சேர்க்கப்பட்டுள்ளது:';

  @override
  String get installationSlidesWelcomeTitle => 'வேகமான, இலவச மற்றும் புதிய நற்பொருத்தங்கள் நிறைந்தவை';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return 'The latest version of $DISTRO makes computing easier than ever.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'Whether you\'re a developer, creator, gamer or administrator you\'ll find new tools to improve your productivity and enhance your experience in $RELEASE.';
  }

  @override
  String get installationSlidesSoftwareTitle => 'உங்களுக்கு தேவையான அனைத்து பயன்பாடுகளும்';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'உங்கள் எல்லா பயன்பாடுகளையும் உபுண்டு மென்பொருளில் நிறுவவும், நிர்வகிக்கவும் புதுப்பிக்கவும், ச்னாப் கடை மற்றும் $DISTRO காப்பகம் இரண்டிலிருந்தும் ஆயிரக்கணக்கான பயன்பாடுகள் அடங்கும்.';
  }

  @override
  String get installationSlidesDevelopmentTitle => 'சிறந்த திறந்த மூலத்துடன் உருவாகிறது';

  @override
  String installationSlidesDevelopmentBody(String DISTRO) {
    return '$DISTRO என்பது பயன்பாடு அல்லது வலை வளர்ச்சி, தரவு அறிவியல் மற்றும் AI/ML மற்றும் டெவொப்ச் மற்றும் நிர்வாகத்திற்கான சிறந்த பணிநிலையம். ஒவ்வொரு $DISTRO வெளியீட்டில் அண்மைக் கால கருவித்தொகுப்புகள் உள்ளன மற்றும் அனைத்து முக்கிய ஐடிகளையும் ஆதரிக்கிறது.';
  }

  @override
  String get installationSlidesCreativityTitle => 'உங்கள் படைப்பாற்றலை மேம்படுத்தவும்';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return 'If you\'re an animator, designer, video creator or game developer it\'s easy to bring your workflows to $DISTRO with support for open source and industry standard software and applications.';
  }

  @override
  String get installationSlidesGamingTitle => 'கேமிங்கிற்கு சிறந்தது';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return '$DISTRO supports the latest NVIDIA and Mesa drivers to improve performance and compatibility. Thousands of Windows titles play great on $DISTRO via applications like Steam with no additional configuration.';
  }

  @override
  String get installationSlidesSecurityTitle => 'தனிப்பட்ட மற்றும் பாதுகாப்பான';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return '$DISTRO provides all of the tools you need to stay private and secure online. With built in firewall and VPN support and a host of privacy-centric applications to ensure you are in full control of your data.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return 'அனைத்து $DISTRO lts வெளியீடுகளும் ஐந்து வருட பாதுகாப்பு ஒட்டுதல் சேர்க்கப்பட்டுள்ளன, இது உபுண்டு புரோ சந்தாவுடன் பத்து ஆண்டுகள் வரை நீண்டுள்ளது.';
  }

  @override
  String get installationSlidesProductivityTitle => 'உங்கள் உற்பத்தித்திறனை அதிகரிக்கும்';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return '$DISTRO டெச்க்டாப்பில் ஆவணங்கள், விரிதாள்கள் மற்றும் விளக்கக்காட்சிகளுக்கான நுண்மென் ஆபிச் இணக்கமான திறந்த மூல பயன்பாடுகளின் தொகுப்பான லிப்ரே ஆபிச் அடங்கும். பிரபலமான ஒத்துழைப்பு கருவிகளும் கிடைக்கின்றன.';
  }

  @override
  String get installationSlidesAccessibilityTitle => 'அனைவருக்கும் அணுகல்';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return '$DISTRO தத்துவத்தின் இதயத்தில், கம்ப்யூட்டிங் என்பது அனைவருக்கும் உள்ளது என்ற நம்பிக்கை. மொழி, வண்ணங்கள் மற்றும் உரை அளவை மாற்ற மேம்பட்ட அணுகல் கருவிகள் மற்றும் விருப்பங்களுடன், $DISTRO கம்ப்யூட்டிங் எளிதாக்குகிறது - யாராக இருந்தாலும், எங்கிருந்தாலும்.';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'ஓர்கா திரை ரீடர்';

  @override
  String get installationSlidesAccessibilityLanguages => 'மொழி உதவி';

  @override
  String get installationSlidesSupportTitle => 'உதவி மற்றும் உதவி';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return 'அதிகாரப்பூர்வ $DISTRO ஆவணங்கள் ஆன்லைனில் மற்றும் கப்பல்துறையில் உதவி படவுரு வழியாக கிடைக்கின்றன.';
  }

  @override
  String get installationSlidesSupportCommunity => 'உபுண்டு கேளுங்கள் பலவிதமான கேள்விகள் மற்றும் பதில்களை உள்ளடக்கியது மற்றும் உபுண்டு சொற்பொழிவு புதிய மற்றும் பட்டறிவு வாய்ந்த பயனர்களுக்கான வழிகாட்டிகளையும் விவாதங்களையும் வழங்குகிறது.';

  @override
  String get installationSlidesSupportEnterprise => 'நிறுவன பயனர்களுக்கு கேனோனிகல் வணிக ஆதரவை வழங்குகிறது, இது உபுண்டுவை பணியிடத்தில் பாதுகாப்பாக கையகப்படுத்தவும் நிர்வகிக்கவும் எளிதாக்குகிறது.';

  @override
  String get installationSlidesSupportResources => 'பயனுள்ள வளங்கள்:';

  @override
  String get installationSlidesSupportDocumentation => 'அதிகாரப்பூர்வ ஆவணங்கள்';

  @override
  String get installationSlidesSupportUbuntuPro => 'நிறுவன-வகுப்பு 24/7 உபுண்டு புரோவுடன் உதவி';

  @override
  String get copyingFiles => 'கோப்புகளை நகலெடுக்கும்…';

  @override
  String get installingSystem => 'கணினியை நிறுவுதல்…';

  @override
  String get configuringSystem => 'கணினியை அமைத்தல்…';

  @override
  String get installationFailed => 'நிறுவல் தோல்வியடைந்தது';

  @override
  String get notEnoughDiskSpaceTitle => 'போதுமான வட்டு இடம் இல்லை';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return '$DISTRO நிறுவ போதுமான வட்டு இடம் இல்லை';
  }

  @override
  String notEnoughDiskSpaceBody(String DISTRO) {
    return 'தேர்ந்தெடுக்கப்பட்ட வட்டுக்கு $DISTRO நிறுவ போதுமான வட்டு இடம் இல்லை. இடத்தைக் கிடைக்க நிறுவலை விட்டு வெளியேறவும் அல்லது மற்றொரு வட்டு தேர்ந்தெடுக்கவும்.';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'கிடைக்கிறது:';

  @override
  String get notEnoughDiskSpaceRequired => 'தேவை:';

  @override
  String get refreshPageTitle => 'புதுப்பிப்பு கிடைக்கிறது';

  @override
  String get refreshHeader => 'நிறுவிக்கு ஒரு புதுப்பிப்பு கிடைக்கிறது';

  @override
  String get refreshUpdateNow => 'இப்போது புதுப்பிக்கவும்';

  @override
  String get refreshInfo => 'மேம்பட்ட நம்பகத்தன்மை மற்றும் கூடுதல் அம்சங்களுக்கான அண்மைக் கால பதிப்பைப் புதுப்பிக்கவும்.';

  @override
  String get refreshReady => 'புதுப்பிப்பு ஆயத்தம்';

  @override
  String refreshCurrent(String snap, String version) {
    return 'தற்போதைய $snap பதிப்பு $version.';
  }

  @override
  String refreshInstall(String version) {
    return 'பதிப்பு $version';
  }

  @override
  String refreshUpToDate(String version) {
    return 'தற்போதைய பதிப்பு $version புதுப்பித்த நிலையில் உள்ளது.';
  }

  @override
  String refreshUpdating(String snap) {
    return 'புதுப்பித்தல் $snap ...';
  }

  @override
  String get refreshRestart => 'தொடர நிறுவி மூடி, தொடர மறுகட்டமைக்கவும்';

  @override
  String get refreshCloseLabel => 'நிறுவியை மூடு';

  @override
  String refreshSnapPrerequisites(String snap) {
    return '$snap முன்நிபந்தனைகளை உறுதி செய்தல் ...';
  }

  @override
  String refreshSnapRefresh(String snap) {
    return 'புத்துணர்ச்சி $snap ...';
  }

  @override
  String refreshSnapCheckRerefresh(String snap) {
    return 'சரிபார்க்கிறது $snap மறு-மறுபிரவேசம் ...';
  }

  @override
  String refreshSnapPrepare(String snap) {
    return '$snap தயாரித்தல் ...';
  }

  @override
  String refreshSnapDownload(String snap) {
    return 'பதிவிறக்கம் $snap ...';
  }

  @override
  String refreshSnapValidate(String snap) {
    return 'சரிபார்க்கும் $snap ...';
  }

  @override
  String refreshSnapMount(String snap) {
    return 'பெருகிவரும் $snap ...';
  }

  @override
  String refreshSnapStopServices(String snap) {
    return 'நிறுத்துதல் $snap சேவைகள் ...';
  }

  @override
  String refreshSnapRemoveAliases(String snap) {
    return '$snap மாற்றுப்பெயர்களை நீக்குதல் ...';
  }

  @override
  String refreshSnapUnlink(String snap) {
    return '$snap ...';
  }

  @override
  String refreshSnapUpdateAssets(String snap) {
    return 'புதுப்பித்தல் $snap சொத்துக்கள் ...';
  }

  @override
  String refreshSnapUpdateKernelCommandLine(String snap) {
    return 'புதுப்பித்தல் $snap கர்னல் கட்டளை வரி ...';
  }

  @override
  String refreshSnapCopyData(String snap) {
    return 'நகலெடுப்பது $snap தரவு ...';
  }

  @override
  String refreshSnapSetupProfiles(String snap) {
    return '$snap பாதுகாப்பு சுயவிவரங்களை அமைத்தல் ...';
  }

  @override
  String refreshSnapLink(String snap) {
    return 'இணைத்தல் $snap ...';
  }

  @override
  String refreshSnapAutoConnect(String snap) {
    return '$snap செருகிகள் மற்றும் இடங்களை இணைக்கிறது ...';
  }

  @override
  String refreshSnapSetAutoAliases(String snap) {
    return 'தானியங்கி $snap மாற்றுப்பெயர்களை அமைத்தல் ...';
  }

  @override
  String refreshSnapSetupAliases(String snap) {
    return '$snap மாற்றுப்பெயர்களை அமைத்தல் ...';
  }

  @override
  String refreshSnapStartServices(String snap) {
    return 'தொடங்கி $snap சேவைகள் ...';
  }

  @override
  String refreshSnapCleanup(String snap) {
    return '$snap ...';
  }

  @override
  String get recoveryKeyTitle => 'டிபிஎம் மீட்பு விசை';

  @override
  String get recoveryKeyHeader => 'மீட்பு விசையைப் பெறுங்கள்';

  @override
  String get recoveryKeyInfoHeader => 'மீட்பு விசை இல்லாமல் உங்கள் எல்லா தரவையும் இழக்க நேரிடும்';

  @override
  String recoveryKeyInfoBody(String distro) {
    return 'Get a recovery key as soon as you first log into $distro and store it somewhere safe.';
  }

  @override
  String get recoveryKeyCommand => 'மீட்பு விசையைப் பெற, நிறுவலை முடிக்க, உங்கள் கணினியை மறுதொடக்கம் செய்து, இந்த கட்டளையை முனையத்தில் இயக்கவும்:';

  @override
  String get recoveryKeyStorageAdvice => 'மீட்பு விசையை எங்காவது பாதுகாப்பாக சேமிக்கவும். சில கணினி மாற்றங்கள் ஏற்பட்டால் வட்டு மறைகுறியாக்க இதைப் பயன்படுத்தவும். எடுத்துக்காட்டாக, உங்கள் கணினியில் உள்ள கூறுகளை மாற்றினால் அல்லது ஃபார்ம்வேரைப் புதுப்பித்தால் உங்களுக்குத் தேவைப்படலாம்.';

  @override
  String get recoveryKeyConfirmation => 'என்னிடம் மீட்பு விசை இல்லையென்றால் எனது எல்லா தரவையும் இழக்க நேரிடும் என்பதை நான் புரிந்துகொள்கிறேன்';

  @override
  String landscapeMagicAttachInstructions(Object url) {
    return 'QR குறியீட்டை ச்கேன் செய்யுங்கள் அல்லது கீழே உள்ள குறியீட்டை <a href = \"https: // $url\"> $url </a> இல் உள்ளிடவும்';
  }

  @override
  String get landscapePageTitle => 'தானியங்கு நிறுவல்';

  @override
  String get landscapeHeader => 'நிலப்பரப்பில் உள்நுழைக';

  @override
  String get landscapeDomainHeader => 'இயற்கை களத்தை உள்ளிடவும் (FQDN)';

  @override
  String get landscapeDomainHintText => 'இயற்கை களம் (FQDN)';

  @override
  String get landscapeDomainInstructions => 'உள்நுழையவும், ஆட்டோஇன்ச்டால் கோப்பைப் பெறவும் உங்கள் நிறுவனத்தின் இயற்கை களத்தை வழங்கவும். உங்கள் செய்தி தொழில்நுட்ப ஆதரவிலிருந்து FQDN ஐப் பெறலாம்.';

  @override
  String get landscapeDomainTextField => 'இயற்கை களம் (FQDN)';

  @override
  String get next => 'அடுத்தது';

  @override
  String get landscapeDomainInvalidDomainWarning => 'தவறான டொமைன், உங்கள் செய்தி தொழில்நுட்ப ஆதரவை சரிபார்க்கவும் அல்லது தொடர்பு கொள்ளவும்';

  @override
  String get landscapeDomainNoInternetTitleWarning => 'தொடர இணையத்துடன் இணைக்கவும்';

  @override
  String get landscapeDomainNoInternetDescriptionWarning => 'நிலப்பரப்பில் இருந்து ஆட்டோஇன்ச்டால் கோப்பைப் பெற இணையம் தேவை';

  @override
  String get landscapeCodeExpiredWarning => 'குறியீடு காலாவதியானது, தயவுசெய்து மீண்டும் முயற்சிக்கவும்';

  @override
  String get landscapeLoginFailedWarning => 'உள்நுழைவு தோல்வியுற்றது, தயவுசெய்து மீண்டும் முயற்சிக்கவும்';

  @override
  String get landscapeErrorPageTitle => 'உங்கள் கணக்கிற்கு தானியங்கு நிறுவல் கிடைக்கவில்லை';

  @override
  String get landscapeErrorPageBody => 'உங்கள் செய்தி தொழில்நுட்ப ஆதரவைத் தொடர்பு கொள்ளுங்கள் அல்லது வேறு நிறுவல் விருப்பத்தை முயற்சிக்கவும்.';

  @override
  String landscapeErrorPageCode(String code) {
    return 'பிழை குறியீடு: $code';
  }

  @override
  String get landscapeConfirmPageSuccessInfoTitle => 'உங்கள் நிறுவனத்தால் வழங்கப்பட்ட உள்ளமைவுடன் உபுண்டு நிறுவும்';

  @override
  String get landscapeConfirmPageSuccessInfoContent => 'கீழே உள்ள நிலப்பரப்பில் இருந்து இறக்குமதி செய்யப்பட்ட ஆட்டோஇன்ச்டால் கோப்பை நீங்கள் மதிப்பாய்வு செய்யலாம்.';
}
