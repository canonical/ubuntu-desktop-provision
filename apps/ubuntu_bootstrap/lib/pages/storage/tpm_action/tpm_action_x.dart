import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/ubuntu_bootstrap.dart';

extension CoreBootAvailabilityErrorKindL10n on CoreBootAvailabilityErrorKind {
  String label(UbuntuBootstrapLocalizations l10n) => switch (this) {
        CoreBootAvailabilityErrorKind.INTERNAL =>
          l10n.tpmActionErrorKindInternal,
        CoreBootAvailabilityErrorKind.SHUTDOWN_REQUIRED =>
          l10n.tpmActionErrorKindShutdownRequired,
        CoreBootAvailabilityErrorKind.REBOOT_REQUIRED =>
          l10n.tpmActionErrorKindRebootRequired,
        CoreBootAvailabilityErrorKind.UNEXPECTED_ACTION =>
          l10n.tpmActionErrorKindUnexpectedAction,
        CoreBootAvailabilityErrorKind.MISSING_ARGUMENT =>
          l10n.tpmActionErrorKindMissingArgument,
        CoreBootAvailabilityErrorKind.INVALID_ARGUMENT =>
          l10n.tpmActionErrorKindInvalidArgument,
        CoreBootAvailabilityErrorKind.ACTION_FAILED =>
          l10n.tpmActionErrorKindActionFailed,
        CoreBootAvailabilityErrorKind.RUNNING_IN_VM =>
          l10n.tpmActionErrorKindRunningInVm,
        CoreBootAvailabilityErrorKind.SYSTEM_NOT_EFI =>
          l10n.tpmActionErrorKindSystemNotEfi,
        CoreBootAvailabilityErrorKind.EFI_VARIABLE_ACCESS =>
          l10n.tpmActionErrorKindEfiVariableAccess,
        CoreBootAvailabilityErrorKind.NO_SUITABLE_TPM2_DEVICE =>
          l10n.tpmActionErrorKindNoSuitableTpm2Device,
        CoreBootAvailabilityErrorKind.TPM_DEVICE_FAILURE =>
          l10n.tpmActionErrorKindGenericTpm,
        CoreBootAvailabilityErrorKind.TPM_DEVICE_DISABLED =>
          l10n.tpmActionErrorKindTpmDeviceDisabled,
        CoreBootAvailabilityErrorKind.TPM_HIERARCHIES_OWNED =>
          l10n.tpmActionErrorKindTpmHierarchiesOwned,
        CoreBootAvailabilityErrorKind.TPM_DEVICE_LOCKOUT_LOCKED_OUT =>
          l10n.tpmActionErrorKindTpmDeviceLockoutLockedOut,
        CoreBootAvailabilityErrorKind.INSUFFICIENT_TPM_STORAGE =>
          l10n.tpmActionErrorKindInsufficientTpmStorage,
        CoreBootAvailabilityErrorKind.NO_SUITABLE_PCR_BANK =>
          l10n.tpmActionErrorKindGenericFirmware,
        CoreBootAvailabilityErrorKind.MEASURED_BOOT =>
          l10n.tpmActionErrorKindGenericTpm,
        CoreBootAvailabilityErrorKind.TPM_COMMAND_FAILED =>
          l10n.tpmActionErrorKindGenericTpm,
        CoreBootAvailabilityErrorKind.INVALID_TPM_RESPONSE =>
          l10n.tpmActionErrorKindGenericTpm,
        CoreBootAvailabilityErrorKind.TPM_COMMUNICATION =>
          l10n.tpmActionErrorKindGenericTpm,
        CoreBootAvailabilityErrorKind.UNSUPPORTED_PLATFORM =>
          l10n.tpmActionErrorKindUnsupportedPlatform,
        CoreBootAvailabilityErrorKind.INSUFFICIENT_DMA_PROTECTION =>
          l10n.tpmActionErrorKindInsufficientDmaProtection,
        CoreBootAvailabilityErrorKind.NO_KERNEL_IOMMU =>
          l10n.tpmActionErrorKindNoKernelIommu,
        CoreBootAvailabilityErrorKind.HOST_SECURITY =>
          l10n.tpmActionErrorKindHostSecurity,
        CoreBootAvailabilityErrorKind.PCR_UNUSABLE =>
          l10n.tpmActionErrorKindGenericFirmware,
        CoreBootAvailabilityErrorKind.ADDON_DRIVERS_PRESENT =>
          l10n.tpmActionErrorKindAddonDriversPresent,
        CoreBootAvailabilityErrorKind.SYS_PREP_APPLICATIONS_PRESENT =>
          l10n.tpmActionErrorKindSysPrepApplicationsPresent,
        CoreBootAvailabilityErrorKind.ABSOLUTE_PRESENT =>
          l10n.tpmActionErrorKindAbsolutePresent,
        CoreBootAvailabilityErrorKind.INVALID_SECURE_BOOT_MODE =>
          l10n.tpmActionErrorKindInvalidSecureBootMode,
        CoreBootAvailabilityErrorKind.WEAK_SECURE_BOOT_ALGORITHM_DETECTED =>
          l10n.tpmActionErrorKindWeakSecureBootAlgorithmDetected,
        CoreBootAvailabilityErrorKind
              .PRE_OS_SECURE_BOOT_AUTH_BY_ENROLLED_DIGESTS =>
          l10n.tpmActionErrorKindPreOsSecureBootAuthByEnrolledDigests,
      };
}

extension CoreBootFixActionL10n on CoreBootFixActionWithCategoryAndArgs {
  String title(
    UbuntuBootstrapLocalizations l10n, [
    CoreBootAvailabilityErrorKind? error,
  ]) =>
      switch ((type, error)) {
        (CoreBootFixAction.REBOOT, _) => l10n.tpmActionFixActionReboot,
        (CoreBootFixAction.SHUTDOWN, _) => l10n.tpmActionFixActionShutdown,
        (
          CoreBootFixAction.REBOOT_TO_FW_SETTINGS,
          CoreBootAvailabilityErrorKind.INSUFFICIENT_DMA_PROTECTION
        ) =>
          l10n.tpmActionFixActionRebootToFwSettingsInsufficientDmaProtection,
        (
          CoreBootFixAction.REBOOT_TO_FW_SETTINGS,
          CoreBootAvailabilityErrorKind.INSUFFICIENT_TPM_STORAGE
        ) =>
          l10n.tpmActionFixActionRebootToFwSettingsInsufficientTpmStorage,
        (
          CoreBootFixAction.REBOOT_TO_FW_SETTINGS,
          CoreBootAvailabilityErrorKind.INVALID_SECURE_BOOT_MODE
        ) =>
          l10n.tpmActionFixActionRebootToFwSettingsInvalidSecureBootMode,
        (
          CoreBootFixAction.REBOOT_TO_FW_SETTINGS,
          CoreBootAvailabilityErrorKind.NO_KERNEL_IOMMU
        ) =>
          l10n.tpmActionFixActionRebootToFwSettingsNoKernelIommu,
        (
          CoreBootFixAction.REBOOT_TO_FW_SETTINGS,
          CoreBootAvailabilityErrorKind.NO_SUITABLE_PCR_BANK
        ) =>
          l10n.tpmActionFixActionRebootToFwSettingsNoSuitablePcrBank,
        (
          CoreBootFixAction.REBOOT_TO_FW_SETTINGS,
          CoreBootAvailabilityErrorKind.TPM_DEVICE_DISABLED,
        ) =>
          l10n.tpmActionFixActionRebootToFwSettingsTpmDeviceDisabled,
        (
          CoreBootFixAction.REBOOT_TO_FW_SETTINGS,
          CoreBootAvailabilityErrorKind.TPM_DEVICE_LOCKOUT_LOCKED_OUT
        ) =>
          l10n.tpmActionFixActionRebootToFwSettingsTpmDeviceLockoutLockedOut,
        (
          CoreBootFixAction.REBOOT_TO_FW_SETTINGS,
          CoreBootAvailabilityErrorKind.TPM_HIERARCHIES_OWNED
        ) =>
          l10n.tpmActionFixActionRebootToFwSettingsTpmHierarchiesOwned,
        (
          CoreBootFixAction.REBOOT_TO_FW_SETTINGS,
          CoreBootAvailabilityErrorKind.ABSOLUTE_PRESENT
        ) =>
          l10n.tpmActionFixActionRebootToFwSettingsAbsolutePresent,
        (CoreBootFixAction.REBOOT_TO_FW_SETTINGS, _) =>
          l10n.tpmActionFixActionRebootToFwSettings,
        (CoreBootFixAction.CONTACT_OEM, _) => l10n.tpmActionFixActionContactOem,
        (CoreBootFixAction.CONTACT_OS_VENDOR, _) =>
          l10n.tpmActionFixActionContactOsVendor,
        (CoreBootFixAction.ENABLE_TPM_VIA_FIRMWARE, _) =>
          l10n.tpmActionFixActionEnableTpmViaFirmware,
        (CoreBootFixAction.ENABLE_AND_CLEAR_TPM_VIA_FIRMWARE, _) =>
          l10n.tpmActionFixActionEnableAndClearTpmViaFirmware,
        (CoreBootFixAction.CLEAR_TPM_VIA_FIRMWARE, _) =>
          l10n.tpmActionFixActionClearTpmViaFirmware,
        (CoreBootFixAction.CLEAR_TPM_SIMPLE, _) =>
          l10n.tpmActionFixActionClearTpm,
        (CoreBootFixAction.CLEAR_TPM, _) => l10n.tpmActionFixActionClearTpm,
        (CoreBootFixAction.PROCEED, _) => l10n.tpmActionFixActionProceed,
      };

  String label(UbuntuBootstrapLocalizations l10n) => switch (type) {
        CoreBootFixAction.REBOOT ||
        CoreBootFixAction.REBOOT_TO_FW_SETTINGS =>
          l10n.tpmActionRestartLabel,
        CoreBootFixAction.ENABLE_TPM_VIA_FIRMWARE =>
          l10n.tpmActionRestartAndEnableTpmLabel,
        CoreBootFixAction.ENABLE_AND_CLEAR_TPM_VIA_FIRMWARE ||
        CoreBootFixAction.CLEAR_TPM_VIA_FIRMWARE ||
        CoreBootFixAction.CLEAR_TPM ||
        CoreBootFixAction.CLEAR_TPM_SIMPLE =>
          l10n.tpmActionRestartAndClearTpmLabel,
        CoreBootFixAction.PROCEED => l10n.tpmActionIgnoreAndContinueLabel,
        CoreBootFixAction.SHUTDOWN ||
        CoreBootFixAction.CONTACT_OEM ||
        CoreBootFixAction.CONTACT_OS_VENDOR =>
          title(l10n),
      };

  String? description(
    UbuntuBootstrapLocalizations l10n, [
    CoreBootAvailabilityErrorKind? error,
  ]) =>
      switch ((type, error)) {
        (
          CoreBootFixAction.REBOOT,
          CoreBootAvailabilityErrorKind.TPM_DEVICE_FAILURE
        ) =>
          l10n.tpmActionFixActionRebootTpmDeviceFailureDescription,
        (CoreBootFixAction.REBOOT, _) =>
          l10n.tpmActionFixActionRebootDescription,
        (CoreBootFixAction.SHUTDOWN, _) =>
          l10n.tpmActionFixActionShutdownDescription,
        (
          CoreBootFixAction.REBOOT_TO_FW_SETTINGS,
          CoreBootAvailabilityErrorKind.NO_SUITABLE_PCR_BANK ||
              CoreBootAvailabilityErrorKind.NO_KERNEL_IOMMU,
        ) =>
          l10n.tpmActionFixActionRebootToFwSettingsWithDocsDescription,
        (CoreBootFixAction.REBOOT_TO_FW_SETTINGS, _) =>
          l10n.tpmActionFixActionRebootToFwSettingsDescription,
        (CoreBootFixAction.PROCEED, _) =>
          l10n.tpmActionFixActionProceedDescription,
        _ => null,
      };

  String? firmwareHint(
    UbuntuBootstrapLocalizations l10n, [
    CoreBootAvailabilityErrorKind? error,
  ]) =>
      switch ((type, error)) {
        (
          CoreBootFixAction.REBOOT_TO_FW_SETTINGS,
          CoreBootAvailabilityErrorKind.INVALID_SECURE_BOOT_MODE
        ) =>
          l10n.tpmActionFixActionRebootToFwSettingsInvalidSecureBootModeHint,
        (
          CoreBootFixAction.REBOOT_TO_FW_SETTINGS,
          CoreBootAvailabilityErrorKind.NO_KERNEL_IOMMU
        ) =>
          l10n.tpmActionFixActionRebootToFwSettingsNoKernelIommuHint,
        _ => null
      };

  String? caveats(UbuntuBootstrapLocalizations l10n) => switch (type) {
        CoreBootFixAction.REBOOT ||
        CoreBootFixAction.SHUTDOWN ||
        CoreBootFixAction.REBOOT_TO_FW_SETTINGS =>
          l10n.tpmActionFixActionCaveatRetry,
        CoreBootFixAction.ENABLE_TPM_VIA_FIRMWARE ||
        CoreBootFixAction.ENABLE_AND_CLEAR_TPM_VIA_FIRMWARE ||
        CoreBootFixAction.CLEAR_TPM_VIA_FIRMWARE =>
          l10n.tpmActionFixActionCaveatConfirm,
        _ => null,
      };

  DestructiveActionWarning? get warning => switch (type) {
        CoreBootFixAction.CLEAR_TPM ||
        CoreBootFixAction.CLEAR_TPM_SIMPLE ||
        CoreBootFixAction.CLEAR_TPM_VIA_FIRMWARE ||
        CoreBootFixAction.ENABLE_AND_CLEAR_TPM_VIA_FIRMWARE =>
          DestructiveActionWarning(
            title: (l10n) => l10n.tpmActionFixActionClearTpmWarningTitle,
            body: (l10n) => l10n.tpmActionFixActionClearTpmWarningBody,
            confirmationLabel: (l10n) =>
                l10n.tpmActionFixActionClearTpmConfirmationLabel,
          ),
        CoreBootFixAction.REBOOT ||
        CoreBootFixAction.SHUTDOWN ||
        CoreBootFixAction.REBOOT_TO_FW_SETTINGS ||
        CoreBootFixAction.CONTACT_OEM ||
        CoreBootFixAction.CONTACT_OS_VENDOR ||
        CoreBootFixAction.ENABLE_TPM_VIA_FIRMWARE ||
        CoreBootFixAction.PROCEED =>
          null,
      };
}

class DestructiveActionWarning {
  const DestructiveActionWarning({
    required this.title,
    required this.body,
    required this.confirmationLabel,
  });

  final String Function(UbuntuBootstrapLocalizations) title;
  final String Function(UbuntuBootstrapLocalizations) body;
  final String Function(UbuntuBootstrapLocalizations) confirmationLabel;
}
