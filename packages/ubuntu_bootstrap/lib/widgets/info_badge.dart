import 'package:flutter/material.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

class InfoBadge extends StatelessWidget {
  const InfoBadge({required this.title, this.padding, super.key});

  final String title;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    const baseColor = YaruColors.blue;
    final theme = Theme.of(context);

    return Padding(
      padding: padding ?? const EdgeInsets.only(left: kWizardSpacing),
      child: YaruBorderContainer(
        color: baseColor.withValues(alpha: 0.1),
        border: Border.all(color: baseColor),
        borderRadius: BorderRadius.circular(20),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
          child: Text(title, style: theme.textTheme.bodySmall),
        ),
      ),
    );
  }
}
