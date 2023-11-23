import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_init/src/privacy/privacy_l10n.dart';
import 'package:ubuntu_init/src/privacy/privacy_model.dart';
import 'package:ubuntu_init/src/privacy/privacy_page.dart';
import 'package:ubuntu_service/ubuntu_service.dart';
import 'package:ubuntu_test/ubuntu_test.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:yaru_test/yaru_test.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

import 'test_privacy.dart';

void main() {
  Widget buildPage(PrivacyModel model) {
    return ProviderScope(
      overrides: [
        privacyModelProvider.overrideWith((_) => model),
      ],
      child: const PrivacyPage(),
    );
  }

  testWidgets('location on', (tester) async {
    final model = buildPrivacyModel(isLocationEnabled: true);
    await tester.pumpApp((_) => buildPage(model));

    final toggle = find.byType(YaruSwitch);
    expect(toggle, isChecked);

    await tester.tap(toggle);
    verify(model.setLocationEnabled(false)).called(1);
  });

  testWidgets('location off', (tester) async {
    final model = buildPrivacyModel(isLocationEnabled: false);
    await tester.pumpApp((_) => buildPage(model));

    final toggle = find.byType(YaruSwitch);
    expect(toggle, isNotChecked);

    await tester.tap(toggle);
    verify(model.setLocationEnabled(true)).called(1);
  });

  testWidgets('tap link', (tester) async {
    final model = buildPrivacyModel();

    final urlLauncher = MockUrlLauncher();
    when(urlLauncher.launchUrl(kPrivacyPolicyUrl))
        .thenAnswer((_) async => true);
    registerMockService<UrlLauncher>(urlLauncher);

    await tester.pumpApp((_) => buildPage(model));

    final context = tester.element(find.byType(PrivacyPage));
    final l10n = PrivacyLocalizations.of(context);

    await tester.tapLink(l10n.privacyPolicyLink);

    verify(urlLauncher.launchUrl(kPrivacyPolicyUrl)).called(1);
  });
}
