import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_bootstrap/pages/try_or_install/try_or_install_model.dart';

import 'test_try_or_install.dart';

void main() {
  test('network connectivity', () async {
    final network = MockNetworkService();
    when(network.isConnected).thenReturn(false);
    final networkChanged = StreamController<List<String>>(sync: true);
    when(network.propertiesChanged).thenAnswer((_) => networkChanged.stream);

    final model = TryOrInstallModel(network: network);
    await model.init();

    expect(model.isConnected, isFalse);

    var wasNotified = false;
    model.addListener(() => wasNotified = true);

    when(network.isConnected).thenReturn(true);
    networkChanged.add(['Connectivity']);
    expect(model.isConnected, isTrue);
    expect(wasNotified, isTrue);
    await networkChanged.close();
  });

  test('selected option', () {
    final network = MockNetworkService();
    final model = TryOrInstallModel(network: network);

    var wasNotified = false;
    model.addListener(() => wasNotified = true);

    expect(model.option, equals(TryOrInstallOption.none));
    model.selectOption(TryOrInstallOption.none);
    expect(model.option, equals(TryOrInstallOption.none));
    expect(wasNotified, isFalse);

    model.selectOption(TryOrInstallOption.installUbuntu);
    expect(model.option, equals(TryOrInstallOption.installUbuntu));
    expect(wasNotified, isTrue);
  });
}
