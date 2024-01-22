import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ubuntu_init/src/privacy/privacy_l10n.dart';
import 'package:ubuntu_init/src/privacy/privacy_model.dart';
import 'package:ubuntu_provision/interfaces.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

class PrivacyPage extends ConsumerWidget with ProvisioningPage {
  const PrivacyPage({super.key});

  @override
  Future<bool> load(BuildContext context, WidgetRef ref) {
    return ref.read(privacyModelProvider).init();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = PrivacyLocalizations.of(context);
    final model = ref.watch(privacyModelProvider);
    return WizardPage(
      title: YaruWindowTitleBar(
        title: Text(l10n.privacyPageTitle),
      ),
      content: FractionallySizedBox(
        widthFactor: 0.5,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SvgPicture.asset('assets/privacy.svg', package: 'ubuntu_init'),
                const SizedBox(height: 32),
                Text(
                  l10n.privacyLocationTitle,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 16),
                Text(l10n.privacyLocationSubtitle),
                const SizedBox(height: 32),
                YaruSwitchListTile(
                  value: model.isLocationEnabled,
                  onChanged: model.setLocationEnabled,
                  title: Text(l10n.privacyLocationEnable),
                ),
                const SizedBox(height: 32),
                Html(
                  data:
                      '<a href="$kPrivacyPolicyUrl">${l10n.privacyPolicyLink}</a>',
                  shrinkWrap: true,
                  style: {
                    'body': Style(margin: Margins.zero),
                    'a': Style(color: Theme.of(context).colorScheme.link),
                  },
                  onLinkTap: (url, _, __) => launchUrl(url!),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomBar: const WizardBar(
        leading: PreviousWizardButton(),
        trailing: [
          NextWizardButton(),
        ],
      ),
    );
  }
}
