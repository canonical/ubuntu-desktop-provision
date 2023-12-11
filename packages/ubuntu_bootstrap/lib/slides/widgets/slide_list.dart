import 'package:flutter/widgets.dart';

class SlideList extends StatelessWidget {
  const SlideList({required this.children, super.key});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for (final child in children)
          Padding(
            padding: const EdgeInsets.all(4),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('\u2022'),
                const SizedBox(width: 4),
                Expanded(child: child),
              ],
            ),
          ),
      ],
    );
  }
}
