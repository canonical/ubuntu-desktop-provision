import 'ubuntu_provision_localizations.dart';

/// The translations for Tamil (`ta`).
class UbuntuProvisionLocalizationsTa extends UbuntuProvisionLocalizations {
  UbuntuProvisionLocalizationsTa([String locale = 'ta']) : super(locale);

  @override
  String get accessibilityPageTitle => 'அணுகல்';

  @override
  String accessibilityPageHeader(String DISTRO) {
    return '$DISTRO இல் அணுகல்தன்மை';
  }

  @override
  String accessibilityPageBody(String DISTRO) {
    return 'அமைப்பதற்கு முன் உங்கள் தேவைக்கேற்ப $DISTRO-ஐத் தனிப்பயனாக்குங்கள். பின்னர் அவற்றை முறைமை அமைப்புகளில் மாற்றலாம்.';
  }

  @override
  String get accessibilitySeeingLabel => 'பார்ப்பது';

  @override
  String get accessibilityHearingLabel => 'கேட்பு';

  @override
  String get accessibilityTypingLabel => 'தட்டச்சு';

  @override
  String get accessibilityPointingLabel => 'சுட்டிக்காட்டுதல் மற்றும் சொடுக்கு செய்தல்';

  @override
  String get accessibilityZoomLabel => 'பெரிதாக்கு';

  @override
  String get accessibilityHighContrastLabel => 'உயர் வேறுபாடு';

  @override
  String get accessibilityLargeTextLabel => 'பெரிய உரை';

  @override
  String get accessibilityReduceAnimationLabel => 'அனிமேசனைக் குறைக்கவும்';

  @override
  String get accessibilityScreenReaderLabel => 'திரை ரீடர்';

  @override
  String get accessibilityVisualAlertsLabel => 'காட்சி எச்சரிக்கைகள்';

  @override
  String get accessibilityStickKeysLabel => 'ஒட்டும் விசைகள்';

  @override
  String get accessibilitySlowKeysLabel => 'மெதுவான விசைகள்';

  @override
  String get accessibilityMouseKeysLabel => 'சுட்டி விசைகள்';

  @override
  String get accessibilityDesktopZoomLabel => 'டெச்க்டாப் சூம்';

  @override
  String get errorPageTitle => 'ஏதோ தவறு நடந்தது';

  @override
  String get errorPageUnexpected => 'மன்னிக்கவும், ஆனால் பிழை என்னவென்று எங்களுக்குத் தெரியவில்லை. உங்கள் கணினியை மறுதொடக்கம் செய்து நிறுவல் செயல்முறையை மீண்டும் தொடங்கலாம். நீங்கள் <a>சிக்கலைப் புகாரளிக்கலாம்</a>.';

  @override
  String errorPageUbuntuBug(String SNAP) {
    return 'தொடர்புடைய பிழைத்திருத்தத் தகவல்களுடன் தானியங்கி பிழை அறிக்கையை அனுப்ப, தயவுசெய்து <pre>sudo ubuntu-bug $SNAP</pre> ஐ ஒரு முனையத்தில் அல்லது கட்டளை கன்சோலில் (Alt+F2) இயக்கவும்.';
  }

  @override
  String get errorPageShowLog => 'பதிவைக் காட்டு';

  @override
  String get errorPageHideLog => 'பதிவை மறைக்க';

  @override
  String get restart => 'மறுதொடக்கம்';

  @override
  String get close => 'மூடு';

  @override
  String get timezonePageTitle => 'உங்கள் நேர மண்டலத்தைத் தேர்ந்தெடுக்கவும்';

  @override
  String get timezoneLocationLabel => 'இடம்';

  @override
  String get timezoneTimezoneLabel => 'நேர மண்டலம்';

  @override
  String get keyboardTitle => 'விசைப்பலகை அமைப்பு';

  @override
  String get keyboardHeader => 'உங்களின் விசைப்பலகை அமைப்பைத் தேர்வு செய்';

  @override
  String get keyboardTestHint => 'உங்கள் விசைப்பலகையை சோதிக்க இங்கு தட்டச்சு செய்யவும்';

  @override
  String get keyboardDetectTitle => 'விசைப்பலகையின் அமைப்பைக் கண்டறியவும்';

  @override
  String get keyboardDetectButton => 'கண்டறியவும்';

  @override
  String get keyboardVariantLabel => 'உங்கள் விசைப்பலகை மாறுபாட்டைத் தேர்ந்தெடுக்கவும்:';

  @override
  String get keyboardPressKeyLabel => 'பின்வரும் விசைகளில் ஒன்றை அழுத்துங்கள்:';

  @override
  String get keyboardKeyPresentLabel => 'பின்வரும் விசை உங்களுடைய தட்டச்சு பலகையில் இருக்கிறதா?';

  @override
  String get themePageTitle => 'உங்கள் தோற்றத்தை தேர்வு செய்யவும்';

  @override
  String get themePageHeader => 'தோற்ற அமைப்புகளில் இதை எப்போது வேண்டுமானாலும் மாற்றலாம்.';

  @override
  String get themeDark => 'கருமை';

  @override
  String get themeLight => 'ஒளி';

  @override
  String localePageTitle(String DISTRO) {
    return '$DISTRO க்கு வருக';
  }

  @override
  String get localeHeader => 'உங்கள் மொழியைத் தேர்வுசெய்க:';

  @override
  String get identityPageTitle => 'உங்கள் கணக்கை உருவாக்கு';

  @override
  String get identityAutoLogin => 'தானியங்கியாக உள்நுழையவும்';

  @override
  String get identityRequirePassword => 'உள்நுழைய எனது கடவுச்சொல் தேவை';

  @override
  String get identityRealNameLabel => 'உங்கள் பெயர்';

  @override
  String get identityRealNameRequired => 'ஒரு பெயர் தேவை';

  @override
  String get identityRealNameTooLong => 'அந்த பெயர் மிக நீளமானது.';

  @override
  String get identityHostnameLabel => 'உங்கள் கணினியின் பெயர்';

  @override
  String get identityHostnameInfo => 'மற்ற கணினிகளுடன் பேசும்போது அது பயன்படுத்தும் பெயர்.';

  @override
  String get identityHostnameRequired => 'கணினி பெயர் தேவை';

  @override
  String get identityHostnameTooLong => 'அந்த கணினி பெயர் மிக நீளமானது.';

  @override
  String get identityInvalidHostname => 'கணினியின் பெயர் தவறானது';

  @override
  String get identityUsernameLabel => 'பயனர்பெயரை தேர்ந்தெடுங்கள்';

  @override
  String get identityUsernameRequired => 'ஒரு பயனர்பெயர் தேவை';

  @override
  String get identityInvalidUsername => 'பயனர்பெயர் தவறானது';

  @override
  String get identityUsernameInUse => 'அந்த பயனர் பெயர் ஏற்கனவே உள்ளது.';

  @override
  String get identityUsernameSystemReserved => 'கணினி பயன்பாட்டிற்காக அந்த பெயர் ஒதுக்கப்பட்டுள்ளது.';

  @override
  String get identityUsernameTooLong => 'அந்த பெயர் மிக நீளமானது.';

  @override
  String get identityUsernameInvalidChars => 'அந்த பெயரில் தவறான எழுத்துக்கள் உள்ளன.';

  @override
  String get identityPasswordLabel => 'கடவுச்சொல்லை தேர்வு செய்யவும்';

  @override
  String get identityPasswordRequired => 'கடவுச்சொல் தேவை';

  @override
  String get identityConfirmPasswordLabel => 'உங்கள் கடவுச்சொல்லை உறுதிப்படுத்தவும்';

  @override
  String get identityPasswordMismatch => 'கடவுச்சொற்கள் பொருந்தவில்லை';

  @override
  String get identityPasswordShow => 'காட்டு';

  @override
  String get identityPasswordHide => 'மறை';

  @override
  String get identityActiveDirectoryOption => 'செயலில் உள்ள கோப்பகத்தைப் பயன்படுத்தவும்';

  @override
  String get identityActiveDirectoryInfo => 'அடுத்த கட்டத்தில் டொமைனையும் பிற விவரங்களையும் உள்ளிடுவீர்கள்.';

  @override
  String get activeDirectoryTitle => 'செயலில் உள்ள கோப்பகத்தில் உள்நுழைக';

  @override
  String get activeDirectoryHeader => 'செயலில் உள்ள கோப்பகத்தில் உள்நுழைகவா?';

  @override
  String activeDirectoryInfo(String DISTRO) {
    return '$DISTRO எளிதான நிர்வாகத்திற்கான செயலில் உள்ள கோப்பகத்துடன் தடையின்றி ஒருங்கிணைக்க வடிவமைக்கப்பட்டுள்ளது.';
  }

  @override
  String get activeDirectoryTestConnection => 'டொமைன் இணைப்பை சோதிக்கவும்';

  @override
  String get activeDirectoryDomainLabel => 'டொமைன்';

  @override
  String get activeDirectoryDomainEmpty => 'தேவை';

  @override
  String get activeDirectoryDomainTooLong => 'மிக நீண்ட';

  @override
  String get activeDirectoryDomainInvalidChars => 'தவறான எழுத்துக்கள்';

  @override
  String get activeDirectoryDomainStartDot => 'ஒரு புள்ளியுடன் தொடங்குகிறது (.)';

  @override
  String get activeDirectoryDomainEndDot => 'ஒரு புள்ளியுடன் முடிவடைகிறது (.)';

  @override
  String get activeDirectoryDomainStartHyphen => 'ஒரு ஐபனுடன் தொடங்குகிறது (-)';

  @override
  String get activeDirectoryDomainEndHyphen => 'ஒரு ஐபனுடன் முடிவடைகிறது (-)';

  @override
  String get activeDirectoryDomainMultipleDots => 'பல வரிசைப்படுத்தப்பட்ட புள்ளிகள் உள்ளன (..)';

  @override
  String get activeDirectoryDomainNotFound => 'டொமைன் கிடைக்கவில்லை';

  @override
  String get activeDirectoryAdminLabel => 'டொமைன் பயனருடன் சேரவும்';

  @override
  String get activeDirectoryAdminEmpty => 'தேவை';

  @override
  String get activeDirectoryAdminInvalidChars => 'தவறான எழுத்துக்கள்';

  @override
  String get activeDirectoryPasswordLabel => 'கடவுச்சொல்';

  @override
  String get activeDirectoryPasswordEmpty => 'தேவை';

  @override
  String get activeDirectoryErrorTitle => 'செயலில் உள்ள கோப்பகத்திற்கான இணைப்பை உள்ளமைப்பதில் பிழை';

  @override
  String get activeDirectoryErrorMessage => 'மன்னிக்கவும், தற்போது ஆக்டிவ் டைரக்டரியை அமைக்க முடியாது. உங்கள் சிஸ்டம் இயங்கத் தொடங்கியதும், உதவிக்கு <a href=\"https://help.ubuntu.com/activedirectory\">help.ubuntu.com/activedirectory</a> ஐப் பார்வையிடவும்.';

  @override
  String get networkPageTitle => 'இணைய இணைப்பு';

  @override
  String get networkPageHeader => 'இணையத்துடன் இணைக்கவும்';

  @override
  String get networkPageBody => 'இணைய இணைப்பு உங்கள் நிறுவலை பொருந்தக்கூடிய சோதனை மற்றும் கூடுதல் மென்பொருள் தொகுப்புகளுடன் மேம்படுத்தும்.';

  @override
  String get networkWiredOption => 'கம்பி இணைப்பைப் பயன்படுத்தவும்';

  @override
  String get networkWiredNone => 'கம்பி இணைப்பு எதுவும் கண்டறியப்படவில்லை';

  @override
  String get networkWiredOff => 'கம்பி இணைப்பு அணைக்கப்பட்டுள்ளது';

  @override
  String get networkWiredDisabled => 'இந்த கணினியில் ஈதர்நெட்டைப் பயன்படுத்த, கம்பி இணைப்பு இயக்கப்பட வேண்டும்';

  @override
  String get networkWiredEnable => 'கம்பி இயக்கு';

  @override
  String get networkWifiOption => 'வைஃபை நெட்வொர்க்குடன் இணைக்கவும்';

  @override
  String get networkWifiOff => 'வயர்லெச் நெட்வொர்க்கிங் முடக்கப்பட்டது';

  @override
  String get networkWifiNone => 'வைஃபை சாதனங்கள் எதுவும் கண்டறியப்படவில்லை';

  @override
  String get networkWifiDisabled => 'இந்த கணினியில் வைஃபை பயன்படுத்த, வயர்லெச் நெட்வொர்க்கிங் இயக்கப்பட வேண்டும்';

  @override
  String get networkWifiEnable => 'வைஃபை இயக்கவும்';

  @override
  String get networkHiddenWifiOption => 'மறைக்கப்பட்ட வைஃபை நெட்வொர்க்குடன் இணைக்கவும்';

  @override
  String get networkHiddenWifiNameLabel => 'பிணைய பெயர்';

  @override
  String get networkHiddenWifiNameRequired => 'பிணைய பெயர் தேவை';

  @override
  String get networkNoneOption => 'இணையத்துடன் இணைக்க வேண்டாம்';

  @override
  String get eulaPageTitle => 'உரிம ஒப்பந்தத்தின்';

  @override
  String get eulaReviewTerms => 'உரிம விதிமுறைகளை மதிப்பாய்வு செய்யவும்';

  @override
  String get eulaReadAndAcceptTerms => 'இந்த இயந்திரத்தை தொடர்ந்து அமைக்க, உரிம ஒப்பந்த விதிமுறைகளைப் படித்து ஏற்றுக்கொள்ள வேண்டும்.';

  @override
  String get eulaAcceptTerms => 'இந்த விதிமுறைகளைப் படித்து ஏற்றுக்கொண்டேன்';
}
