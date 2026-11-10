import 'package:ubuntu_bootstrap/pages/storage/passphrase/passphrase_model.dart';
import 'package:ubuntu_bootstrap/ubuntu_bootstrap.dart';

final _unreachable = Exception('unreachable l10n string');

extension EntropyL10n on SemanticEntropy {
  String localize(UbuntuBootstrapLocalizations l10n, PassphraseType type) =>
      switch ((this, type)) {
        (SemanticEntropy.belowMin, PassphraseType.passphrase) =>
          l10n.passphrasePagePassphraseEntropyBelowMin,
        (SemanticEntropy.belowOptimal, PassphraseType.passphrase) =>
          l10n.passphrasePagePassphraseEntropyBelowOptimal,
        (SemanticEntropy.optimal, PassphraseType.passphrase) =>
          l10n.passphrasePagePassphraseEntropyOptimal,
        (SemanticEntropy.belowMin, PassphraseType.pin) =>
          l10n.passphrasePagePinEntropyBelowMin,
        (SemanticEntropy.belowOptimal, PassphraseType.pin) =>
          l10n.passphrasePagePinEntropyBelowOptimal,
        (SemanticEntropy.optimal, PassphraseType.pin) =>
          l10n.passphrasePagePinEntropyOptimal,
        _ => throw _unreachable,
      };
}
