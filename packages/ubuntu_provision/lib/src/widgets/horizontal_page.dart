import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_provision/providers.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru_widgets/constants.dart';
import 'package:yaru_widgets/widgets.dart';

class HorizontalPage extends ConsumerWidget {
  HorizontalPage({
    required this.windowTitle,
    required this.title,
    required this.content,
    this.onNext,
    this.onBack,
    this.nextArguments,
    this.trailingTitleWidget,
    this.isNextEnabled = true,
    this.isScrollable = true,
    this.padding = const EdgeInsets.symmetric(
      horizontal: defaultContentPadding,
      vertical: kYaruPagePadding,
    ),
    this.contentFlex = 6,
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

  /// Whether the content should be scrollable. If you're for example using
  /// a `ListBuilder` for the context you want to set this to false.
  final bool isScrollable;

  /// The padding applied around the area storing the icon and the content.
  final EdgeInsets padding;

  /// How much the content should flex compared to the expanded above and below
  /// the content (which defaults to a flexing value of 1).
  final int contentFlex;

  /// Override of the default bottom bar.
  final Widget? bottomBar;

  /// The snack bar to use (default is none).
  final SnackBar? snackBar;

  // TODO(Lukas): Move these to a proper place.
  static const defaultContentPadding = 100.0;
  static const _contentSpacing = 60.0;

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final name = ModalRoute.of(context)!.settings.name!.replaceFirst('/', '');
    final icon = ref.watch(pageImagesProvider).get(name, context);
    final windowSize = MediaQuery.of(context).size;
    final isSmallWindow = windowSize.width < 960 || windowSize.height < 680;
    final adjustedPadding =
        isSmallWindow ? const EdgeInsets.all(kYaruPagePadding) : padding;
    final scrollBarPadding =
        (ScrollbarTheme.of(context).thickness?.resolve({}) ?? 6) * 4;

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
                width: isSmallWindow ? kYaruPagePadding : _contentSpacing,
              ),
            ],
            Expanded(
              flex: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Expanded(child: SizedBox()),
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
                  Expanded(
                    flex: contentFlex,
                    child: isScrollable
                        ? Scrollbar(
                            controller: _scrollController,
                            thumbVisibility: true,
                            child: SingleChildScrollView(
                              controller: _scrollController,
                              child: Padding(
                                padding:
                                    EdgeInsets.only(right: scrollBarPadding),
                                child: content,
                              ),
                            ),
                          )
                        : content,
                  ),
                  const Expanded(child: SizedBox()),
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
