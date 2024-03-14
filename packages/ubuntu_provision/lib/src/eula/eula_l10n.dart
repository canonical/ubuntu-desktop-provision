import 'package:flutter/widgets.dart';
import 'package:ubuntu_provision/l10n.dart';

abstract class EULALocalizations extends UbuntuProvisionLocalizations {
  EULALocalizations(super.locale);

  static UbuntuProvisionLocalizations of(BuildContext context) {
    return Localizations.of<UbuntuProvisionLocalizations>(
        context, UbuntuProvisionLocalizations)!;
  }
}
