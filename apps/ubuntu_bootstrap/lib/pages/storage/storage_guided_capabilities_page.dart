import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/storage/storage_model.dart';
import 'package:ubuntu_bootstrap/widgets/info_badge.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

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
    final theme = Theme.of(context);
    final experimentalBadgeText =
        UbuntuBootstrapLocalizations.of(context).installationTypeExperimental;

    return HorizontalPage(
      windowTitle: lang.installationTypeAdvancedTitle,
      title: lang.installationTypeAdvancedTitle,
      bottomBar: WizardBar(
        leading: const BackWizardButton(),
        trailing: [
          NextWizardButton(
            onNext: model.save,
          ),
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
                  subtitle: Text(lang.installationTypeNoneInfo),
                  value: GuidedCapability.DIRECT,
                  groupValue: model.guidedCapability,
                  onChanged: (v) => model.guidedCapability = v!.clean(),
                ),
              const SizedBox(height: kWizardSpacing / 2),
              if (model.currentTargetSupportsLvm)
                OptionButton(
                  title: Text(lang.installationTypeLVMEncryption),
                  subtitle: Text(lang.installationTypeLVMEncryptionInfo),
                  value: GuidedCapability.LVM_LUKS,
                  groupValue: model.guidedCapability,
                  onChanged: (v) => model.guidedCapability = v!.clean(),
                ),
              Visibility(
                visible: model.showAdvanced,
                child: Column(
                  children: [
                    const SizedBox(height: kWizardSpacing / 8),
                    Divider(
                      color: theme.dividerColor,
                    ),
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
                        title: Wrap(
                          children: [
                            Text(lang.installationTypeZFS),
                            InfoBadge(title: experimentalBadgeText),
                          ],
                        ),
                        isThreeLines: false,
                        value: GuidedCapability.ZFS,
                        groupValue: model.guidedCapability,
                        onChanged: (v) => model.guidedCapability = v!.clean(),
                      ),
                      OptionButton(
                        title: Wrap(
                          children: [
                            Text(lang.installationTypeZFSEncryption),
                            InfoBadge(title: experimentalBadgeText),
                          ],
                        ),
                        isThreeLines: false,
                        value: GuidedCapability.ZFS_LUKS_KEYSTORE,
                        groupValue: model.guidedCapability,
                        onChanged: (v) => model.guidedCapability = v!.clean(),
                      ),
                    ],
                    if (model.currentTargetSupportsTpm ||
                        model.guidedTarget?.tpmDisallowedReason != null) ...[
                      TpmOption(model: model),
                    ],
                  ].withSpacing(kWizardSpacing / 2),
                ),
              ),
              Visibility(
                visible: !model.showAdvanced,
                child: Column(
                  children: [
                    const SizedBox(height: kWizardSpacing),
                    OutlinedButton(
                      onPressed: model.toggleShowAdvanced,
                      child: Text(
                        lang.installationTypeAdvancedLabel,
                      ),
                    ),
                  ],
                ),
              ),
            ],
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
    final flavor = ref.watch(flavorProvider);
    final experimentalBadgeText =
        UbuntuBootstrapLocalizations.of(context).installationTypeExperimental;

    // If TPM is explicitly disallowed we display the reason why, otherwise we show
    // the link for learning more about TPM FDE.
    final tpmInfo = model.guidedTarget?.tpmDisallowedReason ??
        lang.installationTypeTPMInfo(flavor.displayName, model.tpmInfoUrl);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OptionButton<GuidedCapability?>(
          title: Wrap(
            children: [
              Text(lang.installationTypeTPM),
              InfoBadge(title: experimentalBadgeText),
            ],
          ),
          subtitle: Html(
            data: tpmInfo,
            style: {
              'body': Style(margin: Margins.zero),
              'a': Style(color: Theme.of(context).colorScheme.link),
            },
            onLinkTap: (url, _, __) => launchUrl(url!),
          ),
          value: GuidedCapability.CORE_BOOT_ENCRYPTED,
          groupValue: model.guidedCapability,
          onChanged: model.currentTargetSupportsTpm
              ? (v) => model.guidedCapability = v
              : null,
        ),
      ],
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

extension on GuidedStorageTarget {
  String? get tpmDisallowedReason => disallowed
      .firstWhereOrNull(
        (e) =>
            e.capability == GuidedCapability.CORE_BOOT_ENCRYPTED ||
            e.capability == GuidedCapability.CORE_BOOT_PREFER_ENCRYPTED,
      )
      ?.message;
}
