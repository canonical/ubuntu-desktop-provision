import 'package:flutter/widgets.dart';

import 'slide_layout_styles.dart';

/// A layout with a portrait screenshot on the left.
class PortraitSlideLayout extends StatelessWidget {
  const PortraitSlideLayout({
    required this.title,
    required this.body,
    required this.image,
    required this.table,
    super.key,
  });

  final Widget title;
  final Widget body;
  final Widget image;
  final Widget table;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 8),
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            image,
            const Spacer(),
            Expanded(
              flex: 14,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 56),
                  DefaultTextStyle(
                    style: titleStyle(context),
                    child: title,
                  ),
                  const SizedBox(height: 16),
                  DefaultTextStyle(
                    style: bodyStyle(context),
                    child: body,
                  ),
                  const SizedBox(height: 16),
                  table,
                ],
              ),
            ),
            const Spacer(),
          ],
        ),
      ],
    );
  }
}
