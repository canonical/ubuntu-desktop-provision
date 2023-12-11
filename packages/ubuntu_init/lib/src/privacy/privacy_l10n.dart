import 'package:flutter/widgets.dart';
import '../../ubuntu_init.dart';

abstract class PrivacyLocalizations extends UbuntuInitLocalizations {
  PrivacyLocalizations(super.locale);

  static UbuntuInitLocalizations of(BuildContext context) {
    return Localizations.of<UbuntuInitLocalizations>(
        context, UbuntuInitLocalizations)!;
  }
}
