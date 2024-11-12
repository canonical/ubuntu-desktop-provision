import 'package:flutter/widgets.dart';
import 'package:ubuntu_bootstrap/l10n/ubuntu_bootstrap_localizations.dart';
import 'package:ubuntu_localizations/ubuntu_localizations.dart';
import 'package:ubuntu_provision/l10n.dart';

export 'package:ubuntu_localizations/ubuntu_localizations.dart';
export 'package:ubuntu_provision/l10n.dart';

export 'l10n/ubuntu_bootstrap_localizations.dart';

/// All localization delegates for Ubuntu Bootstrap.
class GlobalUbuntuBootstrapLocalizations {
  static const List<LocalizationsDelegate<dynamic>> delegates = [
    ...UbuntuBootstrapLocalizations.localizationsDelegates,
    ...UbuntuProvisionLocalizations.localizationsDelegates,
    ...GlobalUbuntuLocalizations.delegates,
  ];
}
