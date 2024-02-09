import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_flavor/ubuntu_flavor.dart';
import 'package:ubuntu_init/ubuntu_init.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_service/ubuntu_service.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

Future<void> runInitApp(
  List<String> args, {
  String package = 'ubuntu_init',
  UbuntuFlavor? flavor,
  ThemeData? theme,
  ThemeData? darkTheme,
  GenerateAppTitle? onGenerateTitle,
  Iterable<LocalizationsDelegate<dynamic>>? localizationsDelegates,
  FutureOr<void> Function()? onDone,
}) async {
  final log = Logger.setup();

  return runZonedGuarded(() async {
    FlutterError.onError = (error) {
      log.error('Unhandled exception', error.exception, error.stack);
    };

    log.debug('Initializing YaruWindowTitleBar');
    await YaruWindowTitleBar.ensureInitialized();

    log.debug('Initializing services');
    await registerInitServices(args);

    log.debug('Loading theme config');
    final themeVariantService = getService<ThemeVariantService>();
    await themeVariantService.load();
    final themeVariant = themeVariantService.themeVariant;

    final windowTitle =
        await getService<ConfigService>().get<String>('app-name');

    log.debug('Loading page config');
    await getService<PageConfigService>().load();

    final welcome = tryGetService<ArgResults>()?['welcome'] as bool? ?? false;

    runApp(ProviderScope(
      child: Consumer(
        builder: (context, ref, child) {
          if (flavor != null) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              ref.read(flavorProvider.notifier).state = flavor;
            });
          }
          return WizardApp(
            flavor: flavor,
            theme: theme ?? themeVariant?.theme,
            darkTheme: darkTheme ?? themeVariant?.darkTheme,
            onGenerateTitle: onGenerateTitle ?? (_) => windowTitle ?? '',
            locale: ref.watch(localeProvider),
            localizationsDelegates: [
              ...?localizationsDelegates,
              ...GlobalUbuntuInitLocalizations.delegates,
            ],
            supportedLocales: supportedLocales,
            home: DefaultAssetBundle(
              bundle: ProxyAssetBundle(rootBundle, package: package),
              child: welcome
                  ? WelcomeWizard(onDone: onDone)
                  : InitWizard(onDone: onDone),
            ),
          );
        },
      ),
    ));
  }, (error, stack) => log.error('Unhandled exception', error, stack));
}
