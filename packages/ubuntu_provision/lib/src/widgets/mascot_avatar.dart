import 'package:flutter/material.dart';

const _kMascotAsset = AssetImage(
  'assets/mascot.png',
  package: 'ubuntu_provision',
);

class MascotAvatar extends StatelessWidget {
  const MascotAvatar({
    super.key,
    this.image = _kMascotAsset,
    this.size = const Size.square(160),
    this.progress = 0,
  });

  final ImageProvider<Object> image;
  final Size size;
  final double? progress;

  /// Requests the mascot asset to be pre-cached.
  static Future precacheAsset(BuildContext context) async {
    return precacheImage(_kMascotAsset, context);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context).colorScheme.outline,
          ),
          child: Image(
            image: image,
            gaplessPlayback: true,
            height: size.height,
            width: size.width,
          ),
        ),
        if (progress != null && progress! > 0 && progress! < 1)
          Positioned(
            child: Text(
              '${(progress! * 100).ceil()}%',
              style: Theme.of(context).textTheme.titleLarge,
            ),
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
