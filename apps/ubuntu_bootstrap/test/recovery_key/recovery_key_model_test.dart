import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/pages/recovery_key/recovery_key_model.dart';

import '../test_utils.dart';

void main() {
  const testRecoveryKey = '12345-12345-12345-12345-12345-12345-12345-12345';

  test('init', () async {
    final storage = MockStorageService();
    final model = RecoveryKeyModel(storage: storage);

    when(storage.guidedCapability).thenReturn(GuidedCapability.DIRECT);
    expect(await model.init(), isFalse);

    when(storage.guidedCapability)
        .thenReturn(GuidedCapability.CORE_BOOT_ENCRYPTED);
    when(storage.getCoreBootRecoveryKey()).thenAnswer(
      (_) async => testRecoveryKey,
    );
    expect(await model.init(), isTrue);
    expect(model.recoveryKey, equals(testRecoveryKey));
  });
}
