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
      return Consumer(
        builder: (context, ref, child) {
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
                        unitSemanticLabel: lang.partitionSizeLabel,
                      );
                    },
                  ),
                ],
                [
                  Text(lang.partitionFormatLabel, textAlign: TextAlign.end),
                  ValueListenableBuilder(
                    valueListenable: partitionFormat,
                    builder: (context, value, child) {
                      final selectedFormatLabel = _partitionFormatLabel(
                        lang,
                        selectedFormat: partitionFormat.value,
                      );
                      return Semantics(
                        label: lang.partitionFormatLabel,
                        value: selectedFormatLabel,
                        button: true,
                        child: MenuButtonBuilder<PartitionFormat?>(
                          entries: [
                            ...PartitionFormat.supported
                                .map((f) => MenuButtonEntry(value: f)),
                            const MenuButtonEntry(value: null, isDivider: true),
                            const MenuButtonEntry(value: PartitionFormat.swap),
                            const MenuButtonEntry(value: null, isDivider: true),
                            const MenuButtonEntry(value: PartitionFormat.none),
                          ],
                          selected: partitionFormat.value,
                          onSelected: (format) =>
                              partitionFormat.value = format,
                          itemBuilder: (context, format, child) => Text(
                            format?.displayName ?? lang.partitionFormatNone,
                            key: ValueKey(format?.type),
                          ),
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
              ListenableBuilder(
                listenable: Listenable.merge([
                  partitionMount,
                  partitionFormat,
                ]),
                builder: (context, child) {
                  return PushButton.filled(
                    onPressed: _validateMountedPartition(
                              partitionMount.value ?? '',
                              partitionFormat.value,
                            ) ==
                            MountedPartitionValidation.success
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
                },
              ),
            ],
          );
        },
      );
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
      return Consumer(
        builder: (context, ref, child) {
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
                        unitSemanticLabel: lang.partitionSizeLabel,
                      );
                    },
                  ),
                ],
                [
                  Text(lang.partitionFormatLabel, textAlign: TextAlign.end),
                  AnimatedBuilder(
                    animation:
                        Listenable.merge([partitionFormat, partitionMount]),
                    builder: (context, child) {
                      final configFormat = originalPartition != null
                          ? PartitionFormat.fromPartition(originalPartition)
                          : null;
                      final selectedFormatLabel = _partitionFormatLabel(
                        lang,
                        selectedFormat: partitionFormat.value,
                        configFormat: configFormat,
                      );
                      return Semantics(
                        label: lang.partitionFormatLabel,
                        value: selectedFormatLabel,
                        button: true,
                        child: MenuButtonBuilder<PartitionFormat?>(
                          entries: [
                            if (partitionMount.value ==
                                    DefaultMountPoint.home.path &&
                                (partition.preserve ?? false)) ...[
                              const MenuButtonEntry(value: null),
                              const MenuButtonEntry(
                                value: null,
                                isDivider: true,
                              ),
                            ],
                            ...PartitionFormat.supported
                                .map((f) => MenuButtonEntry(value: f)),
                            const MenuButtonEntry(value: null, isDivider: true),
                            const MenuButtonEntry(value: PartitionFormat.swap),
                            if ((partition.preserve ?? false) != true) ...[
                              const MenuButtonEntry(
                                value: null,
                                isDivider: true,
                              ),
                              const MenuButtonEntry(
                                value: PartitionFormat.none,
                              ),
                            ],
                          ],
                          selected: partitionFormat.value,
                          onSelected: (format) =>
                              partitionFormat.value = format,
                          itemBuilder: (context, format, child) => Text(
                            _partitionFormatLabel(
                              lang,
                              selectedFormat: format,
                              configFormat: configFormat,
                            ),
                            key: ValueKey(format?.type),
                          ),
                          child: Text(
                            selectedFormatLabel,
                            key: ValueKey(partitionFormat.value?.type),
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
              ListenableBuilder(
                listenable: Listenable.merge([
                  partitionMount,
                  partitionFormat,
                ]),
                builder: (context, child) {
                  return PushButton.filled(
                    onPressed: _validateMountedPartition(
                              partitionMount.value ?? '',
                              partitionFormat.value,
                            ) ==
                            MountedPartitionValidation.success
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
                },
              ),
            ],
          );
        },
      );
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
          return Semantics(
            container: true,
            child: YaruAutocomplete<String>(
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
              fieldViewBuilder: (
                context,
                textEditingController,
                focusNode,
                onFieldSubmitted,
              ) {
                return Semantics(
                  label: lang.partitionMountPointLabel,
                  child: TextFormField(
                    enabled: format != PartitionFormat.none &&
                        format != PartitionFormat.swap,
                    controller: textEditingController,
                    focusNode: focusNode,
                    onChanged: (value) => partitionMount.value = value,
                    onFieldSubmitted: (_) => onFieldSubmitted(),
                    autovalidateMode: AutovalidateMode.always,
                    validator: (value) =>
                        _validateMountedPartition(value!, partitionFormat.value)
                            .localize(lang),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

MountedPartitionValidation _validateMountedPartition(
  String mountpoint,
  PartitionFormat? format,
) {
  if (mountpoint.isNotEmpty && !mountpoint.startsWith('/')) {
    return MountedPartitionValidation.noLeadingSlash;
  } else if (mountpoint.contains(' ')) {
    return MountedPartitionValidation.containsSpace;
  } else if (mountpoint == DefaultMountPoint.boot.path &&
      format == PartitionFormat.vfat) {
    return MountedPartitionValidation.bootIsVfat;
  }
  return MountedPartitionValidation.success;
}

String _partitionFormatLabel(
  UbuntuBootstrapLocalizations lang, {
  required PartitionFormat? selectedFormat,
  PartitionFormat? configFormat,
}) {
  if (selectedFormat?.displayName != null) {
    return selectedFormat!.displayName!;
  }
  if (configFormat?.displayName != null) {
    return lang.partitionFormatKeep(configFormat!.displayName!);
  }
  return lang.partitionFormatNone;
}

enum MountedPartitionValidation {
  success,
  noLeadingSlash,
  containsSpace,
  bootIsVfat;

  String? localize(UbuntuBootstrapLocalizations l10n) => switch (this) {
        MountedPartitionValidation.success => null,
        MountedPartitionValidation.noLeadingSlash =>
          l10n.allocateDiskSpaceInvalidMountPointSlash,
        MountedPartitionValidation.containsSpace =>
          l10n.allocateDiskSpaceInvalidMountPointSpace,
        MountedPartitionValidation.bootIsVfat =>
          l10n.allocateDiskSpaceInvalidMountPointFormat(
            PartitionFormat.vfat.displayName!,
            DefaultMountPoint.boot.path,
          ),
      };
}
