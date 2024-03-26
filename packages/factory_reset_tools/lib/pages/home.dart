import 'package:factory_reset_tools/pages/reboot.dart';
import 'package:factory_reset_tools/pages/reset_media.dart';
import 'package:flutter/material.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return WizardPage(
      title: const YaruWindowTitleBar(title: Text('Factory Reset Tool')),
      header: const Text('What would you like to do?'),
      content: Wrap(
        alignment: WrapAlignment.spaceAround,
        children: [
          FilledButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const SelectRemovableMedia(),
                ),
              );
            },
            child: const Text('Create Reset Media'),
          ),
          FilledButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const FactoryReset(),
                ),
              );
            },
            child: const Text('Start Factory Reset'),
          ),
        ],
      ),
    );
  }
}
