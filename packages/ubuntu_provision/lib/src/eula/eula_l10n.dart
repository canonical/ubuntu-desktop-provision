import 'package:flutter/widgets.dart';
import 'package:ubuntu_provision/l10n.dart';

abstract class EulaLocalizations extends UbuntuProvisionLocalizations {
  EulaLocalizations(super.locale);

  static UbuntuProvisionLocalizations of(BuildContext context) {
    return Localizations.of<UbuntuProvisionLocalizations>(
        context, UbuntuProvisionLocalizations,)!;
  }
}
