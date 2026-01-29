import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';

void main() {
  test('run ubuntu-bug', () async {
    final mockProcess = MockProcess();
    when(mockProcess.run(any, any))
        .thenAnswer((_) async => ProcessResult(0, 0, '', ''));
    final mockEnv = <String, String>{'SNAP_NAME': 'snap-name'};
    final service = ApportService(runProcess: mockProcess.run, env: mockEnv);

    await service.launch();
    verify(mockProcess.run('sudo', ['ubuntu-bug', 'snap-name'])).called(1);
  });
}

abstract class _Process {
  Future<ProcessResult> run(String? executable, List<String>? arguments);
}

class MockProcess extends Mock implements _Process {
  @override
  Future<ProcessResult> run(String? executable, List<String>? arguments) =>
      super.noSuchMethod(
        Invocation.method(#run, [executable, arguments]),
        returnValue: Future.value(ProcessResult(0, 0, '', '')),
      ) as Future<ProcessResult>;
}
