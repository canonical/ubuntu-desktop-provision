import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:subiquity_test/subiquity_test.dart';
import 'package:ubuntu_bootstrap/pages/storage/storage_model.dart';
import 'package:ubuntu_provision/services.dart';

import 'test_storage.dart';

void main() {
  test('init', () async {
    final service = MockStorageService();
    when(service.guidedCapability).thenReturn(GuidedCapability.LVM_LUKS);
    when(service.hasBitLocker()).thenAnswer((_) async => true);
    when(service.getGuidedStorage())
        .thenAnswer((_) async => fakeGuidedStorageResponse());
    when(service.getStorage()).thenAnswer((_) async => []);

    final model = StorageModel(
      service,
      MockTelemetryService(),
      MockProductService(),
      MockSessionService(),
    );
    await model.init();

    expect(model.guidedCapability, GuidedCapability.LVM_LUKS);
    expect(model.hasBitLocker, isTrue);
  });

  test('existing OS', () async {
    const ubuntu2110 = OsProber(
      long: 'Ubuntu 21.10',
      label: 'Ubuntu',
      version: '21.10',
      type: 'linux',
    );
    const ubuntu2204 = OsProber(
      long: 'Ubuntu 22.04 LTS',
      label: 'Ubuntu',
      version: '22.04 LTS',
      type: 'linux',
    );

    final service = MockStorageService();
    when(service.existingOS).thenReturn([ubuntu2110, ubuntu2204]);

    final model = StorageModel(
      service,
      MockTelemetryService(),
      MockProductService(),
      MockSessionService(),
    );
    expect(model.existingOS, equals([ubuntu2110, ubuntu2204]));
  });

  test('notify changes', () {
    final storage = MockStorageService();
    when(storage.guidedCapability).thenReturn(null);

    final model = StorageModel(
      storage,
      MockTelemetryService(),
      MockProductService(),
      MockSessionService(),
    );

    var wasNotified = false;
    model.addListener(() => wasNotified = true);

    wasNotified = false;
    expect(model.type, isNull);
    model.type = StorageType.manual;
    expect(wasNotified, isTrue);

    wasNotified = false;
    model.guidedCapability = GuidedCapability.LVM;
    expect(wasNotified, isTrue);

    wasNotified = false;
    model.guidedCapability = GuidedCapability.LVM_LUKS;
    expect(wasNotified, isTrue);
  });

  test('product info', () {
    final product = MockProductService();
    when(product.getProductInfo())
        .thenReturn(const ProductInfo(name: 'Ubuntu', version: '24.04 LTS'));

    final model = StorageModel(
      MockStorageService(),
      MockTelemetryService(),
      product,
      MockSessionService(),
    );
    expect(model.productInfo.name, 'Ubuntu');
    expect(model.productInfo.version, '24.04 LTS');
  });

  test('save talks to telemetry service', () async {
    final storage = MockStorageService();
    when(storage.hasMultipleDisks).thenReturn(false);
    when(storage.guidedCapability).thenReturn(null);

    final telemetry = MockTelemetryService();
    final model = StorageModel(
      storage,
      telemetry,
      MockProductService(),
      MockSessionService(),
    );
    verifyNever(telemetry.addMetric('PartitionMethod', any));

    model.type = StorageType.erase;
    await model.save();
    verify(telemetry.addMetric('PartitionMethod', 'use_device')).called(1);
    reset(telemetry);

    model.type = StorageType.alongside;
    await model.save();
    verify(telemetry.addMetric('PartitionMethod', 'resize_use_free')).called(1);
    reset(telemetry);

    model.type = StorageType.manual;
    await model.save();
    verify(telemetry.addMetric('PartitionMethod', 'manual')).called(1);
    reset(telemetry);

    model.type = StorageTypeEraseInstall(
      GuidedStorageTargetEraseInstall(
        diskId: 'foo',
        partitionNumber: 1,
      ),
    );
    await model.save();
    verify(telemetry.addMetric('PartitionMethod', 'replace_partition'))
        .called(1);
    reset(telemetry);

    when(storage.guidedCapability).thenReturn(GuidedCapability.LVM);
    await model.save();
    verify(telemetry.addMetric('PartitionMethod', 'use_lvm')).called(1);
    reset(telemetry);

    when(storage.guidedCapability).thenReturn(GuidedCapability.ZFS);
    await model.save();
    verify(telemetry.addMetric('PartitionMethod', 'use_zfs')).called(1);
    reset(telemetry);

    when(storage.guidedCapability).thenReturn(GuidedCapability.LVM_LUKS);
    await model.save();
    verify(telemetry.addMetric('PartitionMethod', 'use_crypto')).called(1);
    reset(telemetry);
  });

  test('set lvm', () {
    final storage = MockStorageService();
    when(storage.hasMultipleDisks).thenReturn(false);
    when(storage.guidedCapability).thenReturn(null);

    final model = StorageModel(
      storage,
      MockTelemetryService(),
      MockProductService(),
      MockSessionService(),
    );

    model.guidedCapability = GuidedCapability.LVM;
    verify(storage.guidedCapability = GuidedCapability.LVM).called(1);

    model.guidedCapability = GuidedCapability.LVM_LUKS;
    verify(storage.guidedCapability = GuidedCapability.LVM_LUKS).called(1);
  });

  test('DD images only allow to erase disk, nothing else', () async {
    // reformat
    const reformat = GuidedStorageTargetReformat(
      diskId: '',
      allowed: [
        GuidedCapability.DD,
        GuidedCapability.LVM,
        GuidedCapability.CORE_BOOT_ENCRYPTED,
        GuidedCapability.MANUAL,
      ],
    );

    final service = MockStorageService();
    when(service.guidedCapability).thenReturn(null);
    when(service.hasBitLocker()).thenAnswer((_) async => false);
    when(service.getStorage()).thenAnswer((_) async => []);
    when(service.guidedTarget).thenReturn(reformat);

    final model = StorageModel(
      service,
      MockTelemetryService(),
      MockProductService(),
      MockSessionService(),
    );

    // none
    when(service.getGuidedStorage())
        .thenAnswer((_) async => fakeGuidedStorageResponse());
    when(service.getGuidedStorage()).thenAnswer(
      (_) async => fakeGuidedStorageResponse(targets: [reformat]),
    );
    await model.init();

    expect(model.canInstallAlongside, isFalse);
    expect(model.canEraseDisk, isTrue);
    expect(model.canManualPartition, isFalse);
    expect(model.hasAdvancedFeatures, isFalse);
  });

  test('can install alongside, erase disk, erase install, manual partition',
      () async {
    final service = MockStorageService();
    when(service.guidedCapability).thenReturn(null);
    when(service.hasBitLocker()).thenAnswer((_) async => false);
    when(service.getStorage()).thenAnswer((_) async => []);

    final model = StorageModel(
      service,
      MockTelemetryService(),
      MockProductService(),
      MockSessionService(),
    );

    // none
    when(service.getGuidedStorage())
        .thenAnswer((_) async => fakeGuidedStorageResponse());
    await model.init();
    expect(model.canInstallAlongside, isFalse);
    expect(model.canEraseDisk, isFalse);
    expect(model.canEraseAndInstall, isFalse);
    expect(model.canManualPartition, isFalse);

    // reformat
    const reformat = GuidedStorageTargetReformat(
      diskId: '',
      allowed: [GuidedCapability.LVM],
    );
    when(service.getGuidedStorage()).thenAnswer(
      (_) async => fakeGuidedStorageResponse(targets: [reformat]),
    );
    await model.init();
    expect(model.canInstallAlongside, isFalse);
    expect(model.canEraseDisk, isTrue);
    expect(model.canEraseAndInstall, isFalse);
    expect(model.canManualPartition, isFalse);

    // resize
    const resize = GuidedStorageTargetResize(
      diskId: '',
      partitionNumber: 0,
      newSize: 0,
      maximum: 0,
      minimum: 0,
      recommended: 0,
      allowed: [GuidedCapability.LVM],
    );
    when(service.getGuidedStorage())
        .thenAnswer((_) async => fakeGuidedStorageResponse(targets: [resize]));
    await model.init();
    expect(model.canInstallAlongside, isTrue);
    expect(model.canEraseDisk, isFalse);
    expect(model.canEraseAndInstall, isFalse);
    expect(model.canManualPartition, isFalse);

    // gap
    const gap = GuidedStorageTargetUseGap(
      diskId: '',
      gap: Gap(offset: 0, size: 0, usable: GapUsable.YES),
      allowed: [GuidedCapability.LVM],
    );
    when(service.getGuidedStorage())
        .thenAnswer((_) async => fakeGuidedStorageResponse(targets: [gap]));
    await model.init();
    expect(model.canInstallAlongside, isTrue);
    expect(model.canEraseDisk, isFalse);
    expect(model.canEraseAndInstall, isFalse);
    expect(model.canManualPartition, isFalse);

    // erase and install
    const eraseInstall = GuidedStorageTargetEraseInstall(
      diskId: 'sda',
      partitionNumber: 1,
      allowed: [GuidedCapability.LVM],
    );
    when(service.getGuidedStorage()).thenAnswer(
      (_) async => fakeGuidedStorageResponse(targets: [eraseInstall]),
    );
    when(service.getStorage()).thenAnswer(
      (_) async => [
        Disk(
          id: 'sda',
          label: '',
          type: '',
          size: 0,
          usageLabels: [],
          partitions: [Partition(number: 1)],
          okForGuided: true,
          ptable: '',
          preserve: true,
          path: '',
          bootDevice: false,
          canBeBootDevice: true,
        ),
      ],
    );

    await model.init();
    expect(model.canInstallAlongside, isFalse);
    expect(model.canEraseDisk, isFalse);
    expect(model.canEraseAndInstall, isTrue);
    expect(model.canManualPartition, isFalse);

    // manual
    const manual = GuidedStorageTargetManual(
      allowed: [GuidedCapability.MANUAL],
    );
    when(service.getGuidedStorage())
        .thenAnswer((_) async => fakeGuidedStorageResponse(targets: [manual]));
    await model.init();
    expect(model.canInstallAlongside, isFalse);
    expect(model.canEraseDisk, isFalse);
    expect(model.canEraseAndInstall, isFalse);
    expect(model.canManualPartition, isTrue);

    // all
    when(service.getGuidedStorage()).thenAnswer(
      (_) async =>
          fakeGuidedStorageResponse(targets: [reformat, resize, gap, manual]),
    );
    await model.init();
    expect(model.canInstallAlongside, isTrue);
    expect(model.canEraseDisk, isTrue);
    expect(model.canEraseAndInstall, isFalse);
    expect(model.canManualPartition, isTrue);
  });

  test('reset storage', () async {
    final service = MockStorageService();
    when(service.resetStorage()).thenAnswer((_) async => []);

    final model = StorageModel(
      service,
      MockTelemetryService(),
      MockProductService(),
      MockSessionService(),
    );
    await model.resetStorage();
    verify(service.resetStorage()).called(1);
  });
}
