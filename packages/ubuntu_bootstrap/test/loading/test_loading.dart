import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_bootstrap/pages/loading/loading_model.dart';

import 'test_loading.mocks.dart';
export '../test_utils.dart';
export 'test_loading.mocks.dart';

@GenerateMocks([LoadingModel])
LoadingModel buildLoadingModel({Duration? delay}) {
  final model = MockLoadingModel();
  when(model.init()).thenAnswer((_) => Future.delayed(delay ?? Duration.zero));
  return model;
}
