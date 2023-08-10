import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_init/src/store/store_model.dart';

import 'test_store.dart';

void main() {
  test('launcher', () async {
    final launcher = MockUrlLauncher();
    when(launcher.launchUrl(kStoreUrl)).thenAnswer((_) async => true);

    final model = StoreModel(launcher);
    expect(await model.init(), isTrue);

    await model.launch();
    verify(launcher.launchUrl(kStoreUrl)).called(1);
  });
}
