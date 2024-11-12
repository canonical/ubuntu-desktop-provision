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
                YaruRadioButton<GuidedCapability>(
                  title: Text(lang.installationTypeNone),
                  value: GuidedCapability.DIRECT,
                  groupValue: model.guidedCapability,
                  onChanged: (v) => model.guidedCapability = v!.clean(),
                ),
              if (model.hasLvm) ...[
                YaruRadioButton<GuidedCapability>(
                  title: Text(lang.installationTypeLVM),
                  value: GuidedCapability.LVM,
                  groupValue: model.guidedCapability,
                  onChanged: (v) => model.guidedCapability = v!.clean(),
                ),
                YaruRadioButton<GuidedCapability>(
                  title: Text(lang.installationTypeLVMEncryption),
                  value: GuidedCapability.LVM_LUKS,
                  groupValue: model.guidedCapability,
                  onChanged: (v) => model.guidedCapability = v!.clean(),
                ),
              ],
              if (model.hasZfs) ...[
                YaruRadioButton<GuidedCapability>(
                  title: Wrap(
                    children: [
                      Text(lang.installationTypeZFS),
                      InfoBadge(title: experimentalBadgeText),
                    ],
                  ),
                  value: GuidedCapability.ZFS,
                  groupValue: model.guidedCapability,
                  onChanged: (v) => model.guidedCapability = v!.clean(),
                ),
                YaruRadioButton<GuidedCapability>(
                  title: Wrap(
                    children: [
                      Text(lang.installationTypeZFSEncryption),
                      InfoBadge(title: experimentalBadgeText),
                    ],
                  ),
                  value: GuidedCapability.ZFS_LUKS_KEYSTORE,
                  groupValue: model.guidedCapability,
                  onChanged: (v) => model.guidedCapability = v!.clean(),
                ),
              ],
              TpmOption(
                model: model,
              ),
            ].withSpacing(kWizardSpacing),
          ),
        )
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

    final target = model
        .getAllTargets()
        .firstWhereOrNull((t) => t is GuidedStorageTargetReformat);

    if (target == null) return const SizedBox();

    final tpmInfo =
        lang.installationTypeTPMInfo(flavor.displayName, model.tpmInfoUrl);
    final disallowedCapability = target.disallowed.firstWhereOrNull(
      (e) =>
          e.capability == GuidedCapability.CORE_BOOT_ENCRYPTED ||
          e.capability == GuidedCapability.CORE_BOOT_PREFER_ENCRYPTED,
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        YaruRadioButton<GuidedCapability>(
          title: Wrap(
            children: [
              Text(lang.installationTypeTPM),
              InfoBadge(title: experimentalBadgeText),
            ],
          ),
          subtitle: disallowedCapability?.message == null
              ? null
              : Text(disallowedCapability!.message!),
          value: GuidedCapability.CORE_BOOT_ENCRYPTED,
          groupValue: model.guidedCapability,
          onChanged: model.hasTpm ? (v) => model.guidedCapability = v : null,
        ),
        if (model.guidedCapability == GuidedCapability.CORE_BOOT_ENCRYPTED) ...[
          const SizedBox(height: kWizardSpacing),
          InfoBox(
            child: Html(
              data: tpmInfo,
              style: {
                'body': Style(margin: Margins.zero),
                'a': Style(color: Theme.of(context).colorScheme.link),
              },
              onLinkTap: (url, _, __) => launchUrl(url!),
            ),
          ),
        ],
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
