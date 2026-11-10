import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_init/pages/ubuntu_pro/ubuntu_pro_model.dart';

import 'test_ubuntu_pro.mocks.dart';
export '../test_utils.dart';

@GenerateMocks([UbuntuProModel])
UbuntuProModel buildUbuntuProModel({
  bool? enabled,
  Stream<String>? collect,
  bool? isAttached,
  String? token,
  String? userCode,
  bool? skipPro,
}) {
  final model = MockUbuntuProModel();
  when(model.isAttachedThroughMagicAttach).thenReturn(true);
  when(model.isAttachedThroughManualAttach).thenReturn(true);
  when(model.hasNoErrorWhenAttachingManually).thenReturn(true);
  when(model.token).thenReturn(token ?? '');
  when(model.userCode).thenReturn(userCode ?? '1234');
  when(model.isAttached).thenReturn(isAttached ?? false);
  when(model.attachManuallyToken()).thenAnswer((_) async {
    model.isAttached = true;
    model.notifyListeners();
  });
  when(model.magicAttach()).thenAnswer((_) async {
    model.isAttached = true;
    model.notifyListeners();
  });
  when(model.skipPro).thenReturn(skipPro ?? true);
  return model;
}
