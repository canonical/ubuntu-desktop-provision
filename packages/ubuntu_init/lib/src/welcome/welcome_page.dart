import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ubuntu_init/src/welcome/welcome_l10n.dart';
import 'package:ubuntu_init/src/welcome/welcome_model.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';
import 'package:yaru_icons/yaru_icons.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

class WelcomePage extends ConsumerWidget {
  const WelcomePage({super.key});

  static Future<bool> load(WidgetRef ref) async => true;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = WelcomeLocalizations.of(context);
    final model = ref.watch(welcomeModelProvider);
    final theme = Theme.of(context);
    return WizardPage(
      title: YaruWindowTitleBar(
        title: Text(l10n.welcomePageTitle),
      ),
      content: ListView(
        children: [
          const SizedBox(height: kWizardSpacing * 2),
          SvgPicture.asset('assets/ubuntu.svg', package: 'ubuntu_init'),
          const SizedBox(height: kWizardSpacing),
          Text(
            l10n.welcomePageHeader(model.productInfo),
            style: theme.textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: kWizardSpacing * 2),
          Center(
            child: IntrinsicWidth(
              child: Column(
                children: [
                  const Divider(height: 1),
                  const SizedBox(height: kWizardSpacing),
                  Text(
                    l10n.welcomeWhatsNew,
                    style: theme.textTheme.bodyMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: kWizardSpacing / 2),
                  YaruTile(
                    leading: Icon(YaruIcons.log_in, color: theme.primaryColor),
                    title: Text(l10n.welcomeStartTitle),
                    subtitle: Text(l10n.welcomeStartSubtitle),
                  ),
                  YaruTile(
                    leading: Icon(YaruIcons.application_bag,
                        color: theme.primaryColor),
                    title: Text(l10n.welcomeStoreTitle),
                    subtitle: Text(l10n.welcomeStoreSubtitle),
                  ),
                  YaruTile(
                    leading: Icon(YaruIcons.lock, color: theme.primaryColor),
                    title: Text(l10n.welcomeSecurityTitle),
                    subtitle: Text(l10n.welcomeSecuritySubtitle),
                  ),
                  const SizedBox(height: kWizardSpacing),
                ],
              ),
            ),
          ),
          Center(
            child: Html(
              data: l10n.welcomeChangelogLabel(
                model.releaseNotesURL(Localizations.localeOf(context)),
              ),
              style: {
                'body': Style(margin: Margins.zero),
                'a': Style(color: Theme.of(context).colorScheme.link),
              },
              shrinkWrap: true,
              onLinkTap: (url, _, __) => launchUrl(url!),
            ),
          ),
        ],
      ),
      bottomBar: WizardBar(
        trailing: [
          WizardButton.next(context),
        ],
      ),
    );
  }
}
