import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_provision/interfaces.dart';
import 'package:ubuntu_provision/src/identity/identity_l10n.dart';
import 'package:ubuntu_provision/src/identity/identity_model.dart';
import 'package:ubuntu_provision/src/identity/identity_widgets.dart';
import 'package:ubuntu_provision/widgets.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';

/// The installer page for setting up the user account.
class IdentityPage extends ConsumerWidget with ProvisioningPage {
  const IdentityPage({super.key});

  @override
  Future<bool> load(BuildContext context, WidgetRef ref) {
    return ref.read(identityModelProvider).init().then((_) => true);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = IdentityLocalizations.of(context);

    return HorizontalPage(
      windowTitle: lang.identityPageTitle,
      title: lang.identityPageTitle,
      contentFlex: 100,
      bottomBar: WizardBar(
        leading: const BackWizardButton(),
        trailing: [
          NextWizardButton(
            enabled: ref.watch(identityModelProvider.select((m) => m.isValid)),
            onNext: ref.read(identityModelProvider).save,
          ),
        ],
      ),
      children: [
        const RealNameFormField(),
        const HostnameFormField(),
        const UsernameFormField(),
        const PasswordFormField(),
        const ConfirmPasswordFormField(),
        const AutoLoginCheckButton(),
        const UseActiveDirectoryCheckButton(),
      ].withSpacing(kWizardSpacing),
    );
  }
}
