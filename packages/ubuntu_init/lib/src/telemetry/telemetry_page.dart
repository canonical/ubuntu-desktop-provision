import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ubuntu_init/src/telemetry/telemetry_dialogs.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

import 'telemetry_l10n.dart';
import 'telemetry_model.dart';
import 'telemetry_widgets.dart';

class TelemetryPage extends ConsumerWidget {
  const TelemetryPage({super.key});

  static Future<bool> load(WidgetRef ref) {
    return ref.read(telemetryModelProvider).init();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final flavor = ref.watch(flavorProvider);
    final l10n = TelemetryLocalizations.of(context);
    final model = ref.watch(telemetryModelProvider);
    final theme = Theme.of(context);
    return WizardPage(
      title: YaruWindowTitleBar(
        title: Text(l10n.telemetryPageTitle),
      ),
      content: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SvgPicture.asset('assets/telemetry.svg', package: 'ubuntu_init'),
              const SizedBox(height: kWizardSpacing),
              Text(
                l10n.telemetryHeader(flavor.name),
                style: theme.textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: kWizardSpacing / 2),
              Text(
                l10n.telemetryDescription(flavor.name),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: kWizardSpacing),
              TelemetryButton(
                title: Text(l10n.telemetryLabelOn(flavor.name)),
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Html(
                    data: '<a href=' '>${l10n.telemetryReportLabel}</a>',
                    style: {
                      'body': Style(margin: Margins.zero),
                      'a': Style(color: Theme.of(context).colorScheme.link),
                    },
                    shrinkWrap: true,
                    onLinkTap: (_, __, ___) =>
                        showTelemetryDialog(context, model.collect),
                  ),
                  const SizedBox(width: kWizardSpacing * 2),
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
          ),
        ),
      ),
      bottomBar: WizardBar(
        leading: WizardButton.previous(context),
        trailing: [
          WizardButton.next(context, onNext: model.save),
        ],
      ),
    );
  }
}
