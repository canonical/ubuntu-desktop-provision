import 'package:ubuntu_utils/ubuntu_utils.dart';

enum StorageSteps with RouteName {
  guidedCapabilities,
  bitlocker,
  guidedReformat,
  guidedResize,
  manual,
  passphrase,
  recoveryKey;
}
