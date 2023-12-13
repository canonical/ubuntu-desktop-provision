import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_bootstrap/installer.dart';
import 'package:ubuntu_bootstrap/pages/storage/bitlocker/bitlocker_page.dart';
import 'package:ubuntu_bootstrap/pages/storage/guided_reformat/guided_reformat_page.dart';
import 'package:ubuntu_bootstrap/pages/storage/guided_resize/guided_resize_page.dart';
import 'package:ubuntu_bootstrap/pages/storage/manual/manual_storage_page.dart';
import 'package:ubuntu_bootstrap/pages/storage/recovery_key/recovery_key_page.dart';
import 'package:ubuntu_bootstrap/pages/storage/security_key/security_key_page.dart';
import 'package:ubuntu_bootstrap/pages/storage/storage_model.dart';
import 'package:ubuntu_bootstrap/pages/storage/storage_page.dart';
import 'package:ubuntu_bootstrap/pages/storage/storage_routes.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';

export 'bitlocker/bitlocker_page.dart';
export 'guided_reformat/guided_reformat_page.dart';
export 'guided_resize/guided_resize_page.dart';
export 'manual/manual_storage_page.dart';
export 'recovery_key/recovery_key_page.dart';
export 'security_key/security_key_page.dart';
export 'storage_page.dart';
export 'storage_routes.dart';

class StorageWizard extends ConsumerWidget {
  const StorageWizard({super.key});

  static Future<bool> load(WidgetRef ref) {
    return StoragePage.load(ref);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final type = ref.watch(storageModelProvider.select((m) => m.type));

    final routes = {
      Navigator.defaultRouteName: WizardRoute(
        builder: (_) => const StoragePage(),
        userData: WizardRouteData(step: InstallationStep.type.index),
      ),
      if (type != StorageType.manual)
        StorageRoutes.bitlocker: WizardRoute(
          builder: (_) => const BitLockerPage(),
          onLoad: (_) => BitLockerPage.load(ref),
        ),
      if (type == StorageType.erase)
        StorageRoutes.guidedReformat: WizardRoute(
          builder: (_) => const GuidedReformatPage(),
          userData: WizardRouteData(step: InstallationStep.storage.index),
          onLoad: (_) => GuidedReformatPage.load(ref),
          onReplace: (_) => StorageRoutes.manual,
        ),
      if (type == StorageType.alongside)
        StorageRoutes.guidedResize: WizardRoute(
          builder: (_) => const GuidedResizePage(),
          userData: WizardRouteData(step: InstallationStep.storage.index),
          onLoad: (_) => GuidedResizePage.load(ref),
          onReplace: (_) => StorageRoutes.manual,
        ),
      if (type == StorageType.manual)
        StorageRoutes.manual: WizardRoute(
          builder: (_) => const ManualStoragePage(),
          userData: WizardRouteData(step: InstallationStep.storage.index),
          onLoad: (_) => ManualStoragePage.load(ref),
        ),
      if (type != StorageType.manual)
        StorageRoutes.securityKey: WizardRoute(
          builder: (_) => const SecurityKeyPage(),
          userData: WizardRouteData(step: InstallationStep.storage.index),
          onLoad: (_) => SecurityKeyPage.load(ref),
        ),
      if (type != StorageType.manual)
        StorageRoutes.recoveryKey: WizardRoute(
          builder: (_) => const RecoveryKeyPage(),
          userData: WizardRouteData(step: InstallationStep.storage.index),
          onLoad: (_) => RecoveryKeyPage.load(ref),
        ),
    };

    return Wizard(
      key: ValueKey(type),
      userData: WizardData(totalSteps: InstallationStep.values.length),
      routes: routes,
    );
  }
}
