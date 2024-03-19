import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_provision/providers.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

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
    this.padding = const EdgeInsets.fromLTRB(
      kYaruPagePadding,
      kYaruPagePadding,
      3 * kYaruPagePadding,
      kYaruPagePadding,
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

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final name = ModalRoute.of(context)!.settings.name!.replaceFirst('/', '');
    final image = ref.watch(pageImagesProvider).get(name);
    final windowSize = MediaQuery.of(context).size;
    final isSmallWindow = windowSize.width < 960 || windowSize.height < 680;
    final adjustedPadding =
        isSmallWindow ? padding.copyWith(right: 0, left: 0) : padding;
    final scrollBarPadding =
        (ScrollbarTheme.of(context).thickness?.resolve({}) ?? 6) * 4;
    const hoverPadding = EdgeInsets.only(left: 4, bottom: 4);

    return WizardPage(
      title: YaruWindowTitleBar(title: Text(windowTitle)),
      content: Padding(
        padding: adjustedPadding,
        child: Row(
          children: [
            if (image != null) ...[
              Expanded(
                flex: 6,
                child: image,
              ),
              const SizedBox(width: kWizardSpacing),
            ],
            Expanded(
              flex: 8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          title,
                          style: theme.textTheme.headlineMedium?.copyWith(
                            fontSize: 20, // TODO: Move to theme
                            fontWeight: FontWeight.w500,
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
                                padding: hoverPadding +
                                    EdgeInsets.only(right: scrollBarPadding),
                                child: content,
                              ),
                            ),
                          )
                        : content,
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
      snackBar: snackBar,
      bottomBar: bottomBar ??
          WizardBar(
            leading: const BackWizardButton(),
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
