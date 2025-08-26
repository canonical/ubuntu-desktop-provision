import 'package:flutter/material.dart';
import 'package:yaru/yaru.dart';

class ThemedListTile extends StatefulWidget {
  const ThemedListTile({
    required this.index,
    required this.selectedIndex,
    required this.title,
    super.key,
    this.onTap,
  });

  final int index;
  final int selectedIndex;
  final Text title;
  final void Function()? onTap;

  @override
  State<ThemedListTile> createState() => _ThemedListTileState();
}

class _ThemedListTileState extends State<ThemedListTile> {
  bool _focused = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final selected = widget.index == widget.selectedIndex;
    final focusColor =
        selected ? theme.colorScheme.onPrimary : theme.primaryColor;

    return AnimatedContainer(
      duration: kThemeAnimationDuration,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(kYaruContainerRadius)),
        border: BoxBorder.all(
          color: _focused ? focusColor : Colors.transparent,
          width: 2,
          strokeAlign: -2,
        ),
      ),
      child: ListTile(
        key: ValueKey(widget.index),
        onFocusChange: (value) => setState(() {
          _focused = value;
        }),
        title: widget.title,
        selected: selected,
        onTap: widget.onTap,
        hoverColor: theme.colorScheme.onSurface.copyWith(alpha: 0.35),
        focusColor: Colors.transparent,
        selectedTileColor: theme.primaryColor,
      ),
    );
  }
}
