import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'ubuntu_provision_localizations_am.dart';
import 'ubuntu_provision_localizations_ar.dart';
import 'ubuntu_provision_localizations_be.dart';
import 'ubuntu_provision_localizations_bg.dart';
import 'ubuntu_provision_localizations_bn.dart';
import 'ubuntu_provision_localizations_bo.dart';
import 'ubuntu_provision_localizations_bs.dart';
import 'ubuntu_provision_localizations_ca.dart';
import 'ubuntu_provision_localizations_cs.dart';
import 'ubuntu_provision_localizations_cy.dart';
import 'ubuntu_provision_localizations_da.dart';
import 'ubuntu_provision_localizations_de.dart';
import 'ubuntu_provision_localizations_dz.dart';
import 'ubuntu_provision_localizations_el.dart';
import 'ubuntu_provision_localizations_en.dart';
import 'ubuntu_provision_localizations_eo.dart';
import 'ubuntu_provision_localizations_es.dart';
import 'ubuntu_provision_localizations_et.dart';
import 'ubuntu_provision_localizations_eu.dart';
import 'ubuntu_provision_localizations_fa.dart';
import 'ubuntu_provision_localizations_fi.dart';
import 'ubuntu_provision_localizations_fr.dart';
import 'ubuntu_provision_localizations_ga.dart';
import 'ubuntu_provision_localizations_gl.dart';
import 'ubuntu_provision_localizations_gu.dart';
import 'ubuntu_provision_localizations_he.dart';
import 'ubuntu_provision_localizations_hi.dart';
import 'ubuntu_provision_localizations_hr.dart';
import 'ubuntu_provision_localizations_hu.dart';
import 'ubuntu_provision_localizations_id.dart';
import 'ubuntu_provision_localizations_is.dart';
import 'ubuntu_provision_localizations_it.dart';
import 'ubuntu_provision_localizations_ja.dart';
import 'ubuntu_provision_localizations_ka.dart';
import 'ubuntu_provision_localizations_kk.dart';
import 'ubuntu_provision_localizations_km.dart';
import 'ubuntu_provision_localizations_kn.dart';
import 'ubuntu_provision_localizations_ko.dart';
import 'ubuntu_provision_localizations_ku.dart';
import 'ubuntu_provision_localizations_lo.dart';
import 'ubuntu_provision_localizations_lt.dart';
import 'ubuntu_provision_localizations_lv.dart';
import 'ubuntu_provision_localizations_mk.dart';
import 'ubuntu_provision_localizations_ml.dart';
import 'ubuntu_provision_localizations_mr.dart';
import 'ubuntu_provision_localizations_my.dart';
import 'ubuntu_provision_localizations_nb.dart';
import 'ubuntu_provision_localizations_ne.dart';
import 'ubuntu_provision_localizations_nl.dart';
import 'ubuntu_provision_localizations_nn.dart';
import 'ubuntu_provision_localizations_oc.dart';
import 'ubuntu_provision_localizations_pa.dart';
import 'ubuntu_provision_localizations_pl.dart';
import 'ubuntu_provision_localizations_pt.dart';
import 'ubuntu_provision_localizations_ro.dart';
import 'ubuntu_provision_localizations_ru.dart';
import 'ubuntu_provision_localizations_se.dart';
import 'ubuntu_provision_localizations_si.dart';
import 'ubuntu_provision_localizations_sk.dart';
import 'ubuntu_provision_localizations_sl.dart';
import 'ubuntu_provision_localizations_sq.dart';
import 'ubuntu_provision_localizations_sr.dart';
import 'ubuntu_provision_localizations_sv.dart';
import 'ubuntu_provision_localizations_ta.dart';
import 'ubuntu_provision_localizations_te.dart';
import 'ubuntu_provision_localizations_tg.dart';
import 'ubuntu_provision_localizations_th.dart';
import 'ubuntu_provision_localizations_tl.dart';
import 'ubuntu_provision_localizations_tr.dart';
import 'ubuntu_provision_localizations_ug.dart';
import 'ubuntu_provision_localizations_uk.dart';
import 'ubuntu_provision_localizations_vi.dart';
import 'ubuntu_provision_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of UbuntuProvisionLocalizations
/// returned by `UbuntuProvisionLocalizations.of(context)`.
///
/// Applications need to include `UbuntuProvisionLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/ubuntu_provision_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: UbuntuProvisionLocalizations.localizationsDelegates,
///   supportedLocales: UbuntuProvisionLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the UbuntuProvisionLocalizations.supportedLocales
/// property.
abstract class UbuntuProvisionLocalizations {
  UbuntuProvisionLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static UbuntuProvisionLocalizations of(BuildContext context) {
    return Localizations.of<UbuntuProvisionLocalizations>(
        context, UbuntuProvisionLocalizations)!;
  }

  static const LocalizationsDelegate<UbuntuProvisionLocalizations> delegate =
      _UbuntuProvisionLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('am'),
    Locale('ar'),
    Locale('be'),
    Locale('bg'),
    Locale('bn'),
    Locale('bo'),
    Locale('bs'),
    Locale('ca'),
    Locale('cs'),
    Locale('cy'),
    Locale('da'),
    Locale('de'),
    Locale('dz'),
    Locale('el'),
    Locale('en'),
    Locale('eo'),
    Locale('es'),
    Locale('et'),
    Locale('eu'),
    Locale('fa'),
    Locale('fi'),
    Locale('fr'),
    Locale('ga'),
    Locale('gl'),
    Locale('gu'),
    Locale('he'),
    Locale('hi'),
    Locale('hr'),
    Locale('hu'),
    Locale('id'),
    Locale('is'),
    Locale('it'),
    Locale('ja'),
    Locale('ka'),
    Locale('kk'),
    Locale('km'),
    Locale('kn'),
    Locale('ko'),
    Locale('ku'),
    Locale('lo'),
    Locale('lt'),
    Locale('lv'),
    Locale('mk'),
    Locale('ml'),
    Locale('mr'),
    Locale('my'),
    Locale('nb'),
    Locale('ne'),
    Locale('nl'),
    Locale('nn'),
    Locale('oc'),
    Locale('pa'),
    Locale('pl'),
    Locale('pt'),
    Locale('pt', 'BR'),
    Locale('ro'),
    Locale('ru'),
    Locale('se'),
    Locale('si'),
    Locale('sk'),
    Locale('sl'),
    Locale('sq'),
    Locale('sr'),
    Locale('sv'),
    Locale('ta'),
    Locale('te'),
    Locale('tg'),
    Locale('th'),
    Locale('tl'),
    Locale('tr'),
    Locale('ug'),
    Locale('uk'),
    Locale('vi'),
    Locale('zh'),
    Locale('zh', 'TW')
  ];

  /// No description provided for @accessibilityPageTitle.
  ///
  /// In en, this message translates to:
  /// **'Accessibility'**
  String get accessibilityPageTitle;

  /// No description provided for @accessibilityPageHeader.
  ///
  /// In en, this message translates to:
  /// **'Accessibility in {DISTRO}'**
  String accessibilityPageHeader(String DISTRO);

  /// No description provided for @accessibilityPageBody.
  ///
  /// In en, this message translates to:
  /// **'Customise {DISTRO} to your needs before you set up. You can change them later in System Settings.'**
  String accessibilityPageBody(String DISTRO);

  /// No description provided for @accessibilitySeeingLabel.
  ///
  /// In en, this message translates to:
  /// **'Seeing'**
  String get accessibilitySeeingLabel;

  /// No description provided for @accessibilityHearingLabel.
  ///
  /// In en, this message translates to:
  /// **'Hearing'**
  String get accessibilityHearingLabel;

  /// No description provided for @accessibilityTypingLabel.
  ///
  /// In en, this message translates to:
  /// **'Typing'**
  String get accessibilityTypingLabel;

  /// No description provided for @accessibilityPointingLabel.
  ///
  /// In en, this message translates to:
  /// **'Pointing and clicking'**
  String get accessibilityPointingLabel;

  /// No description provided for @accessibilityZoomLabel.
  ///
  /// In en, this message translates to:
  /// **'Zoom'**
  String get accessibilityZoomLabel;

  /// No description provided for @accessibilityHighContrastLabel.
  ///
  /// In en, this message translates to:
  /// **'High contrast'**
  String get accessibilityHighContrastLabel;

  /// No description provided for @accessibilityLargeTextLabel.
  ///
  /// In en, this message translates to:
  /// **'Large text'**
  String get accessibilityLargeTextLabel;

  /// No description provided for @accessibilityReduceAnimationLabel.
  ///
  /// In en, this message translates to:
  /// **'Reduce animation'**
  String get accessibilityReduceAnimationLabel;

  /// No description provided for @accessibilityScreenReaderLabel.
  ///
  /// In en, this message translates to:
  /// **'Screen reader'**
  String get accessibilityScreenReaderLabel;

  /// No description provided for @accessibilityVisualAlertsLabel.
  ///
  /// In en, this message translates to:
  /// **'Visual alerts'**
  String get accessibilityVisualAlertsLabel;

  /// No description provided for @accessibilityStickKeysLabel.
  ///
  /// In en, this message translates to:
  /// **'Sticky keys'**
  String get accessibilityStickKeysLabel;

  /// No description provided for @accessibilitySlowKeysLabel.
  ///
  /// In en, this message translates to:
  /// **'Slow keys'**
  String get accessibilitySlowKeysLabel;

  /// No description provided for @accessibilityMouseKeysLabel.
  ///
  /// In en, this message translates to:
  /// **'Mouse keys'**
  String get accessibilityMouseKeysLabel;

  /// No description provided for @accessibilityDesktopZoomLabel.
  ///
  /// In en, this message translates to:
  /// **'Desktop zoom'**
  String get accessibilityDesktopZoomLabel;

  /// No description provided for @errorPageTitle.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong'**
  String get errorPageTitle;

  /// No description provided for @errorPageUnexpected.
  ///
  /// In en, this message translates to:
  /// **'We\'re sorry, but we\'re not sure what the error is. You can try restarting your computer and start the installation process again. You can can also <a>report the issue</a>.'**
  String get errorPageUnexpected;

  /// No description provided for @errorPageUbuntuBug.
  ///
  /// In en, this message translates to:
  /// **'To send an automated bug report including relevant debug information, please run <pre>sudo ubuntu-bug {SNAP}</pre> in a terminal, or from the command console (Alt+F2).'**
  String errorPageUbuntuBug(String SNAP);

  /// No description provided for @errorPageShowLog.
  ///
  /// In en, this message translates to:
  /// **'Show log'**
  String get errorPageShowLog;

  /// No description provided for @errorPageHideLog.
  ///
  /// In en, this message translates to:
  /// **'Hide log'**
  String get errorPageHideLog;

  /// No description provided for @restart.
  ///
  /// In en, this message translates to:
  /// **'Restart'**
  String get restart;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @timezonePageTitle.
  ///
  /// In en, this message translates to:
  /// **'Select your timezone'**
  String get timezonePageTitle;

  /// No description provided for @timezoneLocationLabel.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get timezoneLocationLabel;

  /// No description provided for @timezoneTimezoneLabel.
  ///
  /// In en, this message translates to:
  /// **'Timezone'**
  String get timezoneTimezoneLabel;

  /// No description provided for @keyboardTitle.
  ///
  /// In en, this message translates to:
  /// **'Keyboard layout'**
  String get keyboardTitle;

  /// No description provided for @keyboardHeader.
  ///
  /// In en, this message translates to:
  /// **'Select your keyboard layout'**
  String get keyboardHeader;

  /// No description provided for @keyboardTestHint.
  ///
  /// In en, this message translates to:
  /// **'Type here to test your keyboard'**
  String get keyboardTestHint;

  /// No description provided for @keyboardDetectTitle.
  ///
  /// In en, this message translates to:
  /// **'Detect keyboard layout'**
  String get keyboardDetectTitle;

  /// No description provided for @keyboardDetectButton.
  ///
  /// In en, this message translates to:
  /// **'Detect'**
  String get keyboardDetectButton;

  /// No description provided for @keyboardVariantLabel.
  ///
  /// In en, this message translates to:
  /// **'Select your keyboard variant:'**
  String get keyboardVariantLabel;

  /// No description provided for @keyboardPressKeyLabel.
  ///
  /// In en, this message translates to:
  /// **'Please press one of the following keys:'**
  String get keyboardPressKeyLabel;

  /// No description provided for @keyboardKeyPresentLabel.
  ///
  /// In en, this message translates to:
  /// **'Is the following key present on your keyboard?'**
  String get keyboardKeyPresentLabel;

  /// No description provided for @themePageTitle.
  ///
  /// In en, this message translates to:
  /// **'Choose your theme'**
  String get themePageTitle;

  /// No description provided for @themePageHeader.
  ///
  /// In en, this message translates to:
  /// **'You can always change this later in the appearance settings.'**
  String get themePageHeader;

  /// No description provided for @themeDark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get themeDark;

  /// No description provided for @themeLight.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get themeLight;

  /// No description provided for @localePageTitle.
  ///
  /// In en, this message translates to:
  /// **'Welcome to {DISTRO}'**
  String localePageTitle(String DISTRO);

  /// No description provided for @localeHeader.
  ///
  /// In en, this message translates to:
  /// **'Choose your language:'**
  String get localeHeader;

  /// No description provided for @identityPageTitle.
  ///
  /// In en, this message translates to:
  /// **'Create your account'**
  String get identityPageTitle;

  /// No description provided for @identityAutoLogin.
  ///
  /// In en, this message translates to:
  /// **'Log in automatically'**
  String get identityAutoLogin;

  /// No description provided for @identityRequirePassword.
  ///
  /// In en, this message translates to:
  /// **'Require my password to log in'**
  String get identityRequirePassword;

  /// No description provided for @identityRealNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Your name'**
  String get identityRealNameLabel;

  /// No description provided for @identityRealNameRequired.
  ///
  /// In en, this message translates to:
  /// **'A name is required'**
  String get identityRealNameRequired;

  /// No description provided for @identityRealNameTooLong.
  ///
  /// In en, this message translates to:
  /// **'That name is too long.'**
  String get identityRealNameTooLong;

  /// No description provided for @identityHostnameLabel.
  ///
  /// In en, this message translates to:
  /// **'Your computer\'s name'**
  String get identityHostnameLabel;

  /// No description provided for @identityHostnameInfo.
  ///
  /// In en, this message translates to:
  /// **'The name it uses when it talks to other computers.'**
  String get identityHostnameInfo;

  /// No description provided for @identityHostnameRequired.
  ///
  /// In en, this message translates to:
  /// **'A computer name is required'**
  String get identityHostnameRequired;

  /// No description provided for @identityHostnameTooLong.
  ///
  /// In en, this message translates to:
  /// **'That computer name is too long.'**
  String get identityHostnameTooLong;

  /// No description provided for @identityInvalidHostname.
  ///
  /// In en, this message translates to:
  /// **'The computer name is invalid'**
  String get identityInvalidHostname;

  /// No description provided for @identityUsernameLabel.
  ///
  /// In en, this message translates to:
  /// **'Your username'**
  String get identityUsernameLabel;

  /// No description provided for @identityUsernameRequired.
  ///
  /// In en, this message translates to:
  /// **'A username is required'**
  String get identityUsernameRequired;

  /// No description provided for @identityInvalidUsername.
  ///
  /// In en, this message translates to:
  /// **'The username is invalid'**
  String get identityInvalidUsername;

  /// No description provided for @identityUsernameInUse.
  ///
  /// In en, this message translates to:
  /// **'That user name already exists.'**
  String get identityUsernameInUse;

  /// No description provided for @identityUsernameSystemReserved.
  ///
  /// In en, this message translates to:
  /// **'That name is reserved for system usage.'**
  String get identityUsernameSystemReserved;

  /// No description provided for @identityUsernameTooLong.
  ///
  /// In en, this message translates to:
  /// **'That name is too long.'**
  String get identityUsernameTooLong;

  /// No description provided for @identityUsernameInvalidChars.
  ///
  /// In en, this message translates to:
  /// **'That name contains invalid characters.'**
  String get identityUsernameInvalidChars;

  /// No description provided for @identityPasswordLabel.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get identityPasswordLabel;

  /// No description provided for @identityPasswordRequired.
  ///
  /// In en, this message translates to:
  /// **'A password is required'**
  String get identityPasswordRequired;

  /// No description provided for @identityConfirmPasswordLabel.
  ///
  /// In en, this message translates to:
  /// **'Confirm password'**
  String get identityConfirmPasswordLabel;

  /// No description provided for @identityPasswordMismatch.
  ///
  /// In en, this message translates to:
  /// **'The passwords do not match'**
  String get identityPasswordMismatch;

  /// No description provided for @identityPasswordShow.
  ///
  /// In en, this message translates to:
  /// **'Show'**
  String get identityPasswordShow;

  /// No description provided for @identityPasswordHide.
  ///
  /// In en, this message translates to:
  /// **'Hide'**
  String get identityPasswordHide;

  /// No description provided for @identityActiveDirectoryOption.
  ///
  /// In en, this message translates to:
  /// **'Use Active Directory'**
  String get identityActiveDirectoryOption;

  /// No description provided for @identityActiveDirectoryInfo.
  ///
  /// In en, this message translates to:
  /// **'You\'ll enter domain and other details in the next step.'**
  String get identityActiveDirectoryInfo;

  /// No description provided for @activeDirectoryTitle.
  ///
  /// In en, this message translates to:
  /// **'Log into Active Directory'**
  String get activeDirectoryTitle;

  /// No description provided for @activeDirectoryHeader.
  ///
  /// In en, this message translates to:
  /// **'Log into Active Directory?'**
  String get activeDirectoryHeader;

  /// No description provided for @activeDirectoryInfo.
  ///
  /// In en, this message translates to:
  /// **'{DISTRO} is designed to integrate seamlessly with Active Directory for easier administration.'**
  String activeDirectoryInfo(String DISTRO);

  /// No description provided for @activeDirectoryTestConnection.
  ///
  /// In en, this message translates to:
  /// **'Test domain connectivity'**
  String get activeDirectoryTestConnection;

  /// No description provided for @activeDirectoryDomainLabel.
  ///
  /// In en, this message translates to:
  /// **'Domain'**
  String get activeDirectoryDomainLabel;

  /// No description provided for @activeDirectoryDomainEmpty.
  ///
  /// In en, this message translates to:
  /// **'Required'**
  String get activeDirectoryDomainEmpty;

  /// No description provided for @activeDirectoryDomainTooLong.
  ///
  /// In en, this message translates to:
  /// **'Too long'**
  String get activeDirectoryDomainTooLong;

  /// No description provided for @activeDirectoryDomainInvalidChars.
  ///
  /// In en, this message translates to:
  /// **'Invalid characters'**
  String get activeDirectoryDomainInvalidChars;

  /// No description provided for @activeDirectoryDomainStartDot.
  ///
  /// In en, this message translates to:
  /// **'Starts with a dot (.)'**
  String get activeDirectoryDomainStartDot;

  /// No description provided for @activeDirectoryDomainEndDot.
  ///
  /// In en, this message translates to:
  /// **'Ends with a dot (.)'**
  String get activeDirectoryDomainEndDot;

  /// No description provided for @activeDirectoryDomainStartHyphen.
  ///
  /// In en, this message translates to:
  /// **'Starts with a hyphen (-)'**
  String get activeDirectoryDomainStartHyphen;

  /// No description provided for @activeDirectoryDomainEndHyphen.
  ///
  /// In en, this message translates to:
  /// **'Ends with a hyphen (-)'**
  String get activeDirectoryDomainEndHyphen;

  /// No description provided for @activeDirectoryDomainMultipleDots.
  ///
  /// In en, this message translates to:
  /// **'Contains multiple sequenced dots (..)'**
  String get activeDirectoryDomainMultipleDots;

  /// No description provided for @activeDirectoryDomainNotFound.
  ///
  /// In en, this message translates to:
  /// **'Domain not found'**
  String get activeDirectoryDomainNotFound;

  /// No description provided for @activeDirectoryAdminLabel.
  ///
  /// In en, this message translates to:
  /// **'Domain join user'**
  String get activeDirectoryAdminLabel;

  /// No description provided for @activeDirectoryAdminEmpty.
  ///
  /// In en, this message translates to:
  /// **'Required'**
  String get activeDirectoryAdminEmpty;

  /// No description provided for @activeDirectoryAdminInvalidChars.
  ///
  /// In en, this message translates to:
  /// **'Invalid characters'**
  String get activeDirectoryAdminInvalidChars;

  /// No description provided for @activeDirectoryPasswordLabel.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get activeDirectoryPasswordLabel;

  /// No description provided for @activeDirectoryPasswordEmpty.
  ///
  /// In en, this message translates to:
  /// **'Required'**
  String get activeDirectoryPasswordEmpty;

  /// No description provided for @activeDirectoryErrorTitle.
  ///
  /// In en, this message translates to:
  /// **'Error configuring connection to Active Directory'**
  String get activeDirectoryErrorTitle;

  /// No description provided for @activeDirectoryErrorMessage.
  ///
  /// In en, this message translates to:
  /// **'Sorry, Active Directory can\'t be set up at the moment. Once your system is up and running, visit <a href=\"https://help.ubuntu.com/activedirectory\">help.ubuntu.com/activedirectory</a> for help.'**
  String get activeDirectoryErrorMessage;

  /// No description provided for @networkPageTitle.
  ///
  /// In en, this message translates to:
  /// **'Internet connection'**
  String get networkPageTitle;

  /// No description provided for @networkPageHeader.
  ///
  /// In en, this message translates to:
  /// **'Connect to the internet'**
  String get networkPageHeader;

  /// No description provided for @networkPageBody.
  ///
  /// In en, this message translates to:
  /// **'An internet connection will improve your installation with compatibility check and extra software packages.'**
  String get networkPageBody;

  /// No description provided for @networkWiredOption.
  ///
  /// In en, this message translates to:
  /// **'Use wired connection'**
  String get networkWiredOption;

  /// No description provided for @networkWiredNone.
  ///
  /// In en, this message translates to:
  /// **'No wired connection detected'**
  String get networkWiredNone;

  /// No description provided for @networkWiredOff.
  ///
  /// In en, this message translates to:
  /// **'Wired connection is turned off'**
  String get networkWiredOff;

  /// No description provided for @networkWiredDisabled.
  ///
  /// In en, this message translates to:
  /// **'To use Ethernet on this computer, a wired connection must be enabled'**
  String get networkWiredDisabled;

  /// No description provided for @networkWiredEnable.
  ///
  /// In en, this message translates to:
  /// **'Enable wired'**
  String get networkWiredEnable;

  /// No description provided for @networkWifiOption.
  ///
  /// In en, this message translates to:
  /// **'Connect to a Wi-Fi network'**
  String get networkWifiOption;

  /// No description provided for @networkWifiOff.
  ///
  /// In en, this message translates to:
  /// **'Wireless networking disabled'**
  String get networkWifiOff;

  /// No description provided for @networkWifiNone.
  ///
  /// In en, this message translates to:
  /// **'No Wi-Fi devices detected'**
  String get networkWifiNone;

  /// No description provided for @networkWifiDisabled.
  ///
  /// In en, this message translates to:
  /// **'To use Wi-Fi on this computer, wireless networking must be enabled'**
  String get networkWifiDisabled;

  /// No description provided for @networkWifiEnable.
  ///
  /// In en, this message translates to:
  /// **'Enable Wi-Fi'**
  String get networkWifiEnable;

  /// No description provided for @networkHiddenWifiOption.
  ///
  /// In en, this message translates to:
  /// **'Connect to a hidden Wi-Fi network'**
  String get networkHiddenWifiOption;

  /// No description provided for @networkHiddenWifiNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Network name'**
  String get networkHiddenWifiNameLabel;

  /// No description provided for @networkHiddenWifiNameRequired.
  ///
  /// In en, this message translates to:
  /// **'A network name is required'**
  String get networkHiddenWifiNameRequired;

  /// No description provided for @networkNoneOption.
  ///
  /// In en, this message translates to:
  /// **'Do not connect to the internet'**
  String get networkNoneOption;

  /// No description provided for @eulaPageTitle.
  ///
  /// In en, this message translates to:
  /// **'License agreement'**
  String get eulaPageTitle;

  /// No description provided for @eulaReviewTerms.
  ///
  /// In en, this message translates to:
  /// **'Review the license terms'**
  String get eulaReviewTerms;

  /// No description provided for @eulaReadAndAcceptTerms.
  ///
  /// In en, this message translates to:
  /// **'To continue setting up this machine, you must read and accept the license agreement terms.'**
  String get eulaReadAndAcceptTerms;

  /// No description provided for @eulaAcceptTerms.
  ///
  /// In en, this message translates to:
  /// **'I have read and accept these terms'**
  String get eulaAcceptTerms;

  /// No description provided for @successIconSemanticLabel.
  ///
  /// In en, this message translates to:
  /// **'Success'**
  String get successIconSemanticLabel;
}

class _UbuntuProvisionLocalizationsDelegate
    extends LocalizationsDelegate<UbuntuProvisionLocalizations> {
  const _UbuntuProvisionLocalizationsDelegate();

  @override
  Future<UbuntuProvisionLocalizations> load(Locale locale) {
    return SynchronousFuture<UbuntuProvisionLocalizations>(
        lookupUbuntuProvisionLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
        'am',
        'ar',
        'be',
        'bg',
        'bn',
        'bo',
        'bs',
        'ca',
        'cs',
        'cy',
        'da',
        'de',
        'dz',
        'el',
        'en',
        'eo',
        'es',
        'et',
        'eu',
        'fa',
        'fi',
        'fr',
        'ga',
        'gl',
        'gu',
        'he',
        'hi',
        'hr',
        'hu',
        'id',
        'is',
        'it',
        'ja',
        'ka',
        'kk',
        'km',
        'kn',
        'ko',
        'ku',
        'lo',
        'lt',
        'lv',
        'mk',
        'ml',
        'mr',
        'my',
        'nb',
        'ne',
        'nl',
        'nn',
        'oc',
        'pa',
        'pl',
        'pt',
        'ro',
        'ru',
        'se',
        'si',
        'sk',
        'sl',
        'sq',
        'sr',
        'sv',
        'ta',
        'te',
        'tg',
        'th',
        'tl',
        'tr',
        'ug',
        'uk',
        'vi',
        'zh'
      ].contains(locale.languageCode);

  @override
  bool shouldReload(_UbuntuProvisionLocalizationsDelegate old) => false;
}

UbuntuProvisionLocalizations lookupUbuntuProvisionLocalizations(Locale locale) {
  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'pt':
      {
        switch (locale.countryCode) {
          case 'BR':
            return UbuntuProvisionLocalizationsPtBr();
        }
        break;
      }
    case 'zh':
      {
        switch (locale.countryCode) {
          case 'TW':
            return UbuntuProvisionLocalizationsZhTw();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'am':
      return UbuntuProvisionLocalizationsAm();
    case 'ar':
      return UbuntuProvisionLocalizationsAr();
    case 'be':
      return UbuntuProvisionLocalizationsBe();
    case 'bg':
      return UbuntuProvisionLocalizationsBg();
    case 'bn':
      return UbuntuProvisionLocalizationsBn();
    case 'bo':
      return UbuntuProvisionLocalizationsBo();
    case 'bs':
      return UbuntuProvisionLocalizationsBs();
    case 'ca':
      return UbuntuProvisionLocalizationsCa();
    case 'cs':
      return UbuntuProvisionLocalizationsCs();
    case 'cy':
      return UbuntuProvisionLocalizationsCy();
    case 'da':
      return UbuntuProvisionLocalizationsDa();
    case 'de':
      return UbuntuProvisionLocalizationsDe();
    case 'dz':
      return UbuntuProvisionLocalizationsDz();
    case 'el':
      return UbuntuProvisionLocalizationsEl();
    case 'en':
      return UbuntuProvisionLocalizationsEn();
    case 'eo':
      return UbuntuProvisionLocalizationsEo();
    case 'es':
      return UbuntuProvisionLocalizationsEs();
    case 'et':
      return UbuntuProvisionLocalizationsEt();
    case 'eu':
      return UbuntuProvisionLocalizationsEu();
    case 'fa':
      return UbuntuProvisionLocalizationsFa();
    case 'fi':
      return UbuntuProvisionLocalizationsFi();
    case 'fr':
      return UbuntuProvisionLocalizationsFr();
    case 'ga':
      return UbuntuProvisionLocalizationsGa();
    case 'gl':
      return UbuntuProvisionLocalizationsGl();
    case 'gu':
      return UbuntuProvisionLocalizationsGu();
    case 'he':
      return UbuntuProvisionLocalizationsHe();
    case 'hi':
      return UbuntuProvisionLocalizationsHi();
    case 'hr':
      return UbuntuProvisionLocalizationsHr();
    case 'hu':
      return UbuntuProvisionLocalizationsHu();
    case 'id':
      return UbuntuProvisionLocalizationsId();
    case 'is':
      return UbuntuProvisionLocalizationsIs();
    case 'it':
      return UbuntuProvisionLocalizationsIt();
    case 'ja':
      return UbuntuProvisionLocalizationsJa();
    case 'ka':
      return UbuntuProvisionLocalizationsKa();
    case 'kk':
      return UbuntuProvisionLocalizationsKk();
    case 'km':
      return UbuntuProvisionLocalizationsKm();
    case 'kn':
      return UbuntuProvisionLocalizationsKn();
    case 'ko':
      return UbuntuProvisionLocalizationsKo();
    case 'ku':
      return UbuntuProvisionLocalizationsKu();
    case 'lo':
      return UbuntuProvisionLocalizationsLo();
    case 'lt':
      return UbuntuProvisionLocalizationsLt();
    case 'lv':
      return UbuntuProvisionLocalizationsLv();
    case 'mk':
      return UbuntuProvisionLocalizationsMk();
    case 'ml':
      return UbuntuProvisionLocalizationsMl();
    case 'mr':
      return UbuntuProvisionLocalizationsMr();
    case 'my':
      return UbuntuProvisionLocalizationsMy();
    case 'nb':
      return UbuntuProvisionLocalizationsNb();
    case 'ne':
      return UbuntuProvisionLocalizationsNe();
    case 'nl':
      return UbuntuProvisionLocalizationsNl();
    case 'nn':
      return UbuntuProvisionLocalizationsNn();
    case 'oc':
      return UbuntuProvisionLocalizationsOc();
    case 'pa':
      return UbuntuProvisionLocalizationsPa();
    case 'pl':
      return UbuntuProvisionLocalizationsPl();
    case 'pt':
      return UbuntuProvisionLocalizationsPt();
    case 'ro':
      return UbuntuProvisionLocalizationsRo();
    case 'ru':
      return UbuntuProvisionLocalizationsRu();
    case 'se':
      return UbuntuProvisionLocalizationsSe();
    case 'si':
      return UbuntuProvisionLocalizationsSi();
    case 'sk':
      return UbuntuProvisionLocalizationsSk();
    case 'sl':
      return UbuntuProvisionLocalizationsSl();
    case 'sq':
      return UbuntuProvisionLocalizationsSq();
    case 'sr':
      return UbuntuProvisionLocalizationsSr();
    case 'sv':
      return UbuntuProvisionLocalizationsSv();
    case 'ta':
      return UbuntuProvisionLocalizationsTa();
    case 'te':
      return UbuntuProvisionLocalizationsTe();
    case 'tg':
      return UbuntuProvisionLocalizationsTg();
    case 'th':
      return UbuntuProvisionLocalizationsTh();
    case 'tl':
      return UbuntuProvisionLocalizationsTl();
    case 'tr':
      return UbuntuProvisionLocalizationsTr();
    case 'ug':
      return UbuntuProvisionLocalizationsUg();
    case 'uk':
      return UbuntuProvisionLocalizationsUk();
    case 'vi':
      return UbuntuProvisionLocalizationsVi();
    case 'zh':
      return UbuntuProvisionLocalizationsZh();
  }

  throw FlutterError(
      'UbuntuProvisionLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
