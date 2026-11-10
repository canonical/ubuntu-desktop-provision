import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:subiquity_test/subiquity_test.dart';
import 'package:test/test.dart';

void main() {
  final root = p.join(Directory.current.parent.path, 'subiquity_client');
  final expectedData = p.join(root, 'subiquity', '.subiquity');
  final expectedConfig = p.join(expectedData, 'etc');
  final expectedLog = p.join(expectedData, 'var', 'log', 'installer');
  final expectedState = p.join(expectedData, 'run', 'subiquity', 'states');

  test('data path', () async {
    final path = await getSubiquityDataPath();
    expect(p.equals(expectedData, path), isTrue);
  });

  test('config file', () async {
    final path = await getSubiquityConfigFile('wsl.conf');
    expect(p.basename(path), equals('wsl.conf'));
    expect(p.equals(p.join(expectedConfig, 'wsl.conf'), path), isTrue);
  });

  test('log file', () async {
    final path = await getSubiquityLogFile('autoinstall.yaml');
    expect(p.basename(path), equals('autoinstall.yaml'));
    expect(p.equals(p.join(expectedLog, 'autoinstall.yaml'), path), isTrue);
  });

  test('state file', () async {
    final path = await getSubiquityStateFile('Locale');
    expect(p.basename(path), equals('Locale'));
    expect(p.equals(p.join(expectedState, 'Locale'), path), isTrue);
  });
}
