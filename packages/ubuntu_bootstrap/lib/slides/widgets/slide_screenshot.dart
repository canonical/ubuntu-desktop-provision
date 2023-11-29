import 'package:flutter/material.dart';

import '../layouts/slide_layout_styles.dart';

class SlideScreenshot extends StatelessWidget {
  const SlideScreenshot(
    this.name, {
    this.alignment = Alignment.center,
    this.fit,
  });

  final String name;
  final AlignmentGeometry alignment;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).brightness.name;
    return Image.asset(
      slideScreenshot('$theme/$name'),
      errorBuilder: (_, __, ___) => Image.asset(
        slideScreenshot(name),
        alignment: alignment,
        fit: fit,
      ),
      alignment: alignment,
      fit: fit,
    );
  }
}
