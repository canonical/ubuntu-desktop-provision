import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_init/src/ubuntu_pro/ubuntu_pro_widgets.dart';
import 'package:ubuntu_init/ubuntu_init.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import '../../../ubuntu_provision/test/test_utils.mocks.dart'
    hide MockPageConfigService;
import '../init_model_test.mocks.dart';
import 'test_ubuntu_pro_onboarding.dart';

void main() {
  Widget buildPage(UbuntuProOnBoardingModel model) {
    final pageImages = PageImages.internal(
      MockPageConfigService(),
      MockThemeVariantService(),
    );
    return ProviderScope(
      overrides: [
        pageImagesProvider.overrideWithValue(pageImages),
        ubuntuProOnboardingModelProvider.overrideWith((_) => model),
      ],
      child: const UbuntuProOnboardingPage(),
    );
  }

  testWidgets('ubuntu pro - skip for now', (tester) async {
    final model = buildUbuntuProOnboardingModel(enabled: true);
    await tester.pumpApp((_) => buildPage(model));

    await tester.pumpAndSettle();

    final tileFinder = find.byType(ProOnboardingSelectionTile);
    expect(tileFinder, findsExactly(2));

    await tester.tap(tileFinder.first);

    verify(model.selection = UbuntuProOnboardingPageSelection.skipForNow)
        .called(1);
  });

  testWidgets('ubuntu pro - enable ubuntu pro', (tester) async {
    final model = buildUbuntuProOnboardingModel(enabled: true);
    await tester.pumpApp((_) => buildPage(model));

    final tileFinder = find.byType(ProOnboardingSelectionTile);
    expect(tileFinder, findsExactly(2));

    await tester.tap(tileFinder.last);

    verify(model.selection = UbuntuProOnboardingPageSelection.enableUbuntuPro)
        .called(1);
  });
}
