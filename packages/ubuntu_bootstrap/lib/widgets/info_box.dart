import 'package:flutter/material.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';
import 'package:yaru_widgets/widgets.dart';

class InfoBox extends StatelessWidget {
  const InfoBox({
    this.title,
    this.subtitle,
    this.child,
    this.isThreeLine = false,
    super.key,
  }) : assert(
          (subtitle != null) ^ (child != null),
          'Either a subtitle or a child must be provided',
        );

  final String? title;
  final String? subtitle;
  final Widget? child;
  final bool isThreeLine;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    const baseColor = YaruColors.blue;

    return Row(
      children: [
        Expanded(
          child: YaruBorderContainer(
            color: baseColor.withOpacity(0.1),
            border: Border.all(color: baseColor),
            borderRadius: kWizardBorderRadius,
            child: ListTile(
              leading: const Icon(Icons.info_outlined, size: 30),
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
