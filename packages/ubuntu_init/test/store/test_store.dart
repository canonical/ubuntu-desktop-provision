import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_init/src/store/store_model.dart';

import 'test_store.mocks.dart';
export '../test_init.dart';
export 'test_store.mocks.dart';

@GenerateMocks([StoreModel])
StoreModel buildStoreModel({bool? canLaunch}) {
  final model = MockStoreModel();
  when(model.init()).thenAnswer((_) async => canLaunch ?? true);
  return model;
}
