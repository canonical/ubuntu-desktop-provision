import 'package:file/memory.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:ubuntu_provision/services.dart';

void main() {
  const isoPath = '/cdrom/.disk/info';
  const localPath = '/etc/os-release';

  group('ProductService', () {
    test('should return product info when iso file exists', () async {
      final fileSystem = MemoryFileSystem();
      await fileSystem.file(isoPath).create(recursive: true).then((f) {
        f.writeAsString(
            'Ubuntu 21.04 "Hirsute Hippo" - Release amd64 (20210420)');
      });
      final info = ProductService(fileSystem).getProductInfo();

      expect(info.name, 'Ubuntu');
      expect(info.version, '21.04');
      expect(info.toString(), 'Ubuntu 21.04');
    });

    test('should return product info from disk when iso file doesnt exists',
        () async {
      final fileSystem = MemoryFileSystem();
      await fileSystem.file(localPath).create(recursive: true).then((f) {
        f.writeAsString('''
NAME="Ubuntu"
VERSION="21.04 (Hirsute Hippo)"
ID=ubuntu
ID_LIKE=debian
PRETTY_NAME="Ubuntu 21.04"
VERSION_ID="21.04"
HOME_URL="https://www.ubuntu.com/"
SUPPORT_URL="https://help.ubuntu.com/"
BUG_REPORT_URL="https://bugs.launchpad.net/ubuntu/"
PRIVACY_POLICY_URL="https://www.ubuntu.com/legal/terms-and-policies/privacy-policy"
VERSION_CODENAME=hirsute
UBUNTU_CODENAME=hirsute

          ''');
      });
      final info = ProductService(fileSystem).getProductInfo();

      expect(info.version, '21.04');
      expect(info.toString(), 'Ubuntu 21.04');
    });

    test('should return Ubuntu as fallback value', () {
      final fileSystem = MemoryFileSystem();
      final info = ProductService(fileSystem).getProductInfo();

      expect(info.name, 'Ubuntu');
      expect(info.version, isNull);
      expect(info.toString(), 'Ubuntu');
    });

    test('should return product info with LTS when iso file exists', () async {
      final fileSystem = MemoryFileSystem();
      await fileSystem.file(isoPath).create(recursive: true).then((f) {
        f.writeAsString(
            'Ubuntu 20.04.2.0 LTS "Focal Fossa" - Release amd64 (20210209.1)');
      });
      final info = ProductService(fileSystem).getProductInfo();

      expect(info.name, 'Ubuntu');
      expect(info.version, '20.04.2.0 LTS');
      expect(info.toString(), 'Ubuntu 20.04.2.0 LTS');
    });

    test('should return product info LTS from disk when iso file doesnt exists',
        () async {
      final fileSystem = MemoryFileSystem();
      await fileSystem.file(localPath).create(recursive: true).then((f) {
        f.writeAsString('''
NAME="Ubuntu"
VERSION="20.04.2 LTS (Focal Fossa)"
ID=ubuntu
ID_LIKE=debian
PRETTY_NAME="Ubuntu 20.04.2 LTS"
VERSION_ID="20.04"
HOME_URL="https://www.ubuntu.com/"
SUPPORT_URL="https://help.ubuntu.com/"
BUG_REPORT_URL="https://bugs.launchpad.net/ubuntu/"
PRIVACY_POLICY_URL="https://www.ubuntu.com/legal/terms-and-policies/privacy-policy"
VERSION_CODENAME=focal
UBUNTU_CODENAME=focal

          ''');
      });
      final info = ProductService(fileSystem).getProductInfo();

      expect(info.name, 'Ubuntu');
      expect(info.version, '20.04.2 LTS');
      expect(info.toString(), 'Ubuntu 20.04.2 LTS');
    });

    test('/var/lib/snapd/hostfs/etc/os-release', () async {
      final fileSystem = MemoryFileSystem();
      await fileSystem.file(hostPath).create(recursive: true).then((f) {
        f.writeAsString('''
PRETTY_NAME="Ubuntu 23.10"
''');
      });
      final info = ProductService(fileSystem).getProductInfo();

      expect(info.name, 'Ubuntu');
      expect(info.version, '23.10');
      expect(info.toString(), 'Ubuntu 23.10');
    });

    test('should return product info for kubuntu', () async {
      final fileSystem = MemoryFileSystem();
      await fileSystem.file(isoPath).create(recursive: true).then((f) {
        f.writeAsString(
            'Kubuntu 21.04 "Hirsute Hippo" - Release amd64 (20210420)');
      });
      final info = ProductService(fileSystem).getProductInfo();

      expect(info.name, 'Kubuntu');
      expect(info.version, '21.04');
      expect(info.toString(), 'Kubuntu 21.04');
    });

    test('should return product info for ubuntu mate', () async {
      final fileSystem = MemoryFileSystem();
      await fileSystem.file(isoPath).create(recursive: true).then((f) {
        f.writeAsString(
            'Ubuntu-MATE 21.04 "Hirsute Hippo" - Release amd64 (20210420)');
      });
      final info = ProductService(fileSystem).getProductInfo();

      expect(info.name, 'Ubuntu-MATE');
      expect(info.version, '21.04');
      expect(info.toString(), 'Ubuntu-MATE 21.04');
    });

    test('should cache product info', () async {
      final fileSystem = MemoryFileSystem();
      await fileSystem.file(isoPath).create(recursive: true).then((f) {
        f.writeAsString(
            'Ubuntu 21.04 "Hirsute Hippo" - Release amd64 (20210420)');
      });
      final service = ProductService(fileSystem);
      var info = service.getProductInfo();

      await fileSystem.file(isoPath).create(recursive: true).then((f) {
        f.writeAsString(
            'Ubuntu-MATE 21.04 "Hirsute Hippo" - Release amd64 (20210420)');
      });

      info = service.getProductInfo();

      expect(info.name, 'Ubuntu');
      expect(info.version, '21.04');
      expect(info.toString(), 'Ubuntu 21.04');
    });

    test('should reset cache when new instance is created', () async {
      final fileSystem = MemoryFileSystem();
      await fileSystem.file(isoPath).create(recursive: true).then((f) {
        f.writeAsString(
            'Ubuntu 21.04 "Hirsute Hippo" - Release amd64 (20210420)');
      });
      var info = ProductService(fileSystem).getProductInfo();

      await fileSystem.file(isoPath).create(recursive: true).then((f) {
        f.writeAsString(
            'Ubuntu-MATE 21.04 "Hirsute Hippo" - Release amd64 (20210420)');
      });

      info = ProductService(fileSystem).getProductInfo();

      expect(info.name, 'Ubuntu-MATE');
      expect(info.version, '21.04');
      expect(info.toString(), 'Ubuntu-MATE 21.04');
    });
  });

  test('release notes URL from cdrom', () {
    final fs = MemoryFileSystem.test();
    final file = fs.file('/cdrom/.disk/release_notes_url');
    file.createSync(recursive: true);
    file.writeAsStringSync('''
https://wiki.ubuntu.com/IntrepidReleaseNotes/\${LANG}
    ''');

    final service = ProductService(fs);
    final url = service.getReleaseNotesURL('fr');
    expect(url, equals('https://wiki.ubuntu.com/IntrepidReleaseNotes/fr'));
  });

  test('release notes URL from distro-info', () {
    final fs = MemoryFileSystem.test();
    final file = fs.file('/usr/share/distro-info/ubuntu.csv');
    file.createSync(recursive: true);
    file.writeAsStringSync('''
version,codename,series,created,release,eol,eol-server,eol-esm
4.10,Warty Warthog,warty,2004-03-05,2004-10-20,2006-04-30
5.04,Hoary Hedgehog,hoary,2004-10-20,2005-04-08,2006-10-31
    ''');

    final service = ProductService(fs);
    final url = service.getReleaseNotesURL('en');
    expect(url, equals('https://wiki.ubuntu.com/HoaryHedgehog/ReleaseNotes'));
  });

  test('release notes URL fallback', () {
    final fs = MemoryFileSystem.test();
    final service = ProductService(fs);
    final url = service.getReleaseNotesURL('en');
    expect(url, equals('https://ubuntu.com/download/desktop'));
  });
}
