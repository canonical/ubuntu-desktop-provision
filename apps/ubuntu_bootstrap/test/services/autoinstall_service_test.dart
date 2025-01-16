import 'dart:convert';
import 'dart:io';

import 'package:file/memory.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:subiquity_test/subiquity_test.dart';
import 'package:ubuntu_bootstrap/ubuntu_bootstrap.dart';

import 'autoinstall_service_test.mocks.dart';

@GenerateMocks([HttpClient, HttpClientRequest, HttpClientResponse])
void main() {
  const autoinstallContent = '''
autoinstall:
  version: 1
  identity:
    hostname: foobar
    username: ubuntu
    password: password
  storage:
    layout:
      name: lvm
      match:
        serial: disk1
      overwrite: true
  network:
    version: 2
    ethernets:
      eth0:
        dhcp4: true
  ssh:
    install-server: true
  late-commands:
    - echo "Hello, World!"
''';
  const invalidContent = 'foo: :';

  test('restart subiquity', () async {
    final subqiuityClient = MockSubiquityClient();
    final subiquityServer = MockSubiquityServer();

    final service = AutoinstallService(subqiuityClient, subiquityServer);

    await service.restartSubiquity();

    verify(subqiuityClient.restart()).called(1);
    verify(subiquityServer.waitSubiquity()).called(1);
  });

  test('writeFile', () async {
    final subqiuityClient = MockSubiquityClient();
    final subiquityServer = MockSubiquityServer();

    final service = AutoinstallService(
      subqiuityClient,
      subiquityServer,
      fs: MemoryFileSystem.test(),
    );

    await service.writeFile(autoinstallContent);
    expect(await service.getFileContent(), equals(autoinstallContent));
  });

  group('fetchAndWriteFileFromUri', () {
    for (final testCase in [
      (
        name: 'network URL',
        uri: Uri.https(
          'example.com',
          '/autoinstall.yaml',
        ),
        content: autoinstallContent,
        expectError: false,
      ),
      (
        name: 'local file path',
        uri: Uri.file(
          '/home/user/autoinstall.yaml',
        ),
        content: autoinstallContent,
        expectError: false,
      ),
      (
        name: 'local file path with invalid content',
        uri: Uri.file(
          '/home/user/autoinstall.yaml',
        ),
        content: invalidContent,
        expectError: true,
      ),
    ]) {
      test(testCase.name, () async {
        final subqiuityClient = MockSubiquityClient();
        final subiquityServer = MockSubiquityServer();

        final mockFs = MemoryFileSystem.test();

        final service = AutoinstallService(
          subqiuityClient,
          subiquityServer,
          fs: mockFs,
          httpClient: createMockHttpClient(
            responseStream: testCase.uri.scheme == 'https'
                ? Stream.value(autoinstallContent)
                : Stream.empty(),
          ),
        );

        if (testCase.uri.scheme == 'file') {
          mockFs.file(testCase.uri.toFilePath())
            ..createSync(recursive: true)
            ..writeAsStringSync(testCase.content);
        }

        final future = service.fetchAndWriteFileFromUri(testCase.uri);

        if (testCase.expectError) {
          await expectLater(future, throwsA(anything));
        } else {
          await future;
          expect(await service.getFileContent(), equals(autoinstallContent));
        }
      });
    }
  });
}

HttpClient createMockHttpClient({
  Stream<String> responseStream = const Stream.empty(),
}) {
  final client = MockHttpClient();
  final request = MockHttpClientRequest();
  final response = MockHttpClientResponse();

  when(client.getUrl(any)).thenAnswer((_) => Future.value(request));
  when(request.close()).thenAnswer((_) => Future.value(response));
  when(response.transform(utf8.decoder)).thenAnswer((_) => responseStream);
  return client;
}
