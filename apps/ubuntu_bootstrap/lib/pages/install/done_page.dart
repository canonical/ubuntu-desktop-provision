import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/install/install_model.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

class DonePage extends ConsumerWidget {
  const DonePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = UbuntuBootstrapLocalizations.of(context);
    final model = ref.watch(installModelProvider);
    final theme = Theme.of(context);
    final mascot = ref.watch(pageImagesProvider).get('done');
    final isCoreDesktop =
        model.provisioningMode == ProvisioningMode.coreDesktop;

    return WizardPage(
      title: YaruWindowTitleBar(title: Text(lang.installationCompleteTitle)),
      content: Row(
        children: [
          const Spacer(),
          Expanded(
            flex: 7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (mascot != null)
                  ConstrainedBox(
                    constraints: const BoxConstraints.tightFor(height: 250),
                    child: mascot,
                  ),
                const SizedBox(),
                Text(
                  isCoreDesktop
                      ? lang.rebootToConfigure(model.productInfo.toString())
                      : lang.readyToUse(model.productInfo.toString()),
                  style: theme.textTheme.headlineSmall,
                  textAlign: TextAlign.center,
                ),
                Text(
                  isCoreDesktop
                      ? lang.rebootToConfigureWarning
                      : lang.restartWarningBody,
                  textAlign: TextAlign.center,
                ),
                IntrinsicWidth(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (!isCoreDesktop) ...[
                        Expanded(
                          child: OutlinedButton(
                            onPressed: YaruWindow.of(context).close,
                            child: Text(lang.continueTesting),
                          ),
                        ),
                        const SizedBox(width: kWizardSpacing),
                      ],
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () async {
                            final window = YaruWindow.of(context);
                            await model.reboot().then((_) => window.close());
                          },
                          child: Text(lang.restartNow),
                        ),
                      ),
                    ],
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
