import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/storage/guided_resize/guided_resize_model.dart';
import 'package:ubuntu_bootstrap/pages/storage/guided_resize/guided_resize_widgets.dart';
import 'package:ubuntu_bootstrap/pages/storage/guided_resize/storage_slider_view.dart';
import 'package:ubuntu_bootstrap/pages/storage/storage_model.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';

/// Install alongside other OSes.
class GuidedResizePage extends ConsumerWidget {
  const GuidedResizePage({super.key});

  static Future<bool> load(WidgetRef ref) {
    if (ref.read(storageModelProvider).type != StorageType.alongside) {
      return Future.value(false);
    }

    return ref.read(guidedResizeModelProvider).init();
  }

  static String _formatTitle(BuildContext context, WidgetRef ref) {
    final lang = UbuntuBootstrapLocalizations.of(context);
    final model = ref.read(guidedResizeModelProvider);

    switch (model.existingOS.length) {
      case 0:
        return lang
            .installationTypeAlongsideUnknown(model.productInfo.toString());
      case 1:
        return lang.installationTypeAlongside(
          model.productInfo.toString(),
          model.existingOS.single.long,
        );
      case 2:
        return lang.installationTypeAlongsideDual(
          model.productInfo.toString(),
          model.existingOS.first.long,
          model.existingOS.last.long,
        );
      default:
        return lang
            .installationTypeAlongsideMulti(model.productInfo.toString());
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(guidedResizeModelProvider);
    final lang = UbuntuBootstrapLocalizations.of(context);
    return HorizontalPage(
      windowTitle: _formatTitle(context, ref),
      title:
          lang.guidedStoragePageHeader(ref.watch(flavorProvider).displayName),
      bottomBar: WizardBar(
        leading: const BackWizardButton(),
        trailing: [
          NextWizardButton(
            onNext: model.selectedStorage != null ? model.save : null,
            onReturn: model.reset,
          ),
        ],
      ),
      children: <Widget>[
        StorageSelector(
          count: model.storageCount,
          selectedIndex: model.selectedIndex,
          onSelected: model.selectStorage,
        ),
        const SizedBox(height: 3 * kWizardSpacing),
        if (model.selectedPartition != null)
          SizedBox(
            height: 200,
            child: StorageSliderView(
              currentSize: model.currentSize,
              minimumSize: model.minimumSize,
              maximumSize: model.maximumSize,
              totalSize: model.totalSize,
              partition: model.selectedPartition!,
              existingOS: model.selectedOS,
              productInfo: model.productInfo,
              onResize: model.resizeStorage,
            ),
          ),
      ],
    );
  }
}
