import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/source/not_enough_disk_space/not_enough_disk_space_model.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

class NotEnoughDiskSpacePage extends ConsumerWidget with ProvisioningPage {
  const NotEnoughDiskSpacePage({super.key});

  @override
  Future<bool> load(BuildContext context, WidgetRef ref) async {
    return ref.read(notEnoughDiskSpaceModelProvider).init();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(notEnoughDiskSpaceModelProvider);
    final lang = UbuntuBootstrapLocalizations.of(context);
    final flavor = ref.watch(flavorProvider);
    final theme = Theme.of(context);
    final boldTextTheme = Theme.of(context)
        .textTheme
        .bodyLarge!
        .copyWith(fontWeight: FontWeight.bold);

    return HorizontalPage(
      windowTitle: lang.notEnoughDiskSpaceTitle,
      title: lang.notEnoughDiskSpaceUbuntu(flavor.displayName),
      bottomBar: const WizardBar(
        leading: BackWizardButton(),
      ),
      children: [
        Text(lang.notEnoughDiskSpaceBody(flavor.displayName)),
        Table(
          defaultColumnWidth: const IntrinsicColumnWidth(),
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: [
            TableRow(
              children: [
                const SizedBox(),
                TableCell(
                  child: Text(
                    lang.notEnoughDiskSpaceRequired,
                    style: boldTextTheme,
                  ),
                ),
                TableCell(
                  child: Text(
                    context.formatByteSize(model.installMinimumSize),
                    style: boldTextTheme,
                  ),
                ),
              ].withSpacing(kWizardSpacing / 2),
            ),
            TableRow(
              children: [
                TableCell(
                  child: Icon(
                    YaruIcons.warning_filled,
                    color: theme.colorScheme.error,
                  ),
                ),
                TableCell(
                  child: Text(
                    lang.notEnoughDiskSpaceAvailable,
                    style: boldTextTheme.copyWith(
                      color: theme.colorScheme.error,
                    ),
                  ),
                ),
                TableCell(
                  child: Text(
                    context.formatByteSize(model.largestDiskSize),
                    style: boldTextTheme.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ].withSpacing(kWizardSpacing / 2),
            ),
          ],
        ),
        ElevatedButton(
          onPressed: () async {
            await YaruWindow.of(context).close();
            // TODO: tell subiquity to quit?
          },
          child: Text(lang.quitButtonText),
        ),
      ].withSpacing(kWizardSpacing),
    );
  }
}
