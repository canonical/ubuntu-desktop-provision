import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_flavor/ubuntu_flavor.dart';

final flavorProvider =
    StateProvider((_) => UbuntuFlavor.detect() ?? UbuntuFlavor.ubuntu);
