import 'package:flutter/widgets.dart';
import 'package:ubuntu_localizations/ubuntu_localizations.dart';
import 'package:ubuntu_provision/l10n.dart';
import 'src/l10n/ubuntu_init_localizations.dart';

export 'package:ubuntu_localizations/ubuntu_localizations.dart';
export 'package:ubuntu_provision/l10n.dart';
export 'src/l10n/ubuntu_init_localizations.dart';

const localizationsDelegates = <LocalizationsDelegate<dynamic>>[
  ...UbuntuInitLocalizations.localizationsDelegates,
  ...UbuntuProvisionLocalizations.localizationsDelegates,
  ...GlobalUbuntuLocalizations.delegates,
];
