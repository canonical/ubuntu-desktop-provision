// TODO(Lukas): Rename enums to dart style
// ignore_for_file: constant_identifier_names, always_put_required_named_parameters_first

import 'package:freezed_annotation/freezed_annotation.dart';

part 'types.freezed.dart';
part 'types.g.dart';

// ignore_for_file: invalid_annotation_target

// subiquity serializes `Dict[int, Any]` as `List[List[int, Any]]`
class JsonMapConverter
    implements JsonConverter<Map<int, String>, List<dynamic>> {
  const JsonMapConverter();

  @override
  Map<int, String> fromJson(List<dynamic> json) {
    return {
      for (final entry in json) entry[0] as int: entry[1] as String,
    };
  }

  @override
  List<dynamic> toJson(Map<int, String> values) {
    return [
      for (final entry in values.entries) [entry.key, entry.value],
    ];
  }
}

// subiquitycore.models.network
class NetDevInfo {
  const NetDevInfo._();
  factory NetDevInfo.fromJson(Map<String, dynamic> json) =>
      const NetDevInfo._();
  Map<String, dynamic> toJson() => {};
}

// Union[Partition, Gap]
typedef DiskObject = PartitionOrGap;

// BEGIN GENERATED CODE - RUN `make generate` - DO NOT MODIFY BY HAND

enum ErrorReportState {
  INCOMPLETE,
  LOADING,
  DONE,
  ERROR_GENERATING,
  ERROR_LOADING,
}

enum ErrorReportKind {
  BLOCK_PROBE_FAIL,
  DISK_PROBE_FAIL,
  INSTALL_FAIL,
  UI,
  NETWORK_FAIL,
  NETWORK_CLIENT_FAIL,
  SERVER_REQUEST_FAIL,
  UNKNOWN,
}

@freezed
abstract class ErrorReportRef with _$ErrorReportRef {
  const factory ErrorReportRef({
    required ErrorReportState state,
    required String base,
    required ErrorReportKind kind,
    required bool seen,
    required String? oopsId,
  }) = _ErrorReportRef;

  factory ErrorReportRef.fromJson(Map<String, dynamic> json) =>
      _$ErrorReportRefFromJson(json);
}

@freezed
abstract class NonReportableError with _$NonReportableError {
  const factory NonReportableError({
    required String cause,
    required String message,
    required String? details,
  }) = _NonReportableError;

  factory NonReportableError.fromJson(Map<String, dynamic> json) =>
      _$NonReportableErrorFromJson(json);
}

enum ApplicationState {
  STARTING_UP,
  CLOUD_INIT_WAIT,
  EARLY_COMMANDS,
  NEEDS_CONFIRMATION,
  WAITING,
  RUNNING,
  UU_RUNNING,
  LATE_COMMANDS,
  DONE,
  ERROR,
  EXITED,
}

@freezed
abstract class ApplicationStatus with _$ApplicationStatus {
  const factory ApplicationStatus({
    required ApplicationState state,
    required String confirmingTty,
    required ErrorReportRef? error,
    required NonReportableError? nonreportableError,
    required bool? cloudInitOk,
    required bool? interactive,
    required String echoSyslogId,
    required String logSyslogId,
    required String eventSyslogId,
  }) = _ApplicationStatus;

  factory ApplicationStatus.fromJson(Map<String, dynamic> json) =>
      _$ApplicationStatusFromJson(json);
}

enum PasswordKind {
  NONE,
  KNOWN,
  UNKNOWN,
}

@freezed
abstract class KeyFingerprint with _$KeyFingerprint {
  const factory KeyFingerprint({
    required String keytype,
    required String fingerprint,
  }) = _KeyFingerprint;

  factory KeyFingerprint.fromJson(Map<String, dynamic> json) =>
      _$KeyFingerprintFromJson(json);
}

@freezed
abstract class LiveSessionSSHInfo with _$LiveSessionSSHInfo {
  const factory LiveSessionSSHInfo({
    required String username,
    required PasswordKind passwordKind,
    required String? password,
    required List<KeyFingerprint> authorizedKeyFingerprints,
    required List<String> ips,
    required List<KeyFingerprint> hostKeyFingerprints,
  }) = _LiveSessionSSHInfo;

  factory LiveSessionSSHInfo.fromJson(Map<String, dynamic> json) =>
      _$LiveSessionSSHInfoFromJson(json);
}

enum RefreshCheckState {
  UNKNOWN,
  AVAILABLE,
  UNAVAILABLE,
}

@freezed
abstract class RefreshStatus with _$RefreshStatus {
  const factory RefreshStatus({
    required RefreshCheckState availability,
    @Default('') String currentSnapVersion,
    @Default('') String newSnapVersion,
  }) = _RefreshStatus;

  factory RefreshStatus.fromJson(Map<String, dynamic> json) =>
      _$RefreshStatusFromJson(json);
}

@Freezed(unionKey: '\$type', unionValueCase: FreezedUnionCase.pascal)
abstract class AnyStep with _$AnyStep {
  @FreezedUnionValue('StepPressKey')
  @JsonMapConverter()
  const factory AnyStep.stepPressKey({
    required List<String> symbols,
    required Map<int, String> keycodes,
  }) = StepPressKey;

  @FreezedUnionValue('StepKeyPresent')
  const factory AnyStep.stepKeyPresent({
    required String symbol,
    required String yes,
    required String no,
  }) = StepKeyPresent;

  @FreezedUnionValue('StepResult')
  const factory AnyStep.stepResult({
    required String layout,
    required String variant,
  }) = StepResult;

  factory AnyStep.fromJson(Map<String, dynamic> json) =>
      _$AnyStepFromJson(json);
}

@freezed
abstract class KeyboardSetting with _$KeyboardSetting {
  const factory KeyboardSetting({
    required String layout,
    @Default('') String variant,
    String? toggle,
  }) = _KeyboardSetting;

  factory KeyboardSetting.fromJson(Map<String, dynamic> json) =>
      _$KeyboardSettingFromJson(json);
}

@freezed
abstract class KeyboardVariant with _$KeyboardVariant {
  const factory KeyboardVariant({
    required String code,
    required String name,
  }) = _KeyboardVariant;

  factory KeyboardVariant.fromJson(Map<String, dynamic> json) =>
      _$KeyboardVariantFromJson(json);
}

@freezed
abstract class KeyboardLayout with _$KeyboardLayout {
  const factory KeyboardLayout({
    required String code,
    required String name,
    required List<KeyboardVariant> variants,
  }) = _KeyboardLayout;

  factory KeyboardLayout.fromJson(Map<String, dynamic> json) =>
      _$KeyboardLayoutFromJson(json);
}

@freezed
abstract class KeyboardSetup with _$KeyboardSetup {
  const factory KeyboardSetup({
    required KeyboardSetting setting,
    required List<KeyboardLayout> layouts,
  }) = _KeyboardSetup;

  factory KeyboardSetup.fromJson(Map<String, dynamic> json) =>
      _$KeyboardSetupFromJson(json);
}

@freezed
abstract class SourceSelection with _$SourceSelection {
  const factory SourceSelection({
    required String name,
    required String description,
    required String id,
    required int size,
    required String variant,
    @JsonKey(name: 'default') required bool isDefault,
  }) = _SourceSelection;

  factory SourceSelection.fromJson(Map<String, dynamic> json) =>
      _$SourceSelectionFromJson(json);
}

@freezed
abstract class SourceSelectionAndSetting with _$SourceSelectionAndSetting {
  const factory SourceSelectionAndSetting({
    required List<SourceSelection> sources,
    required String currentId,
    required bool searchDrivers,
  }) = _SourceSelectionAndSetting;

  factory SourceSelectionAndSetting.fromJson(Map<String, dynamic> json) =>
      _$SourceSelectionAndSettingFromJson(json);
}

@freezed
abstract class ZdevInfo with _$ZdevInfo {
  const factory ZdevInfo({
    required String id,
    required String type,
    required bool on,
    required bool exists,
    required bool pers,
    required bool auto,
    required bool failed,
    required String names,
  }) = _ZdevInfo;

  factory ZdevInfo.fromJson(Map<String, dynamic> json) =>
      _$ZdevInfoFromJson(json);
}

enum PackageInstallState {
  NOT_NEEDED,
  NOT_AVAILABLE,
  INSTALLING,
  FAILED,
  DONE,
}

@freezed
abstract class NetworkStatus with _$NetworkStatus {
  const factory NetworkStatus({
    required List<NetDevInfo> devices,
    required PackageInstallState wlanSupportInstallState,
  }) = _NetworkStatus;

  factory NetworkStatus.fromJson(Map<String, dynamic> json) =>
      _$NetworkStatusFromJson(json);
}

@freezed
abstract class IdentityData with _$IdentityData {
  const factory IdentityData({
    @Default('') String realname,
    @Default('') String username,
    @Default('') String cryptedPassword,
    @Default('') String hostname,
  }) = _IdentityData;

  factory IdentityData.fromJson(Map<String, dynamic> json) =>
      _$IdentityDataFromJson(json);
}

enum UsernameValidation {
  OK,
  ALREADY_IN_USE,
  SYSTEM_RESERVED,
  INVALID_CHARS,
  TOO_LONG,
}

@freezed
abstract class SSHData with _$SSHData {
  const factory SSHData({
    required bool installServer,
    required bool allowPw,
    @Default([]) List<String> authorizedKeys,
  }) = _SSHData;

  factory SSHData.fromJson(Map<String, dynamic> json) =>
      _$SSHDataFromJson(json);
}

@freezed
abstract class SSHIdentity with _$SSHIdentity {
  const factory SSHIdentity({
    required String keyType,
    required String key,
    required String keyComment,
    required String keyFingerprint,
  }) = _SSHIdentity;

  factory SSHIdentity.fromJson(Map<String, dynamic> json) =>
      _$SSHIdentityFromJson(json);
}

enum SSHFetchIdStatus {
  OK,
  IMPORT_ERROR,
  FINGERPRINT_ERROR,
}

@freezed
abstract class SSHFetchIdResponse with _$SSHFetchIdResponse {
  const factory SSHFetchIdResponse({
    required SSHFetchIdStatus status,
    required List<SSHIdentity>? identities,
    required String? error,
  }) = _SSHFetchIdResponse;

  factory SSHFetchIdResponse.fromJson(Map<String, dynamic> json) =>
      _$SSHFetchIdResponseFromJson(json);
}

enum SnapCheckState {
  FAILED,
  LOADING,
  DONE,
}

@freezed
abstract class ChannelSnapInfo with _$ChannelSnapInfo {
  const factory ChannelSnapInfo({
    required String channelName,
    required String revision,
    required String confinement,
    required String version,
    required int size,
    required DateTime releasedAt,
  }) = _ChannelSnapInfo;

  factory ChannelSnapInfo.fromJson(Map<String, dynamic> json) =>
      _$ChannelSnapInfoFromJson(json);
}

@freezed
abstract class SnapInfo with _$SnapInfo {
  const factory SnapInfo({
    required String name,
    @Default('') String summary,
    @Default('') String publisher,
    @Default(false) bool verified,
    @Default(false) bool starred,
    @Default('') String description,
    @Default('') String confinement,
    @Default('') String license,
    @Default([]) List<ChannelSnapInfo> channels,
  }) = _SnapInfo;

  factory SnapInfo.fromJson(Map<String, dynamic> json) =>
      _$SnapInfoFromJson(json);
}

@freezed
abstract class DriversResponse with _$DriversResponse {
  const factory DriversResponse({
    required bool install,
    required List<String>? drivers,
    required bool localOnly,
    required bool searchDrivers,
  }) = _DriversResponse;

  factory DriversResponse.fromJson(Map<String, dynamic> json) =>
      _$DriversResponseFromJson(json);
}

@freezed
abstract class OEMResponse with _$OEMResponse {
  const factory OEMResponse({
    required List<String>? metapackages,
  }) = _OEMResponse;

  factory OEMResponse.fromJson(Map<String, dynamic> json) =>
      _$OEMResponseFromJson(json);
}

@freezed
abstract class CodecsData with _$CodecsData {
  const factory CodecsData({
    required bool install,
  }) = _CodecsData;

  factory CodecsData.fromJson(Map<String, dynamic> json) =>
      _$CodecsDataFromJson(json);
}

@freezed
abstract class DriversPayload with _$DriversPayload {
  const factory DriversPayload({
    required bool install,
  }) = _DriversPayload;

  factory DriversPayload.fromJson(Map<String, dynamic> json) =>
      _$DriversPayloadFromJson(json);
}

@freezed
abstract class SnapSelection with _$SnapSelection {
  const factory SnapSelection({
    required String name,
    required String channel,
    @Default(false) bool classic,
  }) = _SnapSelection;

  factory SnapSelection.fromJson(Map<String, dynamic> json) =>
      _$SnapSelectionFromJson(json);
}

@freezed
abstract class SnapListResponse with _$SnapListResponse {
  const factory SnapListResponse({
    required SnapCheckState status,
    @Default([]) List<SnapInfo> snaps,
    @Default([]) List<SnapSelection> selections,
  }) = _SnapListResponse;

  factory SnapListResponse.fromJson(Map<String, dynamic> json) =>
      _$SnapListResponseFromJson(json);
}

@freezed
abstract class TimeZoneInfo with _$TimeZoneInfo {
  const factory TimeZoneInfo({
    required String timezone,
    required bool fromGeoip,
  }) = _TimeZoneInfo;

  factory TimeZoneInfo.fromJson(Map<String, dynamic> json) =>
      _$TimeZoneInfoFromJson(json);
}

@freezed
abstract class UbuntuProInfo with _$UbuntuProInfo {
  const factory UbuntuProInfo({
    required String token,
  }) = _UbuntuProInfo;

  factory UbuntuProInfo.fromJson(Map<String, dynamic> json) =>
      _$UbuntuProInfoFromJson(json);
}

@freezed
abstract class UbuntuProResponse with _$UbuntuProResponse {
  const factory UbuntuProResponse({
    required String token,
    required bool hasNetwork,
  }) = _UbuntuProResponse;

  factory UbuntuProResponse.fromJson(Map<String, dynamic> json) =>
      _$UbuntuProResponseFromJson(json);
}

enum UbuntuProCheckTokenStatus {
  VALID_TOKEN,
  INVALID_TOKEN,
  EXPIRED_TOKEN,
  UNKNOWN_ERROR,
}

@freezed
abstract class UbuntuProGeneralInfo with _$UbuntuProGeneralInfo {
  const factory UbuntuProGeneralInfo({
    required int? eolEsmYear,
    required int universePackages,
    required int mainPackages,
  }) = _UbuntuProGeneralInfo;

  factory UbuntuProGeneralInfo.fromJson(Map<String, dynamic> json) =>
      _$UbuntuProGeneralInfoFromJson(json);
}

@freezed
abstract class UPCSInitiateResponse with _$UPCSInitiateResponse {
  const factory UPCSInitiateResponse({
    required String userCode,
    required int validitySeconds,
  }) = _UPCSInitiateResponse;

  factory UPCSInitiateResponse.fromJson(Map<String, dynamic> json) =>
      _$UPCSInitiateResponseFromJson(json);
}

enum UPCSWaitStatus {
  SUCCESS,
  TIMEOUT,
}

@freezed
abstract class UPCSWaitResponse with _$UPCSWaitResponse {
  const factory UPCSWaitResponse({
    required UPCSWaitStatus status,
    required String? contractToken,
  }) = _UPCSWaitResponse;

  factory UPCSWaitResponse.fromJson(Map<String, dynamic> json) =>
      _$UPCSWaitResponseFromJson(json);
}

@freezed
abstract class UbuntuProService with _$UbuntuProService {
  const factory UbuntuProService({
    required String name,
    required String description,
    required bool autoEnabled,
  }) = _UbuntuProService;

  factory UbuntuProService.fromJson(Map<String, dynamic> json) =>
      _$UbuntuProServiceFromJson(json);
}

@freezed
abstract class UbuntuProSubscription with _$UbuntuProSubscription {
  const factory UbuntuProSubscription({
    required String contractName,
    required String accountName,
    required String contractToken,
    required List<UbuntuProService> services,
  }) = _UbuntuProSubscription;

  factory UbuntuProSubscription.fromJson(Map<String, dynamic> json) =>
      _$UbuntuProSubscriptionFromJson(json);
}

@freezed
abstract class UbuntuProCheckTokenAnswer with _$UbuntuProCheckTokenAnswer {
  const factory UbuntuProCheckTokenAnswer({
    required UbuntuProCheckTokenStatus status,
    required UbuntuProSubscription? subscription,
  }) = _UbuntuProCheckTokenAnswer;

  factory UbuntuProCheckTokenAnswer.fromJson(Map<String, dynamic> json) =>
      _$UbuntuProCheckTokenAnswerFromJson(json);
}

enum ShutdownMode {
  REBOOT,
  POWEROFF,
}

enum TaskStatus {
  DO,
  DOING,
  DONE,
  ABORT,
  UNDO,
  UNDOING,
  HOLD,
  ERROR,
}

@freezed
abstract class TaskProgress with _$TaskProgress {
  const factory TaskProgress({
    @Default('') String label,
    @Default(0) int done,
    @Default(0) int total,
  }) = _TaskProgress;

  factory TaskProgress.fromJson(Map<String, dynamic> json) =>
      _$TaskProgressFromJson(json);
}

@freezed
abstract class Task with _$Task {
  const factory Task({
    required String id,
    required String kind,
    required String summary,
    required TaskStatus status,
    required TaskProgress progress,
  }) = _Task;

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}

@freezed
abstract class Change with _$Change {
  const factory Change({
    required String id,
    required String kind,
    required String summary,
    required TaskStatus status,
    required List<Task> tasks,
    required bool ready,
    String? err,
    dynamic data,
  }) = _Change;

  factory Change.fromJson(Map<String, dynamic> json) => _$ChangeFromJson(json);
}

enum CasperMd5Results {
  UNKNOWN,
  FAIL,
  PASS,
  SKIP,
}

enum MirrorCheckStatus {
  OK,
  RUNNING,
  FAILED,
}

@freezed
abstract class MirrorCheckResponse with _$MirrorCheckResponse {
  const factory MirrorCheckResponse({
    required String url,
    required MirrorCheckStatus status,
    required String output,
  }) = _MirrorCheckResponse;

  factory MirrorCheckResponse.fromJson(Map<String, dynamic> json) =>
      _$MirrorCheckResponseFromJson(json);
}

@freezed
abstract class MirrorPost with _$MirrorPost {
  const factory MirrorPost({
    String? elected,
    List<String>? candidates,
    String? staged,
    bool? useDuringInstallation,
  }) = _MirrorPost;

  factory MirrorPost.fromJson(Map<String, dynamic> json) =>
      _$MirrorPostFromJson(json);
}

enum MirrorPostResponse {
  OK,
  NO_USABLE_MIRROR,
}

@freezed
abstract class MirrorGet with _$MirrorGet {
  const factory MirrorGet({
    required bool relevant,
    required String? elected,
    required List<String> candidates,
    required String? staged,
    required bool useDuringInstallation,
  }) = _MirrorGet;

  factory MirrorGet.fromJson(Map<String, dynamic> json) =>
      _$MirrorGetFromJson(json);
}

enum MirrorSelectionFallback {
  ABORT,
  CONTINUE_ANYWAY,
  OFFLINE_INSTALL,
}

@freezed
abstract class AdConnectionInfo with _$AdConnectionInfo {
  const factory AdConnectionInfo({
    @Default('') String adminName,
    @Default('') String domainName,
    @Default('') String password,
  }) = _AdConnectionInfo;

  factory AdConnectionInfo.fromJson(Map<String, dynamic> json) =>
      _$AdConnectionInfoFromJson(json);
}

enum AdAdminNameValidation {
  OK,
  EMPTY,
  INVALID_CHARS,
}

enum AdDomainNameValidation {
  OK,
  EMPTY,
  TOO_LONG,
  INVALID_CHARS,
  START_DOT,
  END_DOT,
  START_HYPHEN,
  END_HYPHEN,
  MULTIPLE_DOTS,
  REALM_NOT_FOUND,
}

enum AdPasswordValidation {
  OK,
  EMPTY,
}

enum AdJoinResult {
  OK,
  JOIN_ERROR,
  EMPTY_HOSTNAME,
  PAM_ERROR,
  UNKNOWN,
}

enum ProbeStatus {
  PROBING,
  FAILED,
  DONE,
}

enum Bootloader {
  NONE,
  BIOS,
  UEFI,
  PREP,
}

@freezed
abstract class OsProber with _$OsProber {
  const factory OsProber({
    required String long,
    required String label,
    required String type,
    String? subpath,
    String? version,
  }) = _OsProber;

  factory OsProber.fromJson(Map<String, dynamic> json) =>
      _$OsProberFromJson(json);
}

@Freezed(unionKey: '\$type', unionValueCase: FreezedUnionCase.pascal)
abstract class PartitionOrGap with _$PartitionOrGap {
  @FreezedUnionValue('Partition')
  const factory PartitionOrGap.partition({
    int? size,
    int? number,
    bool? preserve,
    String? wipe,
    @Default([]) List<String> annotations,
    String? mount,
    String? format,
    bool? grubDevice,
    bool? boot,
    OsProber? os,
    int? offset,
    @Default(-1) int? estimatedMinSize,
    bool? resize,
    String? path,
    String? name,
    @Default(false) bool isInUse,
    String? effectiveMount,
    String? effectiveFormat,
    bool? effectivelyEncrypted,
  }) = Partition;

  @FreezedUnionValue('Gap')
  const factory PartitionOrGap.gap({
    required int offset,
    required int size,
    required GapUsable usable,
  }) = Gap;

  factory PartitionOrGap.fromJson(Map<String, dynamic> json) =>
      _$PartitionOrGapFromJson(json);
}

@freezed
abstract class ZFS with _$ZFS {
  const factory ZFS({
    required String volume,
    Map<String, dynamic>? properties,
  }) = _ZFS;

  factory ZFS.fromJson(Map<String, dynamic> json) => _$ZFSFromJson(json);
}

@freezed
abstract class ZPool with _$ZPool {
  const factory ZPool({
    required String pool,
    required String mountpoint,
    ZFS? zfses,
    Map<String, dynamic>? poolProperties,
    Map<String, dynamic>? fsProperties,
    @Default(true) bool? defaultFeatures,
  }) = _ZPool;

  factory ZPool.fromJson(Map<String, dynamic> json) => _$ZPoolFromJson(json);
}

enum GapUsable {
  YES,
  TOO_MANY_PRIMARY_PARTS,
}

@freezed
abstract class Disk with _$Disk {
  const factory Disk({
    required String id,
    required String label,
    required String type,
    required int size,
    required List<String> usageLabels,
    required List<PartitionOrGap> partitions,
    required bool okForGuided,
    required String? ptable,
    required bool preserve,
    required String? path,
    required bool bootDevice,
    required bool canBeBootDevice,
    String? model,
    String? vendor,
    @Default(false) bool hasInUsePartition,
    bool? requiresReformat,
  }) = _Disk;

  factory Disk.fromJson(Map<String, dynamic> json) => _$DiskFromJson(json);
}

enum CoreBootAvailabilityErrorKind {
  INTERNAL,
  SHUTDOWN_REQUIRED,
  REBOOT_REQUIRED,
  UNEXPECTED_ACTION,
  MISSING_ARGUMENT,
  INVALID_ARGUMENT,
  ACTION_FAILED,
  RUNNING_IN_VM,
  SYSTEM_NOT_EFI,
  EFI_VARIABLE_ACCESS,
  NO_SUITABLE_TPM2_DEVICE,
  TPM_DEVICE_FAILURE,
  TPM_DEVICE_DISABLED,
  TPM_HIERARCHIES_OWNED,
  TPM_DEVICE_LOCKOUT_LOCKED_OUT,
  INSUFFICIENT_TPM_STORAGE,
  NO_SUITABLE_PCR_BANK,
  MEASURED_BOOT,
  TPM_COMMAND_FAILED,
  INVALID_TPM_RESPONSE,
  TPM_COMMUNICATION,
  UNSUPPORTED_PLATFORM,
  INSUFFICIENT_DMA_PROTECTION,
  NO_KERNEL_IOMMU,
  HOST_SECURITY,
  PCR_UNUSABLE,
  ADDON_DRIVERS_PRESENT,
  SYS_PREP_APPLICATIONS_PRESENT,
  ABSOLUTE_PRESENT,
  INVALID_SECURE_BOOT_MODE,
  WEAK_SECURE_BOOT_ALGORITHM_DETECTED,
  PRE_OS_SECURE_BOOT_AUTH_BY_ENROLLED_DIGESTS,
}

enum CoreBootFixAction {
  REBOOT,
  SHUTDOWN,
  REBOOT_TO_FW_SETTINGS,
  CONTACT_OEM,
  CONTACT_OS_VENDOR,
  ENABLE_TPM_VIA_FIRMWARE,
  ENABLE_AND_CLEAR_TPM_VIA_FIRMWARE,
  CLEAR_TPM_VIA_FIRMWARE,
  CLEAR_TPM_SIMPLE,
  CLEAR_TPM,
  PROCEED,
}

enum GuidedCapability {
  MANUAL,
  DIRECT,
  LVM,
  LVM_LUKS,
  ZFS,
  ZFS_LUKS_KEYSTORE,
  CORE_BOOT_ENCRYPTED,
  CORE_BOOT_UNENCRYPTED,
  CORE_BOOT_PREFER_ENCRYPTED,
  CORE_BOOT_PREFER_UNENCRYPTED,
  DD,
}

enum GuidedDisallowedCapabilityReason {
  TOO_SMALL,
  CORE_BOOT_ENCRYPTION_UNAVAILABLE,
  NOT_UEFI,
  THIRD_PARTY_DRIVERS,
}

@freezed
abstract class CoreBootFixActionArgs with _$CoreBootFixActionArgs {
  const factory CoreBootFixActionArgs({
    List<CoreBootAvailabilityErrorKind>? errorKinds,
  }) = _CoreBootFixActionArgs;

  factory CoreBootFixActionArgs.fromJson(Map<String, dynamic> json) =>
      _$CoreBootFixActionArgsFromJson(json);
}

@freezed
abstract class CoreBootFixActionWithArgs with _$CoreBootFixActionWithArgs {
  const factory CoreBootFixActionWithArgs({
    required CoreBootFixAction type,
    CoreBootFixActionArgs? args,
  }) = _CoreBootFixActionWithArgs;

  factory CoreBootFixActionWithArgs.fromJson(Map<String, dynamic> json) =>
      _$CoreBootFixActionWithArgsFromJson(json);
}

@freezed
abstract class CoreBootFixActionWithCategoryAndArgs
    with _$CoreBootFixActionWithCategoryAndArgs {
  const factory CoreBootFixActionWithCategoryAndArgs({
    required CoreBootFixAction type,
    required bool forUser,
    CoreBootFixActionArgs? args,
  }) = _CoreBootFixActionWithCategoryAndArgs;

  factory CoreBootFixActionWithCategoryAndArgs.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CoreBootFixActionWithCategoryAndArgsFromJson(json);
}

@freezed
abstract class CoreBootEncryptionSupportError
    with _$CoreBootEncryptionSupportError {
  const factory CoreBootEncryptionSupportError({
    required CoreBootAvailabilityErrorKind kind,
    required String message,
    required List<CoreBootFixActionWithCategoryAndArgs> actions,
  }) = _CoreBootEncryptionSupportError;

  factory CoreBootEncryptionSupportError.fromJson(Map<String, dynamic> json) =>
      _$CoreBootEncryptionSupportErrorFromJson(json);
}

@freezed
abstract class GuidedDisallowedCapability with _$GuidedDisallowedCapability {
  const factory GuidedDisallowedCapability({
    required GuidedCapability capability,
    required GuidedDisallowedCapabilityReason reason,
    String? message,
    List<CoreBootEncryptionSupportError>? errors,
  }) = _GuidedDisallowedCapability;

  factory GuidedDisallowedCapability.fromJson(Map<String, dynamic> json) =>
      _$GuidedDisallowedCapabilityFromJson(json);
}

@freezed
abstract class StorageResponse with _$StorageResponse {
  const factory StorageResponse({
    required ProbeStatus status,
    ErrorReportRef? errorReport,
    Bootloader? bootloader,
    List<dynamic>? origConfig,
    List<dynamic>? config,
    Map<String, dynamic>? dasd,
    @Default(1) int storageVersion,
  }) = _StorageResponse;

  factory StorageResponse.fromJson(Map<String, dynamic> json) =>
      _$StorageResponseFromJson(json);
}

@freezed
abstract class StorageResponseV2 with _$StorageResponseV2 {
  const factory StorageResponseV2({
    required ProbeStatus status,
    ErrorReportRef? errorReport,
    @Default([]) List<Disk> disks,
    bool? needRoot,
    bool? needBoot,
    int? installMinimumSize,
  }) = _StorageResponseV2;

  factory StorageResponseV2.fromJson(Map<String, dynamic> json) =>
      _$StorageResponseV2FromJson(json);
}

enum SizingPolicy {
  SCALED,
  ALL,
}

@freezed
abstract class GuidedResizeValues with _$GuidedResizeValues {
  const factory GuidedResizeValues({
    required int installMax,
    required int minimum,
    required int recommended,
    required int maximum,
  }) = _GuidedResizeValues;

  factory GuidedResizeValues.fromJson(Map<String, dynamic> json) =>
      _$GuidedResizeValuesFromJson(json);
}

@Freezed(unionKey: '\$type', unionValueCase: FreezedUnionCase.pascal)
abstract class GuidedStorageTarget with _$GuidedStorageTarget {
  @FreezedUnionValue('GuidedStorageTargetReformat')
  const factory GuidedStorageTarget.reformat({
    required String diskId,
    String? ptable,
    @Default([]) List<GuidedCapability> allowed,
    @Default([]) List<GuidedDisallowedCapability> disallowed,
  }) = GuidedStorageTargetReformat;

  @FreezedUnionValue('GuidedStorageTargetResize')
  const factory GuidedStorageTarget.resize({
    required String diskId,
    required int partitionNumber,
    required int newSize,
    required int? minimum,
    required int? recommended,
    required int? maximum,
    @Default([]) List<GuidedCapability> allowed,
    @Default([]) List<GuidedDisallowedCapability> disallowed,
  }) = GuidedStorageTargetResize;

  @FreezedUnionValue('GuidedStorageTargetEraseInstall')
  const factory GuidedStorageTarget.eraseInstall({
    required String diskId,
    required int partitionNumber,
    @Default([]) List<GuidedCapability> allowed,
    @Default([]) List<GuidedDisallowedCapability> disallowed,
  }) = GuidedStorageTargetEraseInstall;

  @FreezedUnionValue('GuidedStorageTargetUseGap')
  const factory GuidedStorageTarget.useGap({
    required String diskId,
    required Gap gap,
    @Default([]) List<GuidedCapability> allowed,
    @Default([]) List<GuidedDisallowedCapability> disallowed,
  }) = GuidedStorageTargetUseGap;

  @FreezedUnionValue('GuidedStorageTargetManual')
  const factory GuidedStorageTarget.manual({
    required List<GuidedCapability> allowed,
    @Default([]) List<GuidedDisallowedCapability> disallowed,
  }) = GuidedStorageTargetManual;

  factory GuidedStorageTarget.fromJson(Map<String, dynamic> json) =>
      _$GuidedStorageTargetFromJson(json);
}

@freezed
abstract class RecoveryKey with _$RecoveryKey {
  const factory RecoveryKey({
    String? liveLocation,
    String? backupLocation,
  }) = _RecoveryKey;

  factory RecoveryKey.fromJson(Map<String, dynamic> json) =>
      _$RecoveryKeyFromJson(json);
}

@freezed
abstract class GuidedChoiceV2 with _$GuidedChoiceV2 {
  const factory GuidedChoiceV2({
    required GuidedStorageTarget target,
    required GuidedCapability capability,
    String? password,
    String? pin,
    RecoveryKey? recoveryKey,
    required SizingPolicy? sizingPolicy,
    @Default(false) bool resetPartition,
    int? resetPartitionSize,
  }) = _GuidedChoiceV2;

  factory GuidedChoiceV2.fromJson(Map<String, dynamic> json) =>
      _$GuidedChoiceV2FromJson(json);
}

@freezed
abstract class GuidedStorageResponseV2 with _$GuidedStorageResponseV2 {
  const factory GuidedStorageResponseV2({
    required ProbeStatus status,
    ErrorReportRef? errorReport,
    GuidedChoiceV2? configured,
    @Default([]) List<GuidedStorageTarget> targets,
  }) = _GuidedStorageResponseV2;

  factory GuidedStorageResponseV2.fromJson(Map<String, dynamic> json) =>
      _$GuidedStorageResponseV2FromJson(json);
}

@freezed
abstract class AddPartitionV2 with _$AddPartitionV2 {
  const factory AddPartitionV2({
    required String diskId,
    required Partition partition,
    required Gap gap,
  }) = _AddPartitionV2;

  factory AddPartitionV2.fromJson(Map<String, dynamic> json) =>
      _$AddPartitionV2FromJson(json);
}

@freezed
abstract class ModifyPartitionV2 with _$ModifyPartitionV2 {
  const factory ModifyPartitionV2({
    required String diskId,
    required Partition partition,
  }) = _ModifyPartitionV2;

  factory ModifyPartitionV2.fromJson(Map<String, dynamic> json) =>
      _$ModifyPartitionV2FromJson(json);
}

@freezed
abstract class ReformatDisk with _$ReformatDisk {
  const factory ReformatDisk({
    required String diskId,
    String? ptable,
  }) = _ReformatDisk;

  factory ReformatDisk.fromJson(Map<String, dynamic> json) =>
      _$ReformatDiskFromJson(json);
}

@freezed
abstract class CalculateEntropyRequest with _$CalculateEntropyRequest {
  const factory CalculateEntropyRequest({
    String? passphrase,
    String? pin,
  }) = _CalculateEntropyRequest;

  factory CalculateEntropyRequest.fromJson(Map<String, dynamic> json) =>
      _$CalculateEntropyRequestFromJson(json);
}

@freezed
abstract class EntropyResponse with _$EntropyResponse {
  const factory EntropyResponse({
    required bool success,
    required int entropyBits,
    required int minEntropyBits,
    required int optimalEntropyBits,
    List<String>? failureReasons,
  }) = _EntropyResponse;

  factory EntropyResponse.fromJson(Map<String, dynamic> json) =>
      _$EntropyResponseFromJson(json);
}

enum CoreBootEncryptionFeatures {
  PASSPHRASE_AUTH,
  PIN_AUTH,
}

@freezed
abstract class CoreBootFixEncryptionSupport
    with _$CoreBootFixEncryptionSupport {
  const factory CoreBootFixEncryptionSupport({
    required CoreBootFixActionWithArgs action,
    String? systemLabel,
  }) = _CoreBootFixEncryptionSupport;

  factory CoreBootFixEncryptionSupport.fromJson(Map<String, dynamic> json) =>
      _$CoreBootFixEncryptionSupportFromJson(json);
}

// END GENERATED CODE
