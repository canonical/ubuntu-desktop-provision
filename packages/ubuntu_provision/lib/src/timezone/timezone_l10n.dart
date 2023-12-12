import 'package:flutter/widgets.dart';
import '../../l10n.dart';

abstract class TimezoneLocalizations extends UbuntuProvisionLocalizations {
  TimezoneLocalizations(super.locale);

  static UbuntuProvisionLocalizations of(BuildContext context) {
    return Localizations.of<UbuntuProvisionLocalizations>(
        context, UbuntuProvisionLocalizations)!;
  }
}
