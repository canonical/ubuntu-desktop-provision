import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/storage/storage_model.dart';
import 'package:ubuntu_bootstrap/widgets/info_badge.dart';
import 'package:ubuntu_bootstrap/widgets/info_box.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

/// Select advanced installation features
class GuidedCapabilitiesPage extends ConsumerWidget with ProvisioningPage {
  GuidedCapabilitiesPage({super.key});

  @override
  Future<bool> load(BuildContext context, WidgetRef ref) {
    return ref.read(storageModelProvider.notifier).init().then((_) => true);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(storageModelProvider);
    final lang = UbuntuBootstrapLocalizations.of(context);
    final theme = Theme.of(context);

    return HorizontalPage(
      windowTitle: lang.installationTypeAdvancedTitle,
      title: lang.installationTypeAdvancedTitle,
      bottomBar: WizardBar(
        leading: const BackWizardButton(),
        trailing: [
          NextWizardButton(
            onNext: model.save,
            enabled: model.hasAdvancedFeatures,
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
              if (model.hasDirect)
                OptionButton(
                  title: Text(lang.installationTypeNone),
                  subtitle: Text(lang.installationTypeNoneInfo),
                  value: GuidedCapability.DIRECT,
                  groupValue: model.guidedCapability,
                  onChanged: (v) => model.guidedCapability = v!.clean(),
                ),
              const SizedBox(height: kWizardSpacing),
              if (model.hasLvm)
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
                    const SizedBox(height: kWizardSpacing / 4),
                    Divider(
                      color: theme.dividerColor,
                    ),
                    if (model.hasLvm)
                      OptionButton(
                        title: Text(lang.installationTypeLVM),
                        subtitle: Text(''),
                        value: GuidedCapability.LVM,
                        groupValue: model.guidedCapability,
                        onChanged: (v) => model.guidedCapability = v!.clean(),
                      ),
                    if (model.hasZfs) ...[
                      OptionButton(
                        title: Wrap(
                          children: [
                            Text(lang.installationTypeZFSEncryption),
                          ],
                        ),
                        subtitle: Text(lang.installationTypeZFSEncryptionInfo),
                        value: GuidedCapability.ZFS_LUKS_KEYSTORE,
                        groupValue: model.guidedCapability,
                        onChanged: (v) => model.guidedCapability = v!.clean(),
                      ),
                      OptionButton(
                        title: Wrap(
                          children: [
                            Text(lang.installationTypeZFS),
                          ],
                        ),
                        subtitle: Text(''),
                        value: GuidedCapability.ZFS,
                        groupValue: model.guidedCapability,
                        onChanged: (v) => model.guidedCapability = v!.clean(),
                      ),
                    ],
                    TpmOption(
                      model: model,
                    ),
                  ].withSpacing(kWizardSpacing),
                ),
              ),
              const SizedBox(height: kWizardSpacing),
              OutlinedButton(
                onPressed: model.toggleShowAdvanced,
                child: Text(
                  model.showAdvanced
                      ? lang.hideSecurityKey
                      : lang.installationTypeAdvancedLabel,
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

    final target = model
        .getAllTargets()
        .firstWhereOrNull((t) => t is GuidedStorageTargetReformat);

    if (target == null) return const SizedBox();

    final tpmInfo =
        lang.installationTypeTPMInfo(flavor.displayName, model.tpmInfoUrl);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OptionButton<GuidedCapability?>(
          title: Wrap(
            children: [
              Text(lang.installationTypeTPM),
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
          onChanged: model.hasTpm ? (v) => model.guidedCapability = v : null,
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
