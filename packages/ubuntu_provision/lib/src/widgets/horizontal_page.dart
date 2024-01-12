import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_provision/providers.dart';
import 'package:ubuntu_provision/services.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru_widgets/widgets.dart';

class HorizontalPage extends ConsumerWidget {
  const HorizontalPage({
    required this.name,
    required this.windowTitle,
    required this.title,
    required this.content,
    this.onNext,
    this.onBack,
    this.nextArguments,
    this.trailingTitleWidget,
    this.isNextEnabled = true,
    this.expandContent = false,
    this.padding = const EdgeInsets.symmetric(
      horizontal: defaultContentPadding,
      vertical: _verticalContentPadding,
    ),
    this.bottomBar,
    this.snackBar,
    super.key,
  });

  /// The name of the page that is used to get settings from the [PageConfigService].
  final String name;

  /// The title for the title bar.
  final String windowTitle;

  /// The title that is displayed on top of the content column.
  final String title;

  /// A widget shown after the [title].
  final Widget? trailingTitleWidget;

  /// The right, larger, column with the content that should be focus on.
  final Widget content;

  /// A callback for when the user presses the "Next" button.
  final FutureOr<void> Function()? onNext;

  /// A callback for when the user presses the "Back" button.
  final FutureOr<void> Function()? onBack;

  final Object? nextArguments;

  /// Whether the next button should be enabled or not.
  final bool isNextEnabled;

  /// Whether the next button should be enabled or not.
  final bool expandContent;

  /// The padding applied around the area storing the icon and the content.
  final EdgeInsets padding;

  /// Override of the default bottom bar.
  final Widget? bottomBar;

  /// The snack bar to use (default is none).
  final SnackBar? snackBar;

  // TODO(Lukas): Move these to a proper place.
  static const defaultContentPadding = 100.0;
  static const _verticalContentPadding = 20.0;
  static const _contentSpacing = 60.0;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final icon = ref.watch(pageImagesProvider).get(name, context);

    return WizardPage(
      title: YaruWindowTitleBar(title: Text(windowTitle)),
      content: Padding(
        padding:
            padding, // TODO(Lukas): Make padding smaller when the size of the window is small.
        child: Row(
          children: [
            if (icon != null) ...[
              Expanded(
                flex: 2,
                child: icon,
              ),
              const SizedBox(width: _contentSpacing),
            ],
            Expanded(
              flex: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          title,
                          style: theme.textTheme.headlineSmall?.copyWith(
                            fontSize: 20, // TODO: Move to theme
                          ),
                        ),
                      ),
                      if (trailingTitleWidget != null) trailingTitleWidget!,
                    ],
                  ),
                  const SizedBox(height: kWizardSpacing),
                  expandContent ? Expanded(child: content) : content,
                ],
              ),
            ),
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
