import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_init/src/privacy/privacy_model.dart';

import 'test_privacy.mocks.dart';
export '../test_utils.dart';
export 'test_privacy.mocks.dart';

@GenerateMocks([PrivacyModel])
PrivacyModel buildPrivacyModel({
  bool? isLocationEnabled,
  bool? isReportingEnabled,
}) {
  final model = MockPrivacyModel();
  when(model.init()).thenAnswer((_) async => true);
  when(model.isLocationEnabled).thenReturn(isLocationEnabled ?? false);
  when(model.isReportingEnabled).thenReturn(isReportingEnabled ?? false);
  return model;
}
