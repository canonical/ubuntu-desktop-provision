import 'dart:async';

import 'package:factory_reset_tools/l10n/factory_reset_tools_localizations.dart';
import 'package:factory_reset_tools/pages/reset_tools_wizard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_localizations/ubuntu_localizations.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

Future<void> main() async {
  await YaruWindowTitleBar.ensureInitialized();

  runApp(const FactoryResetTools());
}

class FactoryResetTools extends StatelessWidget {
  const FactoryResetTools({super.key});
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: WizardApp(
        onGenerateTitle: (context) {
          return FactoryResetToolsLocalizations.of(context).windowTitle;
        },
        localizationsDelegates: const [
          FactoryResetToolsLocalizations.delegate,
          UbuntuLocalizations.delegate,
        ],
        supportedLocales: FactoryResetToolsLocalizations.supportedLocales,
        home: const ResetToolsWizard(),
      ),
    );
  }
}
