import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/storage/manual/manual_storage_model.dart';
import 'package:ubuntu_bootstrap/pages/storage/manual/storage_types.dart';
import 'package:ubuntu_bootstrap/widgets.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_widgets/ubuntu_widgets.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

const _inputFieldWidth = 400.0;
const _validMountPointPattern = r'^(/\S*|)$';

/// Shows a dialog for creating a new partition for the given [disk].
Future<void> showCreatePartitionDialog(
  BuildContext context,
  Disk disk,
  Gap gap,
) {
  return showDialog(
    context: context,
    builder: (context) {
      final partitionUnit = ValueNotifier(DataUnit.megabytes);
      final partitionSize = ValueNotifier(gap.size);
      final partitionFormat =
          ValueNotifier<PartitionFormat?>(PartitionFormat.defaultValue);
      final partitionMount = ValueNotifier<String?>(null);

      final lang = UbuntuBootstrapLocalizations.of(context);
      return Consumer(builder: (context, ref, child) {
        final model = ref.read(manualStorageModelProvider);
        return AlertDialog(
          title: YaruDialogTitleBar(
            title: Text(lang.partitionCreateTitle),
          ),
          titlePadding: EdgeInsets.zero,
          contentPadding: const EdgeInsets.all(kYaruPagePadding),
          actionsPadding: const EdgeInsets.all(kYaruPagePadding),
          buttonPadding: EdgeInsets.zero,
          scrollable: true,
          content: FormLayout(
            rowSpacing: kWizardSpacing,
            columnSpacing: kWizardSpacing,
            rows: [
              [
                Text(lang.partitionSizeLabel, textAlign: TextAlign.end),
                ListenableBuilder(
                  listenable: Listenable.merge([
                    partitionSize,
                    partitionUnit,
                  ]),
                  builder: (context, child) {
                    return StorageSizeBox(
                      size: partitionSize.value,
                      unit: partitionUnit.value,
                      maximum: gap.size,
                      onSizeChanged: (v) => partitionSize.value = v,
                      onUnitSelected: (v) => partitionUnit.value = v,
                    );
                  },
                )
              ],
              [
                Text(lang.partitionFormatLabel, textAlign: TextAlign.end),
                ValueListenableBuilder(
                  valueListenable: partitionFormat,
                  builder: (context, value, child) {
                    return MenuButtonBuilder<PartitionFormat?>(
                      entries: [
                        ...PartitionFormat.supported
                            .map((f) => MenuButtonEntry(value: f)),
                        const MenuButtonEntry(value: null, isDivider: true),
                        const MenuButtonEntry(value: PartitionFormat.swap),
                        const MenuButtonEntry(value: null, isDivider: true),
                        const MenuButtonEntry(value: PartitionFormat.none),
                      ],
                      selected: partitionFormat.value,
                      onSelected: (format) => partitionFormat.value = format,
                      itemBuilder: (context, format, child) => Text(
                        format?.displayName ?? lang.partitionFormatNone,
                        key: ValueKey(format?.type),
                      ),
                    );
                  },
                ),
              ],
              [
                Text(lang.partitionMountPointLabel, textAlign: TextAlign.end),
                _PartitionMountField(
                  partitionFormat: partitionFormat,
                  partitionMount: partitionMount,
                ),
              ],
            ],
          ),
          actions: [
            PushButton.outlined(
              onPressed: Navigator.of(context).pop,
              child: Text(UbuntuLocalizations.of(context).cancelLabel),
            ),
            const SizedBox(width: kWizardBarSpacing),
            ValueListenableBuilder(
                valueListenable: partitionMount,
                builder: (context, value, child) {
                  return PushButton.filled(
                    onPressed: RegExp(_validMountPointPattern)
                            .hasMatch(partitionMount.value ?? '')
                        ? () {
                            model.addPartition(
                              disk,
                              gap,
                              size: mibiAlign(
                                partitionSize.value,
                                gap.size,
                              ),
                              format: partitionFormat.value,
                              mount: partitionMount.value,
                            );
                            Navigator.of(context).pop();
                          }
                        : null,
                    child: Text(UbuntuLocalizations.of(context).okLabel),
                  );
                }),
          ],
        );
      });
    },
  );
}

/// Shows a dialog for editing an existing partition on the given [disk].
Future<void> showEditPartitionDialog(
  BuildContext context,
  Disk disk,
  Partition partition,
  Partition? originalPartition,
  Gap? gap,
) {
  return showDialog(
    context: context,
    builder: (context) {
      final partitionSize = ValueNotifier(partition.size ?? 0);
      final partitionUnit = ValueNotifier(DataUnit.megabytes);
      final partitionFormat = ValueNotifier<PartitionFormat?>(
        (partition.preserve ?? false) && !partition.isWiped
            ? null
            : PartitionFormat.fromPartition(partition),
      );
      final partitionMount = ValueNotifier(partition.mount);

      final lang = UbuntuBootstrapLocalizations.of(context);
      return Consumer(builder: (context, ref, child) {
        final model = ref.read(manualStorageModelProvider);
        return AlertDialog(
          title: YaruDialogTitleBar(
            title: Text(lang.partitionEditTitle),
          ),
          titlePadding: EdgeInsets.zero,
          contentPadding: const EdgeInsets.all(kYaruPagePadding),
          actionsPadding: const EdgeInsets.all(kYaruPagePadding),
          buttonPadding: EdgeInsets.zero,
          scrollable: true,
          content: FormLayout(
            rowSpacing: kWizardSpacing,
            columnSpacing: kWizardSpacing,
            rows: [
              [
                Text(lang.partitionSizeLabel, textAlign: TextAlign.end),
                ListenableBuilder(
                  listenable: Listenable.merge([
                    partitionSize,
                    partitionUnit,
                  ]),
                  builder: (context, child) {
                    return StorageSizeBox(
                      size: partitionSize.value,
                      unit: partitionUnit.value,
                      minimum: partition.estimatedMinSize ?? 0,
                      maximum: (partition.size ?? 0) + (gap?.size ?? 0),
                      onSizeChanged: (v) => partitionSize.value = v,
                      onUnitSelected: (v) => partitionUnit.value = v,
                    );
                  },
                )
              ],
              [
                Text(lang.partitionFormatLabel, textAlign: TextAlign.end),
                ValueListenableBuilder(
                  valueListenable: partitionFormat,
                  builder: (context, value, child) {
                    final configFormat = originalPartition != null
                        ? PartitionFormat.fromPartition(originalPartition)
                        : null;
                    return MenuButtonBuilder<PartitionFormat?>(
                      entries: [
                        if (partition.preserve ?? false) ...[
                          const MenuButtonEntry(value: null),
                          const MenuButtonEntry(value: null, isDivider: true),
                        ],
                        ...PartitionFormat.supported
                            .map((f) => MenuButtonEntry(value: f)),
                        const MenuButtonEntry(value: null, isDivider: true),
                        const MenuButtonEntry(value: PartitionFormat.swap),
                        if ((partition.preserve ?? false) != true) ...[
                          const MenuButtonEntry(value: null, isDivider: true),
                          const MenuButtonEntry(value: PartitionFormat.none),
                        ],
                      ],
                      selected: partitionFormat.value,
                      onSelected: (format) => partitionFormat.value = format,
                      itemBuilder: (context, format, child) => Text(
                        format?.displayName ??
                            (configFormat?.displayName != null
                                ? lang.partitionFormatKeep(
                                    configFormat!.displayName!,
                                  )
                                : lang.partitionFormatNone),
                        key: ValueKey(format?.type),
                      ),
                      child: Text(
                        partitionFormat.value?.displayName ??
                            (configFormat?.displayName != null
                                ? lang.partitionFormatKeep(
                                    configFormat!.displayName!,
                                  )
                                : lang.partitionFormatNone),
                        key: ValueKey(
                          partitionFormat.value?.type,
                        ),
                      ),
                    );
                  },
                ),
              ],
              [
                Text(lang.partitionMountPointLabel, textAlign: TextAlign.end),
                _PartitionMountField(
                  initialMount: partition.mount,
                  partitionFormat: partitionFormat,
                  originalPartition: originalPartition,
                  partitionMount: partitionMount,
                ),
              ],
            ],
          ),
          actions: [
            PushButton.outlined(
              onPressed: Navigator.of(context).pop,
              child: Text(UbuntuLocalizations.of(context).cancelLabel),
            ),
            const SizedBox(width: kWizardBarSpacing),
            ValueListenableBuilder(
                valueListenable: partitionMount,
                builder: (context, value, child) {
                  return PushButton.filled(
                    onPressed: RegExp(_validMountPointPattern)
                            .hasMatch(partitionMount.value ?? '')
                        ? () {
                            model.editPartition(
                              disk,
                              partition,
                              size: partitionSize.value,
                              format: partitionFormat.value,
                              mount: partitionMount.value,
                              wipe: partitionFormat.value != null &&
                                  partitionFormat.value != PartitionFormat.none,
                            );
                            Navigator.of(context).pop();
                          }
                        : null,
                    child: Text(UbuntuLocalizations.of(context).okLabel),
                  );
                }),
          ],
        );
      });
    },
  );
}

class _PartitionMountField extends StatelessWidget {
  const _PartitionMountField({
    required this.partitionFormat,
    required this.partitionMount,
    this.originalPartition,
    this.initialMount,
  });

  final String? initialMount;
  final ValueNotifier<PartitionFormat?> partitionFormat;
  final ValueNotifier<String?> partitionMount;
  final Partition? originalPartition;

  @override
  Widget build(BuildContext context) {
    final lang = UbuntuBootstrapLocalizations.of(context);
    return SizedBox(
      width: _inputFieldWidth,
      child: ValueListenableBuilder<PartitionFormat?>(
        valueListenable: partitionFormat,
        builder: (context, format, child) {
          return YaruAutocomplete<String>(
            initialValue: initialMount != null
                ? TextEditingValue(text: initialMount!)
                : null,
            optionsBuilder: (value) => DefaultMountPoint.paths()
                .where((path) => path.startsWith(value.text)),
            onSelected: (option) {
              if (option != DefaultMountPoint.home.path) {
                partitionFormat.value = partitionFormat.value ??
                    (originalPartition != null
                        ? PartitionFormat.fromPartition(originalPartition!)
                        : null);
              }
              partitionMount.value = option;
            },
            fieldViewBuilder:
                (context, textEditingController, focusNode, onFieldSubmitted) {
              return TextFormField(
                enabled: format != PartitionFormat.none &&
                    format != PartitionFormat.swap,
                controller: textEditingController,
                focusNode: focusNode,
                onChanged: (value) => partitionMount.value = value,
                onFieldSubmitted: (_) => onFieldSubmitted(),
                autovalidateMode: AutovalidateMode.always,
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return null;
                  } else if (!value!.startsWith('/')) {
                    return lang.allocateDiskSpaceInvalidMountPointSlash;
                  } else if (value.contains(' ')) {
                    return lang.allocateDiskSpaceInvalidMountPointSpace;
                  } else {
                    return null;
                  }
                },
              );
            },
          );
        },
      ),
    );
  }
}
