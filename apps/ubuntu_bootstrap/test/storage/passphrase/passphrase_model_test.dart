import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:subiquity_test/subiquity_test.dart';
import 'package:ubuntu_bootstrap/pages/storage/passphrase/passphrase_model.dart';
import 'package:ubuntu_bootstrap/services/storage_service.dart';

import 'test_passphrase.dart';

void main() {
  test('notify changes', () {
    final storageService = MockStorageService();
    when(storageService.guidedCapability).thenReturn(GuidedCapability.DIRECT);

    final model = PassphraseModel(
      storageService,
      MockSubiquityClient(),
    );

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
    final storageService = MockStorageService();
    when(storageService.guidedCapability).thenReturn(GuidedCapability.DIRECT);

    final model = PassphraseModel(
      storageService,
      MockSubiquityClient(),
    );
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
    final storageService = MockStorageService();
    when(storageService.guidedCapability).thenReturn(GuidedCapability.DIRECT);

    final model = PassphraseModel(
      storageService,
      MockSubiquityClient(),
    );
    model.passphrase = 'foo123';
    model.confirmedPassphrase = 'foo123';

    await model.savePassphrase();
    expect(model.passphrase, isEmpty);
    expect(model.confirmedPassphrase, isEmpty);

    verify(storageService.passphrase = 'foo123').called(1);
    verifyNever(storageService.setGuidedStorage());
    when(storageService.passphrase).thenReturn('bar456');
    when(storageService.passphraseType).thenReturn(PassphraseType.passphrase);

    await model.loadPassphrase();
    verify(storageService.passphrase).called(1);
    expect(model.passphrase, 'bar456');
    expect(model.confirmedPassphrase, 'bar456');

    await model.clearPassphrase();
    verify(storageService.passphrase = null).called(1);
    expect(model.passphrase, '');
    expect(model.confirmedPassphrase, '');
  });

  group('pin/passphrase entropy', () {
    for (final testCase in [
      (
        name: 'insufficient passphrase',
        passphraseType: PassphraseType.passphrase,
        guidedCapability: GuidedCapability.CORE_BOOT_ENCRYPTED,
        entropyResponse: EntropyResponse(
          entropyBits: 1,
          minEntropyBits: 2,
          optimalEntropyBits: 3,
        ),
        expectedEntropy: Entropy.belowMin,
      ),
      (
        name: 'sufficient passphrase',
        passphraseType: PassphraseType.passphrase,
        guidedCapability: GuidedCapability.CORE_BOOT_ENCRYPTED,
        entropyResponse: EntropyResponse(
          entropyBits: 2,
          minEntropyBits: 2,
          optimalEntropyBits: 3,
        ),
        expectedEntropy: Entropy.belowOptimal,
      ),
      (
        name: 'more than sufficient passphrase',
        passphraseType: PassphraseType.passphrase,
        guidedCapability: GuidedCapability.CORE_BOOT_ENCRYPTED,
        entropyResponse: EntropyResponse(
          entropyBits: 3,
          minEntropyBits: 2,
          optimalEntropyBits: 3,
        ),
        expectedEntropy: Entropy.optimal,
      ),
      (
        name: 'insufficient pin',
        passphraseType: PassphraseType.pin,
        guidedCapability: GuidedCapability.CORE_BOOT_ENCRYPTED,
        entropyResponse: EntropyResponse(
          entropyBits: 1,
          minEntropyBits: 2,
          optimalEntropyBits: 3,
        ),
        expectedEntropy: Entropy.belowMin,
      ),
      (
        name: 'sufficient pin',
        passphraseType: PassphraseType.pin,
        guidedCapability: GuidedCapability.CORE_BOOT_ENCRYPTED,
        entropyResponse: EntropyResponse(
          entropyBits: 2,
          minEntropyBits: 2,
          optimalEntropyBits: 3,
        ),
        expectedEntropy: Entropy.belowOptimal,
      ),
      (
        name: 'more than sufficient pin',
        passphraseType: PassphraseType.pin,
        guidedCapability: GuidedCapability.CORE_BOOT_ENCRYPTED,
        entropyResponse: EntropyResponse(
          entropyBits: 3,
          minEntropyBits: 2,
          optimalEntropyBits: 3,
        ),
        expectedEntropy: Entropy.optimal,
      ),
      (
        name: 'no tpm fde',
        passphraseType: PassphraseType.passphrase,
        guidedCapability: GuidedCapability.LVM_LUKS,
        entropyResponse: null,
        expectedEntropy: null,
      ),
    ]) {
      test(testCase.name, () async {
        const testPin = '12345';
        const testPassphrase = 'foobar';

        final storageService = MockStorageService();
        when(storageService.guidedCapability)
            .thenReturn(testCase.guidedCapability);
        when(storageService.passphraseType).thenReturn(testCase.passphraseType);

        final subiquityClient = MockSubiquityClient();
        if (testCase.passphraseType == PassphraseType.passphrase) {
          when(
            subiquityClient.calculateEntropyV2(passphrase: testPassphrase),
          ).thenAnswer((_) async => testCase.entropyResponse!);
        } else {
          when(
            subiquityClient.calculateEntropyV2(pin: testPin),
          ).thenAnswer((_) async => testCase.entropyResponse!);
        }

        final model = PassphraseModel(storageService, subiquityClient);

        // Listen to updates from the model
        final entropyStreamController = StreamController<Entropy?>.broadcast();
        model.addListener(() => entropyStreamController.add(model.entropy));
        final future = expectLater(
          entropyStreamController.stream,
          emitsInOrder([
            isNull, // setting the passphrase results in an update without changing the entropy
            // there's another update in case the entropy isn't null
            if (testCase.expectedEntropy != null)
              equals(testCase.expectedEntropy),
          ]),
        );

        model.passphrase = testCase.passphraseType == PassphraseType.pin
            ? testPin
            : testPassphrase;

        await future;
        await entropyStreamController.close();
      });
    }
  });
}
