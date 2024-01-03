import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

mixin ProvisioningPage on Widget {
  /// Performs any pre-loading that needs to be done for the page.
  ///
  /// If it returns true it will be added to the wizard, otherwise it will be
  /// skipped.
  Future<bool> load(BuildContext context, WidgetRef ref) => Future.value(true);
}
