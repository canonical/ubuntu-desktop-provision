import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_bootstrap/pages/done/done_page.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_service/ubuntu_service.dart';

import 'test_done.dart';
export '../test_utils.dart';

MockSessionService registerMockDoneServices({
  ProductInfo? productInfo,
  ProvisioningMode? provisioningMode,
}) {
  final product = MockProductService();
  when(product.getProductInfo())
      .thenReturn(productInfo ?? ProductInfo(name: 'Ubuntu'));
  registerMockService<ProductService>(product);

  final config = MockConfigService();
  when(config.provisioningMode)
      .thenAnswer((_) async => provisioningMode ?? ProvisioningMode.standard);
  registerMockService<ConfigService>(config);

  final session = MockSessionService();
  registerMockService<SessionService>(session);
  return session;
}

Widget buildPage() {
  final pageImages = PageImages.internal(
    MockPageConfigService(),
    MockThemeVariantService(),
  );
  return ProviderScope(
    overrides: [
      pageImagesProvider.overrideWith((_) => pageImages),
    ],
    child: const DonePage(),
  );
}
