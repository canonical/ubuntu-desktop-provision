import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_provision/src/active_directory/active_directory_dialogs.dart';
import 'package:ubuntu_provision/src/active_directory/active_directory_widgets.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';

class ActiveDirectoryPage extends ConsumerWidget with ProvisioningPage {
  const ActiveDirectoryPage({super.key});

  @override
  Future<bool> load(BuildContext context, WidgetRef ref) {
    return ref.read(activeDirectoryModelProvider).init();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = ActiveDirectoryLocalizations.of(context);
    return HorizontalPage(
      windowTitle: lang.activeDirectoryTitle,
      title: lang.activeDirectoryHeader,
      bottomBar: WizardBar(
        leading: const BackWizardButton(),
        trailing: [
          NextWizardButton(
            enabled: ref
                .watch(activeDirectoryModelProvider.select((m) => m.isValid)),
            onNext: () async {
              final model = ref.read(activeDirectoryModelProvider);
              await model.save();
              await model.getJoinResult().then((result) {
                if (context.mounted &&
                    (result == AdJoinResult.JOIN_ERROR ||
                        result == AdJoinResult.PAM_ERROR)) {
                  showActiveDirectoryErrorDialog(context);
                }
              });
            },
          ),
        ],
      ),
      children: [
        Text(lang.activeDirectoryInfo(ref.watch(flavorProvider).displayName)),
        const SizedBox(height: kWizardSpacing),
        const DomainNameFormField(),
        const SizedBox(height: kWizardSpacing),
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: FilledButton(
            onPressed:
                ref.read(activeDirectoryModelProvider).pingDomainController,
            child: Text(lang.activeDirectoryTestConnection),
          ),
        ),
        const SizedBox(height: kWizardSpacing),
        const AdminNameFormField(),
        const SizedBox(height: kWizardSpacing),
        const PasswordFormField(),
      ],
    );
  }
}
