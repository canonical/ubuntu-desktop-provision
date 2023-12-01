import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_provision/src/services/page_config_service.dart';
import 'package:yaml/yaml.dart';

import '../test_utils.dart';

void main() {
  test('pages', () async {
    final config = {
      'keyboard': false,
      'network': {
        'image': '/foo/bar/network.png',
        'title': 'Network Page Title',
      },
    };
    final service =
        PageConfigService(config: createMockConfigService(config: config));
    await service.load();
    final pages = service.pages;
    expect(pages, isNotNull);
    expect(pages['keyboard']?.visible, isFalse);
    expect(pages['network']?.visible, isTrue);
    expect(pages['network']?.image, equals('/foo/bar/network.png'));
    expect(pages['network']?.title, equals('Network Page Title'));
  });

  test('pages without config', () async {
    final service = PageConfigService(config: createMockConfigService());
    await service.load();
    final pages = service.pages;
    expect(pages, isNotNull);
    expect(pages, isEmpty);
  });
}

MockConfigService createMockConfigService({Map<String, dynamic>? config}) {
  final mock = MockConfigService();
  when(mock.get('pages'))
      .thenAnswer((_) async => YamlMap.wrap(config?.cast() ?? {}));
  return mock;
}
