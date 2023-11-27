import 'package:flutter/material.dart';

class SlideColumn extends StatelessWidget {
  const SlideColumn({super.key, required this.children, this.spacing});

  final List<Widget> children;
  final double? spacing;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: _withSpacing(children, spacing ?? 16),
    );
  }

  static List<Widget> _withSpacing(List<Widget> children, double spacing) {
    return children
        .expand((item) sync* {
          yield SizedBox(height: spacing);
          yield item;
        })
        .skip(1)
        .toList();
  }
}
