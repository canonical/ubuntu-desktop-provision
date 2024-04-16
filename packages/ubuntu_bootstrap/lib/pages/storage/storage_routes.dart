import 'package:ubuntu_utils/ubuntu_utils.dart';

enum StorageSteps with RouteName {
  guidedReformat,
  guidedResize,
  manual,
  passphrase,
  recoveryKey;
}
