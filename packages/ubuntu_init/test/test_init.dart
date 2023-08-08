import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_init/ubuntu_init.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

import 'test_init.mocks.dart';
export 'test_init.mocks.dart';

extension UbuntuInitTester on WidgetTester {
  Widget buildApp(WidgetBuilder builder) {
    view.devicePixelRatio = 1;
    view.physicalSize = const Size(960, 680);
    return MaterialApp(
      localizationsDelegates: GlobalUbuntuInitLocalizations.delegates,
      theme: yaruLight,
      home: Wizard(
        routes: {
          '/': WizardRoute(builder: builder),
        },
      ),
    );
  }
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
  PrivilegedDesktopLauncher,
  UrlLauncher,
])
class _Dummy {} // ignore: unused_element
