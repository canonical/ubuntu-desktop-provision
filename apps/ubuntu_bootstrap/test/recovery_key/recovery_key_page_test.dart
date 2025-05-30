import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ubuntu_bootstrap/pages/recovery_key/recovery_key_model.dart';
import 'package:ubuntu_bootstrap/pages/recovery_key/recovery_key_page.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';

import '../test_utils.dart';
import 'test_recovery_key.dart';

void main() {
  Widget buildPage(RecoveryKeyModel model) {
    final pageImages = PageImages.internal(
      MockPageConfigService(),
      MockThemeVariantService(),
    );
    return ProviderScope(
      overrides: [
        recoveryKeyModelProvider.overrideWith((_) => model),
        pageImagesProvider.overrideWith((_) => pageImages),
      ],
      child: const RecoveryKeyPage(),
    );
  }

  testWidgets('display recovery key', (tester) async {
    final model = buildRecoveryKeyModel(recoveryKey: testRecoveryKey);
    await tester.pumpApp((_) => buildPage(model));

    expect(find.text(testRecoveryKey), findsOneWidget);
  });
}
