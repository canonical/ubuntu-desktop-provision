import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/landscape/landscape_page.dart';
import 'package:ubuntu_bootstrap/pages/landscape/landscape_widgets.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

class UbuntuProOnboardingPage extends ConsumerWidget with ProvisioningPage {
  const UbuntuProOnboardingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = UbuntuBootstrapLocalizations.of(context);

    return HorizontalPage(
      windowTitle: l10n.landscapePageTitle,
      title: '',
      imageTitleWidget: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            l10n.landscapeSubscriptionDescription,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: kWizardSpacing / 2),
          Html(
            data: l10n.landscapeSubscriptionFreeForPersonalUse(
              kUbuntuLandscapeUrl.replaceFirst('https://', ''),
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
          label: l10n.landscapeOnBoardingSkipForNow,
          subtitle: l10n.landscapeOnBoardingSkipForNowDescription,
          skipPro: true,
        ),
        const SizedBox(height: kWizardSpacing / 2),
        ProOnboardingSelectionTile(
          label: l10n.landscapeOnBoardingEnableUbuntuPro,
          subtitle: l10n.landscapeOnBoardingEnableUbuntuProDescription,
          skipPro: false,
        ),
      ],
    );
  }
}
