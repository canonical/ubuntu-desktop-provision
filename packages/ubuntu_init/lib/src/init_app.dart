import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_init/ubuntu_init.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

Future<void> runInitApp(
  List<String> args, {
  List<String>? pages,
  String package = 'ubuntu_init',
  ThemeData? theme,
  ThemeData? darkTheme,
}) async {
  final log = Logger.setup();

  return runZonedGuarded(() async {
    FlutterError.onError = (error) {
      log.error('Unhandled exception', error.exception, error.stack);
    };

    await YaruWindowTitleBar.ensureInitialized();

    await registerInitServices(args);

    runApp(ProviderScope(
      child: Consumer(
        builder: (context, ref, child) => WizardApp(
          theme: theme,
          darkTheme: darkTheme,
          locale: ref.watch(localeProvider),
          localizationsDelegates: GlobalUbuntuInitLocalizations.delegates,
          supportedLocales: supportedLocales,
          home: DefaultAssetBundle(
            bundle: ProxyAssetBundle(rootBundle, package: package),
            child: InitWizard(pages: pages),
          ),
        ),
      ),
    ));
  }, (error, stack) => log.error('Unhandled exception', error, stack));
}
