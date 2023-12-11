import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_widgets/ubuntu_widgets.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

import '../../l10n.dart';
import 'storage_model.dart';

enum AdvancedFeature { none, lvm, zfs, tpm }

/// Shows a dialog to select advanced installation features.
Future<void> showAdvancedFeaturesDialog(
    BuildContext context, StorageModel model) async {
  final advancedFeature = ValueNotifier(
      model.guidedCapability?.toAdvancedFeature() ?? AdvancedFeature.none);
  final encryption =
      ValueNotifier(model.guidedCapability == GuidedCapability.LVM_LUKS);

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
        content: AnimatedBuilder(
          animation: Listenable.merge([advancedFeature, encryption]),
          builder: (context, child) {
            return SizedBox(
              width: kWizardDialogWidth,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  if (model.hasDirect)
                    YaruRadioButton<AdvancedFeature>(
                      title: Text(lang.installationTypeNone),
                      value: AdvancedFeature.none,
                      groupValue: advancedFeature.value,
                      onChanged: (v) => advancedFeature.value = v!,
                    ),
                  if (model.hasLvm) ...[
                    YaruRadioButton<AdvancedFeature>(
                      title: Consumer(builder: (context, ref, child) {
                        final flavor = ref.watch(flavorProvider);
                        return Text(lang.installationTypeLVM(flavor.name));
                      }),
                      value: AdvancedFeature.lvm,
                      groupValue: advancedFeature.value,
                      onChanged: (v) => advancedFeature.value = v!,
                    ),
                    Padding(
                      padding: kWizardIndentation,
                      child: YaruCheckButton(
                        title: Consumer(builder: (context, ref, child) {
                          final flavor = ref.watch(flavorProvider);
                          return Text(
                              lang.installationTypeEncrypt(flavor.name));
                        }),
                        subtitle: Text(lang.installationTypeEncryptInfo),
                        value: encryption.value,
                        onChanged: advancedFeature.value == AdvancedFeature.lvm
                            ? (v) => encryption.value = v!
                            : null,
                      ),
                    ),
                  ],
                  if (model.hasZfs)
                    YaruRadioButton<AdvancedFeature>(
                      title: Text(lang.installationTypeZFS),
                      value: AdvancedFeature.zfs,
                      groupValue: advancedFeature.value,
                      onChanged: (v) => advancedFeature.value = v!,
                    ),
                  TpmOption(
                    advancedFeature: advancedFeature,
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
    model.guidedCapability =
        advancedFeature.value.toGuidedCapability(encryption: encryption.value);
  }
}

class TpmOption extends StatelessWidget {
  const TpmOption({
    required this.advancedFeature,
    required this.model,
    super.key,
  });
  final ValueNotifier<AdvancedFeature> advancedFeature;
  final StorageModel model;

  @override
  Widget build(BuildContext context) {
    final lang = UbuntuBootstrapLocalizations.of(context);

    final target = model
        .getAllTargets()
        .firstOrNullWhere((t) => t is GuidedStorageTargetReformat);

    if (target == null) return const SizedBox();

    var data = lang.installationTypeTPMWarning(
      Theme.of(context).colorScheme.error.toHex(),
      model.getReleaseNotesURL(Localizations.localeOf(context)),
    );
    Function(AdvancedFeature?)? onChanged = (v) => advancedFeature.value = v!;

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
        YaruRadioButton<AdvancedFeature>(
          title: Text(lang.installationTypeTPM),
          value: AdvancedFeature.tpm,
          groupValue: advancedFeature.value,
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
  AdvancedFeature? toAdvancedFeature() {
    switch (this) {
      case GuidedCapability.LVM:
      case GuidedCapability.LVM_LUKS:
        return AdvancedFeature.lvm;
      case GuidedCapability.ZFS:
        return AdvancedFeature.zfs;
      case GuidedCapability.CORE_BOOT_ENCRYPTED:
      case GuidedCapability.CORE_BOOT_PREFER_ENCRYPTED:
        return AdvancedFeature.tpm;
      default:
        return AdvancedFeature.none;
    }
  }
}

extension on AdvancedFeature {
  GuidedCapability toGuidedCapability({bool? encryption}) {
    switch (this) {
      case AdvancedFeature.lvm:
        return (encryption ?? false)
            ? GuidedCapability.LVM_LUKS
            : GuidedCapability.LVM;
      case AdvancedFeature.zfs:
        return GuidedCapability.ZFS;
      case AdvancedFeature.tpm:
        return GuidedCapability.CORE_BOOT_ENCRYPTED;
      default:
        return GuidedCapability.DIRECT;
    }
  }
}
