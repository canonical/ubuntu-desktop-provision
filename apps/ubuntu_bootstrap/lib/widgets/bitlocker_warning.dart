import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

class BitlockerInfoBox extends StatelessWidget {
  const BitlockerInfoBox({
    super.key,
    this.yaruInfoType = YaruInfoType.information,
    this.canInstallAlongside = true,
    this.onPressed,
  });
  final VoidCallback? onPressed;
  final YaruInfoType yaruInfoType;
  final bool canInstallAlongside;

  @override
  Widget build(BuildContext context) {
    final l10n = UbuntuBootstrapLocalizations.of(context);
    return Column(
      children: [
        YaruInfoBox(
          yaruInfoType: yaruInfoType,
          title: Text(
            switch (yaruInfoType) {
              YaruInfoType.warning => l10n.bitlockerWarningTitle,
              YaruInfoType.information => l10n.bitlockerInfoTitle,
              _ => throw AssertionError()
            },
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Html(
                data:
                    '${l10n.bitlockerInfoDescription} ${canInstallAlongside ? l10n.bitlockerInfoRecovery : l10n.bitlockerInfoDisable} ${l10n.bitlockerInfoInstructions('https://help.ubuntu.com/bitlocker')}',
                style: {
                  'body': Style(margin: Margins.zero),
                  'a': Style(color: Theme.of(context).colorScheme.link),
                },
                onLinkTap: (url, _, __) => launchUrl(url!),
              ),
              if (onPressed != null)
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: kWizardSpacing / 2),
                  child: OutlinedButton(
                    onPressed: onPressed,
                    child: Text(l10n.restartIntoWindows),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
