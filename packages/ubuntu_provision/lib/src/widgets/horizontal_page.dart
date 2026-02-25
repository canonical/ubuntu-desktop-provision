import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_provision/l10n.dart';
import 'package:ubuntu_provision/providers.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

class HorizontalPage extends ConsumerStatefulWidget {
  const HorizontalPage({
    required this.windowTitle,
    required this.title,
    required this.children,
    this.onNext,
    this.trailingTitleWidget,
    this.isNextEnabled = true,
    this.managedScrolling = true,
    this.padding = const EdgeInsets.only(right: 2 * kYaruPagePadding),
    this.bottomBar,
    this.snackBar,
    this.imageTitleWidget,
    int? contentFlex,
    this.nextFocusNode,
    super.key,
  })  : assert(
          !managedScrolling || contentFlex == null,
          'contentFlex has no effect unless managedScrolling is set to false.',
        ),
        assert(
          (bottomBar == null) || (onNext == null && isNextEnabled == true),
          'either provide a custom `bottomBar` or use the `onNext`, and `isNextEnabled` properties.',
        ),
        _contentFlex = contentFlex ?? 1;

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
  final int _contentFlex;

  /// Override of the default bottom bar.
  final Widget? bottomBar;

  /// The snack bar to use (default is none).
  final SnackBar? snackBar;

  /// The content under the image.
  final Widget? imageTitleWidget;

  /// The focus node for the next button.
  final FocusNode? nextFocusNode;

  @override
  ConsumerState<HorizontalPage> createState() => _HorizontalPageState();
}

class _HorizontalPageState extends ConsumerState<HorizontalPage> {
  final _controller = ScrollController();
  bool _showDivider = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _checkScrollState());
    _controller.addListener(_checkScrollState);
  }

  @override
  void dispose() {
    _controller.removeListener(_checkScrollState);
    _controller.dispose();
    super.dispose();
  }

  void _checkScrollState() {
    if (!_controller.hasClients) return;
    final showDivider = _controller.position.extentAfter > 0;
    if (showDivider != _showDivider) {
      setState(() {
        _showDivider = showDivider;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final name = ModalRoute.of(context)!.settings.name!.replaceFirst('/', '');
    final image = ref.watch(pageImagesProvider).get(name);
    final windowSize = MediaQuery.of(context).size;
    final isSmallWindow = windowSize.width < 700 || windowSize.height < 500;
    final adjustedPadding = isSmallWindow
        ? widget.padding.copyWith(right: 0, left: 0)
        : widget.padding;
    final scrollBarPadding =
        (ScrollbarTheme.of(context).thickness?.resolve({}) ?? 6) * 4;
    const hoverPadding = EdgeInsets.only(left: 4, bottom: 4);
    const scrollViewPadding =
        EdgeInsets.only(top: 3 * kWizardSpacing, bottom: 3 * kWizardSpacing);
    final lang = UbuntuProvisionLocalizations.of(context);

    // Re-check scroll state after rendering the frame, in case the scrollbar
    // disappears or re-appears entirely.
    WidgetsBinding.instance.addPostFrameCallback((_) => _checkScrollState());

    return WizardPage(
      title: YaruWindowTitleBar(
        title: Text(widget.windowTitle),
        closeSemanticLabel: lang.closeIconSemanticLabel,
        maximizeSemanticLabel: lang.maximizeIconSemanticLabel,
        minimizeSemanticLabel: lang.minimizeIconSemanticLabel,
      ),
      contentPadding: EdgeInsets.zero,
      headerPadding: EdgeInsets.zero,
      footer: AnimatedSwitcher(
        duration: Duration(milliseconds: 100),
        child: _showDivider ? Divider() : null,
      ),
      content: Row(
        children: [
          if (image != null || widget.imageTitleWidget != null)
            Expanded(
              flex: 6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (image != null) Flexible(child: image),
                  if (widget.imageTitleWidget != null) ...[
                    const SizedBox(height: kWizardSpacing),
                    widget.imageTitleWidget!,
                  ],
                ],
              ),
            ),
          const SizedBox(width: kWizardSpacing),
          Expanded(
            flex: 8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (!widget.managedScrolling) ...[
                  const Spacer(),
                  Padding(
                    padding: adjustedPadding,
                    child: _Headline(
                      title: widget.title,
                      trailingTitleWidget: widget.trailingTitleWidget,
                    ),
                  ),
                ],
                Expanded(
                  flex: widget.managedScrolling ? 1 : widget._contentFlex,
                  child: widget.managedScrolling
                      ? Center(
                          child: PrimaryScrollController(
                            controller: _controller,
                            child: Scrollbar(
                              thumbVisibility: true,
                              child: SingleChildScrollView(
                                primary: true,
                                padding: hoverPadding +
                                    EdgeInsets.only(right: scrollBarPadding) +
                                    scrollViewPadding,
                                child: Padding(
                                  padding: adjustedPadding,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _Headline(
                                        title: widget.title,
                                        trailingTitleWidget:
                                            widget.trailingTitleWidget,
                                      ),
                                      ...widget.children,
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      : Padding(
                          padding: adjustedPadding,
                          child: Column(children: widget.children),
                        ),
                ),
                if (!widget.managedScrolling) const Spacer(),
              ],
            ),
          ),
        ],
      ),
      snackBar: widget.snackBar,
      bottomBar: widget.bottomBar ??
          WizardBar(
            leading: const BackWizardButton(),
            trailing: [
              NextWizardButton(
                focusNode: widget.nextFocusNode,
                onNext: widget.onNext,
                enabled: widget.isNextEnabled,
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
            child: Semantics(
              focused: true,
              header: true,
              child: Text(
                title,
                style: theme.textTheme.titleLarge,
              ),
            ),
          ),
          if (trailingTitleWidget != null) trailingTitleWidget!,
        ],
      ),
    );
  }
}
