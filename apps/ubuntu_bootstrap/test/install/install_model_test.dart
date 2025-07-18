// ignore_for_file: close_sinks, prefer_const_constructors

import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:subiquity_test/subiquity_test.dart';
import 'package:ubuntu_bootstrap/pages/install/install_model.dart';
import 'package:ubuntu_provision/services.dart';

import 'test_install.dart';

void main() async {
  test('product info', () {
    final product = MockProductService();
    when(product.getProductInfo())
        .thenReturn(ProductInfo(name: 'Ubuntu', version: '24.04 LTS'));

    final model = InstallModel(
      MockSubiquityClient(),
      MockJournalService(),
      product,
    );
    expect(model.productInfo.name, 'Ubuntu');
    expect(model.productInfo.version, '24.04 LTS');
  });

  test('client status monitor', () async {
    final client = MockSubiquityClient();
    final journal = MockJournalService();
    when(journal.start(['log', 'event']))
        .thenAnswer((_) => const Stream.empty());
    when(journal.start(['event'], output: JournalOutput.cat))
        .thenAnswer((_) => const Stream.empty());
    final product = MockProductService();
    final model = InstallModel(client, journal, product);

    when(client.getStatus())
        .thenAnswer((_) async => testStatus(ApplicationState.values.first));
    when(client.monitorStatus()).thenAnswer(
      (_) => Stream.fromIterable(ApplicationState.values.map(testStatus)),
    );

    final stateChanges = StreamController<ApplicationState?>();
    model.addListener(() => stateChanges.add(model.state));

    // initializing the model queries the initial client status, and then runs
    // the client status query loop until it reaches DONE
    await model.init();
    verify(client.getStatus()).called(1);

    final expectedStateChanges = ApplicationState.values.where((state) {
      return state != ApplicationState.ERROR &&
          state != ApplicationState.EXITED;
    });
    await expectLater(stateChanges.stream, emitsInOrder(expectedStateChanges));
  });

  test('state values', () async {
    final client = MockSubiquityClient();
    when(client.getStatus())
        .thenAnswer((_) async => testStatus(ApplicationState.values.first));
    when(client.monitorStatus()).thenAnswer(
      (_) => Stream.fromIterable(
        [...ApplicationState.values.map(testStatus), null],
      ),
    );

    final journal = MockJournalService();
    when(journal.start(['log', 'event']))
        .thenAnswer((_) => const Stream.empty());
    when(journal.start(['event'], output: JournalOutput.cat))
        .thenAnswer((_) => const Stream.empty());

    final product = MockProductService();

    final model = InstallModel(client, journal, product);

    expect(model.state, isNull);
    expect(model.isInstalling, isFalse);
    expect(model.isDone, isFalse);

    Future<void> waitForState(ApplicationState? state) async {
      final completer = Completer();
      model.addListener(() {
        if (model.state == state) {
          completer.complete();
        }
      });
      await expectLater(completer.future, completes);
    }

    await model.init();

    expect(model.state, ApplicationState.STARTING_UP);
    expect(model.isInstalling, isFalse);
    expect(model.isDone, isFalse);

    await waitForState(ApplicationState.RUNNING);
    expect(model.isInstalling, isTrue);
    expect(model.isDone, isFalse);

    await waitForState(ApplicationState.LATE_COMMANDS);
    expect(model.isInstalling, isTrue);
    expect(model.isDone, isFalse);

    await waitForState(ApplicationState.DONE);
    expect(model.isInstalling, isFalse);
    expect(model.isDone, isTrue);

    await waitForState(null);
    expect(model.isInstalling, isFalse);
    expect(model.isDone, isTrue);
  });

  test('error state', () async {
    final client = MockSubiquityClient();
    when(client.getStatus()).thenAnswer(
      (_) async => testStatus(ApplicationState.ERROR),
    );
    when(client.monitorStatus()).thenAnswer(
      (_) => Stream.value(testStatus(ApplicationState.ERROR)),
    );

    final journal = MockJournalService();
    when(journal.start(['log', 'event']))
        .thenAnswer((_) => const Stream.empty());
    when(journal.start(['event'], output: JournalOutput.cat))
        .thenAnswer((_) => const Stream.empty());

    final product = MockProductService();

    final model = InstallModel(client, journal, product);

    expect(model.hasError, isFalse);

    await model.init();

    expect(model.hasError, isTrue);
  });

  test('log visibility', () async {
    final model = InstallModel(
      MockSubiquityClient(),
      MockJournalService(),
      MockProductService(),
    );

    expect(model.isLogVisible, isFalse);

    var wasNotified = 0;
    model.addListener(() => ++wasNotified);

    model.toggleLogVisibility();
    expect(model.isLogVisible, isTrue);
    expect(wasNotified, equals(1));

    model.toggleLogVisibility();
    expect(model.isLogVisible, isFalse);
    expect(wasNotified, equals(2));
  });

  test('events', () async {
    final events = StreamController<String>(sync: true);

    final journal = MockJournalService();
    when(journal.start(['log', 'event']))
        .thenAnswer((_) => const Stream.empty());
    when(journal.start(['event'], output: JournalOutput.cat))
        .thenAnswer((_) => events.stream);

    final client = MockSubiquityClient();
    when(client.getStatus()).thenAnswer(
      (_) async => testStatus(ApplicationState.RUNNING),
    );
    when(client.monitorStatus()).thenAnswer(
      (_) => Stream.value(testStatus(ApplicationState.RUNNING)),
    );

    final product = MockProductService();

    final model = InstallModel(client, journal, product);

    expect(model.event.action, InstallationAction.none);

    await model.init();

    events.add('installing system');
    expect(model.event.action, InstallationAction.installingSystem);
    expect(model.event.description, isNull);

    events.add('  installing some package');
    expect(model.event.action, InstallationAction.installingSystem);
    expect(model.event.description, 'installing some package');

    events.add('  doing something else');
    expect(model.event.action, InstallationAction.installingSystem);
    expect(model.event.description, 'doing something else');

    events.add('final system configuration');
    expect(model.event.action, InstallationAction.configuringSystem);
    expect(model.event.description, isNull);

    events.add('  subiquity/Install/install/curtin_install: installing system');
    expect(model.event.action, InstallationAction.installingSystem);
    expect(model.event.description, isNull);

    events.add(
      '    subiquity/Install/install/curtin_install/run: executing curtin install initial step',
    );
    expect(model.event.action, InstallationAction.installingSystem);
    expect(model.event.description, 'executing curtin install initial step');
  });
}

ApplicationStatus testStatus(ApplicationState state) {
  return ApplicationStatus(
    state: state,
    cloudInitOk: null,
    confirmingTty: '',
    echoSyslogId: '',
    error: null,
    nonreportableError: null,
    eventSyslogId: 'event',
    interactive: null,
    logSyslogId: 'log',
  );
}
