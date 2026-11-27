import 'dart:math' as math;

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/widgets/storage_size_box.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';

void main() {
  for (final language in ['dz', 'eo']) {
    testWidgets('enter size in $language', (tester) async {
      int? size;
      await tester.pumpStorageSizeBox(
        StorageSizeBox(
          unit: DataUnit.megabytes,
          size: toBytes(123, DataUnit.megabytes),
          maximum: toBytes(500, DataUnit.megabytes),
          onSizeChanged: (value) => size = value,
          onUnitSelected: (_) {},
        ),
        locale: Locale(language),
      );
      await tester.pumpAndSettle();

      expect(find.byType(TextField), findsOneWidget);

      await tester.enterText(find.byType(TextField), '456');
      await tester.sendKeyEvent(LogicalKeyboardKey.enter);
      await tester.pump();

      expect(fromBytes(size!, DataUnit.megabytes), 456);
    });
  }

  for (final highContrast in [false, true]) {
    testWidgets(
      'uses the Yaru focus decoration${highContrast ? ' in high contrast' : ''}',
      (tester) async {
        if (highContrast) {
          tester.platformDispatcher.accessibilityFeaturesTestValue =
              const FakeAccessibilityFeatures(highContrast: true);
        }
        addTearDown(
          tester.platformDispatcher.clearAccessibilityFeaturesTestValue,
        );
        await tester.pumpStorageSizeBox(
          StorageSizeBox(
            unit: DataUnit.megabytes,
            size: toBytes(123, DataUnit.megabytes),
            maximum: toBytes(500, DataUnit.megabytes),
            onSizeChanged: (_) {},
            onUnitSelected: (_) {},
          ),
        );

        final field = find.byType(TextField);
        await tester.tap(field);
        await tester.pumpAndSettle();
        final fieldContext = tester.element(field);
        final inputDecorator = tester.widget<InputDecorator>(
          find
              .descendant(of: field, matching: find.byType(InputDecorator))
              .first,
        );
        final focusedBorder =
            Theme.of(fieldContext).inputDecorationTheme.focusedBorder;
        expect(inputDecorator.isFocused, isTrue);
        expect(focusedBorder, isNotNull);
        expect(inputDecorator.decoration.focusedBorder, focusedBorder);
        expect(tester.widget<TextField>(field).focusNode!.hasFocus, isTrue);
      },
    );
  }

  testWidgets('enter size', (tester) async {
    int? size;

    await tester.pumpStorageSizeBox(
      StorageSizeBox(
        unit: DataUnit.megabytes,
        size: toBytes(123, DataUnit.megabytes),
        maximum: toBytes(500, DataUnit.megabytes),
        onSizeChanged: (value) => size = value,
        onUnitSelected: (_) {},
      ),
    );

    await tester.enterText(find.byType(TextField), '456');
    await tester.pump();

    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    await tester.pump();

    expect(size, isNotNull);
    expect(fromBytes(size!, DataUnit.megabytes), equals(456));
  });

  testWidgets('preserve the caret when the parent rebuilds after editing',
      (tester) async {
    var size = 123;
    await tester.pumpWidget(
      WizardApp(
        localizationsDelegates: GlobalUbuntuBootstrapLocalizations.delegates,
        supportedLocales: supportedLocales,
        home: Scaffold(
          body: StatefulBuilder(
            builder: (context, setState) => StorageSizeBox(
              unit: DataUnit.bytes,
              size: size,
              maximum: 5000,
              onSizeChanged: (value) => setState(() => size = value),
              onUnitSelected: (_) {},
            ),
          ),
        ),
      ),
    );

    final field = find.byType(TextField);
    await tester.showKeyboard(field);
    final controller = tester.widget<TextField>(field).controller!;
    controller.selection = const TextSelection.collapsed(offset: 1);
    tester.testTextInput.updateEditingValue(
      const TextEditingValue(
        text: '1923',
        selection: TextSelection.collapsed(offset: 2),
      ),
    );
    await tester.pump();

    expect(controller.text, '1923');
    expect(controller.selection.baseOffset, 2);
  });

  testWidgets('preserve below-minimum text while editing and clamp on blur',
      (tester) async {
    var size = 123;
    await tester.pumpWidget(
      WizardApp(
        localizationsDelegates: GlobalUbuntuBootstrapLocalizations.delegates,
        supportedLocales: supportedLocales,
        home: Scaffold(
          body: StatefulBuilder(
            builder: (context, setState) => StorageSizeBox(
              unit: DataUnit.bytes,
              size: size,
              minimum: 10,
              maximum: 1000,
              onSizeChanged: (value) => setState(() => size = value),
              onUnitSelected: (_) {},
            ),
          ),
        ),
      ),
    );

    final field = find.byType(TextField);
    await tester.showKeyboard(field);
    final controller = tester.widget<TextField>(field).controller!;
    tester.testTextInput.updateEditingValue(
      const TextEditingValue(
        text: '1',
        selection: TextSelection.collapsed(offset: 1),
      ),
    );
    await tester.pump();

    expect(controller.text, '1');
    expect(size, 10);

    FocusManager.instance.primaryFocus!.unfocus();
    await tester.pump();

    expect(controller.text, '10');
    expect(size, 10);
  });

  testWidgets('display rounded whole-number sizes', (tester) async {
    final size = mibiAlign(100 * 1024 * 1024 * 1024);
    await tester.pumpStorageSizeBox(
      StorageSizeBox(
        unit: DataUnit.gigabytes,
        size: size,
        maximum: toBytes(500, DataUnit.gigabytes),
        onSizeChanged: (_) {},
        onUnitSelected: (_) {},
      ),
    );

    expect(
      tester.widget<TextField>(find.byType(TextField)).controller!.text,
      '107',
    );
  });

  testWidgets('reject fractional sizes', (tester) async {
    int? size;
    await tester.pumpStorageSizeBox(
      StorageSizeBox(
        unit: DataUnit.megabytes,
        size: toBytes(1, DataUnit.megabytes),
        maximum: toBytes(5, DataUnit.megabytes),
        onSizeChanged: (value) => size = value,
        onUnitSelected: (_) {},
      ),
    );

    await tester.enterText(find.byType(TextField), '1.5');
    await tester.pump();

    expect(size, isNull);
    expect(
      tester.widget<TextField>(find.byType(TextField)).controller!.text,
      '1',
    );
  });

  testWidgets('step size with the increment and decrement buttons',
      (tester) async {
    final sizes = <int>[];
    await tester.pumpStorageSizeBox(
      StorageSizeBox(
        unit: DataUnit.megabytes,
        size: toBytes(1, DataUnit.megabytes),
        maximum: toBytes(2, DataUnit.megabytes),
        onSizeChanged: sizes.add,
        onUnitSelected: (_) {},
      ),
    );

    await tester.tap(find.byIcon(Icons.add));
    expect(fromBytes(sizes.last, DataUnit.megabytes), 2);

    await tester.tap(find.byIcon(Icons.remove));
    expect(fromBytes(sizes.last, DataUnit.megabytes), 1);
  });

  testWidgets('repeat steps while holding an increment button', (tester) async {
    final sizes = <int>[];
    await tester.pumpStorageSizeBox(
      StorageSizeBox(
        unit: DataUnit.megabytes,
        size: toBytes(1, DataUnit.megabytes),
        maximum: toBytes(20, DataUnit.megabytes),
        onSizeChanged: sizes.add,
        onUnitSelected: (_) {},
      ),
    );

    final gesture = await tester.startGesture(
      tester.getCenter(find.byIcon(Icons.add)),
    );
    await tester.pump(const Duration(milliseconds: 800));
    await gesture.up();
    await tester.pump();

    expect(sizes.length, greaterThan(1));
  });

  testWidgets('disable the field when the range is empty', (tester) async {
    await tester.pumpStorageSizeBox(
      StorageSizeBox(
        unit: DataUnit.megabytes,
        size: toBytes(5, DataUnit.megabytes),
        minimum: toBytes(5, DataUnit.megabytes),
        maximum: toBytes(5, DataUnit.megabytes),
        onSizeChanged: (_) {},
        onUnitSelected: (_) {},
      ),
    );

    expect(tester.widget<TextField>(find.byType(TextField)).enabled, isFalse);
    expect(
      tester
          .widget<IconButton>(find.widgetWithIcon(IconButton, Icons.remove))
          .onPressed,
      isNull,
    );
    expect(
      tester
          .widget<IconButton>(find.widgetWithIcon(IconButton, Icons.add))
          .onPressed,
      isNull,
    );
  });

  testWidgets('text field is first in the spinbox tab order', (tester) async {
    final previousFocusNode = FocusNode();
    await tester.pumpWidget(
      WizardApp(
        localizationsDelegates: GlobalUbuntuBootstrapLocalizations.delegates,
        supportedLocales: supportedLocales,
        home: Scaffold(
          body: Column(
            children: [
              TextButton(
                focusNode: previousFocusNode,
                onPressed: () {},
                child: const Text('before'),
              ),
              StorageSizeBox(
                unit: DataUnit.megabytes,
                size: toBytes(5, DataUnit.megabytes),
                minimum: toBytes(1, DataUnit.megabytes),
                maximum: toBytes(9, DataUnit.megabytes),
                onSizeChanged: (_) {},
                onUnitSelected: (_) {},
              ),
            ],
          ),
        ),
      ),
    );

    previousFocusNode.requestFocus();
    await tester.pump();
    expect(previousFocusNode.hasFocus, isTrue);
    await tester.sendKeyEvent(LogicalKeyboardKey.tab);
    await tester.pump();
    expect(
      tester.widget<TextField>(find.byType(TextField)).focusNode!.hasFocus,
      isTrue,
    );
    addTearDown(previousFocusNode.dispose);
  });

  testWidgets('select unit', (tester) async {
    DataUnit? unit;

    await tester.pumpStorageSizeBox(
      StorageSizeBox(
        unit: DataUnit.gigabytes,
        size: toBytes(1, DataUnit.gigabytes),
        maximum: toBytes(5, DataUnit.gigabytes),
        onSizeChanged: (_) {},
        onUnitSelected: (value) => unit = value,
      ),
    );

    await tester.tap(find.byType(MenuAnchor));
    await tester.pumpAndSettle();

    await tester.tap(find.byKey(const ValueKey(DataUnit.megabytes)).last);
    await tester.pump();

    expect(unit, equals(DataUnit.megabytes));
  });

  group('present size', () {
    final fiveGb = toBytes(5, DataUnit.gigabytes);

    testWidgets('in gigabytes', (tester) async {
      await tester.pumpStorageSizeBox(
        StorageSizeBox(
          unit: DataUnit.gigabytes,
          size: fiveGb,
          maximum: fiveGb,
          onSizeChanged: (_) {},
          onUnitSelected: (_) {},
        ),
      );
      expect(find.widgetWithText(TextField, '5'), findsOneWidget);
    });

    testWidgets('in megabytes', (tester) async {
      await tester.pumpStorageSizeBox(
        StorageSizeBox(
          unit: DataUnit.megabytes,
          size: fiveGb,
          maximum: fiveGb,
          onSizeChanged: (_) {},
          onUnitSelected: (_) {},
        ),
      );
      expect(
        find.widgetWithText(TextField, (5 * 1000).toString()),
        findsOneWidget,
      );
    });

    testWidgets('in kilobytes', (tester) async {
      await tester.pumpStorageSizeBox(
        StorageSizeBox(
          unit: DataUnit.kilobytes,
          size: fiveGb,
          maximum: fiveGb,
          onSizeChanged: (_) {},
          onUnitSelected: (_) {},
        ),
      );
      expect(
        find.widgetWithText(TextField, (5 * 1000 * 1000).toString()),
        findsOneWidget,
      );
    });
  });

  testWidgets('range', (tester) async {
    int? size;

    await tester.pumpStorageSizeBox(
      StorageSizeBox(
        autofocus: true,
        unit: DataUnit.bytes,
        size: 1,
        minimum: 1,
        maximum: 9,
        onSizeChanged: (value) => size = value,
        onUnitSelected: (_) {},
      ),
    );

    // up until max
    for (var i = 2; i <= 10; ++i) {
      await tester.sendKeyEvent(LogicalKeyboardKey.arrowUp);
      await tester.pump();
      expect(size, equals(math.min(i, 9)));
    }

    // down until min
    for (var i = 8; i >= 0; --i) {
      await tester.sendKeyEvent(LogicalKeyboardKey.arrowDown);
      await tester.pump();
      expect(size, equals(math.max(1, i)));
    }
  });
}

extension StorageSizeBoxTester on WidgetTester {
  Future<void> pumpStorageSizeBox(StorageSizeBox widget, {Locale? locale}) {
    return pumpWidget(
      WizardApp(
        locale: locale,
        supportedLocales: supportedLocales,
        localizationsDelegates: GlobalUbuntuBootstrapLocalizations.delegates,
        home: Scaffold(body: widget),
      ),
    );
  }
}
