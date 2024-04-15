import 'package:factory_reset_tools/horizontal_page.dart';
import 'package:factory_reset_tools/l10n/factory_reset_tools_localizations.dart';
import 'package:factory_reset_tools/providers/available_media_provider.dart';
import 'package:factory_reset_tools/providers/selected_media_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

class MediaSelectorPage extends ConsumerWidget {
  const MediaSelectorPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = FactoryResetToolsLocalizations.of(context);

    final availableMedia = ref.watch(availableMediaProvider);
    final selectedMedia = ref.watch(selectedMediaProvider);

    final driveWidgets = availableMedia.when(
      data: (drives) {
        if (drives.isEmpty) {
          return [
            YaruTile(
              title: Text(lang.noMediaDetected),
              subtitle: Text(lang.noMediaDetectedSubtitle),
            ),
          ];
        } else {
          return drives.map((drive) {
            final sizeInGiB = drive.size.toDouble() / (1 << 30).toDouble();
            final sizeString = '${sizeInGiB.toStringAsFixed(1)} GiB';
            final device = drive.devicePath.split('/').last;
            return OptionButton(
              title: Text(
                '$device | ${drive.name}',
                overflow: TextOverflow.ellipsis,
              ),
              trailing: Text(sizeString),
              isThreeLines: false,
              value: drive.id,
              groupValue: selectedMedia?.id,
              onChanged: (value) =>
                  ref.read(selectedMediaProvider.notifier).selectDrive(drive),
            );
          }).toList();
        }
      },
      error: (error, stackTrace) => [
        YaruTile(
          title: Text(lang.error),
          subtitle: Text(lang.errorLoadingDrives),
        ),
      ],
      loading: () => [
        YaruTile(
          title: Text(lang.loading),
          subtitle: Text(lang.loadingDrives),
        ),
      ],
    );

    return HorizontalPage(
      windowTitle: lang.windowTitle,
      title: lang.createUsbTitle,
      image: SvgPicture.asset('assets/images/cogwheel.svg'),
      bottomBar: WizardBar(
        leading: const BackWizardButton(),
        trailing: [
          NextWizardButton(
            enabled: selectedMedia != null,
            highlighted: true,
            label: lang.reformat,
          ),
        ],
      ),
      children: [
        Text(lang.createUsbBody),
        Markdown(
          data: lang.createUsbListExplanation,
          shrinkWrap: true,
          padding: EdgeInsets.zero,
        ),
        ...driveWidgets,
        const SizedBox(height: kWizardSpacing / 2),
        YaruInfoBox(
          yaruInfoType: YaruInfoType.warning,
          isThreeLine: true,
          title: Text(lang.warning),
          subtitle: Text(lang.createUsbWarning),
        ),
      ].withSpacing(kWizardSpacing / 2),
    );
  }
}
