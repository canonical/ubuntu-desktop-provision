import 'package:flutter/widgets.dart';
import '../../l10n.dart';

abstract class KeyboardLocalizations extends UbuntuProvisionLocalizations {
  KeyboardLocalizations(super.locale);

  static UbuntuProvisionLocalizations of(BuildContext context) {
    return Localizations.of<UbuntuProvisionLocalizations>(
        context, UbuntuProvisionLocalizations)!;
  }
}
