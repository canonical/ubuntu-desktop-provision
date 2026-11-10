import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:subiquity_test/subiquity_test.dart';
import 'package:ubuntu_bootstrap/app/installer_model.dart';
import 'package:ubuntu_bootstrap/services.dart';

import 'test_utils.dart';

void main() {
  test('application status', () async {
    final statusController = StreamController<ApplicationStatus>();
    final installer = MockInstallerService();
    when(installer.monitorStatus()).thenAnswer((_) => statusController.stream);
    registerMockService<InstallerService>(installer);

    final container = ProviderContainer();
    container.listen(applicationStatusProvider, (_, __) {});
    verify(installer.monitorStatus()).called(1);
    expect(statusController.hasListener, isTrue);
    expect(container.read(applicationStatusProvider).isLoading, isTrue);

    final status = fakeApplicationStatus(ApplicationState.DONE);
    statusController.add(status);
    expect(await container.read(applicationStatusProvider.future), status);
    expect(container.read(applicationStatusProvider).value, status);

    container.dispose();
    await Future<void>.delayed(Duration.zero);
    expect(statusController.hasListener, isFalse);
    await statusController.close();
  });

  test('has route', () {
    final installer = MockInstallerService();
    when(installer.hasRoute('a')).thenReturn(true);
    when(installer.hasRoute('b')).thenReturn(false);
    registerMockService<InstallerService>(installer);

    final container = ProviderContainer();
    addTearDown(container.dispose);

    expect(container.read(hasRouteProvider('a')), isTrue);
    expect(container.read(hasRouteProvider('b')), isFalse);
  });
}
