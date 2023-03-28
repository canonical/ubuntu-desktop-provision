import 'package:flutter_test/flutter_test.dart';
import 'package:ubuntu_bootstrap/pages/storage/recovery_key/recovery_key_model.dart';

import 'test_recovery_key.dart';

void main() {
  test('init', () async {
    final storage = MockStorageService();
    final model = RecoveryKeyModel(storage);
    expect(await model.init(), isFalse);
    // TODO: TPM
  });
}
