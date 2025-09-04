import 'package:flutter/material.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

class OptionButton<T> extends StatelessWidget {
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
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final isSelected = value == groupValue;

    return Align(
      alignment: AlignmentDirectional.centerStart,
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
            title: Wrap(
              alignment: WrapAlignment.spaceBetween,
              children: [
                title,
                if (trailing != null) ...[
                  trailing!,
                ],
              ],
            ),
            subtitle: subtitle,
            contentPadding: kWizardTilePadding,
            isThreeLine: isThreeLines,
            value: value,
            groupValue: groupValue,
            onChanged: onChanged,
          ),
        ),
      ),
    );
  }
}
