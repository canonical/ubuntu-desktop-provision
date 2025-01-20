import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_bootstrap/pages/landscape/landscape_model.dart';

import 'test_landscape.mocks.dart';
export '../test_utils.dart';

@GenerateMocks([LandscapeDataModel])
LandscapeDataModel buildLandscapeModel({LandscapeData? state}) {
  final model = MockLandscapeDataModel();
  when(model.state).thenReturn(
    state ?? LandscapeData(
      userCode: '1234',
      isAttachedThroughMagicAttach: true,
      isAttachedThroughManualAttach: true,
      hasNoErrorWhenAttachingManually: true,
      skipPro: true,
      isAttached: false,
    ),
  );
  when(model.attachManuallyToken()).thenAnswer((_) async {});
  when(model.magicAttach()).thenAnswer((_) async {});
  return model;
}
