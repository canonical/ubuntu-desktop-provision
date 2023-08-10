import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_init/src/store/store_model.dart';

import 'test_store.dart';

void main() {
  test('launcher', () async {
    final launcher = MockUrlLauncher();
    when(launcher.canLaunchUrl(kStoreUrl)).thenAnswer((_) async => true);
    when(launcher.launchUrl(kStoreUrl)).thenAnswer((_) async => true);

    final model = StoreModel(launcher);
    expect(await model.init(), isTrue);
    verify(launcher.canLaunchUrl(kStoreUrl)).called(1);

    when(launcher.canLaunchUrl(kStoreUrl)).thenAnswer((_) async => false);
    expect(await model.init(), isFalse);
    verify(launcher.canLaunchUrl(kStoreUrl)).called(1);

    await model.launch();
    verify(launcher.launchUrl(kStoreUrl)).called(1);
  });
}
