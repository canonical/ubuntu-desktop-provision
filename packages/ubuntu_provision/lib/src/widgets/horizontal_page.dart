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
    required this.children,
    this.onNext,
    this.onBack,
    this.nextArguments,
    this.trailingTitleWidget,
    this.isNextEnabled = true,
    this.managedScrolling = true,
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
  final List<Widget> children;

  /// A callback for when the user presses the "Next" button.
  final FutureOr<void> Function()? onNext;

  /// A callback for when the user presses the "Back" button.
  final FutureOr<void> Function()? onBack;

  /// Arguments passed along to the [NextWizardButton].
  final Object? nextArguments;

  /// Whether the next button should be enabled or not.
  final bool isNextEnabled;

  /// Whether the content should be scrollable. If you're for example using
  /// a `ListBuilder` for the context you want to set this to false.
  final bool managedScrolling;

  /// The padding applied around the area storing the icon and the content.
  final EdgeInsets padding;

  /// How much the content should flex compared to the expanded above and below
  /// the content (which defaults to a flexing value of 1).
  /// If [managedScrolling] is set to false, this value is ignored.
  final int contentFlex;

  /// Override of the default bottom bar.
  final Widget? bottomBar;

  /// The snack bar to use (default is none).
  final SnackBar? snackBar;

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                  if (!managedScrolling) ...[
                    const Spacer(),
                    _Headline(
                      title: title,
                      trailingTitleWidget: trailingTitleWidget,
                    ),
                  ],
                  Expanded(
                    flex: managedScrolling ? 1 : contentFlex,
                    child: managedScrolling
                        ? Center(
                            child: Scrollbar(
                              controller: _scrollController,
                              thumbVisibility: true,
                              child: ListView(
                                padding: hoverPadding +
                                    EdgeInsets.only(right: scrollBarPadding),
                                shrinkWrap: true,
                                controller: _scrollController,
                                children: [
                                  _Headline(
                                    title: title,
                                    trailingTitleWidget: trailingTitleWidget,
                                  ),
                                  ...children,
                                ],
                              ),
                            ),
                          )
                        : Column(children: children),
                  ),
                  if (!managedScrolling) const Spacer(),
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

class _Headline extends StatelessWidget {
  const _Headline({
    required this.title,
    this.trailingTitleWidget,
  });

  final String title;
  final Widget? trailingTitleWidget;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: kWizardSpacing),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              title,
              style: theme.textTheme.titleLarge,
            ),
          ),
          if (trailingTitleWidget != null) trailingTitleWidget!,
        ],
      ),
    );
  }
}
