import 'dart:io';

import 'package:file/memory.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:path/path.dart' as p;
import 'package:ubuntu_provision/src/services/config_service.dart';

void main() {
  test('lookup path', () {
    final priority = [
      // admin
      '/etc/ubuntu-provision.conf',
      '/etc/ubuntu-provision.yaml',
      '/etc/ubuntu-provision.yml',
      // oem
      '/usr/local/share/ubuntu-provision.conf',
      '/usr/local/share/ubuntu-provision.yaml',
      '/usr/local/share/ubuntu-provision.yml',
      // distro
      '/usr/share/ubuntu-provision.conf',
      '/usr/share/ubuntu-provision.yaml',
      '/usr/share/ubuntu-provision.yml',
      // app
      '${p.dirname(Platform.resolvedExecutable)}/data/flutter_assets/assets/ubuntu-provision.conf',
    ];

    final fs = MemoryFileSystem();
    for (final path in priority.reversed) {
      fs.file(path).createSync(recursive: true);
      expect(ConfigService.lookupPath(fs), path);
    }
  });

  test('yaml', () async {
    final fs = MemoryFileSystem();
    fs.file('/path/to/foo.yaml')
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
        ConfigService(scope: 'test1', path: '/path/to/foo.yaml', fs: fs);
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
  });

  test('toml', () async {
    final fs = MemoryFileSystem();
    fs.file('/path/to/foo.toml')
      ..createSync(recursive: true)
      ..writeAsStringSync('''
[test1]
  b = true
  i = 123
  d = 123.456
  s = "foo"
  l = [1, 2, 3]
  o = { b = true, i = 123, d = 123.456, s = "foo", l = [1, 2, 3] }

[test2]
  foo = "bar"
''');

    final config =
        ConfigService(scope: 'test1', path: '/path/to/foo.toml', fs: fs);
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
  });

  test('json', () async {
    final fs = MemoryFileSystem();
    fs.file('/path/to/foo.json')
      ..createSync(recursive: true)
      ..writeAsStringSync('''
{
  "test1": {
    "b": true,
    "i": 123,
    "d": 123.456,
    "s": "foo",
    "l": [1, 2, 3],
    "o": {
      "b": true,
      "i": 123,
      "d": 123.456,
      "s": "foo",
      "l": [1, 2, 3]
    }
  },
  "test2": {
    "foo": "bar"
  }
}
''');

    final config =
        ConfigService(scope: 'test1', path: '/path/to/foo.json', fs: fs);
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
  });
}
