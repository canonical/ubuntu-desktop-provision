import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_provision/services.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:yaml/yaml.dart';

import '../test_utils.dart';

void main() {
  test('pages', () async {
    const config = '''
pages:
  welcome:
    visible: false
  network:
    image: "/foo/bar/network.png"
''';
    final service = PageConfigService(
      config: createMockConfigService(config: config),
      allowedToHide: ['welcome'],
    );
    await service.load();
    final pages = service.pages;
    expect(pages, isNotNull);
    expect(pages['welcome']?.visible, isNull);
    expect(pages['network']?.visible, isTrue);
    expect(pages['network']?.image, equals('/foo/bar/network.png'));
  });

  test('allowed pages can be hidden', () async {
    const config = '''
pages:
  welcome:
    visible: false
    image: "/foo/bar/welcome.png"
  network:
    visible: false
    image: "network.png"
''';
    final service = PageConfigService(
      config: createMockConfigService(config: config),
      allowedToHide: ['welcome'],
    );
    await service.load();
    final pages = service.pages;
    expect(pages, isNotNull);
    expect(pages['welcome']?.visible, isNull);
    expect(pages['network']?.visible, isTrue);
    expect(pages['welcome']?.image, isNull);
    expect(pages['network']?.image, equals('network.png'));
    expect(service.pages.containsKey('network'), isTrue);
    expect(service.pages.containsKey('welcome'), isFalse);
  });

  test('pages without config', () async {
    final service = PageConfigService(
      config: createMockConfigService(),
      includeTryOrInstall: true,
    );
    await service.load();
    final pages = service.pages;
    expect(pages, isNotNull);
    expect(pages.keys, contains('tryOrInstall'));
  });
}

MockConfigService createMockConfigService({
  String config = '',
  ProvisioningMode? mode,
}) {
  final mock = MockConfigService();
  final yaml = loadYaml(config)?['pages'] as YamlMap?;
  when(mock.get('mode')).thenAnswer(
      (_) async => mode != null ? mode.name : ProvisioningMode.standard.name,);
  when(mock.get('pages')).thenAnswer(
    (_) async => config == '' ? null : yaml?.toMap(),
  );
  when(mock.provisioningMode)
      .thenAnswer((_) async => mode ?? ProvisioningMode.standard);
  return mock;
}
