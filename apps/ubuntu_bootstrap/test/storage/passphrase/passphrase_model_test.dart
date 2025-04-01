import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_bootstrap/pages/storage/passphrase/passphrase_model.dart';

import 'test_passphrase.dart';

void main() {
  test('notify changes', () {
    final model = PassphraseModel(MockStorageService());

    var wasNotified = false;
    model.addListener(() => wasNotified = true);

    wasNotified = false;
    expect(model.passphrase, isEmpty);
    model.passphrase = 'foo';
    expect(wasNotified, isTrue);

    wasNotified = false;
    expect(model.confirmedPassphrase, isEmpty);
    model.confirmedPassphrase = 'bar';
    expect(wasNotified, isTrue);

    wasNotified = false;
    expect(model.showPassphrase, isFalse);
    model.showPassphrase = true;
    expect(wasNotified, isTrue);
  });

  test('validation', () {
    final model = PassphraseModel(MockStorageService());
    expect(model.isValid, isFalse);

    void testValid(
      String passphrase,
      String confirmedPassphrase,
      Matcher matcher,
    ) {
      model.passphrase = passphrase;
      model.confirmedPassphrase = confirmedPassphrase;
      expect(model.isValid, matcher);
    }

    testValid('', '', isFalse);
    testValid('foo', 'foo', isTrue);
    testValid('foo', 'bar', isFalse);
  });

  test('save, clear and load passphrase', () async {
    final service = MockStorageService();

    final model = PassphraseModel(service);
    model.passphrase = 'foo123';
    model.confirmedPassphrase = 'foo123';

    await model.savePassphrase();
    expect(model.passphrase, isEmpty);
    expect(model.confirmedPassphrase, isEmpty);

    verify(service.passphrase = 'foo123').called(1);
    verifyNever(service.setGuidedStorage());
    when(service.passphrase).thenReturn('bar456');

    await model.loadPassphrase();
    verify(service.passphrase).called(1);
    expect(model.passphrase, 'bar456');
    expect(model.confirmedPassphrase, 'bar456');

    await model.clearPassphrase();
    verify(service.passphrase = null).called(1);
    expect(model.passphrase, '');
    expect(model.confirmedPassphrase, '');
  });
}
