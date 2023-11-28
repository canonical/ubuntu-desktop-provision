import 'package:flutter/material.dart';

import '../layouts/slide_layout_styles.dart';

class SlideIcon extends StatelessWidget {
  const SlideIcon(this.name);

  final String name;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).brightness.name;
    return Image.asset(
      slideIcon('$theme/$name'),
      errorBuilder: (_, __, ___) => Image.asset(slideIcon(name)),
    );
  }
}
