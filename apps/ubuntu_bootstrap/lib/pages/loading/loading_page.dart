import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/loading/loading_provider.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

class LoadingPage extends ConsumerWidget with ProvisioningPage {
  const LoadingPage({super.key});

  @override
  Future<bool> load(BuildContext context, WidgetRef ref) async {
    await ref.watch(loadingProvider.future);
    return true;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final flavor = ref.watch(flavorProvider);
    final lang = UbuntuBootstrapLocalizations.of(context);
    final style = Theme.of(context).textTheme.headlineSmall!;

    return WizardPage(
      title: YaruWindowTitleBar(
        title: Text(lang.loadingPageTitle(flavor.displayName)),
        closeSemanticLabel: lang.closeIconSemanticLabel,
        maximizeSemanticLabel: lang.maximizeIconSemanticLabel,
        minimizeSemanticLabel: lang.minimizeIconSemanticLabel,
      ),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Hero(
            tag: 'loading',
            child: SizedBox.square(
              dimension: 72,
              child: RepaintBoundary(child: YaruCircularProgressIndicator()),
            ),
          ),
          const SizedBox(height: kWizardSpacing * 2),
          Text(lang.loadingHeader(flavor.displayName), style: style),
        ],
      ),
    );
  }
}
