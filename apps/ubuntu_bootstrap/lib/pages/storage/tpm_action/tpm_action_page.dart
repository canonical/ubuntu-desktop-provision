import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/storage/tpm_action/tpm_action_model.dart';
import 'package:ubuntu_bootstrap/pages/storage/tpm_action/tpm_action_x.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

class TpmActionPage extends ConsumerWidget with ProvisioningPage {
  const TpmActionPage({super.key});
  @override
  Future<bool> load(BuildContext context, WidgetRef ref) async =>
      ref.read(tpmActionModelProvider).init();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = UbuntuBootstrapLocalizations.of(context);
    final model = ref.watch(tpmActionModelProvider);

    final children = [
      if (model.tpmError != null) ...[
        Text(model.tpmError!.kind.label(lang)),
        Text(
          model.actions.isNotEmpty
              ? lang.tpmActionErrorSupportLabel
              : lang.tpmActionErrorSupportNoActionLabel,
        ),
      ],
      if (model.actions.isNotEmpty) ...[
        const SizedBox(height: kWizardSpacing / 2),
        YaruExpansionPanel(
          shrinkWrap: true,
          headers: [
            for (final (i, action) in model.actions.indexed)
              Text(
                lang.tpmActionSolutionLabel(
                  i + 1,
                  action.title(lang, model.tpmError?.kind),
                ),
              ),
          ],
          children: [
            for (final action in model.actions)
              _ActionBody(
                action: action,
                errorKind: model.tpmError?.kind,
                isLoading: model.isLoading,
              ),
          ],
        ),
      ],
      if (model.tpmError != null) ...[
        const SizedBox(height: kWizardSpacing / 2),
        YaruExpandable(
          expandButtonPosition: YaruExpandableButtonPosition.start,
          header: Text(lang.tpmActionDetailsLabel),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(model.tpmError!.kind.name),
              Text(model.tpmError!.message),
            ],
          ),
        ),
      ],
    ];

    return HorizontalPage(
      windowTitle: lang.installationTypeAdvancedTitle,
      title: lang.tpmActionPageTitle,
      bottomBar: WizardBar(
        leading: const BackWizardButton(),
        trailing: [if (model.isFixed) NextWizardButton()],
      ),
      // TODO: Discuss possibility of 'no errors' state. If every every
      // sequence ends with a reboot, this should not be reachable.
      children: model.isFixed ? [Text('No errors')] : children,
    );
  }
}

class _ActionBody extends ConsumerStatefulWidget {
  const _ActionBody({
    required this.action,
    this.errorKind,
    this.isLoading = false,
  });

  final CoreBootFixAction action;
  final CoreBootAvailabilityErrorKind? errorKind;
  final bool isLoading;

  @override
  ConsumerState<_ActionBody> createState() => _ActionBodyState();
}

class _ActionBodyState extends ConsumerState<_ActionBody> {
  late bool isConfirmed;

  @override
  void initState() {
    super.initState();
    isConfirmed = widget.action.warning == null;
  }

  @override
  Widget build(BuildContext context) {
    final notifier = ref.read(tpmActionModelProvider.notifier);
    final lang = UbuntuBootstrapLocalizations.of(context);
    return Padding(
      padding: EdgeInsetsGeometry.only(
        left: kYaruPagePadding,
        right: kYaruPagePadding,
        bottom: kYaruPagePadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(widget.action.description(lang)),
          if (widget.action.warning != null) ...[
            YaruInfoBox(
              yaruInfoType: YaruInfoType.warning,
              title: Text(widget.action.warning!.title(lang)),
              child: Text(widget.action.warning!.body(lang)),
            ),
            YaruCheckButton(
              value: isConfirmed,
              onChanged: (value) => setState(() => isConfirmed = value!),
              title: Text(widget.action.warning!.confirmationLabel(lang)),
            ),
          ],
          Row(
            children: [
              OutlinedButton(
                onPressed: isConfirmed
                    ? () => notifier.performAction(widget.action)
                    : null,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(widget.action.label(lang)),
                    if (widget.isLoading)
                      SizedBox.square(
                        dimension: IconTheme.of(context).size,
                        child: const YaruCircularProgressIndicator(
                          strokeWidth: 3,
                        ),
                      ),
                  ].withSpacing(kWizardSpacing / 2),
                ),
              ),
            ],
          ),
        ].withSpacing(kWizardSpacing / 2),
      ),
    );
  }
}

extension on TpmActionModel {
  CoreBootEncryptionSupportError? get tpmError =>
      tpmDisallowedCapability?.errors?.first;

  List<CoreBootFixAction> get actions =>
      tpmError?.actions.where((a) => !a.forUser).map((a) => a.type).toList() ??
      [];

  bool get isFixed => tpmDisallowedCapability == null;
}
