import 'package:flutter/widgets.dart';

import 'slide_layout_styles.dart';

/// A layout reserved for the last slide.
class OutroSlideLayout extends StatelessWidget {
  const OutroSlideLayout({
    required this.title,
    required this.body,
    required this.image,
    required this.list,
    super.key,
  });

  final Widget title;
  final Widget body;
  final Widget image;
  final Widget list;

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
                flex: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    DefaultTextStyle(
                      style: titleStyle(context),
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
              const Spacer(flex: 2),
              Expanded(
                flex: 11,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Align(
                      alignment: AlignmentDirectional.topStart,
                      child: image,
                    ),
                    const SizedBox(height: 48),
                    list,
                  ],
                ),
              ),
              const Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
