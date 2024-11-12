import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_init/src/telemetry/telemetry_model.dart';

import 'test_telemetry.mocks.dart';
export '../test_utils.dart';
export 'test_telemetry.mocks.dart';

@GenerateMocks([TelemetryModel])
TelemetryModel buildTelemetryModel({
  bool? enabled,
  Stream<String>? collect,
}) {
  final model = MockTelemetryModel();
  when(model.enabled).thenReturn(enabled ?? true);
  when(model.init()).thenAnswer((_) async => true);
  when(model.collect()).thenAnswer((_) => collect ?? Stream.value(''));
  return model;
}
