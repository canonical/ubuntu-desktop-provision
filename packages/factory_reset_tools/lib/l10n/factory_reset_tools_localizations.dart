import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'factory_reset_tools_localizations_en.dart';

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
    Locale('en')
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Factory Reset Tools'**
  String get appTitle;

  /// No description provided for @windowTitle.
  ///
  /// In en, this message translates to:
  /// **'Factory Reset Tools'**
  String get windowTitle;

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
  /// **'Select a USB flash drive. The drive must have at least 16GB of space'**
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

  /// No description provided for @warning.
  ///
  /// In en, this message translates to:
  /// **'Warning'**
  String get warning;
}

class _FactoryResetToolsLocalizationsDelegate extends LocalizationsDelegate<FactoryResetToolsLocalizations> {
  const _FactoryResetToolsLocalizationsDelegate();

  @override
  Future<FactoryResetToolsLocalizations> load(Locale locale) {
    return SynchronousFuture<FactoryResetToolsLocalizations>(lookupFactoryResetToolsLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_FactoryResetToolsLocalizationsDelegate old) => false;
}

FactoryResetToolsLocalizations lookupFactoryResetToolsLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return FactoryResetToolsLocalizationsEn();
  }

  throw FlutterError(
    'FactoryResetToolsLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
