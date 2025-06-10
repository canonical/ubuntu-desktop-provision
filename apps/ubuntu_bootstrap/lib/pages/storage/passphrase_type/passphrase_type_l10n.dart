import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/services/storage_service.dart';

final _unreachable = Exception('unreachable l10n string');

extension PassphraseTypeL10n on PassphraseType {
  String localizedHeader(UbuntuBootstrapLocalizations l10n) => switch (this) {
        PassphraseType.passphrase => l10n.passphrasePageHeaderPassphrase,
        PassphraseType.pin => l10n.passphrasePageHeaderPin,
        PassphraseType.none => throw _unreachable,
      };

  String localizedBody(UbuntuBootstrapLocalizations l10n) => switch (this) {
        PassphraseType.passphrase => l10n.passphrasePageBodyPassphrase,
        PassphraseType.pin => l10n.passphrasePageBodyPin,
        PassphraseType.none => throw _unreachable,
      };

  String localizedChooseHint(UbuntuBootstrapLocalizations l10n) =>
      switch (this) {
        PassphraseType.passphrase => l10n.passphrasePageChoosePassphraseHint,
        PassphraseType.pin => l10n.passphrasePageChoosePinHint,
        PassphraseType.none => throw _unreachable,
      };

  String localizedConfirmHint(UbuntuBootstrapLocalizations l10n) =>
      switch (this) {
        PassphraseType.passphrase => l10n.passphrasePageConfirmPassphraseHint,
        PassphraseType.pin => l10n.passphrasePageConfirmPinHint,
        PassphraseType.none => throw _unreachable,
      };

  String localizedRequiredError(UbuntuBootstrapLocalizations l10n) =>
      switch (this) {
        PassphraseType.passphrase => l10n.passphrasePageRequiredPassphrase,
        PassphraseType.pin => l10n.passphrasePageRequiredPin,
        PassphraseType.none => throw _unreachable,
      };

  String localizedMismatchError(UbuntuBootstrapLocalizations l10n) =>
      switch (this) {
        PassphraseType.passphrase => l10n.passphrasePageMismatchPassphrase,
        PassphraseType.pin => l10n.passphrasePageMismatchPin,
        PassphraseType.none => throw _unreachable,
      };

  String localizedTileTitle(UbuntuBootstrapLocalizations l10n) =>
      switch (this) {
        PassphraseType.passphrase => l10n.passphraseTypePassphraseTileTitle,
        PassphraseType.none => l10n.passphraseTypeNoneTileTitle,
        PassphraseType.pin => l10n.passphraseTypePinTileTitle,
      };
  String? localizedTileSubTitle(UbuntuBootstrapLocalizations l10n) =>
      switch (this) {
        PassphraseType.passphrase => l10n.passphraseTypePassphraseTileSubTitle,
        PassphraseType.none => null,
        PassphraseType.pin => l10n.passphraseTypePinTileSubTitle,
      };
}
