import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_bootstrap/l10n/ubuntu_bootstrap_localizations.dart';
import 'package:ubuntu_bootstrap/pages/landscape/landscape_model.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_widgets/ubuntu_widgets.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

class UbuntuLandscapeSuccessAttachPage extends ConsumerWidget
    with ProvisioningPage {
  const UbuntuLandscapeSuccessAttachPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = UbuntuBootstrapLocalizations.of(context);
    final name = ModalRoute.of(context)!.settings.name!.replaceFirst('/', '');
    final image = ref.watch(pageImagesProvider).get(name);

    return WizardPage(
      title: YaruWindowTitleBar(
        title: Text(l10n.landscapePageTitle),
      ),
      content: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              if (image != null) image,
              const SizedBox(height: kWizardSpacing),
              YaruBorderContainer(
                padding: const EdgeInsets.all(kWizardSpacing),
                border: Border.all(
                  color: Theme.of(context).colorScheme.success,
                  width: 2,
                ),
                color: Theme.of(context).colorScheme.success.withOpacity(0.1),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SuccessIcon(),
                    const SizedBox(width: kWizardSpacing / 2),
                    Flexible(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            l10n.landscapeSucessAttachHeader,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(fontWeight: FontWeight.w500),
                          ),
                          Text(
                            l10n.landscapeSucessAttachDescription,
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomBar: const WizardBar(
        leading: BackWizardButton(),
        trailing: [
          NextWizardButton(),
        ],
      ),
    );
  }
}
