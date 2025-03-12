import 'package:flutter/material.dart';

class MascotAvatar extends StatelessWidget {
  const MascotAvatar({
    super.key,
    this.image,
    this.size = const Size.square(160),
    this.progress = 0,
  });

  final Widget? image;
  final Size size;
  final double? progress;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          constraints: BoxConstraints.tight(size),
          padding: const EdgeInsets.all(8),
          decoration: ShapeDecoration(
            shape: CircleBorder(
              side: BorderSide(color: Theme.of(context).colorScheme.outline),
            ),
          ),
          child: image,
        ),
        Positioned.fill(
          top: 3.75,
          left: 3.75,
          right: 3.75,
          bottom: 3.75,
          child: CircularProgressIndicator(
            value: progress,
            strokeWidth: 8.5,
            backgroundColor: Colors.transparent,
          ),
        ),
      ],
    );
  }
}
