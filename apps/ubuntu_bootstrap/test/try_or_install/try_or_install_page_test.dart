import 'package:flutter_test/flutter_test.dart';
import 'package:ubuntu_bootstrap/pages/try_or_install/try_or_install_page.dart';
import 'package:ubuntu_test/ubuntu_test.dart';
import 'package:yaru_test/yaru_test.dart';

import 'test_try_or_install.dart';

void main() {
  setUpAll(YaruTestWindow.ensureInitialized);

  testWidgets('select option', (tester) async {
    await tester.pumpApp((_) => buildTryOrInstallPage());

    expect(find.button(find.nextLabel), findsOneWidget);
    expect(find.button(find.closeLabel), findsNothing);

    await tester.tap(find.radio(TryOrInstallOption.tryUbuntu));
    await tester.pump();
    expect(find.button(find.nextLabel), findsNothing);
    expect(find.button(find.closeLabel), findsOneWidget);

    await tester.tap(find.radio(TryOrInstallOption.installUbuntu));
    await tester.pump();
    expect(find.button(find.nextLabel), findsOneWidget);
    expect(find.button(find.closeLabel), findsNothing);
  });

  testWidgets('install ubuntu', (tester) async {
    await tester.pumpApp((_) => buildTryOrInstallPage());

    expect(find.button(find.nextLabel), isEnabled);
  });

  testWidgets('try ubuntu', (tester) async {
    await tester.pumpApp((_) => buildTryOrInstallPage());

    await tester.tap(find.radio(TryOrInstallOption.tryUbuntu));
    await tester.pump();
    expect(find.button(find.closeLabel), isEnabled);

    final windowClosed = YaruTestWindow.waitForClosed();

    await tester.tapClose();
    await tester.pump();

    await expectLater(windowClosed, completes);
  });
}
