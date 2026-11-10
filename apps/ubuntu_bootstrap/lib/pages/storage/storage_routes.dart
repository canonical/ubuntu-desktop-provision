import 'package:ubuntu_utils/ubuntu_utils.dart';

enum StorageSteps with RouteName {
  guidedCapabilities,
  tpmAction,
  bitlocker,
  guidedReformat,
  guidedResize,
  manual,
  passphraseType,
  passphrase,
  recoveryKey;
}
