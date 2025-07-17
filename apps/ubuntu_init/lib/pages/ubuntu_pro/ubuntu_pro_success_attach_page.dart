import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_init/ubuntu_init.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_widgets/ubuntu_widgets.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

class UbuntuProSuccessAttachPage extends ConsumerWidget with ProvisioningPage {
  const UbuntuProSuccessAttachPage({super.key});

  @override
  Future<bool> load(BuildContext context, WidgetRef ref) async {
    return !ref.watch(ubuntuProModelProvider).skipPro;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = UbuntuProLocalizations.of(context);
    final name = ModalRoute.of(context)!.settings.name!.replaceFirst('/', '');
    final image = ref.watch(pageImagesProvider).get(name);

    return WizardPage(
      title: YaruWindowTitleBar(
        title: Text(l10n.ubuntuProPageTitle),
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
                color: Theme.of(context)
                    .colorScheme
                    .success
                    .withValues(alpha: 0.1),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SuccessIcon(
                      semanticLabel: l10n.successIconSemanticLabel,
                    ),
                    const SizedBox(width: kWizardSpacing / 2),
                    Flexible(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            l10n.ubuntuProSucessAttachHeader,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(fontWeight: FontWeight.w500),
                          ),
                          Text(
                            l10n.ubuntuProSucessAttachDescription,
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
