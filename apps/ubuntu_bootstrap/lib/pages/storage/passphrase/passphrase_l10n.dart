import 'package:ubuntu_bootstrap/pages/storage/passphrase/passphrase_model.dart';
import 'package:ubuntu_bootstrap/ubuntu_bootstrap.dart';

final _unreachable = Exception('unreachable l10n string');

extension EntropyL10n on Entropy {
  String localize(UbuntuBootstrapLocalizations l10n, PassphraseType type) =>
      switch ((this, type)) {
        (Entropy.belowMin, PassphraseType.passphrase) =>
          l10n.passphrasePagePassphraseEntropyBelowMin,
        (Entropy.optimal, PassphraseType.passphrase) =>
          l10n.passphrasePagePassphraseEntropyOptimal,
        (Entropy.belowMin, PassphraseType.pin) =>
          l10n.passphrasePagePinEntropyBelowMin,
        (Entropy.optimal, PassphraseType.pin) =>
          l10n.passphrasePagePinEntropyOptimal,
        _ => throw _unreachable,
      };
}
