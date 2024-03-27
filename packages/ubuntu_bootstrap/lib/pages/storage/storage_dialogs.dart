import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/storage/storage_model.dart';
import 'package:ubuntu_bootstrap/widgets/info_badge.dart';
import 'package:ubuntu_bootstrap/widgets/info_box.dart';
import 'package:ubuntu_provision/providers.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_widgets/ubuntu_widgets.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

/// Shows a dialog to select advanced installation features.
Future<void> showAdvancedFeaturesDialog(
    BuildContext context, StorageModel model) async {
  final guidedCapability =
      ValueNotifier(model.guidedCapability ?? GuidedCapability.DIRECT);
  final experimentalBadgeText =
      UbuntuBootstrapLocalizations.of(context).installationTypeExperimental;

  final result = await showDialog<bool>(
    context: context,
    builder: (context) {
      final lang = UbuntuBootstrapLocalizations.of(context);

      return AlertDialog(
        title: YaruDialogTitleBar(
          title: Text(lang.installationTypeAdvancedTitle),
        ),
        titlePadding: EdgeInsets.zero,
        contentPadding: const EdgeInsets.all(kYaruPagePadding),
        actionsPadding: const EdgeInsets.all(kYaruPagePadding),
        buttonPadding: EdgeInsets.zero,
        content: ListenableBuilder(
          listenable: guidedCapability,
          builder: (context, child) {
            return SizedBox(
              width: kWizardDialogWidth,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  if (model.hasDirect)
                    YaruRadioButton<GuidedCapability>(
                      title: Text(lang.installationTypeNone),
                      value: GuidedCapability.DIRECT,
                      groupValue: guidedCapability.value,
                      onChanged: (v) => guidedCapability.value = v!,
                    ),
                  if (model.hasLvm) ...[
                    YaruRadioButton<GuidedCapability>(
                      title: Text(lang.installationTypeLVM),
                      value: GuidedCapability.LVM,
                      groupValue: guidedCapability.value,
                      onChanged: (v) => guidedCapability.value = v!,
                    ),
                    YaruRadioButton<GuidedCapability>(
                      title: Text(lang.installationTypeLVMEncryption),
                      value: GuidedCapability.LVM_LUKS,
                      groupValue: guidedCapability.value,
                      onChanged: (v) => guidedCapability.value = v!,
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
                      groupValue: guidedCapability.value,
                      onChanged: (v) => guidedCapability.value = v!,
                    ),
                    YaruRadioButton<GuidedCapability>(
                      title: Wrap(
                        children: [
                          Text(lang.installationTypeZFSEncryption),
                          InfoBadge(title: experimentalBadgeText),
                        ],
                      ),
                      value: GuidedCapability.ZFS_LUKS_KEYSTORE,
                      groupValue: guidedCapability.value,
                      onChanged: (v) => guidedCapability.value = v!,
                    ),
                  ],
                  TpmOption(
                    guidedCapability: guidedCapability,
                    model: model,
                  ),
                ].withSpacing(kWizardSpacing),
              ),
            );
          },
        ),
        actions: [
          PushButton.outlined(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(UbuntuLocalizations.of(context).cancelLabel),
          ),
          const SizedBox(width: kWizardBarSpacing),
          PushButton.filled(
            onPressed: () => Navigator.of(context).pop(true),
            child: Text(UbuntuLocalizations.of(context).okLabel),
          ),
        ],
      );
    },
  );

  if (result ?? false) {
    model.guidedCapability = guidedCapability.value.clean();
  }
}

class TpmOption extends ConsumerWidget {
  const TpmOption({
    required this.guidedCapability,
    required this.model,
    super.key,
  });
  final ValueNotifier<GuidedCapability> guidedCapability;
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
          value: GuidedCapability.CORE_BOOT_ENCRYPTED,
          groupValue: guidedCapability.value,
          onChanged: target.disallowed.isEmpty
              ? (v) => guidedCapability.value = v!
              : null,
        ),
        if (guidedCapability.value == GuidedCapability.CORE_BOOT_ENCRYPTED) ...[
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
