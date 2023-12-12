import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

import '../../../l10n.dart';
import 'recovery_key_model.dart';

class RecoveryKeyPage extends StatelessWidget {
  const RecoveryKeyPage({super.key});

  static Future<bool> load(WidgetRef ref) {
    return ref.read(recoveryKeyModelProvider).init();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = UbuntuBootstrapLocalizations.of(context);
    return WizardPage(
      title: YaruWindowTitleBar(
        title: Text(l10n.recoveryKeyTitle),
      ),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(l10n.recoveryKeyCommand),
          const SizedBox(height: kWizardSpacing / 2),
          Container(
            color: Theme.of(context).highlightColor,
            padding:
                const EdgeInsetsDirectional.only(start: 4, top: 2, bottom: 3),
            child: SelectableText(
              kRecoveryKeyCommand,
              style: TextStyle(
                inherit: false,
                fontFamily: 'Ubuntu Mono',
                fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
                textBaseline: TextBaseline.alphabetic,
              ),
            ),
          ),
          const SizedBox(height: kWizardSpacing),
          FractionallySizedBox(
            widthFactor: kWizardWidthFraction,
            child: Html(
              data: l10n.recoveryKeyWarning(
                  Theme.of(context).colorScheme.error.toHex()),
              style: {
                'body': Style(margin: Margins.zero),
              },
            ),
          ),
        ],
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
