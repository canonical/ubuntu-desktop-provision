import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/pages/refresh/refresh_model.dart';

import 'test_refresh.mocks.dart';
export '../test_utils.dart';
export 'test_refresh.mocks.dart';

@GenerateMocks([RefreshModel])
RefreshModel buildRefreshModel({RefreshState? state}) {
  final model = MockRefreshModel();
  when(model.state).thenReturn(state ??
      const RefreshState.status(
          RefreshStatus(availability: RefreshCheckState.UNAVAILABLE)));
  when(model.init()).thenAnswer((_) async => state?.available == true);
  return model;
}
