import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/try_or_install/try_or_install_model.dart';
import 'package:ubuntu_bootstrap/pages/try_or_install/try_or_install_widgets.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

export 'try_or_install_model.dart' show TryOrInstallOption;

class TryOrInstallPage extends ConsumerWidget with ProvisioningPage {
  const TryOrInstallPage({super.key});

  @override
  Future<bool> load(BuildContext context, WidgetRef ref) {
    return Future.wait([
      ref.read(tryOrInstallModelProvider).init(),
      MascotAvatar.precacheAsset(context),
    ]).then((_) => true);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(tryOrInstallModelProvider);
    final lang = UbuntuBootstrapLocalizations.of(context);
    final flavor = ref.watch(flavorProvider);
    final brightness = Theme.of(context).brightness;
    final locale = Localizations.localeOf(context);

    return WizardPage(
      title: YaruWindowTitleBar(
        title: Text(lang.tryOrInstallPageTitle(flavor.name)),
      ),
      content: Column(
        children: [
          const Spacer(),
          SvgPicture.asset('assets/welcome/logo-${brightness.name}.svg'),
          const Spacer(),
          OptionButton(
            value: TryOrInstallOption.installUbuntu,
            groupValue: model.option,
            title: Text(lang.installOption(flavor.name)),
            subtitle: Text(lang.installDescription(flavor.name)),
            onChanged: (value) => model.selectOption(value!),
          ),
          const SizedBox(height: kWizardSpacing / 2),
          OptionButton(
            value: TryOrInstallOption.tryUbuntu,
            groupValue: model.option,
            title: Text(lang.tryOption(flavor.name)),
            subtitle: Text(lang.tryDescription(flavor.name)),
            onChanged: (value) => model.selectOption(value!),
          ),
          // const SizedBox(height: kContentSpacing / 2),
          // OptionButton(
          //   value: Option.repairUbuntu,
          //   groupValue: model.option,
          //   title: Text(lang.welcomeRepairOption),
          //   subtitle: Text(lang.welcomeRepairDescription),
          //   onChanged: (value) => model.selectOption(value!),
          // ),
          const Spacer(flex: 3),
          Visibility(
            visible: model.isConnected,
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            child: Html(
              shrinkWrap: true,
              data: lang.tryOrInstallReleaseNotesLabel(
                model.releaseNotesURL(locale),
              ),
              style: {
                'body': Style(margin: Margins.zero),
                'a': Style(color: Theme.of(context).colorScheme.link),
              },
              onLinkTap: (url, _, __) => launchUrl(url!),
            ),
          ),
        ],
      ),
      bottomBar: WizardBar(
        leading: const PreviousWizardButton(),
        trailing: [
          WizardButton(
            label: UbuntuLocalizations.of(context).nextLabel,
            visible: model.option == TryOrInstallOption.tryUbuntu,
            execute: YaruWindow.of(context).close,
          ),
          NextWizardButton(
            visible: model.option != TryOrInstallOption.tryUbuntu,
            enabled: model.option != TryOrInstallOption.none,
            arguments: model.option,
          ),
        ],
      ),
    );
  }
}
