import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_bootstrap/pages/storage/tpm_action/tpm_action_model.dart';

import 'test_tpm_action.mocks.dart';
export 'test_tpm_action.mocks.dart';

@GenerateMocks([TpmActionModel])
TpmActionModel buildTpmActionModel({
  bool useTpm = false,
}) {
  final model = MockTpmActionModel();
  when(model.init()).thenAnswer((_) async => useTpm);
  return model;
}
