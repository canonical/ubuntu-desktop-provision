// ignore_for_file: close_sinks

import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/app/installer_model.dart';

import 'test_utils.dart';

void main() {
  test('init', () async {
    final statusController = StreamController<ApplicationStatus>();

    final installer = MockInstallerService();
    when(installer.monitorStatus()).thenAnswer((_) => statusController.stream);

    final model = InstallerModel(installer);
    await model.init();
    verify(installer.monitorStatus()).called(1);
    expect(statusController.hasListener, isTrue);

    await model.dispose();
    expect(statusController.hasListener, isFalse);
  });

  test('has route', () async {
    final installer = MockInstallerService();
    when(installer.hasRoute('a')).thenReturn(true);
    when(installer.hasRoute('b')).thenReturn(false);

    final model = InstallerModel(installer);

    expect(model.hasRoute('a'), isTrue);
    expect(model.hasRoute('b'), isFalse);
  });
}
