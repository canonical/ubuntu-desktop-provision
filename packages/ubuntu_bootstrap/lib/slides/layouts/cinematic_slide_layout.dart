import 'package:flutter/widgets.dart';

import 'slide_layout_styles.dart';

/// A "cinematic" layout with a wide banner at the top.
class CinematicSlideLayout extends StatelessWidget {
  const CinematicSlideLayout({
    required this.banner,
    required this.title,
    required this.body,
    required this.table,
    super.key,
  });

  final Widget banner;
  final Widget title;
  final Widget body;
  final Widget table;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 8),
      children: [
        banner,
        const SizedBox(height: 16),
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
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
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
