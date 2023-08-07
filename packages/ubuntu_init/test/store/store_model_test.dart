import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_init/src/store/store_model.dart';

import 'test_store.dart';

void main() {
  test('launcher', () async {
    final launcher = MockPrivilegedDesktopLauncher();
    when(launcher.isAvailable).thenReturn(true);

    final model = StoreModel(launcher);
    expect(await model.init(), isTrue);
    verify(launcher.connect()).called(1);

    when(launcher.isAvailable).thenReturn(false);
    expect(await model.init(), isFalse);
    verify(launcher.connect()).called(1);

    await model.launch();
    verify(launcher.openDesktopEntry(kStoreDesktopId)).called(1);

    await model.dispose();
    verify(launcher.close()).called(1);
  });
}
