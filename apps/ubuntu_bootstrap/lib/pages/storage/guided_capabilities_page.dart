import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/storage/storage_model.dart';
import 'package:ubuntu_bootstrap/widgets/info_badge.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

final showAdvancedProvider = StateProvider((_) => false);

/// Select advanced installation features
class GuidedCapabilitiesPage extends ConsumerWidget with ProvisioningPage {
  const GuidedCapabilitiesPage({super.key});

  @override
  Future<bool> load(BuildContext context, WidgetRef ref) {
    final hasAdvancedFeatures =
        ref.read(storageModelProvider).hasAdvancedFeatures;

    return Future.value(hasAdvancedFeatures);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(storageModelProvider);
    final lang = UbuntuBootstrapLocalizations.of(context);
    final experimentalBadgeText =
        UbuntuBootstrapLocalizations.of(context).installationTypeExperimental;

    return HorizontalPage(
      windowTitle: lang.installationTypeAdvancedTitle,
      title: lang.installationTypeAdvancedTitle,
      bottomBar: WizardBar(
        leading: const BackWizardButton(),
        trailing: [
          NextWizardButton(),
        ],
      ),
      children: [
        SizedBox(
          width: kWizardDialogWidth,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              if (model.currentTargetSupportsDirect)
                OptionButton(
                  title: Text(lang.installationTypeNone),
                  value: GuidedCapability.DIRECT,
                  groupValue: model.guidedCapability,
                  onChanged: (v) => model.guidedCapability = v!.clean(),
                  isThreeLines: false,
                ),
              if (model.currentTargetSupportsLvm)
                OptionButton(
                  title: Text(lang.installationTypeLVMEncryption),
                  subtitle: Text(
                    lang.installationTypeLVMEncryptionInfoResolute(
                      ref.watch(showAdvancedProvider)
                          ? lang.installationTypeLVMEncryptionInfo2
                          : '',
                    ),
                  ),
                  value: GuidedCapability.LVM_LUKS,
                  groupValue: model.guidedCapability,
                  onChanged: (v) => model.guidedCapability = v!.clean(),
                ),
              OptionButton<GuidedCapability?>(
                title: Text(lang.installationTypeTPM),
                subtitle: Text(
                  model.currentTargetSupportsTpm
                      ? lang.installationTypeTPMInfoResolute
                      : lang.installationTypeTPMInfoUnavailable,
                ),
                value: GuidedCapability.CORE_BOOT_ENCRYPTED,
                groupValue: model.guidedCapability?.clean(),
                onChanged: model.currentTargetSupportsTpm
                    ? (v) => model.guidedCapability = v
                    : null,
                isThreeLines: false,
              ),
              YaruExpandable(
                expandButtonPosition: YaruExpandableButtonPosition.start,
                header: Text(lang.installationTypeAdvancedLabel),
                onChange: (expanded) =>
                    ref.read(showAdvancedProvider.notifier).state = expanded,
                child: Column(
                  children: [
                    const SizedBox(height: kWizardSpacing / 8),
                    if (model.currentTargetSupportsLvm)
                      OptionButton(
                        title: Text(lang.installationTypeLVM),
                        isThreeLines: false,
                        value: GuidedCapability.LVM,
                        groupValue: model.guidedCapability,
                        onChanged: (v) => model.guidedCapability = v!.clean(),
                      ),
                    if (model.currentTargetSupportsZfs) ...[
                      OptionButton(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 100,
                              child: Text(lang.installationTypeZFS),
                            ),
                            InfoBadge(
                              title: experimentalBadgeText,
                            ),
                          ].withSpacing(kWizardSpacing / 2),
                        ),
                        isThreeLines: false,
                        value: GuidedCapability.ZFS,
                        groupValue: model.guidedCapability,
                        onChanged: (v) => model.guidedCapability = v!.clean(),
                      ),
                      OptionButton(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 100,
                              child: Text(lang.installationTypeZFSEncryption),
                            ),
                            InfoBadge(
                              title: experimentalBadgeText,
                            ),
                          ].withSpacing(kWizardSpacing / 2),
                        ),
                        isThreeLines: false,
                        value: GuidedCapability.ZFS_LUKS_KEYSTORE,
                        groupValue: model.guidedCapability,
                        onChanged: (v) => model.guidedCapability = v!.clean(),
                      ),
                    ],
                  ].withSpacing(kWizardSpacing / 2),
                ),
              ),
            ].withSpacing(kWizardSpacing / 2),
          ),
        ),
      ],
    );
  }
}

class TpmOption extends ConsumerWidget {
  const TpmOption({
    required this.model,
    super.key,
  });
  final StorageModel model;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = UbuntuBootstrapLocalizations.of(context);

    return OptionButton<GuidedCapability?>(
      title: Text(lang.installationTypeTPM),
      subtitle: Text(lang.installationTypeTPMInfoResolute),
      value: GuidedCapability.CORE_BOOT_ENCRYPTED,
      groupValue: model.guidedCapability?.clean(),
      onChanged: (v) => model.guidedCapability = v,
    );
  }
}

extension on GuidedCapability {
  GuidedCapability clean() => switch (this) {
// We shouldn't send CORE_BOOT_PREFER_ENCRYPTED to the server
// See https://github.com/canonical/subiquity/blob/f759d19336c5cc33545755095fcc2aced3ef6a9f/subiquity/common/types.py#L354-L356
        GuidedCapability.CORE_BOOT_PREFER_ENCRYPTED =>
          GuidedCapability.CORE_BOOT_ENCRYPTED,
        _ => this,
      };
}
