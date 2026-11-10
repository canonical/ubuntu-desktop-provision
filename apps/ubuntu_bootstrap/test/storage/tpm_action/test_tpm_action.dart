import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/pages/storage/tpm_action/tpm_action_model.dart';

import 'test_tpm_action.mocks.dart';
export 'test_tpm_action.mocks.dart';

@GenerateMocks([TpmActionModel])
TpmActionModel buildTpmActionModel({
  bool useTpm = false,
  GuidedDisallowedCapability? tpmDisallowedCapability,
  bool confirmationNeeded = false,
  bool isLoading = false,
  SubiquityException? actionResult,
}) {
  final model = MockTpmActionModel();
  when(model.init()).thenAnswer((_) async => useTpm);
  when(model.tpmDisallowedCapability).thenReturn(tpmDisallowedCapability);
  when(model.confirmationNeeded).thenReturn(confirmationNeeded);
  when(model.isLoading).thenReturn(isLoading);
  when(model.performAction(any, fixedCallback: anyNamed('fixedCallback')))
      .thenAnswer((_) async => actionResult);
  return model;
}
