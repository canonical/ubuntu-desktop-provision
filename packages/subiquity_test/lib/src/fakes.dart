import 'package:subiquity_client/subiquity_client.dart';

ApplicationStatus fakeApplicationStatus(
  ApplicationState state, {
  String confirmingTty = '',
  ErrorReportRef? error,
  bool? cloudInitOk,
  bool? interactive,
  String echoSyslogId = '',
  String logSyslogId = '',
  String eventSyslogId = '',
}) {
  return ApplicationStatus(
    state: state,
    confirmingTty: confirmingTty,
    error: error,
    cloudInitOk: cloudInitOk,
    interactive: interactive,
    echoSyslogId: echoSyslogId,
    eventSyslogId: eventSyslogId,
    logSyslogId: logSyslogId,
  );
}

Disk fakeDisk({
  String id = '',
  String label = '',
  String type = '',
  int size = 0,
  List<String> usageLabels = const [],
  List<DiskObject> partitions = const [],
  bool okForGuided = false,
  String? ptable,
  bool preserve = false,
  String? path,
  bool bootDevice = false,
  bool canBeBootDevice = false,
  String? model,
  String? vendor,
}) {
  return Disk(
    id: id,
    label: label,
    type: type,
    size: size,
    usageLabels: usageLabels,
    partitions: partitions,
    okForGuided: okForGuided,
    ptable: ptable,
    preserve: preserve,
    path: path,
    bootDevice: bootDevice,
    canBeBootDevice: canBeBootDevice,
    model: model,
    vendor: vendor,
  );
}

Gap fakeGap({
  int offset = 0,
  int size = 0,
  GapUsable usable = GapUsable.YES,
}) {
  return Gap(offset: offset, size: size, usable: usable);
}

GuidedChoiceV2 fakeGuidedChoice(
  GuidedStorageTarget target, {
  GuidedCapability capability = GuidedCapability.DIRECT,
  String? password,
  SizingPolicy? sizingPolicy,
}) {
  return GuidedChoiceV2(
    target: target,
    capability: capability,
    password: password,
    sizingPolicy: sizingPolicy,
  );
}

GuidedStorageTargetReformat fakeGuidedStorageTargetReformat({
  String diskId = '',
  List<GuidedCapability> allowed = const [GuidedCapability.DIRECT],
  List<GuidedDisallowedCapability> disallowed = const [],
}) {
  return GuidedStorageTargetReformat(
    diskId: diskId,
    allowed: allowed,
    disallowed: disallowed,
  );
}

GuidedStorageTargetResize fakeGuidedStorageTargetResize({
  String diskId = '',
  int partitionNumber = 0,
  int newSize = 0,
  int? minimum,
  int? recommended,
  int? maximum,
  List<GuidedCapability> allowed = const [GuidedCapability.DIRECT],
  List<GuidedDisallowedCapability> disallowed = const [],
}) {
  return GuidedStorageTargetResize(
    diskId: diskId,
    partitionNumber: partitionNumber,
    newSize: newSize,
    minimum: minimum,
    recommended: recommended,
    maximum: maximum,
    allowed: allowed,
    disallowed: disallowed,
  );
}

GuidedStorageTargetUseGap fakeGuidedStorageTargetUseGap({
  String diskId = '',
  Gap? gap,
  List<GuidedCapability> allowed = const [GuidedCapability.DIRECT],
  List<GuidedDisallowedCapability> disallowed = const [],
}) {
  return GuidedStorageTargetUseGap(
    diskId: diskId,
    gap: gap ?? fakeGap(),
    allowed: allowed,
    disallowed: disallowed,
  );
}

GuidedStorageResponseV2 fakeGuidedStorageResponse({
  ProbeStatus status = ProbeStatus.DONE,
  ErrorReportRef? errorReport,
  GuidedChoiceV2? configured,
  List<GuidedStorageTarget> targets = const [],
}) {
  return GuidedStorageResponseV2(
    status: status,
    errorReport: errorReport,
    configured: configured,
    targets: targets,
  );
}

Partition fakePartition({
  int? size,
  int? number,
  bool? preserve,
  String? wipe,
  List<String> annotations = const [],
  String? mount,
  String? format,
  bool? grubDevice,
  bool? boot,
  OsProber? os,
  int? offset,
  int? estimatedMinSize = -1,
  bool? resize,
  String? path,
}) {
  return Partition(
    size: size,
    number: number,
    preserve: preserve,
    wipe: wipe,
    annotations: annotations,
    mount: mount,
    format: format,
    grubDevice: grubDevice,
    boot: boot,
    os: os,
    offset: offset,
    estimatedMinSize: estimatedMinSize,
    resize: resize,
    path: path,
  );
}

StorageResponseV2 fakeStorageResponse({
  ProbeStatus status = ProbeStatus.DONE,
  ErrorReportRef? errorReport,
  List<Disk> disks = const [],
  bool needBoot = false,
  bool needRoot = false,
  int installMinimumSize = 0,
}) {
  return StorageResponseV2(
    status: status,
    errorReport: errorReport,
    disks: disks,
    needBoot: needBoot,
    needRoot: needRoot,
    installMinimumSize: installMinimumSize,
  );
}
