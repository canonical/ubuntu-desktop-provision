import 'package:flutter_test/flutter_test.dart';
import 'package:ubuntu_provision/services.dart';
import 'package:ubuntu_service/ubuntu_service.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

import 'test_accessibility.dart';

void main() {
  setUp(() {
    registerMockService<PageConfigService>(MockPageConfigService());
  });

  testWidgets('active options', (tester) async {
    final model = buildAccessibilityModel(
      activeOptions: [
        AccessibilityOption.highContrast,
        AccessibilityOption.reduceAnimation,
        AccessibilityOption.visualAlerts,
      ],
    );

    await tester.pumpApp((_) => buildAccessibilityPage(model));

    expect(find.text(tester.lang.accessibilitySeeingLabel), findsOneWidget);
    expect(find.text(tester.lang.accessibilityHearingLabel), findsOneWidget);
    expect(find.text(tester.lang.accessibilityTypingLabel), findsOneWidget);
    expect(find.text(tester.lang.accessibilityPointingLabel), findsOneWidget);
    expect(find.text(tester.lang.accessibilityZoomLabel), findsOneWidget);

    await tester.tap(find.text(tester.lang.accessibilitySeeingLabel));
    await tester.pumpAndSettle();

    expectListTile(tester, tester.lang.accessibilityHighContrastLabel, isTrue);
    expectListTile(tester, tester.lang.accessibilityLargeTextLabel, isFalse);
    expectListTile(
        tester, tester.lang.accessibilityReduceAnimationLabel, isTrue);
    expectListTile(tester, tester.lang.accessibilityScreenReaderLabel, isFalse);
  });
}

void expectListTile(WidgetTester tester, String label, Matcher valueMatcher) {
  final tile = find.widgetWithText(YaruSwitchListTile, label).hitTestable();
  expect(tile, findsOneWidget);
  expect(tester.widget<YaruSwitchListTile>(tile).value, valueMatcher);
}
