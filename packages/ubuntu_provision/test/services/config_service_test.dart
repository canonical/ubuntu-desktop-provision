import 'package:file/memory.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ubuntu_provision/src/services/config_service.dart';
import 'package:yaml/yaml.dart';

void main() {
  test('lookup path', () {
    final priority = [
      // admin
      '/etc/ubuntu-provision.yaml',
      '/etc/ubuntu-provision.yml',
      // oem
      '/usr/local/share/ubuntu-provision.yaml',
      '/usr/local/share/ubuntu-provision.yml',
      // distro
      '/usr/share/ubuntu-provision.yaml',
      '/usr/share/ubuntu-provision.yml',
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

      final config =
          ConfigService(scope: 'test1', path: '/path/to/foo.$ext', fs: fs);
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
    TestWidgetsFlutterBinding.ensureInitialized();
    final configService = ConfigService();
    final result = await configService.get<YamlMap>('test', scope: 'scope');
    expect(result, isNotNull);
    expect(result!['title'], 'Welcome');
    expect(result['image'], 'mascot.png');
    expect(result['visible'], isTrue);
  });
}
