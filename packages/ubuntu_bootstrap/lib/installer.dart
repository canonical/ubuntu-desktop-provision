import 'dart:async';
import 'dart:io';

import 'package:args/args.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gsettings/gsettings.dart';
import 'package:path/path.dart' as p;
import 'package:subiquity_client/subiquity_client.dart';
import 'package:subiquity_client/subiquity_server.dart';
import 'package:timezone_map/timezone_map.dart';
import 'package:ubuntu_bootstrap/installer/installer_wizard.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/services.dart';
import 'package:ubuntu_bootstrap/slides.dart';
import 'package:ubuntu_flavor/ubuntu_flavor.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

export 'installer/installer_wizard.dart';
export 'slides.dart';

Future<void> runInstallerApp(
  List<String> args, {
  List<WidgetBuilder>? slides,
  UbuntuFlavor? flavor,
  ThemeData? theme,
  ThemeData? darkTheme,
  GenerateAppTitle? onGenerateTitle,
  Iterable<LocalizationsDelegate<dynamic>>? localizationsDelegates,
}) async {
  final options = parseCommandLine(args, onPopulateOptions: (parser) {
    parser.addOption(
      'config',
      valueHelp: 'path',
      help: 'Path to a config file',
    );
    parser.addFlag(
      'dry-run',
      defaultsTo: Platform.environment['LIVE_RUN'] != '1',
      help: 'Run Subiquity server in dry-run mode',
    );
    parser.addOption(
      'dry-run-config',
      valueHelp: 'path',
      help: 'Path of the dry-run config file',
    );
    parser.addOption(
      'machine-config',
      valueHelp: 'path',
      defaultsTo: 'examples/machines/simple.json',
      help: 'Path of the machine config (dry-run only)',
    );
    parser.addOption(
      'source-catalog',
      valueHelp: 'path',
      defaultsTo: 'examples/sources/desktop.yaml',
      help: 'Path of the source catalog (dry-run only)',
    );
    // TODO: Remove in favor of using the whitelabel.yml config file.
    parser.addFlag('welcome', aliases: ['try-or-install'], hide: true);
  })!;
  final liveRun = options['dry-run'] != true;
  final exe = p.basename(Platform.resolvedExecutable);
  final log =
      Logger.setup(path: liveRun ? '/var/log/installer/$exe.log' : null);

  final serverMode = liveRun ? ServerMode.LIVE : ServerMode.DRY_RUN;
  final subiquityPath = await getSubiquityPath()
      .then((dir) => Directory(dir).existsSync() ? dir : null);
  final endpoint = await defaultEndpoint(serverMode);
  final includeTryOrInstall = options['welcome'] as bool? ?? false;
  final process = liveRun
      ? null
      : SubiquityProcess.python(
          'subiquity.cmd.server',
          serverMode: ServerMode.DRY_RUN,
          subiquityPath: subiquityPath,
        );

  final baseName = p.basename(Platform.resolvedExecutable);

  // conditional registration if not already registered by flavors or tests
  tryRegisterService<ActiveDirectoryService>(
      () => SubiquityActiveDirectoryService(getService<SubiquityClient>()));
  tryRegisterServiceInstance<ArgResults>(options);
  tryRegisterService<ConfigService>(
      () => ConfigService(path: options['config'] as String?));
  tryRegisterService<AccessibilityService>(GnomeAccessibilityService.new);
  if (liveRun) tryRegisterService<DesktopService>(GnomeService.new);
  tryRegisterServiceFactory<GSettings, String>(GSettings.new);
  tryRegisterService<IdentityService>(() => SubiquityIdentityService(
      getService<SubiquityClient>(), getService<PostInstallService>()));
  tryRegisterService<InstallerService>(
    () => InstallerService(
      getService<SubiquityClient>(),
      pageConfig: tryGetService<PageConfigService>(),
    ),
  );
  tryRegisterService(JournalService.new);
  tryRegisterService<KeyboardService>(
    () => SubiquityKeyboardService(getService<SubiquityClient>()),
  );
  tryRegisterService<LocaleService>(
    () => SubiquityLocaleService(getService<SubiquityClient>()),
  );
  tryRegisterService<NetworkService>(
    () => SubiquityNetworkService(getService<SubiquityClient>()),
  );
  tryRegisterService(
    () => PageConfigService(
      config: tryGetService<ConfigService>(),
      includeWelcome: includeTryOrInstall,
    ),
  );
  tryRegisterService(() => PostInstallService('/tmp/$baseName.conf'));
  tryRegisterService(PowerService.new);
  tryRegisterService(ProductService.new);
  tryRegisterService(() => RefreshService(getService<SubiquityClient>()));
  tryRegisterService<SessionService>(
    () => SubiquitySessionService(getService<SubiquityClient>()),
  );
  if (liveRun) tryRegisterService(SoundService.new);
  tryRegisterService(() => StorageService(getService<SubiquityClient>()));
  tryRegisterService(SubiquityClient.new);
  tryRegisterService(
    () => SubiquityServer(process: process, endpoint: endpoint),
  );
  tryRegisterService<TelemetryService>(() {
    final String path;
    if (kDebugMode) {
      final exe = Platform.resolvedExecutable;
      path = '${p.dirname(exe)}/.${p.basename(exe)}/telemetry';
    } else {
      path = '/var/log/installer/telemetry';
    }
    return TelemetryService(path);
  });
  tryRegisterService<ThemeVariantService>(
    () => ThemeVariantService(config: tryGetService<ConfigService>()),
  );
  tryRegisterService<TimezoneService>(
      () => SubiquityTimezoneService(getService<SubiquityClient>()));
  tryRegisterService(UdevService.new);
  tryRegisterService(UrlLauncher.new);

  final initialized = getService<SubiquityServer>().start(args: [
    if (options['dry-run-config'] != null)
      '--dry-run-config=${options['dry-run-config']}',
    if (options['machine-config'] != null)
      '--machine-config=${options['machine-config']}',
    if (options['source-catalog'] != null)
      '--source-catalog=${options['source-catalog']}',
    '--storage-version=2',
    '--dry-run-config=examples/dry-run-configs/tpm.yaml',
    ...options.rest,
  ]);

  await runZonedGuarded(() async {
    FlutterError.onError = (error) {
      log.error('Unhandled exception', error.exception, error.stack);
    };

    final window = await YaruWindow.ensureInitialized();
    await window.onClose(_closeInstallerApp);

    final themeVariantService = getService<ThemeVariantService>();
    await themeVariantService.load();
    final themeVariant = themeVariantService.themeVariant;
    final endpoint = await initialized;
    await _initInstallerApp(endpoint);

    runApp(ProviderScope(
      child: SlidesContext(
        slides: slides ?? defaultSlides,
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
              onGenerateTitle: onGenerateTitle ??
                  (context) {
                    final windowTitle = themeVariant?.windowTitle;
                    if (windowTitle != null) return windowTitle;

                    final flavor = ref.watch(flavorProvider);
                    return UbuntuBootstrapLocalizations.of(context)
                        .windowTitle(flavor.name);
                  },
              locale: ref.watch(localeProvider),
              localizationsDelegates: [
                ...?localizationsDelegates,
                ...GlobalUbuntuBootstrapLocalizations.delegates,
              ],
              supportedLocales: supportedLocales,
              home: DefaultAssetBundle(
                bundle: ProxyAssetBundle(
                  rootBundle,
                  package: 'ubuntu_bootstrap',
                ),
                child: const InstallerWizard(),
              ),
            );
          },
        ),
      ),
    ));
  }, (error, stack) => log.error('Unhandled exception', error, stack));
}

Future<void> _initInstallerApp(Endpoint endpoint) async {
  getService<SubiquityClient>().open(endpoint);

  var geo = tryGetService<GeoService>();
  if (geo == null) {
    final geodata = Geodata.asset();
    final geoname = Geoname.ubuntu(geodata: geodata);
    geo = GeoService(sources: [geodata, geoname]);
    registerServiceInstance(geo);
  }
  final telemetry = getService<TelemetryService>();

  final services = [
    getService<InstallerService>().init(),
    tryGetService<DesktopService>()?.inhibit() ?? Future.value(),
    getService<RefreshService>().check(),
    getService<PageConfigService>().load(),
    geo.init(),
    telemetry.init({
      'Type': 'Flutter',
      'OEM': false,
      'Media': getService<ProductService>().getProductInfo().toString(),
    }),
  ];
  await Future.wait(services);
}

Future<bool> _closeInstallerApp() async {
  await getService<SubiquityClient>().close();
  await getService<SubiquityServer>().stop();
  await tryGetService<DesktopService>()?.close();
  return true;
}
