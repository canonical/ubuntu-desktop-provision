import 'package:flutter/widgets.dart';
import '../../l10n.dart';

abstract class IdentityLocalizations extends UbuntuProvisionLocalizations {
  IdentityLocalizations(super.locale);

  static UbuntuProvisionLocalizations of(BuildContext context) {
    return Localizations.of<UbuntuProvisionLocalizations>(
        context, UbuntuProvisionLocalizations)!;
  }
}
