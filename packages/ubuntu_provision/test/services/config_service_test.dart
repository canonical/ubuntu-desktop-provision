import 'package:file/memory.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ubuntu_provision/src/services/config_service.dart';
import 'package:yaml/yaml.dart';

import '../test_utils.dart';

void main() {
  late FakeAssetBundle assetBundle;

  setUpAll(() async {
    assetBundle = FakeAssetBundle(
      {
        'packages/ubuntu_provision/assets/whitelabel.yaml': '''
pages:
  test:
    image: "mascot.png"
    visible: true
  accessibility:
    image: "accessibility.png"
    '''
      },
    );
    TestWidgetsFlutterBinding.ensureInitialized();
  });

  test('lookup path', () {
    final priority = [
      // admin
      '/etc/whitelabel.yaml',
      '/etc/whitelabel.yml',
      // oem
      '/usr/local/share/whitelabel.yaml',
      '/usr/local/share/whitelabel.yml',
      // distro
      '/usr/share/whitelabel.yaml',
      '/usr/share/whitelabel.yml',
    ];

    final fs = MemoryFileSystem();
    for (final path in priority.reversed) {
      fs.file(path).createSync(recursive: true);
      expect(ConfigService.lookupPath(fs), path);
    }
  });

  test('yaml', () async {
    for (final ext in ['.yaml', '.yml']) {
      final fs = MemoryFileSystem();
      fs.file('/path/to/foo.$ext')
        ..createSync(recursive: true)
        ..writeAsStringSync('''
test1:
  b: true
  i: 123
  d: 123.456
  s: foo
  l:
    - 1
    - 2
    - 3
  o:
    b: true
    i: 123
    d: 123.456
    s: foo
    l:
      - 1
      - 2
      - 3

test2:
  foo: bar
''');

      final config = ConfigService(
        assetBundle: assetBundle,
        scope: 'test1',
        path: '/path/to/foo.$ext',
        fs: fs,
      );
      expect(await config.get('b'), isTrue);
      expect(await config.get('i'), 123);
      expect(await config.get('d'), 123.456);
      expect(await config.get('s'), 'foo');
      expect(await config.get('l'), [1, 2, 3]);
      expect(await config.get('o'), {
        'b': true,
        'i': 123,
        'd': 123.456,
        's': 'foo',
        'l': [1, 2, 3],
      });
      expect(await config.get('foo', scope: 'test2'), 'bar');
    }
  });

  test('load from assets', () async {
    final configService = ConfigService(assetBundle: assetBundle);
    final result = await configService.get<YamlMap>('test', scope: 'pages');
    expect(result, isNotNull);
    expect(result!['image'], 'mascot.png');
    expect(result['visible'], isTrue);
  });

  test('Filesystem config files overrides defaults', () async {
    final fs = MemoryFileSystem();
    fs.file('/path/to/foo.yaml')
      ..createSync(recursive: true)
      ..writeAsStringSync('''
theme:
  accent-color: "#00ff00"
  
pages:
  accessibility:
    visible: false
''');

    final config = ConfigService(
      assetBundle: assetBundle,
      path: '/path/to/foo.yaml',
      fs: fs,
    );
    expect(await config.get('accessibility', scope: 'pages'), {
      'image': 'accessibility.png',
      'visible': false,
    });
    expect(await config.get('test', scope: 'pages'), isNotNull);
    expect(await config.get('theme'), isNotNull);
  });

  test('mergeConfig properly overrides default config', () async {
    final defaultConfig = {
      'test': {
        'image': 'mascot.png',
        'visible': true,
      },
      'test2': {
        'image': 'mascot.png',
        'visible': false,
      },
    };
    final customConfig = {
      'test': {
        'visible': false,
      }
    };
    final result = ConfigService.mergeConfig(defaultConfig, customConfig);
    expect(
      result,
      {
        'test': {
          'image': 'mascot.png',
          'visible': false,
        },
        'test2': {
          'image': 'mascot.png',
          'visible': false,
        },
      },
    );
  });
}
