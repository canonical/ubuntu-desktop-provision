import 'package:flutter/material.dart';
import 'package:yaru/yaru.dart';

class InfoBadge extends StatelessWidget {
  const InfoBadge({required this.title, this.color, super.key});

  final String title;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final baseColor = color ?? YaruColors.blue;
    final theme = Theme.of(context);

    return YaruBorderContainer(
      color: baseColor.withOpacity(0.1),
      border: Border.all(color: baseColor),
      borderRadius: BorderRadius.circular(20),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
        child: Text(title, style: theme.textTheme.bodySmall),
      ),
    );
  }
}
