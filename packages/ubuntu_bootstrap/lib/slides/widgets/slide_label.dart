import 'package:flutter/material.dart';

class SlideLabel extends StatelessWidget {
  const SlideLabel({super.key, required this.icon, required this.label});

  final Widget icon;
  final Widget label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox.square(
          dimension: 24,
          child: icon,
        ),
        const SizedBox(width: 8),
        label,
      ],
    );
  }
}
