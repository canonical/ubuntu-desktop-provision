import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'ubuntu_init_localizations_am.dart';
import 'ubuntu_init_localizations_ar.dart';
import 'ubuntu_init_localizations_be.dart';
import 'ubuntu_init_localizations_bg.dart';
import 'ubuntu_init_localizations_bn.dart';
import 'ubuntu_init_localizations_bo.dart';
import 'ubuntu_init_localizations_bs.dart';
import 'ubuntu_init_localizations_ca.dart';
import 'ubuntu_init_localizations_cs.dart';
import 'ubuntu_init_localizations_cy.dart';
import 'ubuntu_init_localizations_da.dart';
import 'ubuntu_init_localizations_de.dart';
import 'ubuntu_init_localizations_dz.dart';
import 'ubuntu_init_localizations_el.dart';
import 'ubuntu_init_localizations_en.dart';
import 'ubuntu_init_localizations_eo.dart';
import 'ubuntu_init_localizations_es.dart';
import 'ubuntu_init_localizations_et.dart';
import 'ubuntu_init_localizations_eu.dart';
import 'ubuntu_init_localizations_fa.dart';
import 'ubuntu_init_localizations_fi.dart';
import 'ubuntu_init_localizations_fr.dart';
import 'ubuntu_init_localizations_ga.dart';
import 'ubuntu_init_localizations_gl.dart';
import 'ubuntu_init_localizations_gu.dart';
import 'ubuntu_init_localizations_he.dart';
import 'ubuntu_init_localizations_hi.dart';
import 'ubuntu_init_localizations_hr.dart';
import 'ubuntu_init_localizations_hu.dart';
import 'ubuntu_init_localizations_id.dart';
import 'ubuntu_init_localizations_is.dart';
import 'ubuntu_init_localizations_it.dart';
import 'ubuntu_init_localizations_ja.dart';
import 'ubuntu_init_localizations_ka.dart';
import 'ubuntu_init_localizations_kk.dart';
import 'ubuntu_init_localizations_km.dart';
import 'ubuntu_init_localizations_kn.dart';
import 'ubuntu_init_localizations_ko.dart';
import 'ubuntu_init_localizations_ku.dart';
import 'ubuntu_init_localizations_lo.dart';
import 'ubuntu_init_localizations_lt.dart';
import 'ubuntu_init_localizations_lv.dart';
import 'ubuntu_init_localizations_mk.dart';
import 'ubuntu_init_localizations_ml.dart';
import 'ubuntu_init_localizations_mr.dart';
import 'ubuntu_init_localizations_my.dart';
import 'ubuntu_init_localizations_nb.dart';
import 'ubuntu_init_localizations_ne.dart';
import 'ubuntu_init_localizations_nl.dart';
import 'ubuntu_init_localizations_nn.dart';
import 'ubuntu_init_localizations_oc.dart';
import 'ubuntu_init_localizations_pa.dart';
import 'ubuntu_init_localizations_pl.dart';
import 'ubuntu_init_localizations_pt.dart';
import 'ubuntu_init_localizations_ro.dart';
import 'ubuntu_init_localizations_ru.dart';
import 'ubuntu_init_localizations_se.dart';
import 'ubuntu_init_localizations_si.dart';
import 'ubuntu_init_localizations_sk.dart';
import 'ubuntu_init_localizations_sl.dart';
import 'ubuntu_init_localizations_sq.dart';
import 'ubuntu_init_localizations_sr.dart';
import 'ubuntu_init_localizations_sv.dart';
import 'ubuntu_init_localizations_ta.dart';
import 'ubuntu_init_localizations_te.dart';
import 'ubuntu_init_localizations_tg.dart';
import 'ubuntu_init_localizations_th.dart';
import 'ubuntu_init_localizations_tl.dart';
import 'ubuntu_init_localizations_tr.dart';
import 'ubuntu_init_localizations_ug.dart';
import 'ubuntu_init_localizations_uk.dart';
import 'ubuntu_init_localizations_vi.dart';
import 'ubuntu_init_localizations_zh.dart';

/// Callers can lookup localized strings with an instance of UbuntuInitLocalizations
/// returned by `UbuntuInitLocalizations.of(context)`.
///
/// Applications need to include `UbuntuInitLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/ubuntu_init_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: UbuntuInitLocalizations.localizationsDelegates,
///   supportedLocales: UbuntuInitLocalizations.supportedLocales,
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
/// be consistent with the languages listed in the UbuntuInitLocalizations.supportedLocales
/// property.
abstract class UbuntuInitLocalizations {
  UbuntuInitLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static UbuntuInitLocalizations of(BuildContext context) {
    return Localizations.of<UbuntuInitLocalizations>(context, UbuntuInitLocalizations)!;
  }

  static const LocalizationsDelegate<UbuntuInitLocalizations> delegate = _UbuntuInitLocalizationsDelegate();

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

}

class _UbuntuInitLocalizationsDelegate extends LocalizationsDelegate<UbuntuInitLocalizations> {
  const _UbuntuInitLocalizationsDelegate();

  @override
  Future<UbuntuInitLocalizations> load(Locale locale) {
    return SynchronousFuture<UbuntuInitLocalizations>(lookupUbuntuInitLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['am', 'ar', 'be', 'bg', 'bn', 'bo', 'bs', 'ca', 'cs', 'cy', 'da', 'de', 'dz', 'el', 'en', 'eo', 'es', 'et', 'eu', 'fa', 'fi', 'fr', 'ga', 'gl', 'gu', 'he', 'hi', 'hr', 'hu', 'id', 'is', 'it', 'ja', 'ka', 'kk', 'km', 'kn', 'ko', 'ku', 'lo', 'lt', 'lv', 'mk', 'ml', 'mr', 'my', 'nb', 'ne', 'nl', 'nn', 'oc', 'pa', 'pl', 'pt', 'ro', 'ru', 'se', 'si', 'sk', 'sl', 'sq', 'sr', 'sv', 'ta', 'te', 'tg', 'th', 'tl', 'tr', 'ug', 'uk', 'vi', 'zh'].contains(locale.languageCode);

  @override
  bool shouldReload(_UbuntuInitLocalizationsDelegate old) => false;
}

UbuntuInitLocalizations lookupUbuntuInitLocalizations(Locale locale) {

  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'pt': {
  switch (locale.countryCode) {
    case 'BR': return UbuntuInitLocalizationsPtBr();
   }
  break;
   }
    case 'zh': {
  switch (locale.countryCode) {
    case 'TW': return UbuntuInitLocalizationsZhTw();
   }
  break;
   }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'am': return UbuntuInitLocalizationsAm();
    case 'ar': return UbuntuInitLocalizationsAr();
    case 'be': return UbuntuInitLocalizationsBe();
    case 'bg': return UbuntuInitLocalizationsBg();
    case 'bn': return UbuntuInitLocalizationsBn();
    case 'bo': return UbuntuInitLocalizationsBo();
    case 'bs': return UbuntuInitLocalizationsBs();
    case 'ca': return UbuntuInitLocalizationsCa();
    case 'cs': return UbuntuInitLocalizationsCs();
    case 'cy': return UbuntuInitLocalizationsCy();
    case 'da': return UbuntuInitLocalizationsDa();
    case 'de': return UbuntuInitLocalizationsDe();
    case 'dz': return UbuntuInitLocalizationsDz();
    case 'el': return UbuntuInitLocalizationsEl();
    case 'en': return UbuntuInitLocalizationsEn();
    case 'eo': return UbuntuInitLocalizationsEo();
    case 'es': return UbuntuInitLocalizationsEs();
    case 'et': return UbuntuInitLocalizationsEt();
    case 'eu': return UbuntuInitLocalizationsEu();
    case 'fa': return UbuntuInitLocalizationsFa();
    case 'fi': return UbuntuInitLocalizationsFi();
    case 'fr': return UbuntuInitLocalizationsFr();
    case 'ga': return UbuntuInitLocalizationsGa();
    case 'gl': return UbuntuInitLocalizationsGl();
    case 'gu': return UbuntuInitLocalizationsGu();
    case 'he': return UbuntuInitLocalizationsHe();
    case 'hi': return UbuntuInitLocalizationsHi();
    case 'hr': return UbuntuInitLocalizationsHr();
    case 'hu': return UbuntuInitLocalizationsHu();
    case 'id': return UbuntuInitLocalizationsId();
    case 'is': return UbuntuInitLocalizationsIs();
    case 'it': return UbuntuInitLocalizationsIt();
    case 'ja': return UbuntuInitLocalizationsJa();
    case 'ka': return UbuntuInitLocalizationsKa();
    case 'kk': return UbuntuInitLocalizationsKk();
    case 'km': return UbuntuInitLocalizationsKm();
    case 'kn': return UbuntuInitLocalizationsKn();
    case 'ko': return UbuntuInitLocalizationsKo();
    case 'ku': return UbuntuInitLocalizationsKu();
    case 'lo': return UbuntuInitLocalizationsLo();
    case 'lt': return UbuntuInitLocalizationsLt();
    case 'lv': return UbuntuInitLocalizationsLv();
    case 'mk': return UbuntuInitLocalizationsMk();
    case 'ml': return UbuntuInitLocalizationsMl();
    case 'mr': return UbuntuInitLocalizationsMr();
    case 'my': return UbuntuInitLocalizationsMy();
    case 'nb': return UbuntuInitLocalizationsNb();
    case 'ne': return UbuntuInitLocalizationsNe();
    case 'nl': return UbuntuInitLocalizationsNl();
    case 'nn': return UbuntuInitLocalizationsNn();
    case 'oc': return UbuntuInitLocalizationsOc();
    case 'pa': return UbuntuInitLocalizationsPa();
    case 'pl': return UbuntuInitLocalizationsPl();
    case 'pt': return UbuntuInitLocalizationsPt();
    case 'ro': return UbuntuInitLocalizationsRo();
    case 'ru': return UbuntuInitLocalizationsRu();
    case 'se': return UbuntuInitLocalizationsSe();
    case 'si': return UbuntuInitLocalizationsSi();
    case 'sk': return UbuntuInitLocalizationsSk();
    case 'sl': return UbuntuInitLocalizationsSl();
    case 'sq': return UbuntuInitLocalizationsSq();
    case 'sr': return UbuntuInitLocalizationsSr();
    case 'sv': return UbuntuInitLocalizationsSv();
    case 'ta': return UbuntuInitLocalizationsTa();
    case 'te': return UbuntuInitLocalizationsTe();
    case 'tg': return UbuntuInitLocalizationsTg();
    case 'th': return UbuntuInitLocalizationsTh();
    case 'tl': return UbuntuInitLocalizationsTl();
    case 'tr': return UbuntuInitLocalizationsTr();
    case 'ug': return UbuntuInitLocalizationsUg();
    case 'uk': return UbuntuInitLocalizationsUk();
    case 'vi': return UbuntuInitLocalizationsVi();
    case 'zh': return UbuntuInitLocalizationsZh();
  }

  throw FlutterError(
    'UbuntuInitLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
