import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_init/src/welcome/welcome_model.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';

import 'test_welcome.dart';

void main() {
  test('init', () async {
    final service = MockProductService();
    final model = WelcomeModel(service);
    expect(await model.init(), isTrue);
  });

  test('product info', () async {
    final service = MockProductService();
    final product = ProductInfo(name: 'Ubuntu', version: '24.04 LTS');
    when(service.getProductInfo()).thenReturn(product);

    final model = WelcomeModel(service);
    expect(model.productInfo, product);
  });

  test('release notes', () async {
    final service = MockProductService();
    when(service.getReleaseNotesURL('de'))
        .thenAnswer((i) => 'https://wiki.ubuntu.com/Release/de');

    final model = WelcomeModel(service);
    expect(model.releaseNotesURL(const Locale('de')),
        'https://wiki.ubuntu.com/Release/de');
  });
}
