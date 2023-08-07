import 'dart:async';
import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_bootstrap/pages/welcome/welcome_model.dart';

import 'test_welcome.dart';

void main() {
  test('network connectivity', () async {
    final network = MockNetworkService();
    when(network.isConnected).thenReturn(false);
    final networkChanged = StreamController<List<String>>(sync: true);
    when(network.propertiesChanged).thenAnswer((_) => networkChanged.stream);

    final model = WelcomeModel(network: network, product: MockProductService());
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
    final model = WelcomeModel(network: network, product: MockProductService());

    var wasNotified = false;
    model.addListener(() => wasNotified = true);

    expect(model.option, equals(Option.none));
    model.selectOption(Option.none);
    expect(model.option, equals(Option.none));
    expect(wasNotified, isFalse);

    model.selectOption(Option.welcomeInstallOption);
    expect(model.option, equals(Option.welcomeInstallOption));
    expect(wasNotified, isTrue);
  });

  test('release notes', () {
    const testUrl = 'https://wiki.ubuntu.com/ManticMinotaur/ReleaseNotes';
    final product = MockProductService();
    when(product.getReleaseNotesURL('en')).thenReturn(testUrl);
    final model = WelcomeModel(network: MockNetworkService(), product: product);

    final url = model.releaseNotesURL(const Locale('en'));
    expect(url, equals(testUrl));
  });
}
