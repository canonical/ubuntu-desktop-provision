import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/source/source_model.dart';
import 'package:ubuntu_bootstrap/services.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

final installationTypeProvider =
    StateProvider((ref) => InstallationType.guided);

enum InstallationType {
  guided,
  manual,
  automated;

  String title(UbuntuBootstrapLocalizations lang) {
    switch (this) {
      case InstallationType.guided:
        return lang.guidedInstallationTitle;
      case InstallationType.manual:
        return lang.manualInstallationTitle;
      case InstallationType.automated:
        return lang.automatedInstallationTitle;
    }
  }

  String subtitle(UbuntuBootstrapLocalizations lang) {
    switch (this) {
      case InstallationType.guided:
        return lang.guidedInstallationSubtitle;
      case InstallationType.manual:
        return lang.manualInstallationSubtitle;
      case InstallationType.automated:
        return lang.automatedInstallationSubtitle;
    }
  }
}

/// A page where the user can decide whether they want to do a guided, manual or
/// automated installation.
class InstallationTypePage extends ConsumerWidget with ProvisioningPage {
  InstallationTypePage({super.key});

  @override
  Future<bool> load(BuildContext context, WidgetRef ref) {
    return ref.read(sourceModelProvider).init().then((_) => true);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final installationType = ref.watch(installationTypeProvider);
    final lang = UbuntuBootstrapLocalizations.of(context);

    return HorizontalPage(
      windowTitle: lang.installationTypeTitle,
      title: lang.installationTypeDescription,
      content: Column(
        children: [
          ...InstallationType.values
              .map(_InstallationTypeListTile.new)
              .withSpacing(kWizardSpacing / 2),
        ],
      ),
      onNext: () async {
        final telemetry = tryGetService<TelemetryService>();
        await telemetry?.addMetrics({
          'installation_type': installationType.name,
        });
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

class _InstallationTypeListTile extends ConsumerWidget {
  const _InstallationTypeListTile(this.type);

  final InstallationType type;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final selectedType = ref.watch(installationTypeProvider);
    final isSelected = type == selectedType;
    final lang = UbuntuBootstrapLocalizations.of(context);
    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: YaruBorderContainer(
        color: isSelected
            ? colorScheme.primary.withOpacity(0.2)
            : colorScheme.primaryContainer,
        border: Border.all(
          color: isSelected ? colorScheme.primary : theme.dividerColor,
        ),
        borderRadius: kWizardBorderRadius,
        child: YaruRadioListTile(
          title: Text(
            type.title(lang),
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(type.subtitle(lang)),
          contentPadding: kWizardTilePadding,
          isThreeLine: true,
          value: type,
          groupValue: selectedType,
          onChanged: (_) =>
              ref.read(installationTypeProvider.notifier).state = type,
        ),
      ),
    );
  }
}
