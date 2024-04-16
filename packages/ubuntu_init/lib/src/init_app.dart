import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart' as p;
import 'package:ubuntu_flavor/ubuntu_flavor.dart';
import 'package:ubuntu_init/ubuntu_init.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_service/ubuntu_service.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

Future<void> runInitApp(
  List<String> args, {
  ThemeData? theme,
  ThemeData? darkTheme,
  @visibleForTesting List<Override>? overrides,
}) async {
  final exe = p.basename(Platform.resolvedExecutable);
  final log = Logger.setup(path: '/var/log/installer/$exe.log');

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

    // This needs to be done out of order since it depends on the asset bundle
    // to be populated.
    final flavorService = await FlavorService.load();
    tryRegisterService<FlavorService>(() => flavorService);

    runApp(ProviderScope(
      child: _InitApp(
        theme: theme,
        darkTheme: darkTheme,
        themeVariant: themeVariant,
        windowTitle: windowTitle,
        welcome: welcome,
        flavor: flavorService.flavor,
      ),
    ));
  }, (error, stack) => log.error('Unhandled exception', error, stack));
}

class _InitApp extends ConsumerWidget {
  const _InitApp({
    required this.theme,
    required this.darkTheme,
    required this.themeVariant,
    required this.windowTitle,
    required this.welcome,
    required this.flavor,
  });

  final ThemeData? theme;
  final ThemeData? darkTheme;
  final ThemeVariant? themeVariant;
  final String? windowTitle;
  final bool welcome;
  final UbuntuFlavor flavor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return WizardApp(
      flavor: flavor,
      theme: theme ?? themeVariant?.theme,
      darkTheme: darkTheme ?? themeVariant?.darkTheme,
      onGenerateTitle: (_) => windowTitle ?? '',
      locale: ref.watch(localeProvider),
      localizationsDelegates: GlobalUbuntuInitLocalizations.delegates,
      supportedLocales: supportedLocales,
      home: DefaultAssetBundle(
        // TODO(Lukas): Remove this once all the assets are in the ubuntu_provision package.
        bundle: ProxyAssetBundle(rootBundle, package: 'ubuntu_init'),
        child: welcome ? const WelcomeWizard() : const InitWizard(),
      ),
    );
  }
}
