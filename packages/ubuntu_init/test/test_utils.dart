import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_init/src/init_step.dart';
import 'package:ubuntu_init/ubuntu_init.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_service/ubuntu_service.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

import 'init_model_test.mocks.dart';
import 'test_utils.mocks.dart';

export 'test_utils.mocks.dart';

extension UbuntuInitTester on WidgetTester {
  Future<void> pumpApp(WidgetBuilder builder) async {
    view.devicePixelRatio = 1;
    view.physicalSize = const Size(960, 680);
    return pumpWidget(
      MaterialApp(
        localizationsDelegates: GlobalUbuntuInitLocalizations.delegates,
        theme: yaruLight,
        home: Wizard(
          routes: {
            '/': WizardRoute(builder: builder),
          },
        ),
      ),
    );
  }
}

/// Registers a mock [PageConfigService].
///
/// The [overridePages] argument will override the pages that are returned
/// if provided.
/// All pages defined in [InitStep] are returned by default.
void setupMockPageConfig({Map<String, PageConfigEntry>? overridePages}) {
  final pages = overridePages ??
      Map.fromEntries(
        InitStep.values
            .map((step) => MapEntry(step.name, const PageConfigEntry())),
      );
  final pageConfigService = MockPageConfigService();
  registerMockService<PageConfigService>(pageConfigService);
  when(pageConfigService.pages).thenReturn(pages);
  when(pageConfigService.excludedPages).thenReturn([]);
}

@GenerateMocks([InitModel])
InitModel buildInitModel({List<String>? pages}) {
  final model = MockInitModel();
  when(model.hasRoute(any)).thenAnswer((i) {
    final a = i.positionalArguments.single as String;
    return pages
            ?.map((r) => r.removePrefix('/'))
            .contains(a.removePrefix('/')) ??
        true;
  });
  return model;
}

@GenerateMocks([
  PrivacyService,
  ProductService,
  Sysmetrics,
  UrlLauncher,
])
class _Dummy {} // ignore: unused_element
