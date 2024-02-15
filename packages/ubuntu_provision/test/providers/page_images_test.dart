import 'dart:typed_data';

import 'package:file/memory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';

import '../test_utils.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('PageImages', () {
    test('get returns correct widget for given page name', () {
      final mockService = MockPageConfigService();
      final pageImages = PageImages(mockService);
      final image = MockImage();

      pageImages.images['testPage'] = image;
      pageImages.isDarkMode = (_) => false;

      final result = pageImages.get('testPage', MockBuildContext());

      expect(result, isInstanceOf<Image>());
      expect(result, equals(image));
    });

    test(
      'preCache correctly loads images from assets and files',
      () async {
        final mockService = MockPageConfigService();
        final pageNames = List.generate(4, (i) => 'testPage$i');

        final mockFs = MemoryFileSystem.test();
        mockFs
            .file('/usr/share/desktop-provision/images/test.png')
            .createSync(recursive: true);
        mockFs
            .file('/usr/share/desktop-provision/images/test.svg')
            .createSync(recursive: true);

        when(mockService.pages).thenReturn({
          pageNames[0]: const PageConfigEntry(image: 'assets/test.png'),
          pageNames[1]: const PageConfigEntry(image: 'test.png'),
          pageNames[2]: const PageConfigEntry(image: 'assets/test.svg'),
          pageNames[3]: const PageConfigEntry(image: 'test.svg'),
        });

        final mockSvgFileLoader = MockSvgFileLoader();
        when(mockSvgFileLoader.loadBytes(
          any,
        )).thenAnswer((_) => Future.value(ByteData(0)));

        final pageImages = PageImages(mockService, fs: mockFs)
          ..svgFileLoader = (file, {colorMapper, theme}) => mockSvgFileLoader;

        await pageImages.preCache(MockBuildContext());

        expect(pageImages.images, isNotEmpty);
        expect(pageImages.images.keys, containsAll(pageNames));
        for (final pageName in pageNames) {
          if (pageImages.images[pageName] is SvgPicture) {
            expect(pageImages.images[pageName], isInstanceOf<SvgPicture>());
          } else {
            expect(pageImages.images[pageName], isInstanceOf<Image>());
          }
        }
      },
    );
  });
}
