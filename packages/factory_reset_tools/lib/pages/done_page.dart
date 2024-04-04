import 'package:factory_reset_tools/l10n/factory_reset_tools_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

class DonePage extends ConsumerWidget {
  const DonePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = FactoryResetToolsLocalizations.of(context);
    final theme = Theme.of(context);

    return WizardPage(
      title: YaruWindowTitleBar(title: Text(lang.windowTitle)),
      content: Row(
        children: [
          const Spacer(),
          Expanded(
            flex: 7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ConstrainedBox(
                  constraints: const BoxConstraints.tightFor(height: 150),
                  child: SvgPicture.asset(
                    'assets/images/mascot_no_background.svg',
                  ),
                ),
                const SizedBox(),
                Text(
                  lang.resetMediaReadyTitle,
                  style: theme.textTheme.headlineSmall,
                  textAlign: TextAlign.center,
                ),
                Text(
                  lang.resetMediaReadyBody,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  width: 100,
                  child: FilledButton(
                    onPressed: () async {
                      await YaruWindow.of(context).close();
                    },
                    child: Text(lang.close),
                  ),
                ),
              ].withSpacing(kWizardSpacing),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
