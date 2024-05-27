import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:subiquity_client/subiquity_server.dart';
import 'package:subiquity_test/subiquity_test.dart';
import 'package:ubuntu_bootstrap/installer.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages.dart';
import 'package:ubuntu_bootstrap/pages/autoinstall/autoinstall_model.dart';
import 'package:ubuntu_bootstrap/services.dart';
import 'package:ubuntu_bootstrap/slides/slides_provider.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru_test/yaru_test.dart';

import 'autoinstall/test_autoinstall.dart';
import 'install/test_install.dart';

void main() {
  setUp(() {
    YaruTestWindow.ensureInitialized();
    setupMockPageConfig();
  });

  tearDown(resetAllServices);

  testWidgets('interactive installation', (tester) async {
    await tester.pumpWidget(
      tester.buildInstaller(
        state: ApplicationState.WAITING,
        interactive: true,
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(LocalePage), findsOneWidget);
  });

  testWidgets('automated installation with confirmation', (tester) async {
    await tester.pumpWidget(
      tester.buildInstaller(
        state: ApplicationState.NEEDS_CONFIRMATION,
        interactive: false,
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(ConfirmPage), findsOneWidget);
  });

  testWidgets('fully automated installation', (tester) async {
    await tester.pumpWidget(
      tester.buildInstaller(
        state: ApplicationState.RUNNING,
        interactive: false,
        proceedToDone: true,
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(InstallPage), findsOneWidget);
  });

  testWidgets('initializes subiquity', (tester) async {
    final endpoint = Endpoint.unix('/path/to/socket');

    final client = MockSubiquityClient();
    when(client.getLocale()).thenAnswer((_) async => 'en_US.UTF-8');
    when(client.monitorStatus()).thenAnswer(
        (_) => Stream.value(fakeApplicationStatus(ApplicationState.RUNNING)));
    when(client.getInteractiveSections()).thenAnswer((_) async => null);
    registerMockService<SubiquityClient>(client);

    final server = MockSubiquityServer();
    when(server.start(
            args: anyNamed('args'), environment: anyNamed('environment')))
        .thenAnswer((_) async => endpoint);
    registerMockService<SubiquityServer>(server);

    final refresh = MockRefreshService();
    when(refresh.state).thenReturn(const RefreshState.checking());
    when(refresh.stateChanged).thenAnswer((_) => const Stream.empty());
    when(refresh.check()).thenAnswer((_) async => const RefreshState.done());
    registerMockService<RefreshService>(refresh);

    registerMockService<DesktopService>(MockDesktopService());
    registerMockService<TelemetryService>(MockTelemetryService());

    await tester
        .runAsync(() => runInstallerApp(['--dry-run', '--', '--foo', 'bar']));
    verify(server.start(args: [
      '--dry-run-config=examples/dry-run-configs/tpm.yaml',
      '--machine-config=examples/machines/simple.json',
      '--source-catalog=examples/sources/desktop.yaml',
      '--storage-version=2',
      '--foo',
      'bar',
    ])).called(1);
    verify(client.open(endpoint)).called(1);
  });
}

extension on WidgetTester {
  Widget buildInstaller({
    required ApplicationState state,
    bool? interactive,
    bool proceedToDone = false,
  }) {
    final status = ApplicationStatus(
      state: state,
      confirmingTty: '',
      error: null,
      nonreportableError: null,
      cloudInitOk: null,
      interactive: interactive,
      echoSyslogId: '',
      logSyslogId: '',
      eventSyslogId: '',
    );

    final installer = MockInstallerService();
    when(installer.hasRoute(any)).thenReturn(true);
    when(installer.monitorStatus()).thenAnswer((_) => Stream.value(status));

    final refresh = MockRefreshService();
    when(refresh.state).thenReturn(const RefreshState.status(
        RefreshStatus(availability: RefreshCheckState.UNAVAILABLE)));
    when(refresh.stateChanged).thenAnswer((_) => const Stream.empty());

    final journal = MockJournalService();
    when(journal.start(any, output: anyNamed('output')))
        .thenAnswer((_) => const Stream.empty());

    final locale = MockLocaleService();
    when(locale.getLocale()).thenAnswer((_) async => 'en_US.UTF-8');

    final subiquityClient = MockSubiquityClient();
    when(subiquityClient.getStatus()).thenAnswer((_) async => status);
    when(subiquityClient.monitorStatus()).thenAnswer((_) =>
        Stream.fromIterable([
          status,
          if (proceedToDone) fakeApplicationStatus(ApplicationState.DONE)
        ]));

    final config = MockConfigService();
    when(config.provisioningMode)
        .thenAnswer((_) async => ProvisioningMode.standard);

    registerMockService<ConfigService>(config);
    registerMockService<DesktopService>(MockDesktopService());
    registerMockService<InstallerService>(installer);
    registerMockService<ThemeVariantService>(MockThemeVariantService());
    registerMockService<JournalService>(journal);
    registerMockService<LocaleService>(locale);
    registerMockService<ProductService>(ProductService());
    registerMockService<RefreshService>(refresh);
    registerMockService<SessionService>(
      SubiquitySessionService(subiquityClient),
    );
    registerMockService<StorageService>(StorageService(subiquityClient));
    registerMockService<SubiquityClient>(subiquityClient);
    registerMockService<SubiquityServer>(MockSubiquityServer());
    registerMockService<TelemetryService>(MockTelemetryService());
    registerMockService<NetworkService>(MockNetworkService());
    registerMockService<PowerService>(MockPowerService());

    final mockAutoInstallModel = buildAutoinstallModel();

    return ProviderScope(
      overrides: [
        slidesProvider.overrideWith((_) => MockSlidesModel()),
        autoinstallModelProvider.overrideWith((_) => mockAutoInstallModel),
      ],
      child: WizardApp(
        localizationsDelegates: GlobalUbuntuBootstrapLocalizations.delegates,
        supportedLocales: supportedLocales,
        home: const InstallerWizard(),
      ),
    );
  }
}
