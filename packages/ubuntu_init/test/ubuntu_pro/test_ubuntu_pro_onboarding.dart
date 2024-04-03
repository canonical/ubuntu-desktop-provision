import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_init/src/ubuntu_pro/ubuntu_pro_onboarding_model.dart';

import 'test_ubuntu_pro_onboarding.mocks.dart';
export '../test_utils.dart';

@GenerateMocks([UbuntuProOnBoardingModel])
UbuntuProOnBoardingModel buildUbuntuProOnboardingModel({
  bool? enabled,
  Stream<String>? collect,
}) {
  final model = MockUbuntuProOnBoardingModel();
  when(model.selection)
      .thenReturn(UbuntuProOnboardingPageSelection.enableUbuntuPro);
  when(model.init()).thenAnswer((_) async => true);
  return model;
}
