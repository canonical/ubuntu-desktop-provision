import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_init/src/ubuntu_pro/ubuntu_pro_l10n.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

class UbuntuProPage extends ConsumerWidget {
  const UbuntuProPage({super.key});

  static Future<bool> load(WidgetRef ref) async => true;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = UbuntuProLocalizations.of(context);
    return WizardPage(
      title: YaruWindowTitleBar(
        title: Text(l10n.ubuntuProPageTitle),
      ),
      content: const Center(
        child: Text('Ubuntu Pro'),
      ),
      bottomBar: WizardBar(
        leading: WizardButton.previous(context),
        trailing: [
          WizardButton.next(context),
        ],
      ),
    );
  }
}
