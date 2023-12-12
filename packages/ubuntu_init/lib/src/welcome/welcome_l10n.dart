import 'package:flutter/widgets.dart';
import 'package:ubuntu_init/ubuntu_init.dart';

abstract class WelcomeLocalizations extends UbuntuInitLocalizations {
  WelcomeLocalizations(super.locale);

  static UbuntuInitLocalizations of(BuildContext context) {
    return Localizations.of<UbuntuInitLocalizations>(
        context, UbuntuInitLocalizations)!;
  }
}
