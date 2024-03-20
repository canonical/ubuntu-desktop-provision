// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_bootstrap/pages/install/install_model.dart';
import 'package:ubuntu_bootstrap/pages/install/install_page.dart';
import 'package:ubuntu_bootstrap/slides/slide_html.dart';
import 'package:ubuntu_bootstrap/slides/slides_provider.dart';
import 'package:ubuntu_provision/providers.dart';
import 'package:ubuntu_provision/services.dart';

import '../storage/bitlocker/test_bitlocker.dart';
import 'test_install.mocks.dart';
export '../test_utils.dart';
export 'test_install.mocks.dart';

@GenerateMocks([InstallModel])
InstallModel buildInstallModel({
  ApplicationState? state,
  bool? isDone,
  bool? hasError,
  bool? isInstalling,
  Stream<String>? log,
  InstallationEvent? event,
  bool? isLogVisible,
  bool? isPlaying,
  ProductInfo? productInfo,
  ProvisioningMode? provisioningMode,
}) {
  final model = MockInstallModel();
  when(model.state).thenReturn(state);
  when(model.isDone).thenReturn(isDone ?? false);
  when(model.hasError).thenReturn(hasError ?? false);
  when(model.isInstalling).thenReturn(isInstalling ?? false);
  when(model.log).thenAnswer((_) => log ?? const Stream<String>.empty());
  when(model.event).thenReturn(event ?? InstallationEvent.fromString(''));
  when(model.isLogVisible).thenReturn(isLogVisible ?? false);
  when(model.isPlaying).thenReturn(isPlaying ?? false);
  when(model.productInfo)
      .thenReturn(productInfo ?? ProductInfo(name: 'Ubuntu'));
  when(model.provisioningMode)
      .thenReturn(provisioningMode ?? ProvisioningMode.standard);
  return model;
}

Widget buildPage(InstallModel model) {
  final pageImages = PageImages.internal(
    MockPageConfigService(),
    MockThemeVariantService(),
  );
  return ProviderScope(
    overrides: [
      installModelProvider.overrideWith((_) => model),
      slidesProvider.overrideWith((_) => MockSlidesModel()),
      pageImagesProvider.overrideWith((_) => pageImages),
    ],
    child: const InstallPage(),
  );
}

class MockSlidesModel extends Mock implements SlidesModel {
  int slideCount = 2;

  @override
  Future<void> preCache() async {}

  @override
  late final slides = [
    for (var i = 1; i <= slideCount; i++)
      SlideHtml(
        '<html><body>slide_$i</body></html>',
        index: i,
        locale: 'en_US',
      ),
  ];
}
