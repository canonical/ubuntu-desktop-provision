import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:subiquity_test/subiquity_test.dart';
import 'package:ubuntu_bootstrap/installer/installation_step.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages.dart';
import 'package:ubuntu_bootstrap/services.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_test/ubuntu_test.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';

import 'test_source.dart';

void main() {
  testWidgets('enough disk space', (tester) async {
    await tester.buildSourceWizard(hasEnoughDiskSpace: true);

    expect(find.text('first route'), findsOneWidget);

    // first -> source
    await tester.tapNext();
    await tester.pumpAndSettle();

    expect(find.byType(SourceSelectionPage), findsOneWidget);

    // source -> last
    await tester.tapNext();
    await tester.pumpAndSettle();

    expect(find.byType(NotEnoughDiskSpacePage), findsNothing);
    expect(find.text('last route'), findsOneWidget);

    // last -> source
    await tester.tapPrevious();
    await tester.pumpAndSettle();

    expect(find.byType(SourceSelectionPage), findsOneWidget);

    // source -> first
    await tester.tapPrevious();
    await tester.pumpAndSettle();

    expect(find.text('first route'), findsOneWidget);
  });

  testWidgets('not enough disk space', (tester) async {
    await tester.buildSourceWizard(hasEnoughDiskSpace: false);

    expect(find.text('first route'), findsOneWidget);

    // first -> source
    await tester.tapNext();
    await tester.pumpAndSettle();

    expect(find.byType(SourceSelectionPage), findsOneWidget);

    // source -> not enough disk space
    await tester.tapNext();
    await tester.pumpAndSettle();

    expect(find.byType(NotEnoughDiskSpacePage), findsOneWidget);
    expect(find.text('last route'), findsNothing);

    // not enough disk space -> source
    await tester.tapPrevious();
    await tester.pumpAndSettle();

    expect(find.byType(SourceSelectionPage), findsOneWidget);

    // source -> first
    await tester.tapPrevious();
    await tester.pumpAndSettle();

    expect(find.text('first route'), findsOneWidget);
  });
}

extension on WidgetTester {
  Future<void> buildSourceWizard({required bool hasEnoughDiskSpace}) {
    final client = MockSubiquityClient();
    when(client.getSource()).thenAnswer((_) async =>
        const SourceSelectionAndSetting(
            sources: [], currentId: kFullSourceId, searchDrivers: false));
    when(client.getDrivers()).thenAnswer((_) async => const DriversResponse(
        install: true, drivers: [], localOnly: false, searchDrivers: false));
    when(client.getCodecs())
        .thenAnswer((_) async => const CodecsData(install: true));
    registerMockService<SubiquityClient>(client);

    final power = MockPowerService();
    when(power.onBattery).thenReturn(false);
    when(power.propertiesChanged).thenAnswer((_) => const Stream.empty());
    registerMockService<PowerService>(power);

    final network = MockNetworkService();
    when(network.isConnected).thenReturn(true);
    when(network.propertiesChanged).thenAnswer((_) => const Stream.empty());
    registerMockService<NetworkService>(network);

    final storage = MockStorageService();
    when(storage.largestDiskSize).thenReturn(1);
    when(storage.installMinimumSize).thenReturn(hasEnoughDiskSpace ? 1 : 2);
    registerMockService<StorageService>(storage);

    final telemetry = MockTelemetryService();
    registerMockService<TelemetryService>(telemetry);
    final pageImages = PageImages(MockPageConfigService());

    return pumpWidget(
      ProviderScope(
        overrides: [pageImagesProvider.overrideWith((_) => pageImages)],
        child: MaterialApp(
          localizationsDelegates: GlobalUbuntuBootstrapLocalizations.delegates,
          home: Consumer(
            builder: (context, ref, child) {
              return Wizard(
                routes: {
                  '/first': WizardRoute(
                    builder: (context) => const WizardPage(
                      content: Text('first route'),
                      bottomBar: WizardBar(
                        trailing: [NextWizardButton()],
                      ),
                    ),
                  ),
                  InstallationStep.sourceSelection.route: WizardRoute(
                    builder: (_) => SourceSelectionPage(),
                    onLoad: (_) => SourceSelectionPage().load(context, ref),
                  ),
                  InstallationStep.notEnoughDiskSpace.route: WizardRoute(
                    builder: (_) => const NotEnoughDiskSpacePage(),
                    onLoad: (_) =>
                        const NotEnoughDiskSpacePage().load(context, ref),
                  ),
                  '/last': WizardRoute(
                    builder: (context) => const WizardPage(
                      content: Text('last route'),
                      bottomBar: WizardBar(leading: PreviousWizardButton()),
                    ),
                  ),
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
