import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/storage/storage_dialogs.dart';
import 'package:ubuntu_bootstrap/pages/storage/storage_model.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

export 'storage_model.dart' show StorageType;

/// Select between guided and manual partitioning.
class StoragePage extends ConsumerStatefulWidget with ProvisioningPage {
  const StoragePage({super.key});

  @override
  ConsumerState<StoragePage> createState() => _StoragePageState();

  @override
  Future<bool> load(BuildContext context, WidgetRef ref) {
    return ref.read(storageModelProvider.notifier).init().then((_) => true);
  }

  static String formatAlongside(
    UbuntuBootstrapLocalizations lang,
    String product,
    List<OsProber> os,
  ) {
    switch (os.length) {
      case 0:
        return lang.installationTypeAlongsideUnknown(product);
      case 1:
        return lang.installationTypeAlongside(product, os.single.long);
      case 2:
        return os.hasDuplicates
            ? lang.installationTypeAlongsideMulti(product)
            : lang.installationTypeAlongsideDual(
                product,
                os.first.long,
                os.last.long,
              );
      default:
        return lang.installationTypeAlongsideMulti(product);
    }
  }
}

class _StoragePageState extends ConsumerState<StoragePage> {
  // Focus nodes for each installation type
  final Map<StorageType, FocusNode> _focusNodes = {
    StorageType.alongside: FocusNode(),
    StorageType.erase: FocusNode(),
    StorageType.manual: FocusNode(),
  };

  @override
  void initState() {
    super.initState();
    
    // Enable semantics and announce page on load
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      
      // Ensure semantics are enabled for Orca
      WidgetsBinding.instance.ensureSemantics();
      
      // Announce welcome message
      final lang = UbuntuBootstrapLocalizations.of(context);
      final flavor = ref.read(flavorProvider);
      final model = ref.read(storageModelProvider);
      
      SemanticsService.announce(
        'How do you want to install ${flavor.displayName}? ${lang.installationTypeHeader(flavor.displayName)}. Choose your installation type.',
        TextDirection.ltr,
      );
      
      // Announce available options
      Future.delayed(const Duration(milliseconds: 700), () {
        if (!mounted) return;
        
        final options = <String>[];
        if (model.canInstallAlongside || model.hasBitLocker) {
          options.add('Install alongside existing operating system');
        }
        if (model.canEraseDisk) {
          options.add('Erase disk and install ${flavor.displayName}');
        }
        if (model.canManualPartition) {
          options.add('Manual partitioning');
        }
        
        if (options.isNotEmpty) {
          SemanticsService.announce(
            'Available options: ${options.join(", ")}',
            TextDirection.ltr,
          );
        }
      });
      
      // Set initial focus on first available option
      Future.delayed(const Duration(milliseconds: 500), () {
        if (!mounted) return;
        
        if ((model.canInstallAlongside || model.hasBitLocker) && _focusNodes[StorageType.alongside] != null) {
          _focusNodes[StorageType.alongside]!.requestFocus();
        } else if (model.canEraseDisk && _focusNodes[StorageType.erase] != null) {
          _focusNodes[StorageType.erase]!.requestFocus();
        } else if (model.canManualPartition && _focusNodes[StorageType.manual] != null) {
          _focusNodes[StorageType.manual]!.requestFocus();
        }
      });
    });
  }

  @override
  void dispose() {
    for (var node in _focusNodes.values) {
      node.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final model = ref.watch(storageModelProvider);
    final lang = UbuntuBootstrapLocalizations.of(context);
    final flavor = ref.watch(flavorProvider);

    return Semantics(
      label: 'Storage configuration page',
      child: HorizontalPage(
        windowTitle: lang.installationTypeTitle,
        title: lang.installationTypeHeader(flavor.displayName),
        bottomBar: WizardBar(
          leading: Semantics(
            button: true,
            label: 'Back button',
            child: const BackWizardButton(),
          ),
          trailing: [
            Semantics(
              button: true,
              label: 'Next button ${(model.canEraseDisk || model.canInstallAlongside || model.canManualPartition) ? "enabled" : "disabled"}',
              enabled: model.canEraseDisk || model.canInstallAlongside || model.canManualPartition,
              child: NextWizardButton(
                onNext: () async {
                  final typeLabel = model.type == StorageType.alongside ? 'alongside installation' 
                      : model.type == StorageType.erase ? 'erase disk installation'
                      : 'manual partitioning';
                  SemanticsService.announce(
                    'Proceeding with $typeLabel',
                    TextDirection.ltr,
                  );
                  await model.save();
                },
                enabled: model.canEraseDisk ||
                    model.canInstallAlongside ||
                    model.canManualPartition,
                onReturn: model.resetStorage,
              ),
            ),
          ],
        ),
        children: [
          if (model.canInstallAlongside || model.hasBitLocker)
            _AccessibleInstallationTypeTile(
              focusNode: _focusNodes[StorageType.alongside]!,
              storageType: StorageType.alongside,
              title: Text(
                StoragePage.formatAlongside(
                  lang,
                  ref.watch(flavorProvider).displayName,
                  model.existingOS ?? [],
                ),
              ),
              subtitle: Text(lang.installationTypeAlongsideInfo),
            ),
          if (model.canEraseDisk) ...[
            _AccessibleInstallationTypeTile(
              focusNode: _focusNodes[StorageType.erase]!,
              storageType: StorageType.erase,
              title: Text(lang.installationTypeErase(flavor.displayName)),
              subtitle: Text(lang.installationTypeEraseInfo),
              trailing: model.hasAdvancedFeatures
                  ? Padding(
                      padding: const EdgeInsets.only(top: kWizardSpacing),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Semantics(
                            button: true,
                            label: 'Advanced features button ${model.type == StorageType.erase ? "enabled" : "disabled"}',
                            enabled: model.type == StorageType.erase,
                            child: OutlinedButton(
                              onPressed: model.type == StorageType.erase
                                  ? () {
                                      SemanticsService.announce(
                                        'Opening advanced features dialog',
                                        TextDirection.ltr,
                                      );
                                      showAdvancedFeaturesDialog(context, model);
                                    }
                                  : null,
                              child: Text(lang.installationTypeAdvancedLabel),
                            ),
                          ),
                          const SizedBox(width: kWizardSpacing),
                          Flexible(
                            child: Semantics(
                              label: 'Selected feature: ${model.guidedCapability?.localize(lang) ?? "None"}',
                              child: Text(
                                model.guidedCapability?.localize(lang) ?? '',
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  : null,
            ),
          ],
          if (model.canManualPartition)
            _AccessibleInstallationTypeTile(
              focusNode: _focusNodes[StorageType.manual]!,
              storageType: StorageType.manual,
              title: Text(lang.installationTypeManual),
              subtitle: Text(lang.installationTypeManualInfo(flavor.displayName)),
            ),
        ],
      ),
    );
  }
}

extension _GuidedCapabilityL10n on GuidedCapability {
  String localize(UbuntuBootstrapLocalizations lang) {
    switch (this) {
      case GuidedCapability.LVM:
        return lang.installationTypeLVMSelected;
      case GuidedCapability.LVM_LUKS:
        return lang.installationTypeLVMEncryptionSelected;
      case GuidedCapability.ZFS:
        return lang.installationTypeZFSSelected;
      case GuidedCapability.ZFS_LUKS_KEYSTORE:
        return lang.installationTypeZFSEncryptionSelected;
      case GuidedCapability.CORE_BOOT_ENCRYPTED:
      case GuidedCapability.CORE_BOOT_PREFER_ENCRYPTED:
        return lang.installationTypeTPMSelected;
      default:
        return lang.installationTypeNoneSelected;
    }
  }
}

extension _OsProberList on List<OsProber> {
  /// Whether the system has any OS installed multiple times.
  bool get hasDuplicates =>
      length > 1 && length != map((os) => os.long).toSet().length;
}

class _AccessibleInstallationTypeTile extends ConsumerWidget {
  const _AccessibleInstallationTypeTile({
    required this.focusNode,
    required this.storageType,
    required this.title,
    this.subtitle,
    this.trailing,
  });

  final FocusNode focusNode;
  final StorageType storageType;
  final Widget title;
  final Widget? subtitle;
  final Widget? trailing;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(storageModelProvider);
    final isSelected = model.type == storageType;

    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: Focus(
        focusNode: focusNode,
        onFocusChange: (hasFocus) {
          if (hasFocus) {
            final titleText = (title as Text).data ?? '';
            final subtitleText = subtitle != null ? (subtitle as Text).data ?? '' : '';
            final status = isSelected ? 'Currently selected' : 'Not selected';
            
            SemanticsService.announce(
              '$titleText. $subtitleText. $status',
              TextDirection.ltr,
            );
          }
        },
        child: Semantics(
          checked: isSelected,
          label: '${(title as Text).data}. ${subtitle != null ? (subtitle as Text).data : ""}',
          hint: 'Radio button',
          child: YaruRadioListTile(
            title: title,
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [subtitle, trailing].whereNotNull().toList(),
            ),
            contentPadding: kWizardTilePadding,
            isThreeLine: true,
            value: storageType,
            groupValue: model.type,
            onChanged: (value) {
              model.type = value;
              
              final typeLabel = value == StorageType.alongside ? 'Install alongside existing OS' 
                  : value == StorageType.erase ? 'Erase disk and install'
                  : 'Manual partitioning';
              SemanticsService.announce(
                '$typeLabel selected',
                TextDirection.ltr,
              );
            },
          ),
        ),
      ),
    );
  }
}