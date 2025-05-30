import 'package:file/memory.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/pages/recovery_key/recovery_key_model.dart';

import '../test_utils.dart';
import 'test_recovery_key.dart';

void main() {
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

  test('write file', () async {
    final mockFs = MemoryFileSystem.test();
    mockFs.directory('/target').createSync();
    mockFs.directory('/mnt/external').createSync(recursive: true);

    final storage = MockStorageService();
    when(storage.guidedCapability)
        .thenReturn(GuidedCapability.CORE_BOOT_ENCRYPTED);
    when(storage.getCoreBootRecoveryKey()).thenAnswer(
      (_) async => testRecoveryKey,
    );

    final model = RecoveryKeyModel(storage: storage, fileSystem: mockFs);
    await model.init();

    await model.writeRecoveryKey(Uri.file('/mnt/external/recovery-key.txt'));
    final content =
        mockFs.file('/mnt/external/recovery-key.txt').readAsStringSync();
    expect(content, equals(testRecoveryKey));

    await expectLater(
      model.writeRecoveryKey(Uri.file('/target/recovery-key.txt')),
      throwsA(isA<RecoveryKeyExceptionDisallowedPath>()),
    );
  });
}
