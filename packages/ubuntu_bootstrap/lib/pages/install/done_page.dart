import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/install/install_model.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
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
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MascotAvatar(image: mascot),
                const SizedBox(height: 2 * kWizardSpacing),
                Text(
                  isCoreDesktop
                      ? lang.rebootToConfigure(model.productInfo.toString())
                      : lang.readyToUse(model.productInfo.toString()),
                  style: theme.textTheme.headlineSmall,
                ),
                const SizedBox(height: kWizardSpacing),
                Text(
                  isCoreDesktop
                      ? lang.rebootToConfigureWarning
                      : lang.restartWarningBody,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: kWizardSpacing),
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
              ],
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
