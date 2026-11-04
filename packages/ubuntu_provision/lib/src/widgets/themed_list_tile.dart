import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:yaru/yaru.dart';

class ThemedListTile extends StatefulWidget {
  const ThemedListTile({
    required this.selected,
    required this.title,
    super.key,
    this.onTap,
    this.onDoubleTap,
    this.leading,
    this.trailing,
  });

  final bool selected;
  final Widget title;

  final Widget? leading;
  final Widget? trailing;
  final void Function()? onTap;

  /// Called when the tile is double-clicked. The first click of a double-click
  /// still triggers [onTap] immediately, so single clicks are not delayed.
  final void Function()? onDoubleTap;

  @override
  State<ThemedListTile> createState() => _ThemedListTileState();
}

class _ThemedListTileState extends State<ThemedListTile> {
  bool _focused = false;

  void _handleSerialTapUp(SerialTapUpDetails details) {
    switch (details.count) {
      case 1:
        widget.onTap?.call();
      case 2:
        widget.onDoubleTap?.call();
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final tile = AnimatedContainer(
      duration: kThemeAnimationDuration,
      foregroundDecoration: BoxDecoration(
        border: Border.all(
          color: _focused ? theme.primaryColor : Colors.transparent,
          width: 2,
          strokeAlign: -2,
        ),
      ),
      child: ListTile(
        onFocusChange: (value) => setState(() {
          _focused = value;
        }),
        leading: widget.leading ??
            (widget.selected
                ? const Icon(YaruIcons.ok_simple)
                : SizedBox.shrink()),
        trailing: widget.trailing,
        title: widget.title,
        selected: widget.selected,
        onTap: widget.onTap,
        selectedColor: theme.textTheme.bodyMedium?.color,
        focusColor: Colors.transparent,
        visualDensity: VisualDensity.compact,
        selectedTileColor: Colors.transparent,
        shape: Border(),
      ),
    );

    if (widget.onDoubleTap == null) return tile;

    // SerialTapGestureRecognizer reports every click of a series with its
    // count, so the first click selects without waiting for a possible second
    // click, and the second one activates. It wins the gesture arena over the
    // ListTile's own tap recognizer, so onTap is not called twice. Keyboard
    // activation still goes through ListTile.onTap.
    return RawGestureDetector(
      gestures: {
        SerialTapGestureRecognizer:
            GestureRecognizerFactoryWithHandlers<SerialTapGestureRecognizer>(
          SerialTapGestureRecognizer.new,
          (recognizer) => recognizer.onSerialTapUp = _handleSerialTapUp,
        ),
      },
      child: tile,
    );
  }
}
