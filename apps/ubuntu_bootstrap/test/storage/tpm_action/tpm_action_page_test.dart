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

  testWidgets('show error and action', (tester) async {
    final model = buildTpmActionModel(
      useTpm: true,
      tpmDisallowedCapability: GuidedDisallowedCapability(
        capability: GuidedCapability.CORE_BOOT_ENCRYPTED,
        reason:
            GuidedDisallowedCapabilityReason.CORE_BOOT_ENCRYPTION_UNAVAILABLE,
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
      ),
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
          CoreBootFixAction.REBOOT_TO_FW_SETTINGS.title(tester.lang),
        ),
      ),
      findsOneWidget,
    );
  });
}
