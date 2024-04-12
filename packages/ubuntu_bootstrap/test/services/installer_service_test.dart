// ignore_for_file: close_sinks

import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:subiquity_test/subiquity_test.dart';
import 'package:ubuntu_bootstrap/services/installer_service.dart';

import '../test_utils.dart';

void main() {
  test('init interactive', () async {
    final client = MockSubiquityClient();
    when(client.getInteractiveSections()).thenAnswer((_) async => null);
    when(client.monitorStatus()).thenAnswer(
      (_) => Stream.fromIterable([
        fakeApplicationStatus(ApplicationState.STARTING_UP),
        fakeApplicationStatus(ApplicationState.CLOUD_INIT_WAIT),
        fakeApplicationStatus(ApplicationState.EARLY_COMMANDS),
        fakeApplicationStatus(ApplicationState.WAITING, interactive: true),
      ]),
    );

    final service = InstallerService(
      client,
      pageConfig: MockPageConfigService(),
    );
    await service.init();

    verify(client.markConfigured(any)).called(1);
  });

  test('init non-interactive', () async {
    final client = MockSubiquityClient();
    when(client.getInteractiveSections()).thenAnswer((_) async => null);
    when(client.monitorStatus()).thenAnswer(
      (_) => Stream.fromIterable([
        fakeApplicationStatus(ApplicationState.STARTING_UP),
        fakeApplicationStatus(ApplicationState.CLOUD_INIT_WAIT),
        fakeApplicationStatus(ApplicationState.EARLY_COMMANDS),
        fakeApplicationStatus(ApplicationState.WAITING, interactive: false),
        fakeApplicationStatus(ApplicationState.RUNNING),
      ]),
    );

    final service = InstallerService(
      client,
      pageConfig: MockPageConfigService(),
    );
    await service.init();

    verifyNever(client.getSource());
    verifyNever(client.setSource(any));
    verifyNever(client.markConfigured(any));
  });

  test('load interactive', () async {
    final client = MockSubiquityClient();
    when(client.getInteractiveSections()).thenAnswer((_) async => null);
    when(client.monitorStatus()).thenAnswer(
      (_) => Stream.fromIterable([
        fakeApplicationStatus(ApplicationState.STARTING_UP),
        fakeApplicationStatus(ApplicationState.CLOUD_INIT_WAIT),
        fakeApplicationStatus(ApplicationState.EARLY_COMMANDS),
        fakeApplicationStatus(ApplicationState.WAITING, interactive: true),
      ]),
    );

    final pageConfigService = setupMockPageConfig();
    final service = InstallerService(client, pageConfig: pageConfigService);
    await expectLater(service.load(), completes);

    verify(client.monitorStatus()).called(1);
  });

  test('load non-interactive', () async {
    final client = MockSubiquityClient();
    when(client.getInteractiveSections()).thenAnswer((_) async => null);
    when(client.monitorStatus()).thenAnswer(
      (_) => Stream.fromIterable([
        fakeApplicationStatus(ApplicationState.STARTING_UP),
        fakeApplicationStatus(ApplicationState.CLOUD_INIT_WAIT),
        fakeApplicationStatus(ApplicationState.EARLY_COMMANDS),
        fakeApplicationStatus(ApplicationState.WAITING, interactive: false),
        fakeApplicationStatus(ApplicationState.RUNNING),
      ]),
    );

    final pageConfigService = setupMockPageConfig();
    final service = InstallerService(client, pageConfig: pageConfigService);
    await expectLater(service.load(), completes);

    verify(client.monitorStatus()).called(1);
  });

  test('load waiting', () async {
    final controller = StreamController<ApplicationStatus>();

    final client = MockSubiquityClient();
    when(client.monitorStatus()).thenAnswer((_) => controller.stream);

    final service = InstallerService(
      client,
      pageConfig: MockPageConfigService(),
    );
    controller.add(fakeApplicationStatus(ApplicationState.STARTING_UP));
    await expectLater(service.load(), doesNotComplete);

    verify(client.monitorStatus()).called(1);
  });

  test('load error', () async {
    final client = MockSubiquityClient();
    when(client.getInteractiveSections()).thenAnswer((_) async => null);
    when(client.monitorStatus()).thenAnswer(
      (_) => Stream.fromIterable([
        fakeApplicationStatus(ApplicationState.ERROR),
      ]),
    );

    final pageConfigService = setupMockPageConfig();
    final service = InstallerService(client, pageConfig: pageConfigService);
    await expectLater(service.load(), completes);

    verify(client.monitorStatus()).called(1);
  });

  test('interactive sections', () async {
    final client = MockSubiquityClient();
    when(client.getInteractiveSections())
        .thenAnswer((_) async => ['locale', 'keyboard']);
    when(client.monitorStatus()).thenAnswer(
        (_) => Stream.value(fakeApplicationStatus(ApplicationState.WAITING)));

    final pageConfigService = setupMockPageConfig();
    final service = InstallerService(client, pageConfig: pageConfigService);
    await service.load();

    expect(service.hasRoute('locale'), isTrue);
    expect(service.hasRoute('keyboard'), isTrue);
    expect(service.hasRoute('identity'), isFalse);
  });

  test('no interactive sections', () async {
    final client = MockSubiquityClient();
    when(client.getInteractiveSections()).thenAnswer((_) async => null);
    when(client.monitorStatus()).thenAnswer(
        (_) => Stream.value(fakeApplicationStatus(ApplicationState.WAITING)));

    final pageConfigService = setupMockPageConfig(
      overridePageKeys: ['a', 'b', 'c'],
    );
    final service = InstallerService(client, pageConfig: pageConfigService);
    await service.load();

    expect(service.hasRoute('a'), isTrue);
    expect(service.hasRoute('b'), isTrue);
    expect(service.hasRoute('c'), isTrue);
  });

  test('configured page array', () async {
    final client = MockSubiquityClient();
    when(client.getInteractiveSections()).thenAnswer((_) async => null);
    when(client.monitorStatus()).thenAnswer(
        (_) => Stream.value(fakeApplicationStatus(ApplicationState.WAITING)));

    final pageConfigService = setupMockPageConfig(overridePageKeys: ['a', 'b']);
    final service = InstallerService(client, pageConfig: pageConfigService);
    await service.load();

    expect(service.hasRoute('a'), isTrue);
    expect(service.hasRoute('b'), isTrue);
    expect(service.hasRoute('c'), isFalse);
  });

  test('start installation', () async {
    final client = MockSubiquityClient();
    when(client.confirm('/dev/tty1')).thenAnswer((_) async {});

    final service = InstallerService(
      client,
      pageConfig: MockPageConfigService(),
    );
    await service.start();

    verify(client.confirm('/dev/tty1')).called(1);
  });

  test('Correct pages are shown when oem is true', () async {
    final client = MockSubiquityClient();
    when(client.getInteractiveSections()).thenAnswer((_) async => null);
    when(client.monitorStatus()).thenAnswer(
        (_) => Stream.value(fakeApplicationStatus(ApplicationState.WAITING)));

    final pageConfigService = setupMockPageConfig(isOem: true);
    final service = InstallerService(client, pageConfig: pageConfigService);
    await service.load();

    expect(service.hasRoute('identity'), isFalse);
  });
}
