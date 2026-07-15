import 'package:flutter/material.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

class OptionButton<T> extends StatefulWidget {
  const OptionButton({
    required this.title,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    this.isThreeLines = true,
    this.trailing,
    this.subtitle,
    super.key,
  });

  final Widget title;
  final Widget? trailing;
  final Widget? subtitle;
  final T value;
  final T groupValue;
  final bool isThreeLines;
  final ValueChanged<T?>? onChanged;

  @override
  State<OptionButton<T>> createState() => _OptionButtonState<T>();
}

class _OptionButtonState<T> extends State<OptionButton<T>> {
  late final _focusNode = FocusNode();

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final isSelected = widget.value == widget.groupValue;
    final showFocusBorder = YaruTheme.maybeOf(context)?.focusBorders ?? false;

    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: ListenableBuilder(
        listenable: _focusNode,
        builder: (context, child) => AnimatedContainer(
          duration: Durations.medium1,
          foregroundDecoration: showFocusBorder
              ? BoxDecoration(
                  border: BoxBorder.all(
                    strokeAlign: BorderSide.strokeAlignOutside,
                    color: _focusNode.hasFocus
                        ? colorScheme.primary
                        : Colors.transparent,
                    width: kYaruFocusBorderWidth,
                  ),
                  borderRadius: kWizardBorderRadius,
                )
              : null,
          child: child,
        ),
        child: YaruBorderContainer(
          color: isSelected
              ? colorScheme.primary.withValues(alpha: 0.2)
              : colorScheme.primaryContainer,
          border: Border.all(
            color: isSelected ? colorScheme.primary : theme.dividerColor,
          ),
          borderRadius: kWizardBorderRadius,
          child: ListTileTheme.merge(
            titleTextStyle: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontWeight: FontWeight.bold),
            child: YaruRadioListTile<T>(
              hasFocusBorder: false,
              focusNode: _focusNode,
              control: ExcludeFocus(
                child: YaruRadio<T>(
                  value: widget.value,
                  groupValue: widget.groupValue,
                  onChanged: widget.onChanged,
                ),
              ),
              title: Wrap(
                alignment: WrapAlignment.spaceBetween,
                children: [
                  widget.title,
                  if (widget.trailing != null) ...[
                    widget.trailing!,
                  ],
                ],
              ),
              subtitle: widget.subtitle,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
              value: widget.value,
              groupValue: widget.groupValue,
              onChanged: widget.onChanged,
            ),
          ),
        ),
      ),
    );
  }
}
