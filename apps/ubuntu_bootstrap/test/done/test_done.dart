import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_bootstrap/pages/done/done_model.dart';
import 'package:ubuntu_bootstrap/pages/done/done_page.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';

import 'test_done.dart';
export '../test_utils.dart';
export 'test_done.mocks.dart';

@GenerateMocks([DoneModel])
DoneModel buildDoneModel({
  ProductInfo? productInfo,
  ProvisioningMode? provisioningMode,
}) {
  final model = MockDoneModel();
  when(model.productInfo)
      .thenReturn(productInfo ?? ProductInfo(name: 'Ubuntu'));
  when(model.provisioningMode)
      .thenReturn(provisioningMode ?? ProvisioningMode.standard);
  return model;
}

Widget buildPage(DoneModel model) {
  final pageImages = PageImages.internal(
    MockPageConfigService(),
    MockThemeVariantService(),
  );
  return ProviderScope(
    overrides: [
      doneModelProvider.overrideWith((_) => model),
      pageImagesProvider.overrideWith((_) => pageImages),
    ],
    child: const DonePage(),
  );
}
