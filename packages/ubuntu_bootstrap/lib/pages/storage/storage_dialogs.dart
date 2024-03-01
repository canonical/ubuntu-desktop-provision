import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/storage/storage_model.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_widgets/ubuntu_widgets.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

/// Shows a dialog to select advanced installation features.
Future<void> showAdvancedFeaturesDialog(
    BuildContext context, StorageModel model) async {
  final guidedCapability =
      ValueNotifier(model.guidedCapability ?? GuidedCapability.DIRECT);

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
                      title: Consumer(builder: (context, ref, child) {
                        final flavor = ref.watch(flavorProvider);
                        return Text(
                            lang.installationTypeLVM(flavor.displayName));
                      }),
                      value: GuidedCapability.LVM,
                      groupValue: guidedCapability.value,
                      onChanged: (v) => guidedCapability.value = v!,
                    ),
                    YaruRadioButton<GuidedCapability>(
                      title: Consumer(builder: (context, ref, child) {
                        final flavor = ref.watch(flavorProvider);
                        return Text(lang
                            .installationTypeLVMEncryption(flavor.displayName));
                      }),
                      subtitle: Text(lang.installationTypeEncryptInfo),
                      value: GuidedCapability.LVM_LUKS,
                      groupValue: guidedCapability.value,
                      onChanged: (v) => guidedCapability.value = v!,
                    ),
                  ],
                  if (model.hasZfs) ...[
                    YaruRadioButton<GuidedCapability>(
                      title: Text(lang.installationTypeZFS),
                      value: GuidedCapability.ZFS,
                      groupValue: guidedCapability.value,
                      onChanged: (v) => guidedCapability.value = v!,
                    ),
                    YaruRadioButton<GuidedCapability>(
                      title: Text(lang.installationTypeZFSEncryption),
                      subtitle: Text(lang.installationTypeEncryptInfo),
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

class TpmOption extends StatelessWidget {
  const TpmOption({
    required this.guidedCapability,
    required this.model,
    super.key,
  });
  final ValueNotifier<GuidedCapability> guidedCapability;
  final StorageModel model;

  @override
  Widget build(BuildContext context) {
    final lang = UbuntuBootstrapLocalizations.of(context);

    final target = model
        .getAllTargets()
        .firstWhereOrNull((t) => t is GuidedStorageTargetReformat);

    if (target == null) return const SizedBox();

    var data = lang.installationTypeTPMWarning(
      Theme.of(context).colorScheme.error.toHex(),
      model.getReleaseNotesURL(Localizations.localeOf(context)),
    );
    Function(GuidedCapability?)? onChanged = (v) => guidedCapability.value = v!;

    if (target.disallowed.isNotEmpty) {
      final element = target.disallowed.first;
      final message = element.message ?? '';
      onChanged = null;

      final color = Theme.of(context).disabledColor.toHex();
      data = '<span style="color: $color">$message</span>';
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        YaruRadioButton<GuidedCapability>(
          title: Text(lang.installationTypeTPM),
          value: GuidedCapability.CORE_BOOT_ENCRYPTED,
          groupValue: guidedCapability.value,
          onChanged: onChanged,
        ),
        Padding(
          padding: kWizardIndentation,
          child: Html(
            data: data,
            style: {
              'body': Style(margin: Margins.zero),
              'a': Style(color: Theme.of(context).colorScheme.link),
            },
            onLinkTap: (url, _, __) => launchUrl(url!),
          ),
        ),
      ],
    );
  }
}

extension on Iterable<Widget> {
  List<Widget> withSpacing(double spacing) {
    return expand((item) sync* {
      yield SizedBox(height: spacing);
      yield item;
    }).skip(1).toList();
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
