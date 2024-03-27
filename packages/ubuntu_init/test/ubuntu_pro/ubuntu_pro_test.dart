import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ubuntu_init/src/init_pages.dart';
import 'package:ubuntu_init/ubuntu_init.dart';
import 'test_ubuntu_pro.dart';

void main() {
  Widget buildPage(UbuntuProModel model) {
    return ProviderScope(
      overrides: [
        ubuntuProModelProvider.overrideWith((_) => model),
      ],
      child: const UbuntuProPage(),
    );
  }

  testWidgets('ubuntu pro - magic attach', (tester) async {
    final model = buildUbuntuProModel(enabled: true);
    await tester.pumpApp((_) => buildPage(model));

    final barCodeFinder = find.byType(BarcodeWidget);
    expect(barCodeFinder, findsOneWidget);

    final codeFinder = find.byType(EditableText);

    final codeFinderWidget =
        codeFinder.first.evaluate().single.widget as EditableText;
    expect(codeFinderWidget.controller.text, model.userCode);

    await model.magicAttach();
    expect(model.isAttached, isTrue);
  });

  testWidgets('ubuntu pro - manually attach', (tester) async {
    final model = buildUbuntuProModel(enabled: true);
    await tester.pumpApp((_) => buildPage(model));

    await model.attachManuallyToken();
    expect(model.isAttached, isTrue);
  });
}
