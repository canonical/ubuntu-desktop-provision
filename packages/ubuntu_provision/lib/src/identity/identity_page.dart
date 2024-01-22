import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_provision/interfaces.dart';
import 'package:ubuntu_provision/src/identity/identity_l10n.dart';
import 'package:ubuntu_provision/src/identity/identity_model.dart';
import 'package:ubuntu_provision/src/identity/identity_widgets.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

// The horizontal indentation of the radio button.
// const _kRadioButtonIndentation = 36.0;

/// The installer page for setting up the user data.
///
/// It uses [WizardPage] and `WizardAction` to create an installer page.
class IdentityPage extends ConsumerWidget with ProvisioningPage {
  /// Creates a the installer page for setting up the user data.
  const IdentityPage({super.key});

  @override
  Future<bool> load(BuildContext context, WidgetRef ref) {
    return ref.read(identityModelProvider).init().then((_) => true);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = IdentityLocalizations.of(context);

    return WizardPage(
      contentPadding: EdgeInsets.zero,
      title: YaruWindowTitleBar(
        title: Text(lang.identityPageTitle),
      ),
      content: LayoutBuilder(builder: (context, constraints) {
        final fieldPadding =
            EdgeInsets.symmetric(horizontal: kWizardPadding.left, vertical: 10);
        final fieldWidth = (constraints.maxWidth - fieldPadding.horizontal) *
            kWizardWidthFraction;

        return ListView(
          children: [
            Padding(
              padding: fieldPadding,
              child: RealNameFormField(fieldWidth: fieldWidth),
            ),
            Padding(
              padding: fieldPadding,
              child: HostnameFormField(fieldWidth: fieldWidth),
            ),
            Padding(
              padding: fieldPadding,
              child: UsernameFormField(fieldWidth: fieldWidth),
            ),
            Padding(
              padding: fieldPadding,
              child: PasswordFormField(fieldWidth: fieldWidth),
            ),
            Padding(
              padding: fieldPadding,
              child: ConfirmPasswordFormField(fieldWidth: fieldWidth),
            ),
            const SizedBox(height: kWizardSpacing / 2),
            const AutoLoginSwitch(),
            const SizedBox(height: kWizardSpacing / 2),
            const Padding(
              padding: kWizardPadding,
              child: UseActiveDirectoryCheckButton(),
            ),
          ],
        );
      }),
      bottomBar: WizardBar(
        leading: const PreviousWizardButton(),
        trailing: [
          NextWizardButton(
            enabled: ref.watch(identityModelProvider.select((m) => m.isValid)),
            onNext: ref.read(identityModelProvider).save,
          ),
        ],
      ),
    );
  }
}
