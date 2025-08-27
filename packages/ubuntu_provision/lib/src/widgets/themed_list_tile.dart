import 'package:flutter/material.dart';
import 'package:yaru/yaru.dart';

class ThemedListTile extends StatefulWidget {
  const ThemedListTile({
    required this.valueKey,
    required this.selected,
    required this.title,
    super.key,
    this.onTap,
    this.leading,
    this.trailing,
  });

  final ValueKey<dynamic> valueKey;
  final bool selected;
  final Widget title;

  final Widget? leading;
  final Widget? trailing;
  final void Function()? onTap;

  @override
  State<ThemedListTile> createState() => _ThemedListTileState();
}

class _ThemedListTileState extends State<ThemedListTile> {
  bool _focused = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AnimatedContainer(
      duration: kThemeAnimationDuration,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(kYaruContainerRadius)),
        border: BoxBorder.all(
          color: _focused ? theme.primaryColor : Colors.transparent,
          width: 2,
          strokeAlign: -2,
        ),
      ),
      child: ListTile(
        key: widget.valueKey,
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
        hoverColor: theme.colorScheme.onSurface.copyWith(alpha: 0.35),
        selectedColor: theme.textTheme.bodyMedium?.color,
        focusColor: Colors.transparent,
        selectedTileColor: Colors.transparent,
      ),
    );
  }
}
