import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_bootstrap/pages/try_or_install/try_or_install_page.dart';
import 'package:ubuntu_provision/providers.dart';

import '../test_utils.dart';

export '../test_utils.dart';

final pageImages = PageImages.internal(
  MockPageConfigService(),
  MockThemeVariantService(),
);

Widget buildTryOrInstallPage() {
  return ProviderScope(
    overrides: [
      pageImagesProvider.overrideWith((_) => pageImages),
    ],
    child: const TryOrInstallPage(),
  );
}
