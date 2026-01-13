import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:subiquity_test/subiquity_test.dart';
import 'package:ubuntu_bootstrap/pages/storage/tpm_action/tpm_action_model.dart';

import '../passphrase_type/test_passphrase_type.dart';

void main() {
  final nonTpmTarget = GuidedStorageTargetReformat(
    diskId: 'diskA',
    allowed: [GuidedCapability.DIRECT],
  );
  final tpmTarget = GuidedStorageTargetReformat(
    diskId: 'diskA',
    allowed: [GuidedCapability.DIRECT, GuidedCapability.CORE_BOOT_ENCRYPTED],
  );
  final defunctTpmTarget = GuidedStorageTargetReformat(
    diskId: 'diskA',
    disallowed: [
      GuidedDisallowedCapability(
        capability: GuidedCapability.CORE_BOOT_ENCRYPTED,
        reason:
            GuidedDisallowedCapabilityReason.CORE_BOOT_ENCRYPTION_UNAVAILABLE,
        errors: [
          CoreBootEncryptionSupportError(
            kind: CoreBootAvailabilityErrorKind.TPM_DEVICE_LOCKOUT_LOCKED_OUT,
            message: 'TPM locked out',
            actions: [
              CoreBootFixActionWithCategoryAndArgs(
                type: CoreBootFixAction.CLEAR_TPM,
                forUser: false,
              ),
              CoreBootFixActionWithCategoryAndArgs(
                type: CoreBootFixAction.REBOOT_TO_FW_SETTINGS,
                forUser: false,
              ),
            ],
          ),
          CoreBootEncryptionSupportError(
            kind: CoreBootAvailabilityErrorKind.INTERNAL,
            message: 'internal error',
            actions: [
              CoreBootFixActionWithCategoryAndArgs(
                type: CoreBootFixAction.REBOOT,
                forUser: false,
              ),
            ],
          ),
        ],
      ),
    ],
  );
  group('init', () {
    for (final testCase in [
      (
        name: 'no tpm fde',
        capability: GuidedCapability.DIRECT,
        target: nonTpmTarget,
        skipPage: true,
      ),
      (
        name: 'tpm fde without errors',
        capability: GuidedCapability.CORE_BOOT_ENCRYPTED,
        target: tpmTarget,
        skipPage: true,
      ),
      (
        name: 'tpm fde with errors',
        capability: GuidedCapability.CORE_BOOT_ENCRYPTED,
        target: defunctTpmTarget,
        skipPage: false,
      ),
    ]) {
      test(testCase.name, () async {
        final storage = MockStorageService();
        when(storage.guidedCapability).thenReturn(testCase.capability);
        when(storage.getGuidedStorage()).thenAnswer(
          (_) async => GuidedStorageResponseV2(
            status: ProbeStatus.DONE,
            targets: [testCase.target],
          ),
        );
        final subiquity = MockSubiquityClient();

        final model = TpmActionModel(storage, subiquity);
        expect(await model.init(), equals(!testCase.skipPage));
      });
    }
  });

  test('properties', () async {
    final storage = MockStorageService();
    when(storage.guidedCapability)
        .thenReturn(GuidedCapability.CORE_BOOT_ENCRYPTED);
    when(storage.getGuidedStorage()).thenAnswer(
      (_) async => GuidedStorageResponseV2(
        status: ProbeStatus.DONE,
        targets: [defunctTpmTarget],
      ),
    );
    final subiquity = MockSubiquityClient();

    final model = TpmActionModel(storage, subiquity);
    await model.init();

    expect(
      model.tpmDisallowedCapability,
      equals(defunctTpmTarget.disallowed.first),
    );
  });

  test('perform action', () async {
    final storage = MockStorageService();
    when(storage.getGuidedStorage()).thenAnswer(
      (_) async => GuidedStorageResponseV2(status: ProbeStatus.DONE),
    );
    final subiquity = MockSubiquityClient();

    final model = TpmActionModel(storage, subiquity);
    await model.performAction(
      CoreBootFixActionWithCategoryAndArgs(
        type: CoreBootFixAction.REBOOT_TO_FW_SETTINGS,
        forUser: false,
        args: CoreBootFixActionArgs(
          errorKinds: [
            CoreBootAvailabilityErrorKind.TPM_DEVICE_LOCKOUT_LOCKED_OUT,
          ],
        ),
      ),
    );
    verify(
      subiquity.coreBootFixEncryptionSupportV2(
        CoreBootFixActionWithArgs(
          type: CoreBootFixAction.REBOOT_TO_FW_SETTINGS,
          args: CoreBootFixActionArgs(
            errorKinds: [
              CoreBootAvailabilityErrorKind.TPM_DEVICE_LOCKOUT_LOCKED_OUT,
            ],
          ),
        ),
      ),
    ).called(1);
  });
}
