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

    final configService = MockConfigService();
    when(configService.provisioningMode)
        .thenAnswer((_) async => ProvisioningMode.standard);

    final model = StorageModel(
      service,
      MockTelemetryService(),
      MockProductService(),
      configService,
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

    final configService = MockConfigService();
    when(configService.provisioningMode)
        .thenAnswer((_) async => ProvisioningMode.standard);

    final model = StorageModel(
      service,
      MockTelemetryService(),
      MockProductService(),
      configService,
    );
    expect(model.existingOS, equals([ubuntu2110, ubuntu2204]));
  });

  test('notify changes', () {
    final storage = MockStorageService();
    when(storage.guidedCapability).thenReturn(null);

    final configService = MockConfigService();
    when(configService.provisioningMode)
        .thenAnswer((_) async => ProvisioningMode.standard);

    final model = StorageModel(
      storage,
      MockTelemetryService(),
      MockProductService(),
      configService,
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

    final configService = MockConfigService();
    when(configService.provisioningMode)
        .thenAnswer((_) async => ProvisioningMode.standard);

    final model = StorageModel(
      MockStorageService(),
      MockTelemetryService(),
      product,
      configService,
    );
    expect(model.productInfo.name, 'Ubuntu');
    expect(model.productInfo.version, '24.04 LTS');
  });

  test('save talks to telemetry service', () async {
    final storage = MockStorageService();
    when(storage.hasMultipleDisks).thenReturn(false);
    when(storage.guidedCapability).thenReturn(null);

    final telemetry = MockTelemetryService();

    final configService = MockConfigService();
    when(configService.provisioningMode)
        .thenAnswer((_) async => ProvisioningMode.standard);

    final model = StorageModel(
      storage,
      telemetry,
      MockProductService(),
      configService,
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

    final configService = MockConfigService();
    when(configService.provisioningMode)
        .thenAnswer((_) async => ProvisioningMode.standard);

    final model = StorageModel(
      storage,
      MockTelemetryService(),
      MockProductService(),
      configService,
    );

    model.guidedCapability = GuidedCapability.LVM;
    verify(storage.guidedCapability = GuidedCapability.LVM).called(1);

    model.guidedCapability = GuidedCapability.LVM_LUKS;
    verify(storage.guidedCapability = GuidedCapability.LVM_LUKS).called(1);
  });

  test('Core Desktop only allows to erase disk, nothing else', () async {
    final service = MockStorageService();
    when(service.guidedCapability).thenReturn(null);
    when(service.hasBitLocker()).thenAnswer((_) async => false);

    final configService = MockConfigService();
    when(configService.provisioningMode)
        .thenAnswer((_) async => ProvisioningMode.coreDesktop);

    final model = StorageModel(
      service,
      MockTelemetryService(),
      MockProductService(),
      configService,
    );

    // none
    when(service.getGuidedStorage())
        .thenAnswer((_) async => fakeGuidedStorageResponse());
    // reformat
    const reformat = GuidedStorageTargetReformat(
      diskId: '',
      allowed: [GuidedCapability.LVM, GuidedCapability.DIRECT],
    );
    when(service.getGuidedStorage()).thenAnswer(
        (_) async => fakeGuidedStorageResponse(targets: [reformat]));
    await model.init();

    expect(model.canInstallAlongside, isFalse);
    expect(model.canEraseDisk, isTrue);
    expect(model.canManualPartition, isFalse);
    expect(model.hasAdvancedFeatures, isFalse);
  });

  test('can install alongside, erase disk, manual partition', () async {
    final service = MockStorageService();
    when(service.guidedCapability).thenReturn(null);
    when(service.hasBitLocker()).thenAnswer((_) async => false);

    final configService = MockConfigService();
    when(configService.provisioningMode)
        .thenAnswer((_) async => ProvisioningMode.standard);

    final model = StorageModel(
      service,
      MockTelemetryService(),
      MockProductService(),
      configService,
    );

    // none
    when(service.getGuidedStorage())
        .thenAnswer((_) async => fakeGuidedStorageResponse());
    await model.init();
    expect(model.canInstallAlongside, isFalse);
    expect(model.canEraseDisk, isFalse);
    expect(model.canManualPartition, isFalse);

    // reformat
    const reformat = GuidedStorageTargetReformat(
      diskId: '',
      allowed: [GuidedCapability.LVM],
    );
    when(service.getGuidedStorage()).thenAnswer(
        (_) async => fakeGuidedStorageResponse(targets: [reformat]));
    await model.init();
    expect(model.canInstallAlongside, isFalse);
    expect(model.canEraseDisk, isTrue);
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
    expect(model.canManualPartition, isTrue);

    // all
    when(service.getGuidedStorage()).thenAnswer((_) async =>
        fakeGuidedStorageResponse(targets: [reformat, resize, gap, manual]));
    await model.init();
    expect(model.canInstallAlongside, isTrue);
    expect(model.canEraseDisk, isTrue);
    expect(model.canManualPartition, isTrue);
  });

  test('reset storage', () async {
    final service = MockStorageService();
    when(service.resetStorage()).thenAnswer((_) async => []);

    final configService = MockConfigService();
    when(configService.provisioningMode)
        .thenAnswer((_) async => ProvisioningMode.standard);

    final model = StorageModel(
      service,
      MockTelemetryService(),
      MockProductService(),
      configService,
    );
    await model.resetStorage();
    verify(service.resetStorage()).called(1);
  });

  test('capabilities', () async {
    final storage = MockStorageService();

    GuidedCapability? capability;
    when(storage.guidedCapability).thenReturn(null);
    when(storage.guidedCapability = any).thenAnswer((i) {
      capability = i.positionalArguments.single as GuidedCapability?;
    });
    when(storage.hasBitLocker()).thenAnswer((_) async => false);

    final configService = MockConfigService();
    when(configService.provisioningMode)
        .thenAnswer((_) async => ProvisioningMode.standard);

    final model = StorageModel(
      storage,
      MockTelemetryService(),
      MockProductService(),
      configService,
    );

    when(storage.getGuidedStorage())
        .thenAnswer((_) async => fakeGuidedStorageResponse());
    await model.init();
    expect(capability, isNull);
    expect(model.hasDirect, isFalse);
    expect(model.hasLvm, isFalse);
    expect(model.hasZfs, isFalse);
    expect(model.hasTpm, isFalse);

    when(storage.getGuidedStorage())
        .thenAnswer((_) async => fakeGuidedStorageResponse(targets: [
              fakeGuidedStorageTargetReformat(allowed: [
                GuidedCapability.DIRECT,
                GuidedCapability.LVM,
                GuidedCapability.LVM_LUKS,
                GuidedCapability.ZFS,
              ]),
            ]));
    await model.init();
    expect(capability, GuidedCapability.DIRECT);
    expect(model.hasDirect, isTrue);
    expect(model.hasLvm, isTrue);
    expect(model.hasZfs, isTrue);
    expect(model.hasTpm, isFalse);

    when(storage.getGuidedStorage())
        .thenAnswer((_) async => fakeGuidedStorageResponse(targets: [
              fakeGuidedStorageTargetReformat(allowed: [
                GuidedCapability.CORE_BOOT_ENCRYPTED,
              ]),
            ]));
    await model.init();
    expect(capability, GuidedCapability.CORE_BOOT_ENCRYPTED);
    expect(model.hasDirect, isFalse);
    expect(model.hasLvm, isFalse);
    expect(model.hasZfs, isFalse);
    expect(model.hasTpm, isTrue);
  });
}
