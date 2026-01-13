import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/pages/storage/tpm_action/tpm_action_model.dart';
import 'package:ubuntu_bootstrap/pages/storage/tpm_action/tpm_action_page.dart';
import 'package:ubuntu_bootstrap/pages/storage/tpm_action/tpm_action_x.dart';
import 'package:ubuntu_provision/providers.dart';

import '../test_storage.dart';

void main() {
  Widget buildPage(TpmActionModel model) {
    final pageImages = PageImages.internal(
      MockPageConfigService(),
      MockThemeVariantService(),
    );
    return ProviderScope(
      overrides: [
        tpmActionModelProvider.overrideWith((_) => model),
        pageImagesProvider.overrideWith((_) => pageImages),
      ],
      child: TpmActionPage(),
    );
  }

  final testDisallowedCapability = GuidedDisallowedCapability(
    capability: GuidedCapability.CORE_BOOT_ENCRYPTED,
    reason: GuidedDisallowedCapabilityReason.CORE_BOOT_ENCRYPTION_UNAVAILABLE,
    errors: [
      CoreBootEncryptionSupportError(
        kind: CoreBootAvailabilityErrorKind.INTERNAL,
        message: 'error message',
        actions: [
          CoreBootFixActionWithCategoryAndArgs(
            type: CoreBootFixAction.REBOOT_TO_FW_SETTINGS,
            forUser: false,
          ),
        ],
      ),
    ],
  );

  final testAction = testDisallowedCapability.errors!.first.actions.first;

  testWidgets('show error and action', (tester) async {
    final model = buildTpmActionModel(
      useTpm: true,
      tpmDisallowedCapability: testDisallowedCapability,
    );

    await tester.pumpApp((_) => buildPage(model));
    await tester.pumpAndSettle();
    expect(
      find.text(CoreBootAvailabilityErrorKind.INTERNAL.label(tester.lang)),
      findsOneWidget,
    );
    expect(
      find.text(
        tester.lang.tpmActionSolutionLabel(
          1,
          testAction.title(tester.lang),
        ),
      ),
      findsOneWidget,
    );
  });

  group('perform action', () {
    for (final testCase in [
      (name: 'no error', actionResult: null, expectError: false),
      (
        name: 'error',
        actionResult: SubiquityException('POST', 500, 'internal error'),
        expectError: true,
      ),
    ]) {
      testWidgets(testCase.name, (tester) async {
        final model = buildTpmActionModel(
          tpmDisallowedCapability: testDisallowedCapability,
          actionResult: testCase.actionResult,
        );
        await tester.pumpApp((_) => buildPage(model));
        await tester.pumpAndSettle();
        await tester.tap(
          find.text(
            tester.lang.tpmActionSolutionLabel(
              1,
              testAction.title(tester.lang),
            ),
          ),
        );
        await tester.pumpAndSettle();
        await tester.tap(
          find.text(testAction.label(tester.lang)),
        );
        await tester.pumpAndSettle();

        expect(
          find.text(tester.lang.tpmActionErrorTitle),
          testCase.expectError ? findsOneWidget : findsNothing,
        );
      });
    }
  });
}
