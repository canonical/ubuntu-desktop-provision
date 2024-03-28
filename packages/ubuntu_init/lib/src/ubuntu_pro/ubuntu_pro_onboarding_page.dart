import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_init/src/init_step.dart';
import 'package:ubuntu_init/src/ubuntu_pro/ubuntu_pro_widgets.dart';
import 'package:ubuntu_init/ubuntu_init.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

class UbuntuProOnboardingPage extends ConsumerWidget with ProvisioningPage {
  const UbuntuProOnboardingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = UbuntuProLocalizations.of(context);
    final model = ref.watch(ubuntuProOnboardingModelProvider);
    return HorizontalPage(
      windowTitle: l10n.ubuntuProPageTitle,
      title: '',
      bottomBar: WizardBar(
        leading: const BackWizardButton(),
        trailing: [
          WizardButton(
            label: UbuntuLocalizations.of(context).nextLabel,
            onActivated:
                model.selection == UbuntuProOnboardingPageSelection.skipForNow
                    ? () => Wizard.of(context).jump(InitStep.privacy.route)
                    : Wizard.of(context).next,
          )
        ],
      ),
      imageTitleWidget: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            l10n.ubuntuProSubscriptionDescription,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: kWizardSpacing / 2),
          Html(
            data: l10n.ubuntuProSubscriptionFreeForPersonalUse(
              kUbuntuProUrl.replaceFirst('https://', ''),
            ),
            style: {
              'body': Style(margin: Margins.zero),
              'a': Style(
                color: Theme.of(context).colorScheme.link,
              ),
            },
            onLinkTap: (url, _, __) => launchUrl(url!),
          ),
        ],
      ),
      children: [
        ProOnboardingSelectionTile(
          label: l10n.ubuntuProOnBoardingSkipForNow,
          subtitle: l10n.ubuntuProOnBoardingSkipForNowDescription,
          selection: UbuntuProOnboardingPageSelection.skipForNow,
        ),
        const SizedBox(height: kWizardSpacing / 2),
        ProOnboardingSelectionTile(
          label: l10n.ubuntuProOnBoardingEnableUbuntuPro,
          subtitle: l10n.ubuntuProOnBoardingEnableUbuntuProDescription,
          selection: UbuntuProOnboardingPageSelection.enableUbuntuPro,
        ),
      ],
    );
  }
}
