import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
class CodecsAndDriversPage extends ConsumerWidget with ProvisioningPage {
  CodecsAndDriversPage({super.key});

  final ScrollController _scrollController = ScrollController();

  @override
  Future<bool> load(BuildContext context, WidgetRef ref) {
    return ref.read(sourceModelProvider).init().then((_) => true);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(sourceModelProvider);
    final lang = UbuntuBootstrapLocalizations.of(context);
    final scrollBarPadding =
        (ScrollbarTheme.of(context).thickness?.resolve({}) ?? 6) * 4;

    return HorizontalPage(
      windowTitle: lang.codecsAndDriversPageTitle,
      title: lang.codecsAndDriversPageDescription,
      expandContent: true,
      content: Center(
        child: Scrollbar(
          controller: _scrollController,
          thumbVisibility: true,
          child: SingleChildScrollView(
            controller: _scrollController,
            child: Padding(
              padding: EdgeInsets.only(right: scrollBarPadding),
              child: Column(
                children: [
                  Text(lang.codecsAndDriversPageBody),
                  const SizedBox(height: kWizardSpacing),
                  // TODO(Lukas): Add a proper check when we know where to get this information.
                  if (false)
                    // ignore: dead_code
                    _InfoBox(
                      title: lang.codecsAndDriversNvidiaNote,
                      subtitle: lang.codecsAndDriversNvidiaBody,
                    ),
                  const SizedBox(height: kWizardSpacing),
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
                        onChanged:
                            model.isOnline ? model.setInstallCodecs : null,
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
          'RestrictedAddons': model.installCodecs,
        });
        await model.save();
      },
    );
  }
}

class _InfoBox extends StatelessWidget {
  const _InfoBox({
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    const baseColor = YaruColors.blue;

    return Row(
      children: [
        Expanded(
          child: YaruBorderContainer(
            color: baseColor.withOpacity(0.1),
            border: Border.all(color: baseColor),
            borderRadius: kWizardBorderRadius,
            child: ListTile(
              leading: const Padding(
                padding: EdgeInsets.only(top: 6),
                child: Icon(Icons.info_outlined),
              ),
              iconColor: baseColor,
              title: Text(
                title,
                style: theme.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  height: 1.8,
                ),
              ),
              subtitle: Text(
                subtitle,
                style: theme.textTheme.bodyMedium,
              ),
              contentPadding: kWizardTilePadding,
              isThreeLine: true,
            ),
          ),
        ),
      ],
    );
  }
}
