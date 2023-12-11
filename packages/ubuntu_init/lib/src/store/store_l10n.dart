import 'package:flutter/widgets.dart';
import '../../ubuntu_init.dart';

abstract class StoreLocalizations extends UbuntuInitLocalizations {
  StoreLocalizations(super.locale);

  static UbuntuInitLocalizations of(BuildContext context) {
    return Localizations.of<UbuntuInitLocalizations>(
        context, UbuntuInitLocalizations)!;
  }
}
