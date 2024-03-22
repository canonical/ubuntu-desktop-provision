import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ubuntu_flavor/ubuntu_flavor.dart';
import 'package:ubuntu_provision/providers.dart';

class StorageIcon extends ConsumerWidget {
  const StorageIcon({this.name, this.useCustomIcon = false, super.key});

  final String? name;
  final bool useCustomIcon;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final String asset;
    final lower = name?.toLowerCase();
    if (lower == null) {
      asset = 'folder';
    } else if (_isUbuntuDerivative(lower)) {
      asset = 'ubuntu';
    } else if (lower.contains('windows')) {
      asset = 'windows';
    } else if (lower == 'files') {
      asset = 'block-device';
    } else {
      asset = 'block-device';
    }

    final overrideIcon =
        useCustomIcon ? ref.watch(pageImagesProvider).get('storageIcon') : null;

    return SizedBox.square(
      dimension: 48,
      child: overrideIcon ??
          SvgPicture.asset(
            'assets/storage/$asset.svg',
          ),
    );
  }

  bool _isUbuntuDerivative(String name) {
    final flavors = UbuntuFlavor.values.toList()..remove(UbuntuFlavor.unknown);
    for (final flavor in flavors) {
      if (name.contains(flavor.name.toLowerCase())) {
        return true;
      }
    }
    return false;
  }
}
