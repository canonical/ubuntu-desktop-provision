import 'package:flutter/material.dart';
import 'package:yaru/yaru.dart';

class OptionButton<T> extends StatelessWidget {
  const OptionButton({
    required this.title,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    super.key,
    this.subtitle,
  });

  final Widget title;
  final Widget? subtitle;
  final T value;
  final T groupValue;
  final ValueChanged<T?>? onChanged;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return Container(
      width: double.infinity,
      constraints: const BoxConstraints(maxWidth: 500),
      decoration: BoxDecoration(
        color: value == groupValue
            ? scheme.primary.withOpacity(0.1)
            : scheme.primaryContainer,
        border: Border.all(
          color: value == groupValue ? scheme.primary : scheme.outline,
        ),
        borderRadius: BorderRadius.circular(kYaruButtonRadius),
      ),
      child: YaruRadioButton<T>(
        contentPadding: const EdgeInsetsDirectional.fromSTEB(15, 10, 60, 10),
        title: DefaultTextStyle(
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(fontWeight: FontWeight.bold),
          child: title,
        ),
        subtitle: subtitle,
        value: value,
        groupValue: groupValue,
        onChanged: onChanged,
      ),
    );
  }
}
