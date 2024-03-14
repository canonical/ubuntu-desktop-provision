import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/source/source_model.dart';
import 'package:ubuntu_bootstrap/services.dart';
import 'package:ubuntu_bootstrap/widgets/info_box.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

export 'source_model.dart' show kFullSourceId, kMinimalSourceId;

/// A page where the user can decide whether they want to install 3rd party
/// drivers or codecs.
class CodecsAndDriversPage extends ConsumerWidget with ProvisioningPage {
  CodecsAndDriversPage({super.key});

  @override
  Future<bool> load(BuildContext context, WidgetRef ref) {
    return ref.read(sourceModelProvider).init().then((_) => true);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(sourceModelProvider);
    final lang = UbuntuBootstrapLocalizations.of(context);
    final flavor = getService<FlavorService>().flavor;

    return HorizontalPage(
      windowTitle: lang.codecsAndDriversPageTitle,
      title: lang.codecsAndDriversPageDescription,
      contentFlex: 3,
      content: Column(
        children: [
          Text(lang.codecsAndDriversPageBody(flavor.displayName)),
          const SizedBox(height: kWizardSpacing),
          // TODO(Lukas): Add a proper check when we know where to get this information.
          if (false)
            // ignore: dead_code
            InfoBox(
              title: lang.codecsAndDriversNvidiaNote,
              subtitle: lang.codecsAndDriversNvidiaBody,
              isThreeLine: true,
            ),
          const SizedBox(height: kWizardSpacing),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: YaruCheckButton(
              title: Text(
                lang.installDriversTitle,
                maxLines: 2,
              ),
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
                title: Text(
                  lang.installCodecsTitle,
                  maxLines: 2,
                ),
                subtitle: Text(lang.installCodecsSubtitle),
                contentPadding: kWizardPadding,
                value: model.installCodecs && model.isOnline,
                onChanged: model.isOnline ? model.setInstallCodecs : null,
              ),
            ),
          ),
        ],
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
          'RestrictedAddons': model.installCodecs,
        });
        await model.save();
      },
    );
  }
}
