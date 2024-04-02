import 'package:factory_reset_tools/horizontal_page.dart';
import 'package:factory_reset_tools/l10n/factory_reset_tools_localizations.dart';
import 'package:factory_reset_tools/providers/available_media_provider.dart';
import 'package:factory_reset_tools/providers/selected_media_provider.dart';
import 'package:flutter/material.dart';
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
            const YaruTile(
              title: Text('No removable storage is detected'),
              subtitle: Text(
                'You need a USB storage to create a Factory Reset Media.',
              ),
            ),
          ];
        } else {
          return drives.map((drive) {
            final sizeInGiB = drive.size.toDouble() / (1 << 30).toDouble();
            final sizeString = '${sizeInGiB.toStringAsFixed(1)} GiB';
            return OptionButton(
              title: Text(drive.name),
              subtitle: Text('${drive.devicePath} $sizeString'),
              value: drive.id,
              groupValue: selectedMedia?.id,
              onChanged: (value) =>
                  ref.read(selectedMediaProvider.notifier).selectDrive(drive),
            );
          }).toList();
        }
      },
      error: (error, stackTrace) => [
        const YaruTile(
          title: Text('Error'),
          subtitle: Text('An error occurred while fetching the drives.'),
        ),
      ],
      loading: () => [
        const YaruTile(
          title: Text('Loading...'),
          subtitle: Text('Please wait while fetching the drives.'),
        ),
      ],
    );

    return HorizontalPage(
      windowTitle: lang.windowTitle,
      title: lang.createUsbTitle,
      image: SvgPicture.asset('assets/images/cogwheel.svg'),
      isNextEnabled: selectedMedia != null,
      children: [
        Text(lang.createUsbBody),
        Text(lang.createUsbListExplanation),
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
