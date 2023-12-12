import 'package:flutter/widgets.dart';
import '../../ubuntu_init.dart';

abstract class TelemetryLocalizations extends UbuntuInitLocalizations {
  TelemetryLocalizations(super.locale);

  static UbuntuInitLocalizations of(BuildContext context) {
    return Localizations.of<UbuntuInitLocalizations>(
        context, UbuntuInitLocalizations)!;
  }
}
