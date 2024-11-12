import 'package:flutter/material.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

enum InfoBoxType {
  info,
  warning,
  error;

  Color get color {
    switch (this) {
      case InfoBoxType.info:
        return YaruColors.blue;
      case InfoBoxType.warning:
        return YaruColors.orange;
      case InfoBoxType.error:
        return YaruColors.red;
    }
  }

  IconData get icon {
    switch (this) {
      case InfoBoxType.info:
        return YaruIcons.information;
      case InfoBoxType.warning:
        return YaruIcons.warning;
      case InfoBoxType.error:
        return YaruIcons.error;
    }
  }
}

class InfoBox extends StatelessWidget {
  const InfoBox({
    this.title,
    this.subtitle,
    this.child,
    this.isThreeLine = false,
    this.type = InfoBoxType.info,
    super.key,
  }) : assert(
          (subtitle != null) ^ (child != null),
          'Either a subtitle or a child must be provided',
        );

  final String? title;
  final String? subtitle;
  final Widget? child;
  final bool isThreeLine;
  final InfoBoxType type;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final baseColor = type.color;

    return Row(
      children: [
        Expanded(
          child: YaruBorderContainer(
            color: baseColor.withOpacity(0.1),
            border: Border.all(color: baseColor),
            borderRadius: kWizardBorderRadius,
            child: ListTile(
              leading: Icon(type.icon, size: 30),
              iconColor: baseColor,
              title: title != null
                  ? Text(
                      title!,
                      style: theme.textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        height: 1.8,
                      ),
                    )
                  : null,
              subtitle: child ??
                  Text(
                    subtitle!,
                    style: theme.textTheme.bodyMedium,
                  ),
              contentPadding: kWizardTilePadding,
              isThreeLine: isThreeLine,
            ),
          ),
        ),
      ],
    );
  }
}
