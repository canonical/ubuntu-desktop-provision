import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:safe_change_notifier/safe_change_notifier.dart';
import 'package:ubuntu_localizations/ubuntu_localizations.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_provision/l10n.dart';
import 'package:ubuntu_provision/services.dart';
import 'package:ubuntu_service/ubuntu_service.dart';
import 'package:ubuntu_widgets/ubuntu_widgets.dart' show KeySearchX;
import 'package:flutter/semantics.dart';
final _log = Logger('locale');

final localeModelProvider = ChangeNotifierProvider((ref) {
  return LocaleModel(
    locale: getService<LocaleService>(),
    sound: tryGetService<SoundService>(),
  );
});

/// Implements the business logic of the locale page.
class LocaleModel extends SafeChangeNotifier {
  /// Creates a model with the specified [locale] and [sound].
  LocaleModel({
    required LocaleService locale,
    required SoundService? sound,
  }) : _locale = locale,
       _sound = sound;

  final LocaleService _locale;
  final SoundService? _sound;

  /// The index of the currently selected language and locale.
  int get selectedIndex => _selectedIndex;
  int _selectedIndex = 0;

  /// The currently selected locale
  Locale? get selectedLocale =>
      _languageList.elementAtOrNull(selectedIndex)?.locale;

  Future<void> selectLanguage(int index) async {
    _log.debug('selectLanguage called with index: $index, current: $_selectedIndex');
    
    if (_selectedIndex == index) {
      _log.debug('Language index $index already selected, skipping');
      return;
    }
    
    if (index < 0 || index >= _languageList.length) {
      _log.warning('Invalid language index: $index (available: 0-${_languageList.length - 1})');
      return;
    }
    
    _selectedIndex = index;
    final locale = _languageList.elementAtOrNull(index)?.locale;
    final languageName = _languageList.elementAtOrNull(index)?.name;
    
    _log.info('Language selection changed to index $index');
    _log.debug('Selected language: $languageName');
    _log.debug('Selected locale: $locale');
    
    if (locale != null && languageName != null) {
      _log.info('Selected $locale as UI language');
      
      // Add text-to-speech announcement
      await _announceSelection(languageName, index);
    } else {
      _log.warning('Locale or language name is null for index $index');
    }
    
    _log.debug('Initializing default locale: ${locale.toString()}');
    return initDefaultLocale(locale.toString()).then((_) {
      _log.debug('Default locale initialized, notifying listeners');
      notifyListeners();
    }).catchError((error) {
      _log.error('Failed to initialize default locale: $error');
    });
  }

  /// Announces the selected language using text-to-speech
  Future<void> _announceSelection(String languageName, int index) async {
    _log.debug('_announceSelection called for: $languageName (index: $index)');
    
    try {
      final announcement = '$languageName selected';
      _log.info('Announcing: "$announcement"');
      
      // Using SemanticsService for native accessibility announcement
      await SemanticsService.announce(
        announcement,
        TextDirection.ltr,
      );
      
      _log.info('Successfully announced selection: $languageName');
    } catch (e, stackTrace) {
      _log.error('Failed to announce selection: $e');
      _log.debug('Stack trace: $stackTrace');
    }
  }

  /// Public method to announce current selection (can be called from UI)
  Future<void> announceCurrentSelection() async {
    _log.debug('announceCurrentSelection called for index: $_selectedIndex');
    
    final currentLanguage = _languageList.elementAtOrNull(_selectedIndex)?.name;
    if (currentLanguage != null) {
      _log.debug('Current language: $currentLanguage');
      await _announceSelection(currentLanguage, _selectedIndex);
    } else {
      _log.warning('Cannot announce current selection: language name is null for index $_selectedIndex');
    }
  }

  var _languageList = <LocalizedLanguage>[];

  /// Loads available languages.
  Future<void> init() async {
    _log.debug('init() called');
    
    if (_languageList.isNotEmpty) {
      _log.debug('Language list already loaded (${_languageList.length} languages), skipping init');
      return;
    }
    
    _log.info('Loading localized languages...');
    try {
      final languages = await loadLocalizedLanguages(supportedLocales);
      _languageList = List.of(languages);
      _log.info('Successfully loaded ${_languageList.length} languages');
      
      // Debug: Log first few languages
      for (int i = 0; i < (_languageList.length > 5 ? 5 : _languageList.length); i++) {
        _log.debug('Language $i: ${_languageList[i].name} (${_languageList[i].locale})');
      }
      
    } catch (e, stackTrace) {
      _log.error('Failed to load localized languages: $e');
      _log.debug('Stack trace: $stackTrace');
      return;
    }
    
    _log.debug('Getting current system locale...');
    return _locale.getLocale().then((v) {
      _log.info('System locale: $v');
      final parsedLocale = parseLocale(v);
      _log.debug('Parsed locale: $parsedLocale');
      
      selectLocale(parsedLocale);
      notifyListeners();
      _log.debug('Initial locale selection completed');
    }).catchError((error) {
      _log.error('Failed to get system locale: $error');
    });
  }

  /// Returns the locale for the given language [index].
  Locale locale(int index) {
    _log.debug('locale() called with index: $index');
    
    if (index < 0 || index >= _languageList.length) {
      _log.warning('Invalid locale index: $index (available: 0-${_languageList.length - 1})');
      // Return a default locale if index is invalid
      return const Locale('en', 'US');
    }
    
    final locale = _languageList[index].locale;
    _log.debug('Returning locale: $locale for index $index');
    return locale;
  }

  /// Applies the given [locale].
  Future<void> applyLocale(Locale locale) {
    _log.info('Applying system locale: $locale');
    final localeString = '${locale.languageCode}_${locale.countryCode}.UTF-8';
    _log.debug('Formatted locale string: $localeString');
    
    return _locale.setLocale(localeString).then((_) {
      _log.info('Successfully applied locale: $localeString');
    }).catchError((error) {
      _log.error('Failed to apply locale $localeString: $error');
    });
  }

  /// Returns the number of languages.
  int get languageCount {
    _log.debug('languageCount getter called, returning: ${_languageList.length}');
    return _languageList.length;
  }

  /// Returns the name of the language at the given [index].
  String language(int index) {
    _log.debug('language() called with index: $index');
    
    if (index < 0 || index >= _languageList.length) {
      _log.warning('Invalid language index: $index (available: 0-${_languageList.length - 1})');
      return 'Unknown Language';
    }
    
    final languageName = _languageList[index].name;
    _log.debug('Returning language name: $languageName for index $index');
    
    return languageName;
  }

  Future<void> playWelcomeSound() async {
    _log.debug('playWelcomeSound() called');
    if (_sound != null) {
      try {
        await _sound?.play('system-ready');
        _log.info('Welcome sound played successfully');
      } catch (e) {
        _log.warning('Failed to play welcome sound: $e');
      }
    } else {
      _log.debug('Sound service not available, skipping welcome sound');
    }
  }

  /// Searches for a language matching the given [query].
  ///
  /// See also:
  /// * [KeySearchX.keySearch]
  int searchLanguage(String query) {
    _log.debug('searchLanguage called with query: "$query"');
    
    if (query.isEmpty) {
      _log.debug('Empty query, returning -1');
      return -1;
    }
    
    if (_languageList.isEmpty) {
      _log.warning('Language list is empty, cannot search');
      return -1;
    }
    
    try {
      final languageNames = _languageList.map((l) => l.name).toList();
      final result = languageNames.keySearch(query, selectedIndex + 1);
      
      _log.debug('Search result for "$query": $result');
      if (result != -1 && result < _languageList.length) {
        _log.info('Found language match: "${_languageList[result].name}" at index $result');
      } else {
        _log.debug('No language match found for query: "$query"');
      }
      
      return result;
    } catch (e, stackTrace) {
      _log.error('Error during language search: $e');
      _log.debug('Stack trace: $stackTrace');
      return -1;
    }
  }

  /// Selects the best match for the given [locale].
  ///
  /// See also:
  /// * [LocalizedLanguageMatcher.findBestMatch]
  Future<void> selectLocale(Locale locale) {
    _log.debug('selectLocale called with: $locale');
    
    if (_languageList.isEmpty) {
      _log.warning('Language list is empty, cannot select locale');
      return Future.value();
    }
    
    try {
      final matchIndex = _languageList.findBestMatch(locale);
      _log.debug('Best match index for $locale: $matchIndex');
      
      if (matchIndex >= 0 && matchIndex < _languageList.length) {
        _log.info('Found best match: ${_languageList[matchIndex].name} at index $matchIndex');
        return selectLanguage(matchIndex);
      } else {
        _log.warning('Invalid match index $matchIndex for locale $locale, using default (0)');
        return selectLanguage(0);
      }
    } catch (e, stackTrace) {
      _log.error('Error finding best match for locale $locale: $e');
      _log.debug('Stack trace: $stackTrace');
      // Fallback to first language if error occurs
      if (_languageList.isNotEmpty) {
        return selectLanguage(0);
      }
      return Future.value();
    }
  }

  @override
  void dispose() {
    _log.debug('LocaleModel dispose() called');
    super.dispose();
  }
}