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
        const SizedBox(height: kWizardSpacing / 2),
        Text(
          switch (model.actions.length) {
            0 => lang.tpmActionErrorSupportNoActionLabel,
            1 => lang.tpmActionErrorSupportSingleLabel,
            _ => lang.tpmActionErrorSupportLabel
          },
        ),
      ],
      if (model.actions.isNotEmpty) ...[
        const SizedBox(height: kWizardSpacing / 2),
        YaruExpansionPanel(
          shrinkWrap: true,
          headers: [
            for (final (i, action) in model.actions.indexed)
              Text(
                model.actions.length > 1
                    ? lang.tpmActionSolutionLabel(
                        i + 1,
                        action.title(lang, model.tpmError?.kind),
                      )
                    : lang.tpmActionSingleSolutionLabel(
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

  final CoreBootFixActionWithCategoryAndArgs action;
  final CoreBootAvailabilityErrorKind? errorKind;
  final bool isLoading;

  @override
  ConsumerState<_ActionBody> createState() => _ActionBodyState();
}

class _ActionBodyState extends ConsumerState<_ActionBody> {
  late bool isConfirmed;
  SubiquityException? error;

  @override
  void initState() {
    super.initState();
    isConfirmed = widget.action.warning == null;
  }

  Future<void> next(BuildContext context) async {
    final wizard = Wizard.maybeOf(context);
    final rootWizard = Wizard.maybeOf(context, root: true);
    final effectiveWizard = (wizard?.hasNext ?? false) ? wizard : rootWizard;
    try {
      await effectiveWizard?.next();
    } on WizardException catch (_) {
      if (effectiveWizard != rootWizard) {
        await rootWizard?.next();
      }
    }
    // skip this page when returning here from the next page
    effectiveWizard?.back();
  }

  Future<void> tryPerformAction() async {
    final err = await ref
        .read(tpmActionModelProvider.notifier)
        .performAction(widget.action, fixedCallback: () => next(context));
    if (err != null) {
      setState(() => error = err);
    }
  }

  @override
  Widget build(BuildContext context) {
    final lang = UbuntuBootstrapLocalizations.of(context);
    final headerStrings = [
      widget.action.description(lang, widget.errorKind),
      widget.action.firmwareHint(lang, widget.errorKind),
      widget.action.caveats(lang),
    ].nonNulls;

    return Padding(
      padding: EdgeInsetsGeometry.only(
        left: kYaruPagePadding,
        right: kYaruPagePadding,
        bottom: kYaruPagePadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          for (final headerString in headerStrings) Text(headerString),
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
                onPressed: isConfirmed && !widget.isLoading && error == null
                    ? tryPerformAction
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
          if (error != null)
            YaruInfoBox(
              yaruInfoType: YaruInfoType.danger,
              title: Text(lang.tpmActionErrorTitle),
              child: Text(lang.tpmActionErrorDescription),
            ),
        ].withSpacing(kWizardSpacing / 2),
      ),
    );
  }
}

extension on TpmActionModel {
  CoreBootEncryptionSupportError? get tpmError =>
      tpmDisallowedCapability?.errors?.first;

  List<CoreBootFixActionWithCategoryAndArgs> get actions =>
      tpmError?.actions.where((a) => !a.forUser).toList() ?? [];

  bool get isFixed => tpmDisallowedCapability == null;
}
