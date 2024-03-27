import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// A provider to provide the current brightness settings of the system, i.e.
/// darkmode vs lightmode.
///
/// This provider needs to be initialized with the current brightness settings
/// of the system. This can be done by overriding
/// `didChangePlatformBrightness` in a [StatefulWidget] and updating the
/// [StateProvider] with the new brightness.
///
/// For example like this:
/// ```dart
/// class _WizardState extends ConsumerState with WidgetsBindingObserver {
///   @override
///   void initState() {
///     super.initState();
///     WidgetsBinding.instance.addObserver(this);
///   }
///
///   @override
///   void didChangePlatformBrightness() {
///     final brightness = MediaQuery.platformBrightnessOf(context);
///     ref.read(brightnessProvider.notifier).state = brightness;
///   }
///  ```
final brightnessProvider = StateProvider(
  (_) => WidgetsBinding.instance.platformDispatcher.platformBrightness,
);
