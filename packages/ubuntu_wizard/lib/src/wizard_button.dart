import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ubuntu_localizations/ubuntu_localizations.dart';
import 'package:ubuntu_widgets/ubuntu_widgets.dart';
import 'package:ubuntu_wizard/src/wizard_data.dart';
import 'package:wizard_router/wizard_router.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

/// Wizard activation callback signature.
typedef WizardCallback = FutureOr<void> Function();

const _kLoadingDelay = Duration(milliseconds: 100);
final _noAnimation = Listenable.merge([]);

/// Defines a wizard button, such as _Previous_ or _Next_.
///
/// See also:
///  * [NextWizardButton]
///  * [PreviousWizardButton]
class WizardButton extends StatefulWidget {
  /// Creates a wizard button.
  const WizardButton({
    super.key,
    this.label,
    this.visible = true,
    this.highlighted = false,
    this.flat = false,
    this.enabled = true,
    this.loading = false,
    this.onActivated,
    this.execute,
  });

  /// Text label of the button.
  final String? label;

  /// Determines whether the button is visible.
  ///
  /// The default value is `true`
  final bool visible;

  /// Determines whether the button is flat (no background).
  ///
  /// The default value is `false`.
  final bool flat;

  /// Determines whether the button is highlighted (green);
  ///
  /// The default value is `false`.
  final bool highlighted;

  /// Determines whether the button is enabled.
  ///
  /// The default value is `true`. If not specified, the button is implicitly
  /// disabled if [onActivated] is `null`.
  final bool enabled;

  /// Determines whether the button is in loading state and shows a spinner
  /// (after a 100ms delay) instead of the label.
  final bool loading;

  /// Called when the button is triggered e.g. by pressing the button, _before_
  /// proceeding to the next page or returning to the previous page.
  ///
  /// See also [enabled].
  final WizardCallback? onActivated;

  /// Called to execute the button i.e. to proceed to the next page or to return
  /// to the previous page, _after_ the button was activated.
  ///
  /// See also [enabled].
  final FutureOr<void> Function()? execute;

  @override
  State<WizardButton> createState() => _WizardButtonState();
}

class _WizardButtonState extends State<WizardButton> {
  bool activating = false;
  bool get loading => widget.loading || activating;
  bool showSpinner = false;

  @override
  Widget build(BuildContext context) {
    if (widget.visible == false) {
      return const SizedBox.shrink();
    }

    final maybeActivate = (widget.enabled && !loading)
        ? () async {
            setState(() => activating = true);

            Future.delayed(_kLoadingDelay, () {
              if (mounted && loading) {
                setState(() => showSpinner = true);
              }
            });

            await widget.onActivated?.call();
            if (mounted) {
              await widget.execute?.call();
              setState(() {
                activating = false;
                showSpinner = false;
              });
            }
          }
        : null;

    final PushButton Function({
      required Widget child,
      required VoidCallback? onPressed,
      Key? key,
    }) buttonFactory;

    if (widget.highlighted) {
      buttonFactory = PushButton.elevated;
    } else if (widget.flat) {
      buttonFactory = PushButton.outlined;
    } else {
      buttonFactory = PushButton.filled;
    }

    return buttonFactory(
      onPressed: maybeActivate,
      child: showSpinner
          ? SizedBox.square(
              dimension: IconTheme.of(context).size,
              child: const YaruCircularProgressIndicator(strokeWidth: 3),
            )
          : Text(widget.label!),
    );
  }
}

/// A _Previous_ button that returns back to the previous page.
class PreviousWizardButton extends StatelessWidget {
  const PreviousWizardButton({
    super.key,
    this.visible = true,
    this.enabled,
    this.onBack,
  });

  final bool visible;
  final bool? enabled;
  final WizardCallback? onBack;

  @override
  Widget build(BuildContext context) {
    final wizard = Wizard.maybeOf(context);
    final rootWizard = Wizard.maybeOf(context, root: true);
    final routeData =
        (wizard?.routeData ?? rootWizard?.routeData) as WizardRouteData?;
    final hasPrevious = routeData?.hasPrevious ??
        wizard?.hasPrevious ??
        rootWizard?.hasPrevious ??
        false;
    final isLoading = wizard?.isLoading ?? rootWizard?.isLoading ?? false;
    return AnimatedBuilder(
      animation: wizard?.controller ?? _noAnimation,
      builder: (context, child) => WizardButton(
          label: UbuntuLocalizations.of(context).previousLabel,
          visible: visible,
          flat: true,
          enabled: !isLoading && (enabled ?? hasPrevious),
          onActivated: onBack,
          execute: () {
            // navigate the root wizard at the end of a nested wizard
            final effectiveWizard =
                (wizard?.hasPrevious ?? false) ? wizard : rootWizard;
            return effectiveWizard?.back();
          }),
    );
  }
}

/// A _Next_ button that advances to the next page.
class NextWizardButton extends StatelessWidget {
  const NextWizardButton({
    super.key,
    this.label,
    this.visible = true,
    this.enabled = true,
    this.flat = false,
    this.highlighted = false,
    this.arguments,
    this.onNext,
    this.onReturn,
  });

  final String? label;
  final bool visible;
  final bool enabled;
  final bool flat;
  final bool highlighted;
  final Object? arguments;
  final WizardCallback? onNext;
  final WizardCallback? onReturn;

  @override
  Widget build(BuildContext context) {
    final wizard = Wizard.maybeOf(context);
    final rootWizard = Wizard.maybeOf(context, root: true);
    final routeData =
        (wizard?.routeData ?? rootWizard?.routeData) as WizardRouteData?;
    final hasNext =
        routeData?.hasNext ?? wizard?.hasNext ?? rootWizard?.hasNext ?? true;
    final isLoading = wizard?.isLoading ?? rootWizard?.isLoading ?? false;
    return AnimatedBuilder(
      animation: wizard?.controller ?? _noAnimation,
      builder: (context, child) => WizardButton(
        label: label ??
            (hasNext
                ? UbuntuLocalizations.of(context).nextLabel
                : UbuntuLocalizations.of(context).doneLabel),
        visible: visible,
        enabled: !isLoading && enabled,
        loading: isLoading,
        flat: flat,
        highlighted: highlighted,
        onActivated: onNext,
        execute: () async {
          // navigate the root wizard at the end of a nested wizard
          final effectiveWizard =
              (wizard?.hasNext ?? false) ? wizard : rootWizard;
          try {
            await effectiveWizard?.next(arguments: arguments);
          } on WizardException catch (_) {
            if (effectiveWizard != rootWizard) {
              await rootWizard?.next(arguments: arguments);
            }
          }
          onReturn?.call();
        },
      ),
    );
  }
}
