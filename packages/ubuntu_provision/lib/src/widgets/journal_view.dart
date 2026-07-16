import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ubuntu_widgets/ubuntu_widgets.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';

class JournalView extends StatefulWidget {
  const JournalView({
    required this.journal,
    this.focusNode,
    this.semanticLabel,
    super.key,
  });

  final Stream<String> journal;

  /// An optional external [FocusNode] to control focus on this view.
  /// If not provided, [JournalView] manages its own focus node.
  final FocusNode? focusNode;

  /// Semantic label announced by screen readers when this view is focused.
  final String? semanticLabel;

  @override
  State<JournalView> createState() => _JournalViewState();
}

class _JournalViewState extends State<JournalView> {
  late final ScrollController _scrollController;
  late final FocusNode _focusNode;
  double _lineHeight = 20.0;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _focusNode = widget.focusNode ?? FocusNode();
    _focusNode.addListener(_onFocusChange);
  }

  @override
  void didUpdateWidget(JournalView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.focusNode != oldWidget.focusNode) {
      _focusNode.removeListener(_onFocusChange);
      if (oldWidget.focusNode == null) _focusNode.dispose();
      _focusNode = widget.focusNode ?? FocusNode();
      _focusNode.addListener(_onFocusChange);
    }
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChange);
    // Note: _scrollController is passed to LogView which unconditionally
    // disposes it in its own dispose(), so we must not dispose it here too.
    if (widget.focusNode == null) _focusNode.dispose();
    super.dispose();
  }

  void _onFocusChange() {
    // The outer Focus node has skipTraversal, so it can only receive focus
    // programmatically. Immediately delegate to the first traversable
    // descendant (the TextField inside LogView) so callers just call
    // requestFocus() without needing to know the internal widget structure.
    if (_focusNode.hasPrimaryFocus) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        final firstChild = _focusNode.descendants
            .where((n) => !n.skipTraversal && n.canRequestFocus)
            .firstOrNull;
        if (firstChild != null) {
          firstChild.requestFocus();
          return;
        }
      });
    }
    setState(() {});
  }

  KeyEventResult _handleKeyEvent(FocusNode node, KeyEvent event) {
    if (event is! KeyDownEvent && event is! KeyRepeatEvent) {
      return KeyEventResult.ignored;
    }
    if (!_scrollController.hasClients) return KeyEventResult.ignored;

    final position = _scrollController.position;
    final pageHeight = position.viewportDimension;

    double? target;
    if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
      target = min(position.pixels + _lineHeight, position.maxScrollExtent);
    } else if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
      target = max(position.pixels - _lineHeight, 0.0);
    } else if (event.logicalKey == LogicalKeyboardKey.pageDown) {
      target = min(position.pixels + pageHeight, position.maxScrollExtent);
    } else if (event.logicalKey == LogicalKeyboardKey.pageUp) {
      target = max(position.pixels - pageHeight, 0.0);
    } else if (event.logicalKey == LogicalKeyboardKey.home) {
      target = 0.0;
    } else if (event.logicalKey == LogicalKeyboardKey.end) {
      target = position.maxScrollExtent;
    }

    if (target != null) {
      _scrollController.jumpTo(target);
      return KeyEventResult.handled;
    }
    return KeyEventResult.ignored;
  }

  @override
  Widget build(BuildContext context) {
    // Flutter's default line height multiplier for text is 1.2. Capture it
    // here so _handleKeyEvent can scroll by exactly one line without needing
    // access to BuildContext.
    final fontSize = Theme.of(context).textTheme.bodyLarge?.fontSize ?? 16.0;
    _lineHeight = fontSize * 1.2;

    // The outer Focus intercepts arrow/page/home/end keys via onKeyEvent,
    // which fires as events bubble UP the focus chain before they reach the
    // Shortcuts/DefaultTextEditingShortcuts layer. Returning handled here
    // prevents arrow keys from moving the text cursor in the inner TextField,
    // regardless of which descendant has primary focus. The TextField itself
    // remains reachable by Tab so Orca (which uses focus mode exclusively in
    // Flutter GTK apps) can focus it and read the log content.
    return Semantics(
      label: widget.semanticLabel,
      focused: _focusNode.hasPrimaryFocus,
      focusable: true,
      child: Focus(
        focusNode: _focusNode,
        skipTraversal: true,
        includeSemantics: false,
        onKeyEvent: _handleKeyEvent,
        child: LogView(
          log: widget.journal,
          scrollController: _scrollController,
          padding: const EdgeInsets.all(kWizardSpacing),
          style: TextStyle(
            inherit: false,
            fontSize: Theme.of(context).textTheme.bodyLarge!.fontSize,
            fontFamily: 'Ubuntu Mono',
            textBaseline: TextBaseline.alphabetic,
          ),
          decoration: const InputDecoration(
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            fillColor: Colors.transparent,
            hoverColor: Colors.transparent,
          ),
          background: BoxDecoration(color: Theme.of(context).shadowColor),
        ),
      ),
    );
  }
}
