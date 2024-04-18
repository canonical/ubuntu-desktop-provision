import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_init/src/telemetry/telemetry_dialogs.dart';
import 'package:ubuntu_init/src/telemetry/telemetry_l10n.dart';
import 'package:ubuntu_init/src/telemetry/telemetry_model.dart';
import 'package:ubuntu_init/src/telemetry/telemetry_widgets.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

class TelemetryPage extends ConsumerWidget with ProvisioningPage {
  const TelemetryPage({super.key});

  @override
  Future<bool> load(BuildContext context, WidgetRef ref) {
    return ref.read(telemetryModelProvider).init();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final flavor = ref.watch(flavorProvider);
    final l10n = TelemetryLocalizations.of(context);
    final model = ref.watch(telemetryModelProvider);

    return HorizontalPage(
      windowTitle: l10n.telemetryPageTitle,
      title: l10n.telemetryHeader(flavor.displayName),
      onNext: model.save,
      children: [
        Text(
          l10n.telemetryDescription(flavor.displayName),
        ),
        const SizedBox(height: kWizardSpacing),
        TelemetryButton(
          title: Text(l10n.telemetryLabelOn(flavor.displayName)),
          value: true,
          groupValue: model.enabled,
          onChanged: (v) => model.enabled = v!,
        ),
        const SizedBox(height: kWizardSpacing / 2),
        TelemetryButton(
          title: Text(l10n.telemetryLabelOff),
          value: false,
          groupValue: model.enabled,
          onChanged: (v) => model.enabled = v!,
        ),
        const SizedBox(height: kWizardSpacing),
        Row(
          children: [
            Html(
              data: '<a href=' '>${l10n.telemetryReportLabel}</a>',
              style: {
                'body': Style(margin: Margins.zero),
                'a': Style(color: Theme.of(context).colorScheme.link),
              },
              shrinkWrap: true,
              onLinkTap: (_, __, ___) =>
                  showTelemetryDialog(context, model.collect()),
            ),
            const SizedBox(width: kWizardSpacing),
            Html(
              data:
                  '<a href="$kTelemetryLegalUrl">${l10n.telemetryLegalLabel}</a>',
              style: {
                'body': Style(margin: Margins.zero),
                'a': Style(color: Theme.of(context).colorScheme.link),
              },
              shrinkWrap: true,
              onLinkTap: (url, _, __) => launchUrl(url!),
            ),
          ],
        ),
      ],
    );
  }
}
