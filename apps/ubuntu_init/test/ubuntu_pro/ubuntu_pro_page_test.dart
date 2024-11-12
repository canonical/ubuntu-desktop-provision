import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ubuntu_init/src/init_pages.dart';
import 'package:ubuntu_init/ubuntu_init.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import '../init_model_test.mocks.dart';
import 'test_ubuntu_pro.dart';

void main() {
  Widget buildPage(UbuntuProModel model) {
    final pageImages = PageImages.internal(
      MockPageConfigService(),
      MockThemeVariantService(),
    );
    return ProviderScope(
      overrides: [
        pageImagesProvider.overrideWithValue(pageImages),
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
    expect(model.isAttached, isFalse);
  });

  testWidgets('ubuntu pro - manually attach', (tester) async {
    final model = buildUbuntuProModel(enabled: true);
    await tester.pumpApp((_) => buildPage(model));

    final tokenTextFieldFinder = find.byType(TokenTextField);
    expect(tokenTextFieldFinder, findsOneWidget);

    await tester.enterText(tokenTextFieldFinder, '123456');
    final attachButtonFinder = find.text('Attach');
    expect(attachButtonFinder, findsOneWidget);
    await tester.tap(attachButtonFinder);
    expect(model.isAttached, isFalse);
  });
}
