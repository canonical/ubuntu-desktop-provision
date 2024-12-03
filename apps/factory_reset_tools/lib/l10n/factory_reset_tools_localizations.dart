import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'factory_reset_tools_localizations_am.dart';
import 'factory_reset_tools_localizations_ar.dart';
import 'factory_reset_tools_localizations_be.dart';
import 'factory_reset_tools_localizations_bg.dart';
import 'factory_reset_tools_localizations_bn.dart';
import 'factory_reset_tools_localizations_bo.dart';
import 'factory_reset_tools_localizations_bs.dart';
import 'factory_reset_tools_localizations_ca.dart';
import 'factory_reset_tools_localizations_cs.dart';
import 'factory_reset_tools_localizations_cy.dart';
import 'factory_reset_tools_localizations_da.dart';
import 'factory_reset_tools_localizations_de.dart';
import 'factory_reset_tools_localizations_dz.dart';
import 'factory_reset_tools_localizations_el.dart';
import 'factory_reset_tools_localizations_en.dart';
import 'factory_reset_tools_localizations_eo.dart';
import 'factory_reset_tools_localizations_es.dart';
import 'factory_reset_tools_localizations_et.dart';
import 'factory_reset_tools_localizations_eu.dart';
import 'factory_reset_tools_localizations_fa.dart';
import 'factory_reset_tools_localizations_fi.dart';
import 'factory_reset_tools_localizations_fr.dart';
import 'factory_reset_tools_localizations_ga.dart';
import 'factory_reset_tools_localizations_gl.dart';
import 'factory_reset_tools_localizations_gu.dart';
import 'factory_reset_tools_localizations_he.dart';
import 'factory_reset_tools_localizations_hi.dart';
import 'factory_reset_tools_localizations_hr.dart';
import 'factory_reset_tools_localizations_hu.dart';
import 'factory_reset_tools_localizations_id.dart';
import 'factory_reset_tools_localizations_is.dart';
import 'factory_reset_tools_localizations_it.dart';
import 'factory_reset_tools_localizations_ja.dart';
import 'factory_reset_tools_localizations_ka.dart';
import 'factory_reset_tools_localizations_kk.dart';
import 'factory_reset_tools_localizations_km.dart';
import 'factory_reset_tools_localizations_kn.dart';
import 'factory_reset_tools_localizations_ko.dart';
import 'factory_reset_tools_localizations_ku.dart';
import 'factory_reset_tools_localizations_lo.dart';
import 'factory_reset_tools_localizations_lt.dart';
import 'factory_reset_tools_localizations_lv.dart';
import 'factory_reset_tools_localizations_mk.dart';
import 'factory_reset_tools_localizations_ml.dart';
import 'factory_reset_tools_localizations_mr.dart';
import 'factory_reset_tools_localizations_my.dart';
import 'factory_reset_tools_localizations_nb.dart';
import 'factory_reset_tools_localizations_ne.dart';
import 'factory_reset_tools_localizations_nl.dart';
import 'factory_reset_tools_localizations_nn.dart';
import 'factory_reset_tools_localizations_oc.dart';
import 'factory_reset_tools_localizations_pa.dart';
import 'factory_reset_tools_localizations_pl.dart';
import 'factory_reset_tools_localizations_pt.dart';
import 'factory_reset_tools_localizations_ro.dart';
import 'factory_reset_tools_localizations_ru.dart';
import 'factory_reset_tools_localizations_se.dart';
import 'factory_reset_tools_localizations_si.dart';
import 'factory_reset_tools_localizations_sk.dart';
import 'factory_reset_tools_localizations_sl.dart';
import 'factory_reset_tools_localizations_sq.dart';
import 'factory_reset_tools_localizations_sr.dart';
import 'factory_reset_tools_localizations_sv.dart';
import 'factory_reset_tools_localizations_ta.dart';
import 'factory_reset_tools_localizations_te.dart';
import 'factory_reset_tools_localizations_tg.dart';
import 'factory_reset_tools_localizations_th.dart';
import 'factory_reset_tools_localizations_tl.dart';
import 'factory_reset_tools_localizations_tr.dart';
import 'factory_reset_tools_localizations_ug.dart';
import 'factory_reset_tools_localizations_uk.dart';
import 'factory_reset_tools_localizations_vi.dart';
import 'factory_reset_tools_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of FactoryResetToolsLocalizations
/// returned by `FactoryResetToolsLocalizations.of(context)`.
///
/// Applications need to include `FactoryResetToolsLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/factory_reset_tools_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: FactoryResetToolsLocalizations.localizationsDelegates,
///   supportedLocales: FactoryResetToolsLocalizations.supportedLocales,
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
/// be consistent with the languages listed in the FactoryResetToolsLocalizations.supportedLocales
/// property.
abstract class FactoryResetToolsLocalizations {
  FactoryResetToolsLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static FactoryResetToolsLocalizations of(BuildContext context) {
    return Localizations.of<FactoryResetToolsLocalizations>(context, FactoryResetToolsLocalizations)!;
  }

  static const LocalizationsDelegate<FactoryResetToolsLocalizations> delegate = _FactoryResetToolsLocalizationsDelegate();

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
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
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

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Factory reset tools'**
  String get appTitle;

  /// No description provided for @windowTitle.
  ///
  /// In en, this message translates to:
  /// **'Factory reset tools'**
  String get windowTitle;

  /// No description provided for @homeTitle.
  ///
  /// In en, this message translates to:
  /// **'What would you like to do?'**
  String get homeTitle;

  /// No description provided for @createResetMedia.
  ///
  /// In en, this message translates to:
  /// **'Create reset media'**
  String get createResetMedia;

  /// No description provided for @startFactoryReset.
  ///
  /// In en, this message translates to:
  /// **'Start factory reset'**
  String get startFactoryReset;

  /// No description provided for @createUsbTitle.
  ///
  /// In en, this message translates to:
  /// **'Create a USB reset media'**
  String get createUsbTitle;

  /// No description provided for @createUsbBody.
  ///
  /// In en, this message translates to:
  /// **'Create a USB reset media to restore the system, as well as customising your Ubuntu installations.'**
  String get createUsbBody;

  /// No description provided for @createUsbListExplanation.
  ///
  /// In en, this message translates to:
  /// **'Select a USB flash drive. The drive must have **at least 16GB of space.**'**
  String get createUsbListExplanation;

  /// No description provided for @createUsbWarning.
  ///
  /// In en, this message translates to:
  /// **'The flash drive will be reformatted and all data on the drive will be lost.'**
  String get createUsbWarning;

  /// No description provided for @resetMediaTitle.
  ///
  /// In en, this message translates to:
  /// **'USB reset media'**
  String get resetMediaTitle;

  /// No description provided for @noMediaDetected.
  ///
  /// In en, this message translates to:
  /// **'No removable storage is detected'**
  String get noMediaDetected;

  /// No description provided for @noMediaDetectedSubtitle.
  ///
  /// In en, this message translates to:
  /// **'You need a USB storage to create a Factory Reset Media.'**
  String get noMediaDetectedSubtitle;

  /// No description provided for @factoryResetTitle.
  ///
  /// In en, this message translates to:
  /// **'Select an option to start factory reset'**
  String get factoryResetTitle;

  /// No description provided for @loadingDrives.
  ///
  /// In en, this message translates to:
  /// **'Please wait while we fetch the drives.'**
  String get loadingDrives;

  /// No description provided for @resetMediaReadyTitle.
  ///
  /// In en, this message translates to:
  /// **'USB reset media is ready'**
  String get resetMediaReadyTitle;

  /// No description provided for @resetMediaReadyBody.
  ///
  /// In en, this message translates to:
  /// **'When you want to use it, please insert the USB drive into the computer you want to reset and restart it.'**
  String get resetMediaReadyBody;

  /// No description provided for @errorLoadingDrives.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while fetching the drives.'**
  String get errorLoadingDrives;

  /// No description provided for @resetMediaInitializing.
  ///
  /// In en, this message translates to:
  /// **'Initializing'**
  String get resetMediaInitializing;

  /// No description provided for @resetMediaCopying.
  ///
  /// In en, this message translates to:
  /// **'Copying'**
  String get resetMediaCopying;

  /// No description provided for @resetMediaFinalizing.
  ///
  /// In en, this message translates to:
  /// **'Finalizing'**
  String get resetMediaFinalizing;

  /// No description provided for @resetMediaFinished.
  ///
  /// In en, this message translates to:
  /// **'Finished'**
  String get resetMediaFinished;

  /// No description provided for @resetMediaFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed'**
  String get resetMediaFailed;

  /// No description provided for @error.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get loading;

  /// No description provided for @warning.
  ///
  /// In en, this message translates to:
  /// **'Warning'**
  String get warning;

  /// No description provided for @restore.
  ///
  /// In en, this message translates to:
  /// **'Restore'**
  String get restore;

  /// No description provided for @restart.
  ///
  /// In en, this message translates to:
  /// **'Restart'**
  String get restart;

  /// No description provided for @reformat.
  ///
  /// In en, this message translates to:
  /// **'Reformat'**
  String get reformat;

  /// No description provided for @failed.
  ///
  /// In en, this message translates to:
  /// **'Failed to run command'**
  String get failed;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;
}

class _FactoryResetToolsLocalizationsDelegate extends LocalizationsDelegate<FactoryResetToolsLocalizations> {
  const _FactoryResetToolsLocalizationsDelegate();

  @override
  Future<FactoryResetToolsLocalizations> load(Locale locale) {
    return SynchronousFuture<FactoryResetToolsLocalizations>(lookupFactoryResetToolsLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['am', 'ar', 'be', 'bg', 'bn', 'bo', 'bs', 'ca', 'cs', 'cy', 'da', 'de', 'dz', 'el', 'en', 'eo', 'es', 'et', 'eu', 'fa', 'fi', 'fr', 'ga', 'gl', 'gu', 'he', 'hi', 'hr', 'hu', 'id', 'is', 'it', 'ja', 'ka', 'kk', 'km', 'kn', 'ko', 'ku', 'lo', 'lt', 'lv', 'mk', 'ml', 'mr', 'my', 'nb', 'ne', 'nl', 'nn', 'oc', 'pa', 'pl', 'pt', 'ro', 'ru', 'se', 'si', 'sk', 'sl', 'sq', 'sr', 'sv', 'ta', 'te', 'tg', 'th', 'tl', 'tr', 'ug', 'uk', 'vi', 'zh'].contains(locale.languageCode);

  @override
  bool shouldReload(_FactoryResetToolsLocalizationsDelegate old) => false;
}

FactoryResetToolsLocalizations lookupFactoryResetToolsLocalizations(Locale locale) {

  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'pt': {
  switch (locale.countryCode) {
    case 'BR': return FactoryResetToolsLocalizationsPtBr();
   }
  break;
   }
    case 'zh': {
  switch (locale.countryCode) {
    case 'TW': return FactoryResetToolsLocalizationsZhTw();
   }
  break;
   }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'am': return FactoryResetToolsLocalizationsAm();
    case 'ar': return FactoryResetToolsLocalizationsAr();
    case 'be': return FactoryResetToolsLocalizationsBe();
    case 'bg': return FactoryResetToolsLocalizationsBg();
    case 'bn': return FactoryResetToolsLocalizationsBn();
    case 'bo': return FactoryResetToolsLocalizationsBo();
    case 'bs': return FactoryResetToolsLocalizationsBs();
    case 'ca': return FactoryResetToolsLocalizationsCa();
    case 'cs': return FactoryResetToolsLocalizationsCs();
    case 'cy': return FactoryResetToolsLocalizationsCy();
    case 'da': return FactoryResetToolsLocalizationsDa();
    case 'de': return FactoryResetToolsLocalizationsDe();
    case 'dz': return FactoryResetToolsLocalizationsDz();
    case 'el': return FactoryResetToolsLocalizationsEl();
    case 'en': return FactoryResetToolsLocalizationsEn();
    case 'eo': return FactoryResetToolsLocalizationsEo();
    case 'es': return FactoryResetToolsLocalizationsEs();
    case 'et': return FactoryResetToolsLocalizationsEt();
    case 'eu': return FactoryResetToolsLocalizationsEu();
    case 'fa': return FactoryResetToolsLocalizationsFa();
    case 'fi': return FactoryResetToolsLocalizationsFi();
    case 'fr': return FactoryResetToolsLocalizationsFr();
    case 'ga': return FactoryResetToolsLocalizationsGa();
    case 'gl': return FactoryResetToolsLocalizationsGl();
    case 'gu': return FactoryResetToolsLocalizationsGu();
    case 'he': return FactoryResetToolsLocalizationsHe();
    case 'hi': return FactoryResetToolsLocalizationsHi();
    case 'hr': return FactoryResetToolsLocalizationsHr();
    case 'hu': return FactoryResetToolsLocalizationsHu();
    case 'id': return FactoryResetToolsLocalizationsId();
    case 'is': return FactoryResetToolsLocalizationsIs();
    case 'it': return FactoryResetToolsLocalizationsIt();
    case 'ja': return FactoryResetToolsLocalizationsJa();
    case 'ka': return FactoryResetToolsLocalizationsKa();
    case 'kk': return FactoryResetToolsLocalizationsKk();
    case 'km': return FactoryResetToolsLocalizationsKm();
    case 'kn': return FactoryResetToolsLocalizationsKn();
    case 'ko': return FactoryResetToolsLocalizationsKo();
    case 'ku': return FactoryResetToolsLocalizationsKu();
    case 'lo': return FactoryResetToolsLocalizationsLo();
    case 'lt': return FactoryResetToolsLocalizationsLt();
    case 'lv': return FactoryResetToolsLocalizationsLv();
    case 'mk': return FactoryResetToolsLocalizationsMk();
    case 'ml': return FactoryResetToolsLocalizationsMl();
    case 'mr': return FactoryResetToolsLocalizationsMr();
    case 'my': return FactoryResetToolsLocalizationsMy();
    case 'nb': return FactoryResetToolsLocalizationsNb();
    case 'ne': return FactoryResetToolsLocalizationsNe();
    case 'nl': return FactoryResetToolsLocalizationsNl();
    case 'nn': return FactoryResetToolsLocalizationsNn();
    case 'oc': return FactoryResetToolsLocalizationsOc();
    case 'pa': return FactoryResetToolsLocalizationsPa();
    case 'pl': return FactoryResetToolsLocalizationsPl();
    case 'pt': return FactoryResetToolsLocalizationsPt();
    case 'ro': return FactoryResetToolsLocalizationsRo();
    case 'ru': return FactoryResetToolsLocalizationsRu();
    case 'se': return FactoryResetToolsLocalizationsSe();
    case 'si': return FactoryResetToolsLocalizationsSi();
    case 'sk': return FactoryResetToolsLocalizationsSk();
    case 'sl': return FactoryResetToolsLocalizationsSl();
    case 'sq': return FactoryResetToolsLocalizationsSq();
    case 'sr': return FactoryResetToolsLocalizationsSr();
    case 'sv': return FactoryResetToolsLocalizationsSv();
    case 'ta': return FactoryResetToolsLocalizationsTa();
    case 'te': return FactoryResetToolsLocalizationsTe();
    case 'tg': return FactoryResetToolsLocalizationsTg();
    case 'th': return FactoryResetToolsLocalizationsTh();
    case 'tl': return FactoryResetToolsLocalizationsTl();
    case 'tr': return FactoryResetToolsLocalizationsTr();
    case 'ug': return FactoryResetToolsLocalizationsUg();
    case 'uk': return FactoryResetToolsLocalizationsUk();
    case 'vi': return FactoryResetToolsLocalizationsVi();
    case 'zh': return FactoryResetToolsLocalizationsZh();
  }

  throw FlutterError(
    'FactoryResetToolsLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
