import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru_widgets/widgets.dart';

class HorizontalPage extends StatelessWidget {
  const HorizontalPage({
    required this.windowTitle,
    required this.title,
    required this.icon,
    required this.content,
    this.onNext,
    this.onBack,
    this.nextArguments,
    this.trailingTitleWidget,
    this.isNextEnabled = true,
    this.padding = const EdgeInsets.all(defaultContentPadding),
    this.bottomBar,
    this.snackBar,
    super.key,
  });

  /// The title for the title bar.
  final String windowTitle;

  /// The title that is displayed on top of the content column.
  final String title;

  /// A widget shown after the [title].
  final Widget? trailingTitleWidget;

  /// The left, smaller, column that shows something visual, usually an image.
  final Widget icon;

  /// The right, larger, column with the content that should be focus on.
  final Widget content;

  /// A callback for when the user presses the "Next" button.
  final FutureOr<void> Function()? onNext;

  /// A callback for when the user presses the "Back" button.
  final FutureOr<void> Function()? onBack;

  final Object? nextArguments;

  /// Whether the next button should be enabled or not.
  final bool isNextEnabled;

  /// The padding applied around the area storing the icon and the content.
  final EdgeInsets padding;

  /// Override of the default bottom bar.
  final Widget? bottomBar;

  /// The snack bar to use (default is none).
  final SnackBar? snackBar;

  // TODO(Lukas): Move these to a proper place.
  static const defaultContentPadding = 100.0;
  static const _contentSpacing = 60.0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return WizardPage(
      title: YaruWindowTitleBar(title: Text(windowTitle)),
      content: Padding(
        padding: padding,
        child: Row(
          children: [
            icon,
            const SizedBox(width: _contentSpacing),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 400, // TODO(Lukas): Do this properly
                        child: Text(
                          title,
                          style: theme.textTheme.headlineSmall,
                        ),
                      ),
                      if (trailingTitleWidget != null) trailingTitleWidget!,
                    ],
                  ),
                  const SizedBox(height: kWizardSpacing),
                  Expanded(child: content),
                ],
              ),
            ),
            const SizedBox(width: kWizardSpacing),
          ],
        ),
      ),
      snackBar: snackBar,
      bottomBar: bottomBar ??
          WizardBar(
            leading: WizardButton.previous(context),
            trailing: [
              WizardButton.next(
                context,
                onNext: onNext,
                enabled: isNextEnabled,
                arguments: nextArguments,
              ),
            ],
          ),
    );
  }
}
