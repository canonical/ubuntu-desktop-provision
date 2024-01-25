import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_provision/providers.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru_widgets/widgets.dart';

class HorizontalPage extends ConsumerWidget {
  const HorizontalPage({
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
      vertical: _minContentPadding,
    ),
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
  static const _minContentPadding = 20.0;
  static const _contentSpacing = 60.0;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final name = ModalRoute.of(context)!.settings.name!.replaceFirst('/', '');
    final icon = ref.watch(pageImagesProvider).get(name, context);
    final windowSize = MediaQuery.of(context).size;
    final isSmallWindow = windowSize.width < 960 || windowSize.height < 680;
    final adjustedPadding =
        isSmallWindow ? const EdgeInsets.all(_minContentPadding) : padding;

    return WizardPage(
      title: YaruWindowTitleBar(title: Text(windowTitle)),
      content: Padding(
        padding: adjustedPadding,
        child: Row(
          children: [
            if (icon != null) ...[
              Expanded(
                flex: 2,
                child: icon,
              ),
              SizedBox(
                width: isSmallWindow ? _minContentPadding : _contentSpacing,
              ),
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
            leading: const PreviousWizardButton(),
            trailing: [
              NextWizardButton(
                onNext: onNext,
                enabled: isNextEnabled,
                arguments: nextArguments,
              ),
            ],
          ),
    );
  }
}
