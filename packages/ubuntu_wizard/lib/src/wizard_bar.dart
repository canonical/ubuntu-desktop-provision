import 'package:flutter/material.dart';
import 'package:ubuntu_widgets/ubuntu_widgets.dart';
import 'package:ubuntu_wizard/src/wizard_data.dart';
import 'package:wizard_router/wizard_router.dart';
import 'package:yaru/yaru.dart';

/// The spacing between Continue and Back buttons.
const kWizardBarSpacing = 8.0;

class WizardBar extends StatefulWidget {
  const WizardBar({
    super.key,
    this.leading,
    this.trailing,
    this.padding = const EdgeInsets.fromLTRB(
      kYaruPagePadding,
      0,
      kYaruPagePadding,
      kYaruPagePadding,
    ),
    this.stepSemanticsLabel,
  });

  final Widget? leading;
  final List<Widget>? trailing;
  final EdgeInsetsGeometry padding;

  /// Builder that returns a semantic label for the step indicator.
  ///
  /// When provided, the step indicator is wrapped in a [Semantics] widget
  /// with this label, communicating the current step to screen readers.
  /// For example: `(currentStep, totalSteps) => 'Step $currentStep of $totalSteps'`.
  ///
  /// If `null`, falls back to the static [defaultStepSemanticsLabel].
  final String? Function(int currentStep, int totalSteps)? stepSemanticsLabel;

  /// Global default builder for step semantic labels.
  ///
  /// Set this once at app startup with a localized string to apply
  /// semantics to all [WizardBar] instances without modifying each call site:
  /// ```dart
  /// final l10n = UbuntuBootstrapLocalizations.of(context);
  /// WizardBar.defaultStepSemanticsLabel = (step, total) =>
  ///     l10n.stepIndicatorLabel(step, total);
  /// ```
  static String? Function(int currentStep, int totalSteps)?
      defaultStepSemanticsLabel;

  @override
  State<WizardBar> createState() => _WizardBarState();
}

class _WizardBarState extends State<WizardBar> {
  Widget? _buildPageIndicator(int? currentStep, int? totalSteps) {
    if (currentStep == null || totalSteps == null) return null;

    final indicator = YaruPageIndicator.builder(
      page: currentStep,
      length: totalSteps,
      itemSizeBuilder: (index, selectedIndex, length) =>
          Size.square(index == selectedIndex ? 12.0 : 8.0),
      layoutDelegate:
          YaruPageIndicatorSteppedDelegate(baseItemSpacing: 8),
    );

    // Steps are 0-indexed internally; convert to 1-based for screen readers.
    final label =
        widget.stepSemanticsLabel?.call(currentStep + 1, totalSteps) ??
            WizardBar.defaultStepSemanticsLabel
                ?.call(currentStep + 1, totalSteps);
    if (label == null) return indicator;

    return Focus(
      canRequestFocus: true,
      descendantsAreFocusable: false,
      child: Semantics(
        label: label,
        child: ExcludeSemantics(child: indicator),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final wizardScope = Wizard.maybeOf(context);
    final wizardData = wizardScope?.wizardData as WizardData?;
    final wizardRouteData = wizardScope?.routeData as WizardRouteData?;
    final totalSteps = wizardData?.totalSteps;
    final currentStep = wizardRouteData?.step;

    return Hero(
      tag: 'wizard-bottom-bar', // keep in place during page transitions
      child: Container(
        margin: widget.padding,
        constraints: BoxConstraints(maxHeight: kPushButtonSize.height),
        child: NavigationToolbar(
          leading: widget.leading,
          middle: _buildPageIndicator(currentStep, totalSteps),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: widget.trailing?.withSpacing(kWizardBarSpacing) ?? [],
          ),
        ),
      ),
    );
  }
}

extension on Iterable<Widget> {
  List<Widget> withSpacing(double spacing) {
    return expand((item) sync* {
      yield SizedBox(width: spacing);
      yield item;
    }).skip(1).toList();
  }
}
