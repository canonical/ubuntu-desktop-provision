// ignore_for_file: close_sinks

import 'dart:async';
import 'dart:ui';

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

    final model =
        TryOrInstallModel(network: network, product: MockProductService());
    await model.init();

    expect(model.isConnected, isFalse);

    var wasNotified = false;
    model.addListener(() => wasNotified = true);

    when(network.isConnected).thenReturn(true);
    networkChanged.add(['Connectivity']);
    expect(model.isConnected, isTrue);
    expect(wasNotified, isTrue);
  });

  test('selected option', () {
    final network = MockNetworkService();
    final model =
        TryOrInstallModel(network: network, product: MockProductService());

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

  test('release notes', () {
    const testUrl = 'https://wiki.ubuntu.com/ManticMinotaur/ReleaseNotes';
    final product = MockProductService();
    when(product.getReleaseNotesURL('en')).thenReturn(testUrl);
    final model =
        TryOrInstallModel(network: MockNetworkService(), product: product);

    final url = model.releaseNotesURL(const Locale('en'));
    expect(url, equals(testUrl));
  });
}
