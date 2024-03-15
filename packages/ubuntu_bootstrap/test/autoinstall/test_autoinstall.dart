import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_bootstrap/pages/autoinstall/autoinstall_model.dart';
import 'package:ubuntu_bootstrap/pages/autoinstall/autoinstall_page.dart';
import 'package:ubuntu_bootstrap/services.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';

import '../test_utils.dart';
import 'test_autoinstall.mocks.dart';

@GenerateMocks([AutoinstallModel])
AutoinstallModel buildAutoinstallModel({AsyncValue<void>? state, String? url}) {
  final model = MockAutoinstallModel();
  when(model.state).thenReturn(state ?? const AsyncValue<void>.data(null));
  when(model.url).thenReturn(url ?? '');
  return model;
}

Widget buildAutoinstallPage(AutoinstallModel model) {
  registerMockService<ThemeVariantService>(MockThemeVariantService());
  registerMockService<PageConfigService>(MockPageConfigService());
  return ProviderScope(
    overrides: [
      autoinstallModelProvider.overrideWith((_) => model),
    ],
    child: const AutoinstallPage(),
  );
}
