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
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context).colorScheme.outline,
          ),
          child: image,
        ),
        if (progress != null && progress! > 0 && progress! < 1) ...[
          Container(
            constraints: BoxConstraints.tight(
              Size(size.width - 17, size.height - 17),
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black.withOpacity(0.25),
            ),
          ),
          Positioned(
            child: Text(
              '${(progress! * 100).ceil()}%',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
        ],
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
