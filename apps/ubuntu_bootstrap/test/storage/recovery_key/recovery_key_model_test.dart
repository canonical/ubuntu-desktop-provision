import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/pages/storage/recovery_key/recovery_key_model.dart';

import 'test_recovery_key.dart';

void main() {
  test('init', () async {
    final storage = MockStorageService();
    final model = RecoveryKeyModel(storage);

    when(storage.guidedCapability).thenReturn(GuidedCapability.DIRECT);
    expect(await model.init(), isFalse);

    when(storage.guidedCapability)
        .thenReturn(GuidedCapability.CORE_BOOT_ENCRYPTED);
    expect(await model.init(), isTrue);
  });
}
