import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_init/src/telemetry/telemetry_model.dart';

import 'test_telemetry.mocks.dart';
export '../test_init.dart';
export 'test_telemetry.mocks.dart';

@GenerateMocks([TelemetryModel])
TelemetryModel buildTelemetryModel({
  bool? enabled,
  String? collect,
}) {
  final model = MockTelemetryModel();
  when(model.enabled).thenReturn(enabled ?? true);
  when(model.init()).thenAnswer((_) async => true);
  when(model.collect()).thenAnswer((_) async => collect);
  return model;
}
