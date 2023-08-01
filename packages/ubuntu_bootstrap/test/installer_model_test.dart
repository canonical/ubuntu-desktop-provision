import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/installer/installer_model.dart';
import 'package:ubuntu_bootstrap/services/refresh_service.dart';

import 'test_utils.dart';

void main() {
  test('init', () async {
    final statusController = StreamController<ApplicationStatus>();
    final refreshController = StreamController<RefreshState>();

    final installer = MockInstallerService();
    when(installer.monitorStatus()).thenAnswer((_) => statusController.stream);

    final refresh = MockRefreshService();
    when(refresh.state).thenReturn(const RefreshState.checking());
    when(refresh.stateChanged).thenAnswer((_) => refreshController.stream);

    final model = InstallerModel(installer, refresh);
    await model.init();
    verify(installer.monitorStatus()).called(1);
    expect(statusController.hasListener, isTrue);
    verify(refresh.stateChanged).called(1);
    expect(refreshController.hasListener, isTrue);

    await model.dispose();
    expect(statusController.hasListener, isFalse);
    expect(refreshController.hasListener, isFalse);
  });

  test('has route', () async {
    final installer = MockInstallerService();
    when(installer.hasRoute('a')).thenReturn(true);
    when(installer.hasRoute('b')).thenReturn(false);

    final model = InstallerModel(installer, MockRefreshService());

    expect(model.hasRoute('a'), isTrue);
    expect(model.hasRoute('b'), isFalse);
  });
}
