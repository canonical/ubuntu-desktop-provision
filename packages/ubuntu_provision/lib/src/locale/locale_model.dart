import 'dart:io';
import 'dart:ui';

import 'package:file/file.dart';
import 'package:file/local.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart' as p;
import 'package:safe_change_notifier/safe_change_notifier.dart';
import 'package:ubuntu_localizations/ubuntu_localizations.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_provision/l10n.dart';
import 'package:ubuntu_provision/services.dart';
import 'package:ubuntu_service/ubuntu_service.dart';
import 'package:ubuntu_widgets/ubuntu_widgets.dart' show KeySearchX;

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
    @visibleForTesting FileSystem? fileSystem,
    @visibleForTesting
    Future<ProcessResult> Function(String, List<String>)? runProcess,
    @visibleForTesting Map<String, String>? env,
  })  : _locale = locale,
        _sound = sound,
        _fs = fileSystem ?? LocalFileSystem(),
        _runProcess = runProcess ?? Process.run,
        _env = env ?? Platform.environment;

  final LocaleService _locale;
  final SoundService? _sound;
  final FileSystem _fs;
  final Future<ProcessResult> Function(String, List<String>) _runProcess;
  final Map<String, String> _env;
  static const orcaOverrideFilePath =
      '.config/systemd/user/orca.service.d/override.conf';

  /// The index of the currently selected language and locale.
  int get selectedIndex => _selectedIndex;
  int _selectedIndex = 0;

  /// The currently selected locale
  Locale? get selectedLocale =>
      _languageList.elementAtOrNull(selectedIndex)?.locale;

  Future<void> selectLanguage(int index) async {
    if (_selectedIndex == index) return;
    _selectedIndex = index;
    final locale = _languageList.elementAtOrNull(index)?.locale;
    if (locale != null) {
      _log.info('Selected $locale as UI language');
      await _setOrcaLanguage(locale);
    }
    return initDefaultLocale(locale.toString()).then((_) => notifyListeners());
  }

  Future<void> _setOrcaLanguage(Locale locale) async {
    _log.info('updating orca language');
    final localeValue = '${locale.languageCode}_${locale.countryCode}.UTF-8';
    final orcaOverrideFile = await _fs
        .file(p.join(_env['HOME'] ?? '/home/ubuntu', orcaOverrideFilePath))
        .create(recursive: true);
    await orcaOverrideFile
        .writeAsString('[Service]\nEnvironment="LANG=$localeValue"\n');
    await _runProcess('systemctl', ['--user', 'daemon-reload']);
    await _runProcess('systemctl', ['--user', 'try-restart', 'orca']);
  }

  var _languageList = <LocalizedLanguage>[];

  /// Loads available languages.
  Future<void> init() async {
    if (_languageList.isNotEmpty) {
      return;
    }
    final languages = await loadLocalizedLanguages(supportedLocales);
    _languageList = List.of(languages);
    _log.info('Loaded ${_languageList.length} languages');
    return _locale.getLocale().then((v) async {
      await selectLocale(parseLocale(v));
      notifyListeners();
    });
  }

  /// Returns the locale for the given language [index].
  Locale locale(int index) => _languageList[index].locale;

  /// Applies the given [locale].
  Future<void> applyLocale(Locale locale) {
    _log.info('Set $locale as system locale');
    return _locale
        .setLocale('${locale.languageCode}_${locale.countryCode}.UTF-8');
  }

  /// Returns the number of languages.
  int get languageCount => _languageList.length;

  /// Returns the name of the language at the given [index].
  String language(int index) => _languageList[index].name;

  Future<void> playWelcomeSound() async => _sound?.play('system-ready');

  /// Searches for a language matching the given [query].
  ///
  /// See also:
  /// * [KeySearchX.keySearch]
  int searchLanguage(String query) {
    return _languageList
        .map((l) => l.name)
        .toList()
        .keySearch(query, selectedIndex + 1);
  }

  /// Selects the best match for the given [locale].
  ///
  /// See also:
  /// * [LocalizedLanguageMatcher.findBestMatch]
  Future<void> selectLocale(Locale locale) {
    return selectLanguage(_languageList.findBestMatch(locale));
  }
}
