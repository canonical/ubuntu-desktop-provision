import 'package:flutter/material.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/storage/guided_resize/storage_icon.dart';
import 'package:ubuntu_bootstrap/widgets/storage_size_box.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

class StorageSliderView extends StatefulWidget {
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
  State<StorageSliderView> createState() => _StorageSliderViewState();
}

class _StorageSliderViewState extends State<StorageSliderView> {
  DataUnit unit = DataUnit.gigabytes;

  @override
  Widget build(BuildContext context) {
    final lang = UbuntuBootstrapLocalizations.of(context);
    return Column(
      children: [
        Row(
          children: [
            Text(
              context.formatByteSize(
                widget.totalSize - widget.maximumSize,
                precision: 1,
              ),
            ),
            Expanded(
              child: Slider(
                divisions: 9,
                min: (widget.totalSize - widget.maximumSize).toDouble(),
                max: (widget.totalSize - widget.minimumSize).toDouble(),
                value: (widget.totalSize - widget.currentSize).toDouble(),
                onChanged: (value) =>
                    widget.onResize(widget.totalSize - value.toInt()),
                label: context.formatByteSize(
                  widget.totalSize - widget.currentSize,
                  precision: 1,
                ),
              ),
            ),
            Text(
              context.formatByteSize(
                widget.totalSize - widget.minimumSize,
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
                      name: widget.productInfo.toString(),
                      useCustomIcon: true,
                    ),
                  ),
                  const SizedBox(width: kWizardBarSpacing),
                  Text(
                    widget.productInfo.toString(),
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(width: kWizardSpacing / 2),
                  const Spacer(),
                  IntrinsicWidth(
                    child: StorageTextBox(
                      key: ValueKey((widget.currentSize, unit)),
                      minimum: widget.totalSize - widget.maximumSize,
                      maximum: widget.totalSize - widget.minimumSize,
                      size: widget.totalSize - widget.currentSize,
                      onSizeChanged: (size) =>
                          widget.onResize(widget.totalSize - size),
                      unit: unit,
                      onUnitSelected: (newUnit) {
                        setState(() => unit = newUnit);
                      },
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
                      name:
                          widget.existingOS?.long ?? lang.installAlongsideFiles,
                    ),
                  ),
                  const SizedBox(width: kWizardBarSpacing),
                  Text(
                    widget.existingOS?.long ?? lang.installAlongsideFiles,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(width: kWizardSpacing),
                  Chip(
                    label: Text(widget.partition.sysname),
                    shape: const StadiumBorder(),
                  ),
                  const Spacer(),
                  Text(
                    context.formatByteSize(
                      widget.currentSize,
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
