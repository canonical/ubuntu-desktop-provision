import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// The default interval for automatic slide changes.
const kDefaultSlideInterval = Duration(seconds: 25);

/// Displays a set of slides, or any widgets, that animate in and out at a
/// specified interval. The slides can be manually navigated by pressing arrow
/// buttons on the sides, too.
class SlideView extends StatefulWidget {
  /// Creates a slide show with the given slides and interval.
  SlideView({
    required this.controller,
    required this.slides,
    super.key,
    this.interval = kDefaultSlideInterval,
    this.wrap = false,
    this.autofocus = false,
    this.focusNode,
    this.onSlide,
  }) : assert(slides.isNotEmpty);

  /// Controls the current slide.
  final ValueNotifier<int> controller;

  /// The list of slides to show.
  final List<Widget> slides;

  /// The interval for automatic slide changes. Defaults to [kDefaultSlideInterval].
  final Duration interval;

  /// Whether to wrap around. The default value is false.
  final bool wrap;

  /// Whether to automatically request keyboard focus.
  final bool autofocus;

  /// Defines the keyboard focus for the slide show.
  final FocusNode? focusNode;

  /// Called when the current slide changes.
  final ValueChanged<int>? onSlide;

  @override
  State<SlideView> createState() => _SlideViewState();
}

class _SlideViewState extends State<SlideView> {
  Timer? _timer;
  late final FocusNode _internalFocusNode;

  FocusNode get _effectiveFocusNode => widget.focusNode ?? _internalFocusNode;

  @override
  void initState() {
    super.initState();
    _internalFocusNode = FocusNode();
    widget.controller.addListener(_onSlideChanged);
    widget.controller.addListener(restartTimer);
    restartTimer();
  }

  @override
  void didUpdateWidget(SlideView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.interval != widget.interval) {
      restartTimer();
    }
  }

  void _onSlideChanged() => setState(() {});

  @override
  void dispose() {
    _internalFocusNode.dispose();
    widget.controller.removeListener(_onSlideChanged);
    widget.controller.removeListener(restartTimer);
    _timer?.cancel();
    super.dispose();
  }

  void restartTimer() {
    _timer?.cancel();
    if (widget.interval > Duration.zero) {
      _timer = Timer.periodic(widget.interval, (_) => nextSlide());
    }
  }

  int get slideCount => widget.slides.length;
  int get currentSlide => widget.controller.value;

  void setSlide(int slide) {
    widget.controller.value = slide;
    widget.onSlide?.call(slide);
  }

  void nextSlide() {
    final nextSlide = currentSlide + 1;
    if (widget.wrap) {
      setSlide(nextSlide % slideCount);
    } else if (nextSlide < slideCount) {
      setSlide(nextSlide);
    }
  }

  void previousSlide() {
    final previousSlide = currentSlide - 1;
    if (previousSlide >= 0 || widget.wrap) {
      setSlide(previousSlide >= 0 ? previousSlide : slideCount - 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    // The slideshow container is a non-traversable region: `skipTraversal`
    // keeps it out of the Tab order (so there is no extra blank tab stop) while
    // still receiving arrow-key events that bubble up from the focused slide or
    // link. Each slide exposes its own body text as a single focusable node and
    // its links as separate focusable nodes (see slide_html.dart), so the
    // container itself carries no label - a label here would make a screen
    // reader re-read the whole slide whenever focus moved to a link.
    return Focus(
      skipTraversal: true,
      focusNode: _effectiveFocusNode,
      includeSemantics: false,
      onKeyEvent: (_, event) {
        if (event is! KeyDownEvent) return KeyEventResult.ignored;
        if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
          previousSlide();
          return KeyEventResult.handled;
        }
        if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
          nextSlide();
          return KeyEventResult.handled;
        }
        return KeyEventResult.ignored;
      },
      child: Semantics(
        container: true,
        explicitChildNodes: true,
        child: MediaQuery(
          data:
              MediaQuery.of(context).copyWith(textScaler: TextScaler.noScaling),
          child: Theme(
            data: Theme.of(context).copyWith(
              textTheme: Theme.of(context).textTheme.apply(fontSizeFactor: 1.5),
            ),
            child: ValueListenableBuilder<int>(
              valueListenable: widget.controller,
              builder: (context, value, child) {
                return AnimatedSwitcher(
                  duration: const Duration(seconds: 1),
                  layoutBuilder: (currentChild, previousChildren) => Stack(
                    fit: StackFit.expand,
                    children: [
                      ...previousChildren,
                      if (currentChild != null) currentChild,
                    ],
                  ),
                  transitionBuilder: (child, animation) {
                    final isExiting = animation is ReverseAnimation;
                    if (isExiting) {
                      final firstHalf = CurvedAnimation(
                        parent: animation,
                        curve: const Interval(0.5, 1.0),
                      );
                      return FadeTransition(
                        opacity: firstHalf
                            .drive(CurveTween(curve: Curves.easeOutExpo)),
                        child: SlideTransition(
                          position: firstHalf.drive(
                            Tween(
                              begin: const Offset(0, -0.05),
                              end: Offset.zero,
                            ).chain(CurveTween(curve: Curves.fastOutSlowIn)),
                          ),
                          textDirection: Directionality.of(context),
                          child: child,
                        ),
                      );
                    } else {
                      final secondHalf = CurvedAnimation(
                        parent: animation,
                        curve: const Interval(0.5, 1.0),
                      );
                      return FadeTransition(
                        opacity:
                            secondHalf.drive(CurveTween(curve: Curves.easeIn)),
                        child: SlideTransition(
                          position: secondHalf.drive(
                            Tween(
                              begin: const Offset(0, 0.05),
                              end: Offset.zero,
                            ).chain(CurveTween(curve: Curves.fastOutSlowIn)),
                          ),
                          textDirection: Directionality.of(context),
                          child: child,
                        ),
                      );
                    }
                  },
                  child: KeyedSubtree(
                    key: ValueKey(value),
                    child: Row(
                      children: [
                        Expanded(
                          child: widget.slides[value],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
