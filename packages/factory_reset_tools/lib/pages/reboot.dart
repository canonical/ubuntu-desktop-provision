import 'package:factory_reset_tools/reboot.dart';
import 'package:flutter/material.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

const defaultOptionKey = 'factory-reset';

class FactoryReset extends StatefulWidget {
  const FactoryReset({super.key});

  @override
  State<FactoryReset> createState() => _FactoryResetState();
}

class _FactoryResetState extends State<FactoryReset> {
  String _selectedOption = defaultOptionKey;
  List<BootOption> options = [];

  @override
  void initState() {
    super.initState();

    options = getResetOptions();
    _selectedOption = options.first.key;
  }

  Future<void> doExecute(BuildContext context) async {
    try {
      await startCommandViaDbus(_selectedOption);
      // ignore: avoid_catches_without_on_clauses
    } catch (e) {
      if (!context.mounted) return;
      await showDialog<String>(
        context: context,
        builder: (context) => AlertDialog(
          titlePadding: EdgeInsets.zero,
          title: const YaruDialogTitleBar(
            title: Text('Failed to run command'),
          ),
          content: Text(e.toString()),
          actions: <Widget>[
            OutlinedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  Widget buildWithMultipleOptions(BuildContext context) {
    final optionsWidgets = options.map((option) {
      return RadioListTile<String>(
        key: Key(option.key),
        value: option.key,
        groupValue: _selectedOption,
        onChanged: (value) =>
            setState(() => _selectedOption = value ?? options.first.key),
        title: Text(option.title),
        subtitle:
            option.description != null ? Text(option.description ?? '') : null,
      );
    }).toList();

    return WizardPage(
      title: const YaruWindowTitleBar(title: Text('Factory Reset Tool')),
      header: const Text('Select an option to start factory reset:'),
      content: Column(
        children: optionsWidgets,
      ),
      bottomBar: WizardBar(
        leading: OutlinedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Back'),
        ),
        trailing: [
          NextWizardButton(
            highlighted: true,
            label: 'Start',
            onExecute: () => doExecute(context),
          ),
        ],
      ),
    );
  }

  Widget buildWithSingleOption(BuildContext context) {
    final option = options.first;
    return WizardPage(
      title: const YaruWindowTitleBar(title: Text('Factory Reset Tool')),
      header: const Text('Are you sure to start the factory reset?'),
      content: Column(
        children: [
          ListTile(
            key: Key(option.key),
            title: Text(option.title),
            subtitle: option.description != null
                ? Text(option.description ?? '')
                : null,
          ),
        ],
      ),
      bottomBar: WizardBar(
        leading: OutlinedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Back'),
        ),
        trailing: [
          NextWizardButton(
            highlighted: true,
            label: 'Reboot',
            onExecute: () => doExecute(context),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (options.length > 1) {
      return buildWithMultipleOptions(context);
    }
    return buildWithSingleOption(context);
  }
}
