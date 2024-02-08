import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_provision/providers.dart';
import 'package:ubuntu_provision/services.dart';
import 'package:ubuntu_service/ubuntu_service.dart';

import '../test_utils.dart';
export '../test_utils.dart';

LocaleModel buildLocaleModel({Exception? error}) {
  final locale = MockLocaleService();

  if (error != null) {
    when(locale.getLocale()).thenThrow(error);
  } else {
    when(locale.getLocale()).thenAnswer((_) async => 'en_US.UTF-8');
  }

  return LocaleModel(
    locale: locale,
    sound: MockSoundService(),
  );
}

Widget buildLocalePage(LocaleModel model) {
  registerMockService<TelemetryService>(MockTelemetryService());
  final pageImages = PageImages(MockPageConfigService());

  return ProviderScope(
    overrides: [
      localeModelProvider.overrideWith((_) => model),
      pageImagesProvider.overrideWith((_) => pageImages),
    ],
    child: const LocalePage(),
  );
}
