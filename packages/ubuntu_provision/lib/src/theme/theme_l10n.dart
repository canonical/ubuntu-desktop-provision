import 'package:flutter/widgets.dart';
import '../../l10n.dart';

abstract class ThemeLocalizations extends UbuntuProvisionLocalizations {
  ThemeLocalizations(super.locale);

  static UbuntuProvisionLocalizations of(BuildContext context) {
    return Localizations.of<UbuntuProvisionLocalizations>(
        context, UbuntuProvisionLocalizations)!;
  }
}
