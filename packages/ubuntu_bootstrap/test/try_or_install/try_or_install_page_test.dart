import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_bootstrap/pages/try_or_install/try_or_install_page.dart';
import 'package:ubuntu_test/ubuntu_test.dart';
import 'package:yaru_test/yaru_test.dart';

import 'test_try_or_install.dart';

void main() {
  setUpAll(YaruTestWindow.ensureInitialized);

  testWidgets('offline', (tester) async {
    final model = buildTryOrInstallModel(isConnected: false);
    await tester.pumpApp((_) => buildTryOrInstallPage(model));

    expect(find.byType(Html).hitTestable(), findsNothing);
  });

  testWidgets('select option', (tester) async {
    final model = buildTryOrInstallModel(option: TryOrInstallOption.none);
    await tester.pumpApp((_) => buildTryOrInstallPage(model));

    expect(find.button(find.nextLabel), isDisabled);

    await tester.tap(find.radio(TryOrInstallOption.installUbuntu));
    verify(model.selectOption(TryOrInstallOption.installUbuntu)).called(1);

    await tester.tap(find.radio(TryOrInstallOption.tryUbuntu));
    verify(model.selectOption(TryOrInstallOption.tryUbuntu)).called(1);
  });

  testWidgets('install ubuntu', (tester) async {
    final model =
        buildTryOrInstallModel(option: TryOrInstallOption.installUbuntu);
    await tester.pumpApp((_) => buildTryOrInstallPage(model));

    expect(find.button(find.nextLabel), isEnabled);
  });

  testWidgets('try ubuntu', (tester) async {
    final model = buildTryOrInstallModel(option: TryOrInstallOption.tryUbuntu);
    await tester.pumpApp((_) => buildTryOrInstallPage(model));

    expect(find.button(find.nextLabel), isEnabled);

    final windowClosed = YaruTestWindow.waitForClosed();

    await tester.tapNext();
    await tester.pump();

    await expectLater(windowClosed, completes);
  });
}
