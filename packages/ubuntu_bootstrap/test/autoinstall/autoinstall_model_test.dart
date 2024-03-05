import 'dart:convert';
import 'dart:io';

import 'package:file/memory.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:path/path.dart' as p;
import 'package:subiquity_test/subiquity_test.dart';
import 'package:ubuntu_bootstrap/pages/autoinstall/autoinstall_model.dart';
import 'package:yaml/yaml.dart';

import 'autoinstall_model_test.mocks.dart';

@GenerateMocks([HttpClient, HttpClientRequest, HttpClientResponse])
void main() {
  const exampleUrl = 'http://example.com/autoinstall.yaml';
  test('valid yaml', () async {
    final subiquity = MockSubiquityClient();
    final fs = MemoryFileSystem.test();
    final httpClient = createMockHttpClient(
        responseStream: Stream.fromIterable(
      [
        'autoinstall:',
        '  version: 1',
        '  identity:',
        '    hostname: foobar',
        '    username: ubuntu',
        '    password: password',
        '  storage:',
        '    layout:',
        '      name: lvm',
        '      match:',
        '        serial: disk1',
        '      overwrite: true',
        '  network:',
        '    network:',
        '      version: 2',
        '      ethernets:',
        '        eth0:',
        '          dhcp4: true',
        '  ssh:',
        '    install-server: true',
        '  late-commands:',
        '    - echo "Hello, World!"',
      ].map((e) => '$e\n').toList(),
    ));
    final model = AutoinstallModel(
      subiquity,
      fs: fs,
      httpClient: httpClient,
      runExternalCommands: false,
    );

    model.url = exampleUrl;
    await model.apply();

    expect(model.state.hasValue, isTrue);
    final content = fs
        .file(p.join(
          fs.systemTempDirectory.absolute.path,
          'autoinstall.yaml',
        ))
        .readAsStringSync();
    expect(content, isNotEmpty);
    expect(loadYaml(content), isA<YamlMap>());
    verify(httpClient.getUrl(Uri.parse(exampleUrl))).called(1);
    verify(subiquity.restart()).called(1);
  });

  test('invalid yaml', () async {
    final subiquity = MockSubiquityClient();
    final fs = MemoryFileSystem.test();
    final httpClient = createMockHttpClient(
        responseStream: Stream.fromIterable(
      ['<this>', '-is-', '#not#', '*yaml*'].map((e) => '$e\n').toList(),
    ));
    final model = AutoinstallModel(
      subiquity,
      fs: fs,
      httpClient: httpClient,
      runExternalCommands: false,
    );

    model.url = exampleUrl;
    await model.apply();

    expect(model.state.hasError, isTrue);
    expect(model.state.error, isA<YamlException>());
    expect(
      fs
          .file(p.join(
            fs.systemTempDirectory.absolute.path,
            'autoinstall.yaml',
          ))
          .existsSync(),
      isFalse,
    );

    verify(httpClient.getUrl(Uri.parse(exampleUrl))).called(1);
    verifyNever(subiquity.restart());
  });

  test('network error', () async {
    final subiquity = MockSubiquityClient();
    final fs = MemoryFileSystem.test();
    final httpClient = createMockHttpClient(
      responseStream: Stream.error(
        const SocketException('Network error'),
      ),
    );
    final model = AutoinstallModel(
      subiquity,
      fs: fs,
      httpClient: httpClient,
      runExternalCommands: false,
    );

    model.url = exampleUrl;
    await model.apply();

    expect(model.state.hasError, isTrue);
    expect(model.state.error, isA<SocketException>());
    expect(
      fs
          .file(p.join(
            fs.systemTempDirectory.absolute.path,
            'autoinstall.yaml',
          ))
          .existsSync(),
      isFalse,
    );

    verify(httpClient.getUrl(Uri.parse(exampleUrl))).called(1);
    verifyNever(subiquity.restart());
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
