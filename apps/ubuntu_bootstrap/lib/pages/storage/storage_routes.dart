import 'package:ubuntu_utils/ubuntu_utils.dart';

enum StorageSteps with RouteName {
  bitlocker,
  guidedReformat,
  guidedResize,
  manual,
  passphrase,
  tpmPassphrase,
  recoveryKey;
}
