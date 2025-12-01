import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/ubuntu_bootstrap.dart';

extension CoreBootAvailabilityErrorKindL10n on CoreBootAvailabilityErrorKind {
  String localize(UbuntuBootstrapLocalizations l10n) => switch (this) {
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
          l10n.tpmActionErrorKindTpmDeviceFailure,
        CoreBootAvailabilityErrorKind.TPM_DEVICE_DISABLED =>
          l10n.tpmActionErrorKindTpmDeviceDisabled,
        CoreBootAvailabilityErrorKind.TPM_HIERARCHIES_OWNED =>
          l10n.tpmActionErrorKindTpmHierarchiesOwned,
        CoreBootAvailabilityErrorKind.TPM_DEVICE_LOCKOUT_LOCKED_OUT =>
          l10n.tpmActionErrorKindTpmDeviceLockoutLockedOut,
        CoreBootAvailabilityErrorKind.INSUFFICIENT_TPM_STORAGE =>
          l10n.tpmActionErrorKindInsufficientTpmStorage,
        CoreBootAvailabilityErrorKind.NO_SUITABLE_PCR_BANK =>
          l10n.tpmActionErrorKindNoSuitablePcrBank,
        CoreBootAvailabilityErrorKind.MEASURED_BOOT =>
          l10n.tpmActionErrorKindMeasuredBoot,
        CoreBootAvailabilityErrorKind.EMPTY_PCR_BANKS =>
          l10n.tpmActionErrorKindEmptyPcrBanks,
        CoreBootAvailabilityErrorKind.TPM_COMMAND_FAILED =>
          l10n.tpmActionErrorKindTpmCommandFailed,
        CoreBootAvailabilityErrorKind.INVALID_TPM_RESPONSE =>
          l10n.tpmActionErrorKindInvalidTpmResponse,
        CoreBootAvailabilityErrorKind.TPM_COMMUNICATION =>
          l10n.tpmActionErrorKindTpmCommunication,
        CoreBootAvailabilityErrorKind.UNSUPPORTED_PLATFORM =>
          l10n.tpmActionErrorKindUnsupportedPlatform,
        CoreBootAvailabilityErrorKind.UEFI_DEBUGGING_ENABLED =>
          l10n.tpmActionErrorKindUefiDebuggingEnabled,
        CoreBootAvailabilityErrorKind.INSUFFICIENT_DMA_PROTECTION =>
          l10n.tpmActionErrorKindInsufficientDmaProtection,
        CoreBootAvailabilityErrorKind.NO_KERNEL_IOMMU =>
          l10n.tpmActionErrorKindNoKernelIommu,
        CoreBootAvailabilityErrorKind.TPM_STARTUP_LOCALITY_NOT_PROTECTED =>
          l10n.tpmActionErrorKindTpmStartupLocalityNotProtected,
        CoreBootAvailabilityErrorKind.HOST_SECURITY =>
          l10n.tpmActionErrorKindHostSecurity,
        CoreBootAvailabilityErrorKind.PCR_UNUSABLE =>
          l10n.tpmActionErrorKindPcrUnusable,
        CoreBootAvailabilityErrorKind.PCR_UNSUPPORTED =>
          l10n.tpmActionErrorKindPcrUnsupported,
        CoreBootAvailabilityErrorKind.VAR_SUPPLIED_DRIVERS_PRESENT =>
          l10n.tpmActionErrorKindVarSuppliedDriversPresent,
        CoreBootAvailabilityErrorKind.SYS_PREP_APPLICATIONS_PRESENT =>
          l10n.tpmActionErrorKindSysPrepApplicationsPresent,
        CoreBootAvailabilityErrorKind.ABSOLUTE_PRESENT =>
          l10n.tpmActionErrorKindAbsolutePresent,
        CoreBootAvailabilityErrorKind.INVALID_SECURE_BOOT_MODE =>
          l10n.tpmActionErrorKindInvalidSecureBootMode,
        CoreBootAvailabilityErrorKind.WEAK_SECURE_BOOT_ALGORITHM_DETECTED =>
          l10n.tpmActionErrorKindWeakSecureBootAlgorithmDetected,
        CoreBootAvailabilityErrorKind.PRE_OS_DIGEST_VERIFICATION_DETECTED =>
          l10n.tpmActionErrorKindPreOsDigestVerificationDetected,
      };
}

extension CoreBootFixActionL10n on CoreBootFixAction {
  String localize(UbuntuBootstrapLocalizations l10n) => switch (this) {
        CoreBootFixAction.REBOOT => l10n.tpmActionFixActionReboot,
        CoreBootFixAction.SHUTDOWN => l10n.tpmActionFixActionShutdown,
        CoreBootFixAction.REBOOT_TO_FW_SETTINGS =>
          l10n.tpmActionFixActionRebootToFwSettings,
        CoreBootFixAction.CONTACT_OEM => l10n.tpmActionFixActionContactOem,
        CoreBootFixAction.CONTACT_OS_VENDOR =>
          l10n.tpmActionFixActionContactOsVendor,
        CoreBootFixAction.ENABLE_TPM_VIA_FIRMWARE =>
          l10n.tpmActionFixActionEnableTpmViaFirmware,
        CoreBootFixAction.ENABLE_AND_CLEAR_TPM_VIA_FIRMWARE =>
          l10n.tpmActionFixActionEnableAndClearTpmViaFirmware,
        CoreBootFixAction.CLEAR_TPM_VIA_FIRMWARE =>
          l10n.tpmActionFixActionClearTpmViaFirmware,
        CoreBootFixAction.CLEAR_TPM => l10n.tpmActionFixActionClearTpm,
        CoreBootFixAction.PROCEED => l10n.tpmActionFixActionProceed,
      };
}
