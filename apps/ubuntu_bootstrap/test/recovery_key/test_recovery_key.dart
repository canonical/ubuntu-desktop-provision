import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_bootstrap/pages/recovery_key/recovery_key_model.dart';

import 'test_recovery_key.mocks.dart';
export 'test_recovery_key.mocks.dart';

const testRecoveryKey = '12345-12345-12345-12345-12345-12345-12345-12345';
@GenerateMocks([RecoveryKeyModel])
RecoveryKeyModel buildRecoveryKeyModel({
  bool? init,
  String? recoveryKey,
  RecoveryKeyException? error,
}) {
  final model = MockRecoveryKeyModel();
  when(model.init()).thenAnswer((_) async => init ?? false);
  when(model.confirmed).thenReturn(true);
  when(model.recoveryKey).thenReturn(recoveryKey ?? '');
  when(model.error).thenReturn(error);
  return model;
}
