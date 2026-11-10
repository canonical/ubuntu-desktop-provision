import 'dart:io';

import 'package:file/memory.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:path/path.dart' as p;
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/pages/recovery_key/recovery_key_model.dart';

import '../test_utils.dart';
import 'test_recovery_key.dart';

void main() {
  test('init', () async {
    final storage = MockStorageService();
    final model =
        RecoveryKeyModel(storage: storage, runProcess: createMockProcess().run);

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

  group('write file', () {
    for (final testCase in [
      (
        name: 'external drive',
        directory: '/mnt/external',
        findmntStdout: '',
        findmntExitCode: 0,
        expectedErrorMatcher: null,
      ),
      (
        name: 'target system',
        directory: '/target/foo/bar',
        findmntStdout: '',
        findmntExitCode: 0,
        expectedErrorMatcher: isA<RecoveryKeyExceptionDisallowedPath>(),
      ),
      (
        name: 'live system',
        directory: '/home/ubuntu/Desktop',
        findmntStdout: '/cow',
        findmntExitCode: 0,
        expectedErrorMatcher: isA<RecoveryKeyExceptionDisallowedPath>(),
      ),
      (
        name: 'tmpfs',
        directory: '/tmp',
        findmntStdout: 'tmpfs',
        findmntExitCode: 0,
        expectedErrorMatcher: isA<RecoveryKeyExceptionDisallowedPath>(),
      ),
      (
        name: 'findmnt error',
        directory: '/home/ubuntu/Desktop',
        findmntStdout: '/cow',
        findmntExitCode: 1,
        expectedErrorMatcher: null,
      ),
    ]) {
      test(testCase.name, () async {
        final mockFs = MemoryFileSystem.test();
        mockFs.directory(testCase.directory).createSync(recursive: true);

        final storage = MockStorageService();
        when(storage.guidedCapability)
            .thenReturn(GuidedCapability.CORE_BOOT_ENCRYPTED);
        when(storage.getCoreBootRecoveryKey()).thenAnswer(
          (_) async => testRecoveryKey,
        );

        final mockProcess = createMockProcess(
          ProcessResult(
            0,
            testCase.findmntExitCode,
            testCase.findmntStdout,
            '',
          ),
        );

        final model = RecoveryKeyModel(
          storage: storage,
          fileSystem: mockFs,
          runProcess: mockProcess.run,
        );
        await model.init();

        final fileUri =
            Uri.file(p.join(testCase.directory, 'recovery-key.txt'));
        final future = model.writeRecoveryKey(fileUri);

        if (testCase.expectedErrorMatcher != null) {
          await expectLater(future, throwsA(testCase.expectedErrorMatcher));
        } else {
          await expectLater(future, completes);
          final content = mockFs.file(fileUri.path).readAsStringSync();
          expect(content, equals(testRecoveryKey));
        }
      });
    }
  });
}
