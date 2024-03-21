import 'package:flutter/material.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/storage/guided_resize/storage_icon.dart';
import 'package:ubuntu_bootstrap/widgets/storage_size_box.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

class StorageSliderView extends StatelessWidget {
  const StorageSliderView({
    required this.currentSize,
    required this.minimumSize,
    required this.maximumSize,
    required this.totalSize,
    required this.partition,
    required this.existingOS,
    required this.productInfo,
    required this.onResize,
    super.key,
  });

  final int currentSize;
  final int minimumSize;
  final int maximumSize;
  final int totalSize;
  final Partition partition;
  final OsProber? existingOS;
  final ProductInfo productInfo;
  final ValueChanged<int> onResize;

  @override
  Widget build(BuildContext context) {
    final lang = UbuntuBootstrapLocalizations.of(context);
    return Column(
      children: [
        Row(
          children: [
            Text(
              context.formatByteSize(
                totalSize - maximumSize,
                precision: 1,
              ),
            ),
            Expanded(
              child: Slider(
                divisions: 9,
                min: (totalSize - maximumSize).toDouble(),
                max: (totalSize - minimumSize).toDouble(),
                value: (totalSize - currentSize).toDouble(),
                onChanged: (value) => onResize(totalSize - value.toInt()),
                label: context.formatByteSize(
                  totalSize - currentSize,
                  precision: 1,
                ),
              ),
            ),
            Text(
              context.formatByteSize(
                totalSize - minimumSize,
                precision: 1,
              ),
            ),
          ],
        ),
        const SizedBox(height: kWizardSpacing / 2),
        YaruBorderContainer(
          padding: kWizardTilePadding,
          borderRadius: kWizardBorderRadius,
          color: Theme.of(context).colorScheme.primaryContainer,
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox.square(
                    dimension: 32,
                    child: StorageIcon(
                      name: productInfo.toString(),
                      useCustomIcon: true,
                    ),
                  ),
                  const SizedBox(width: kWizardBarSpacing),
                  Text(
                    productInfo.toString(),
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(width: kWizardSpacing / 2),
                  const Spacer(),
                  IntrinsicWidth(
                    child: StorageTextBox(
                      key: ValueKey(currentSize),
                      minimum: totalSize - maximumSize,
                      maximum: totalSize - minimumSize,
                      size: totalSize - currentSize,
                      onSizeChanged: (size) => onResize(totalSize - size),
                      unit: DataUnit.gigabytes,
                      onUnitSelected: (_) {},
                    ),
                  ),
                ],
              ),
              const SizedBox(height: kWizardSpacing / 2),
              Row(
                children: [
                  SizedBox.square(
                    dimension: 32,
                    child: StorageIcon(
                      name: existingOS?.long ?? lang.installAlongsideFiles,
                    ),
                  ),
                  const SizedBox(width: kWizardBarSpacing),
                  Text(
                    existingOS?.long ?? lang.installAlongsideFiles,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const Spacer(),
                  Text(
                    context.formatByteSize(
                      currentSize,
                      precision: 1,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
