import 'dart:ui';

import 'package:ubuntu_provision/src/l10n/ubuntu_provision_localizations.dart';

export 'src/l10n/ubuntu_provision_localizations.dart';

/// All supported locales for Ubuntu Provision.
final List<Locale> supportedLocales = {
  const Locale('en'), // make sure 'en' comes first (#512)
  // ubuntu_localizations supplies SV (El Salvador) for bare Swedish.
  const Locale('sv', 'SE'),
  ...List.of(UbuntuProvisionLocalizations.supportedLocales)
    ..remove(const Locale('en'))
    ..remove(const Locale('sv')),
}.toList();
