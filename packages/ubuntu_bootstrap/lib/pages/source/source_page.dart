import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/source/source_model.dart';
import 'package:ubuntu_bootstrap/services.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

export 'source_model.dart' show kFullSourceId, kMinimalSourceId;

/// A page where the user can decide whether they want to install 3rd party
/// drivers or codecs.
class SourcePage extends ConsumerWidget with ProvisioningPage {
  const SourcePage({super.key});

  @override
  Future<bool> load(BuildContext context, WidgetRef ref) {
    return ref.read(sourceModelProvider).init().then((_) => true);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(sourceModelProvider);
    final lang = UbuntuBootstrapLocalizations.of(context);

    return HorizontalPage(
      name: 'source',
      windowTitle: lang.updatesOtherSoftwarePageTitle,
      title: lang.updatesOtherSoftwarePageDescription,
      expandContent: true,
      content: Center(
        child: Scrollbar(
          thumbVisibility: true,
          child: ListView(
            shrinkWrap: true,
            children: [
              ...model.sources
                  .map((source) => Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: Visibility(
                          child: YaruRadioButton<String>(
                            title: Text(source.localizeTitle(context)),
                            subtitle: Text(source.localizeSubtitle(context)),
                            contentPadding: kWizardPadding,
                            value: source.id,
                            groupValue: model.sourceId,
                            onChanged: model.setSourceId,
                          ),
                        ),
                      ))
                  .withSpacing(kWizardSpacing),
              Padding(
                padding: const EdgeInsets.all(kYaruPagePadding),
                child: Text(lang.otherOptions),
              ),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: YaruCheckButton(
                  title: Text(lang.installDriversTitle),
                  subtitle: Text(lang.installDriversSubtitle),
                  contentPadding: kWizardPadding,
                  value: model.installDrivers,
                  onChanged: model.setInstallDrivers,
                ),
              ),
              const SizedBox(height: kWizardSpacing),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Tooltip(
                  message: !model.isOnline ? lang.offlineWarning : '',
                  child: YaruCheckButton(
                    title: Text(lang.installCodecsTitle),
                    subtitle: Text(lang.installCodecsSubtitle),
                    contentPadding: kWizardPadding,
                    value: model.installCodecs && model.isOnline,
                    onChanged: model.isOnline ? model.setInstallCodecs : null,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      snackBar: model.onBattery
          ? SnackBar(
              width: 500,
              dismissDirection: DismissDirection.none,
              behavior: SnackBarBehavior.floating,
              content: Html(
                style: {
                  'body': Style(
                    color: Theme.of(context).colorScheme.onInverseSurface,
                    margin: Margins.zero,
                  ),
                },
                data: lang.onBatteryWarning(
                    Theme.of(context).colorScheme.error.toHex()),
              ),
              duration: const Duration(days: 1),
              showCloseIcon: true,
            )
          : null,
      isNextEnabled: model.sourceId != null,
      onNext: () async {
        final telemetry = tryGetService<TelemetryService>();
        await telemetry?.addMetrics({
          'Minimal': model.sourceId?.contains('minimal') ?? false,
          'RestrictedAddons': model.installCodecs,
        });
        await model.save();
      },
    );
  }
}

extension on Iterable<Widget> {
  List<Widget> withSpacing(double spacing) {
    return expand((item) sync* {
      yield SizedBox(width: spacing, height: spacing);
      yield item;
    }).skip(1).toList();
  }
}

extension on SourceSelection {
  String localizeTitle(BuildContext context) {
    switch (id) {
      case kFullSourceId:
        return UbuntuBootstrapLocalizations.of(context).fullInstallationTitle;
      case kMinimalSourceId:
        return UbuntuBootstrapLocalizations.of(context)
            .minimalInstallationTitle;
      default:
        return name;
    }
  }

  String localizeSubtitle(BuildContext context) {
    switch (id) {
      case kFullSourceId:
        return UbuntuBootstrapLocalizations.of(context)
            .fullInstallationSubtitle;
      case kMinimalSourceId:
        return UbuntuBootstrapLocalizations.of(context)
            .minimalInstallationSubtitle;
      default:
        return description;
    }
  }
}
