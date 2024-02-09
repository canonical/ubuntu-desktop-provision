import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_provision/services.dart';
import 'package:ubuntu_provision/src/services/page_config_service.dart';
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
    final service =
        PageConfigService(config: createMockConfigService(config: config));
    await service.load();
    final pages = service.pages;
    expect(pages, isNotNull);
    expect(pages['welcome']?.visible, isFalse);
    expect(pages['network']?.visible, isTrue);
    expect(pages['network']?.image, equals('/foo/bar/network.png'));
  });

  test('pages without config', () async {
    final service = PageConfigService(config: createMockConfigService());
    await service.load();
    final pages = service.pages;
    expect(pages, isNotNull);
    expect(pages, isEmpty);
  });
}

MockConfigService createMockConfigService({
  String config = '',
  ProvisioningMode mode = ProvisioningMode.standard,
}) {
  final mock = MockConfigService();
  final yaml = loadYaml(config)?['pages'] as YamlMap?;
  when(mock.get('mode')).thenAnswer((_) async => mode.name);
  when(mock.get('pages')).thenAnswer(
    (_) async => config == '' ? null : yaml?.toMap(),
  );
  return mock;
}
