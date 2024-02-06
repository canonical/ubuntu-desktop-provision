import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_bootstrap/pages/rst/rst_model.dart';
import 'package:ubuntu_bootstrap/pages/rst/rst_page.dart';
import 'package:ubuntu_provision/providers.dart';

import '../test_utils.dart';
import 'test_rst.mocks.dart';

@GenerateMocks([RstModel])
RstModel buildRstModel({bool? hasRst}) {
  final model = MockRstModel();
  when(model.hasRst()).thenAnswer((_) async => hasRst ?? false);
  return model;
}

final pageImages = PageImages(MockPageConfigService());

Widget buildRstPage(RstModel model) {
  return ProviderScope(
    overrides: [
      rstModelProvider.overrideWith((_) => model),
      pageImagesProvider.overrideWith((_) => pageImages),
    ],
    child: const RstPage(),
  );
}
