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
  final smallDiskTpmTarget = GuidedStorageTargetReformat(
    diskId: 'diskB',
    allowed: [],
    disallowed: [
      GuidedDisallowedCapability(
        capability: GuidedCapability.DIRECT,
        reason: GuidedDisallowedCapabilityReason.TOO_SMALL,
      ),
      GuidedDisallowedCapability(
        capability: GuidedCapability.CORE_BOOT_ENCRYPTED,
        reason: GuidedDisallowedCapabilityReason.TOO_SMALL,
      ),
    ],
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
        selectedTarget: nonTpmTarget,
        targets: [nonTpmTarget],
        skipPage: true,
      ),
      (
        name: 'tpm fde without errors',
        capability: GuidedCapability.CORE_BOOT_ENCRYPTED,
        selectedTarget: tpmTarget,
        targets: [tpmTarget],
        skipPage: true,
      ),
      (
        name: 'tpm fde + errors for other disk',
        capability: GuidedCapability.CORE_BOOT_ENCRYPTED,
        selectedTarget: tpmTarget,
        targets: [smallDiskTpmTarget, tpmTarget],
        skipPage: true,
      ),
      (
        name: 'tpm fde with errors',
        capability: GuidedCapability.CORE_BOOT_ENCRYPTED,
        selectedTarget: defunctTpmTarget,
        targets: [defunctTpmTarget],
        skipPage: false,
      ),
    ]) {
      test(testCase.name, () async {
        final storage = MockStorageService();
        when(storage.guidedCapability).thenReturn(testCase.capability);
        when(storage.guidedTarget).thenReturn(testCase.selectedTarget);
        when(storage.getGuidedStorage()).thenAnswer(
          (_) async => GuidedStorageResponseV2(
            status: ProbeStatus.DONE,
            targets: testCase.targets,
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
    when(storage.guidedTarget).thenReturn(defunctTpmTarget);
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
    when(storage.guidedTarget).thenReturn(defunctTpmTarget);
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
  test('automatically trigger subsequent reboot action', () async {
    var calls = 0;
    final storage = MockStorageService();
    when(storage.guidedTarget).thenReturn(defunctTpmTarget);
    when(storage.getGuidedStorage()).thenAnswer(
      (_) async => GuidedStorageResponseV2(
        status: ProbeStatus.DONE,
        targets: [
          GuidedStorageTarget.reformat(
            diskId: 'diskA',
            disallowed: [
              GuidedDisallowedCapability(
                capability: GuidedCapability.CORE_BOOT_ENCRYPTED,
                reason: GuidedDisallowedCapabilityReason
                    .CORE_BOOT_ENCRYPTION_UNAVAILABLE,
                errors: calls++ > 0
                    ? []
                    : [
                        CoreBootEncryptionSupportError(
                          kind: CoreBootAvailabilityErrorKind.REBOOT_REQUIRED,
                          message: 'reboot required',
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
          ),
        ],
      ),
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
    verify(
      subiquity.coreBootFixEncryptionSupportV2(
        CoreBootFixActionWithArgs(
          type: CoreBootFixAction.REBOOT,
        ),
      ),
    ).called(1);
  });
}
