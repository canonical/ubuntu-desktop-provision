import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ubuntu_bootstrap/pages/storage/recovery_key/recovery_key_model.dart';
import 'package:ubuntu_bootstrap/pages/storage/recovery_key/recovery_key_page.dart';

import 'test_recovery_key.dart';

void main() {
  Widget buildPage(RecoveryKeyModel model) {
    return ProviderScope(
      overrides: [recoveryKeyModelProvider.overrideWith((_) => model)],
      child: const RecoveryKeyPage(),
    );
  }

  testWidgets('command', (tester) async {
    final model = buildRecoveryKeyModel();
    await tester.pumpApp((_) => buildPage(model));

    expect(find.text(kRecoveryKeyCommand), findsOneWidget);
  });
}
