import 'package:flutter/widgets.dart';

class TestSlideLayout extends StatelessWidget {
  const TestSlideLayout({required this.body, required this.image, super.key});

  final Widget body;
  final Widget image;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 8),
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(flex: 10),
            Expanded(
              flex: 30,
              child: image,
            ),
            const Spacer(flex: 10),
            Expanded(
              flex: 40,
              child: body,
            ),
            const Spacer(flex: 10),
          ],
        ),
      ],
    );
  }
}
