import 'package:flutter/widgets.dart';

import 'slide_layout_styles.dart';

/// A layout with a landscape screenshot on the right.
class LandscapeSlideLayout extends StatelessWidget {
  const LandscapeSlideLayout({
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
            const Spacer(),
            Expanded(
              flex: 8,
              child: DefaultTextStyle(
                style: titleStyle(context),
                child: title,
              ),
            ),
            const Spacer(),
            Expanded(
              flex: 14,
              child: Column(
                children: [
                  DefaultTextStyle(
                    style: bodyStyle(context),
                    child: body,
                  ),
                  const SizedBox(height: 16),
                  image,
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
