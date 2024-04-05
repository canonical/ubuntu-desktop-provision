import 'dart:ui';

import 'package:factory_reset_tools/l10n/factory_reset_tools_localizations.dart';

/// All supported locales for the factory reset tools.
final List<Locale> supportedLocales = {
  const Locale('en'), // make sure 'en' comes first (#512)
  ...List.of(FactoryResetToolsLocalizations.supportedLocales)
    ..remove(const Locale('en')),
}.toList();
