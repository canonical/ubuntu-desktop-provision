import 'dart:convert';

import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ubuntu_bootstrap/pages/recovery_key/recovery_key_model.dart';
import 'package:ubuntu_bootstrap/pages/recovery_key/recovery_key_page.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:yaru/yaru.dart';
import 'package:yaru_test/yaru_test.dart';

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

  testWidgets('show QR code', (tester) async {
    final model = buildRecoveryKeyModel(recoveryKey: testRecoveryKey);
    await tester.pumpApp((_) => buildPage(model));

    await tester.tap(find.button(tester.lang.recoveryKeyShowQrCodeLabel));
    await tester.pumpAndSettle();

    final qrCode = find.byType(BarcodeWidget);
    expect(qrCode, findsOneWidget);
    expect(
      utf8.decode(tester.widget<BarcodeWidget>(qrCode).data),
      equals(testRecoveryKey),
    );
  });

  testWidgets('error state', (tester) async {
    final model = buildRecoveryKeyModel(
      recoveryKey: testRecoveryKey,
      error: RecoveryKeyExceptionUnknown(
        rawError: 'test error',
      ),
    );
    await tester.pumpApp((_) => buildPage(model));
    await tester.pumpAndSettle();

    expect(find.byType(YaruInfoBox), findsOneWidget);
    expect(find.text('test error'), findsOneWidget);
  });
}
