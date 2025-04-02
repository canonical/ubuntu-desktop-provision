import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/pages/confirm/confirm_model.dart';
import 'package:ubuntu_bootstrap/pages/confirm/confirm_page.dart';
import 'package:ubuntu_bootstrap/pages/source/source_model.dart';
import 'package:ubuntu_bootstrap/pages/storage/storage_model.dart';
import 'package:ubuntu_bootstrap/services.dart';
import 'package:ubuntu_provision/services.dart';

import '../autoinstall/test_autoinstall.dart';
import '../test_utils.dart';
import 'test_confirm.mocks.dart';

export '../test_utils.dart';
export 'test_confirm.mocks.dart';

@GenerateMocks([ConfirmModel])
ConfirmModel buildConfirmModel({
  List<Disk>? disks,
  List<Disk>? modifiedDisks,
  Map<String, List<Partition>>? partitions,
  Map<String, List<Partition>>? originals,
  GuidedStorageTarget? guidedTarget,
  GuidedCapability? guidedCapability,
  ProductInfo? productInfo,
  List<OsProber>? existingOS,
  bool? hasBitLocker,
}) {
  final model = MockConfirmModel();
  when(model.disks).thenReturn(disks ?? <Disk>[]);
  when(model.modifiedDisks).thenReturn(modifiedDisks ?? disks ?? <Disk>[]);
  when(model.partitions).thenReturn(partitions ?? <String, List<Partition>>{});
  when(model.getOriginalPartition(any, any)).thenAnswer(
    (i) => originals?[i.positionalArguments.first]?.firstWhereOrNull(
      (p) => p.number == i.positionalArguments.last as int,
    ),
  );
  when(model.guidedTarget).thenReturn(
    guidedTarget ?? const GuidedStorageTargetReformat(diskId: 'diskId'),
  );
  when(model.guidedCapability)
      .thenReturn(guidedCapability ?? GuidedCapability.DIRECT);
  when(model.productInfo).thenReturn(
    productInfo ?? const ProductInfo(name: 'Ubuntu', version: '24.04 LTS'),
  );
  when(model.existingOS).thenReturn(existingOS);
  when(model.hasBitLocker).thenReturn(hasBitLocker ?? false);
  return model;
}

Widget buildConfirmPage({
  required ConfirmModel confirm,
  required StorageModel storage,
  required SourceModel source,
}) {
  final udev = MockUdevService();
  final sda = MockUdevDeviceInfo();
  when(sda.modelName).thenReturn('SDA');
  when(sda.vendorName).thenReturn('ATA');
  when(udev.bySysname('sda')).thenReturn(sda);
  final sdb = MockUdevDeviceInfo();
  when(sdb.modelName).thenReturn('SDB');
  when(sdb.vendorName).thenReturn('ATA');
  when(udev.bySysname('sdb')).thenReturn(sdb);

  registerMockAutoinstallService();
  registerMockService<UdevService>(udev);

  return ProviderScope(
    overrides: [
      confirmModelProvider.overrideWith((_) => confirm),
      storageModelProvider.overrideWith((_) => storage),
      sourceModelProvider.overrideWith((_) => source),
    ],
    child: const ConfirmPage(),
  );
}
