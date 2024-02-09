import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_init/src/welcome/welcome_model.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';

import 'test_welcome.mocks.dart';
export '../test_utils.dart';
export 'test_welcome.mocks.dart';

@GenerateMocks([WelcomeModel])
WelcomeModel buildWelcomeModel({
  ProductInfo? productInfo,
  String? releaseNotesUrl,
  Exception? error,
}) {
  final model = MockWelcomeModel();
  if (error != null) {
    when(model.init()).thenThrow(error);
  } else {
    when(model.init()).thenAnswer((_) async => true);
  }
  when(model.productInfo)
      .thenReturn(productInfo ?? ProductInfo(name: 'Ubuntu'));
  when(model.releaseNotesURL(any))
      .thenReturn(releaseNotesUrl ?? 'https://ubuntu.com/download/desktop');
  return model;
}
