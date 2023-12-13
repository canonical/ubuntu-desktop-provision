import 'package:flutter/widgets.dart';

import 'package:ubuntu_bootstrap/slides/layouts/slide_layout_styles.dart';

/// A layout reserved for the first slide.
class IntroSlideLayout extends StatelessWidget {
  const IntroSlideLayout({
    required this.title,
    required this.body,
    required this.image,
    super.key,
  });

  final Widget title;
  final Widget body;
  final Widget image;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 8),
        shrinkWrap: true,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(flex: 4),
              Expanded(
                flex: 8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    DefaultTextStyle(
                      style: titleStyle(context).copyWith(fontSize: 30),
                      child: title,
                    ),
                    const SizedBox(height: 16),
                    DefaultTextStyle(
                      style: bodyStyle(context),
                      child: body,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Expanded(
                flex: 8,
                child: image,
              ),
              const Spacer(flex: 4),
            ],
          ),
        ],
      ),
    );
  }
}
