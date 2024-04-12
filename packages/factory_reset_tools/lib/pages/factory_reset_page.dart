import 'package:factory_reset_tools/dbus/factory_reset.dart';
import 'package:factory_reset_tools/horizontal_page.dart';
import 'package:factory_reset_tools/l10n/factory_reset_tools_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

const defaultOptionKey = ResetOptionType.factoryReset;

final _selectedResetOptionProvider =
    StateProvider<ResetOptionType>((ref) => defaultOptionKey);
final _resetOptionsProvider =
    Provider<List<BootOption>>((ref) => getResetOptions());

class FactoryResetPage extends ConsumerWidget {
  const FactoryResetPage({super.key});

  Future<void> doExecute(
    BuildContext context,
    ResetOptionType selectedOption,
  ) async {
    try {
      await startCommandViaDbus(selectedOption);
      // ignore: avoid_catches_without_on_clauses
    } catch (e) {
      if (!context.mounted) return;
      final lang = FactoryResetToolsLocalizations.of(context);
      await showDialog<String>(
        context: context,
        builder: (context) => AlertDialog(
          titlePadding: EdgeInsets.zero,
          title: YaruDialogTitleBar(
            title: Text(lang.failed),
          ),
          content: Text(e.toString()),
          actions: <Widget>[
            OutlinedButton(
              onPressed: () => Navigator.pop(context),
              child: Text(lang.ok),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = FactoryResetToolsLocalizations.of(context);
    final options = ref.watch(_resetOptionsProvider);
    final selectedOption = ref.watch(_selectedResetOptionProvider);
    final optionsWidgets = options.map((option) {
      return OptionButton(
        title: Text(option.title),
        value: option.type,
        groupValue: selectedOption,
        onChanged: (value) => ref
            .read(_selectedResetOptionProvider.notifier)
            .state = value ?? options.first.type,
        subtitle:
            option.description != null ? Text(option.description ?? '') : null,
      );
    }).withSpacing(kWizardSpacing / 2);

    final buttonLabel = switch (selectedOption) {
      ResetOptionType.factoryReset => lang.restore,
      ResetOptionType.fwSetup => lang.reboot,
    };

    return HorizontalPage(
      windowTitle: lang.windowTitle,
      title: lang.factoryResetTitle,
      image: SvgPicture.asset('assets/images/safe.svg'),
      bottomBar: WizardBar(
        leading: const BackWizardButton(),
        trailing: [
          WizardButton(
            label: buttonLabel,
            highlighted: true,
            onActivated: () => doExecute(context, selectedOption),
          ),
        ],
      ),
      children: optionsWidgets,
    );
  }
}
