import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_init/src/ubuntu_pro/ubuntu_pro_model.dart';

import 'test_ubuntu_pro.mocks.dart';
export '../test_utils.dart';

@GenerateMocks([UbuntuProModel])
UbuntuProModel buildUbuntuProModel({
  bool? enabled,
  Stream<String>? collect,
}) {
  final model = MockUbuntuProModel();
  when(model.isAttachedThroughMagicAttach).thenReturn(true);
  when(model.isAttachedThroughManualAttach).thenReturn(true);
  when(model.hasNoErrorWhenAttachingManually).thenReturn(true);
  when(model.token).thenReturn('token');
  when(model.userCode).thenReturn('1234');
  when(model.isAttached).thenReturn(true);
  when(model.attachManuallyToken()).thenAnswer((_) async {
    model.isAttached = true;
    model.notifyListeners();
  });
  when(model.magicAttach()).thenAnswer((_) async {
    model.isAttached = true;
    model.notifyListeners();
  });
  return model;
}
