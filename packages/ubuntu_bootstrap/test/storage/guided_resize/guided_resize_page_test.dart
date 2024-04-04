// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/storage/guided_resize/guided_resize_model.dart';
import 'package:ubuntu_bootstrap/pages/storage/guided_resize/guided_resize_page.dart';
import 'package:ubuntu_provision/providers.dart';
import 'package:ubuntu_provision/services.dart';
import 'package:ubuntu_widgets/ubuntu_widgets.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';

import 'guided_resize_model_test.dart';
import 'test_guided_resize.dart';

void main() {
  Widget buildPage(GuidedResizeModel model) {
    final pageImages = PageImages.internal(
      MockPageConfigService(),
      MockThemeVariantService(),
    );

    return ProviderScope(
      overrides: [
        guidedResizeModelProvider.overrideWith((_) => model),
        pageImagesProvider.overrideWith((_) => pageImages),
      ],
      child: const GuidedResizePage(),
    );
  }

  testWidgets('storage formatting', (tester) async {
    final model = buildGuidedResizeModel(
        storageCount: 5,
        selectedIndex: 1,
        allPartitions: {
          1: const [
            Partition(
              number: 1,
              size: 123,
              path: '/dev/sda1',
              os: OsProber(long: 'Ubuntu 22.04 LTS', label: '', type: ''),
            ),
          ],
        });
    await tester.pumpApp((_) => buildPage(model));

    expect(
      find.text('sda1 - Ubuntu 22.04 LTS - 123 B'),
      findsOneWidget,
    );
  });

  testWidgets('storage selection', (tester) async {
    final model = buildGuidedResizeModel(storageCount: 5, selectedIndex: 1);
    await tester.pumpApp((_) => buildPage(model));

    final item1 = find.descendant(
      of: find.byType(MenuButtonBuilder<int>),
      matching: find.byKey(const ValueKey(1)),
    );
    expect(item1, findsOneWidget);

    await tester.tap(find.byType(MenuButtonBuilder<int>));
    await tester.pumpAndSettle();

    final item2 = find.descendant(
      of: find.byType(MenuItemButton),
      matching: find.byKey(const ValueKey(2)),
    );
    await tester.ensureVisible(item2.last);
    await tester.tap(item2.last);
    await tester.pump();

    verify(model.selectStorage(2)).called(1);
  });

  testWidgets('storage resize', (tester) async {
    final model = buildGuidedResizeModel(
      selectedPartition: const Partition(number: 1),
      totalSize: 100,
    );
    await tester.pumpApp((_) => buildPage(model));

    final slider = find.byType(Slider);
    expect(slider, findsOneWidget);

    tester.widget<Slider>(slider).onChanged!(50);
    verify(model.resizeStorage(50)).called(1);
  });

  testWidgets('alongside none', (tester) async {
    final model = buildGuidedResizeModel(
      existingOs: [],
      productInfo: ProductInfo(name: 'Ubuntu', version: '22.10'),
    );
    await tester.pumpApp((_) => buildPage(model));

    final context = tester.element(find.byType(GuidedResizePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    expect(
      find.text(l10n.installationTypeAlongsideUnknown('Ubuntu 22.10')),
      findsOneWidget,
    );
  });

  testWidgets('alongside one OS', (tester) async {
    final model = buildGuidedResizeModel(
      existingOs: [windows10],
      productInfo: ProductInfo(name: 'Ubuntu', version: '22.10'),
    );
    await tester.pumpApp((_) => buildPage(model));

    final context = tester.element(find.byType(GuidedResizePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    expect(
      find.text(l10n.installationTypeAlongside('Ubuntu 22.10', 'Windows 10')),
      findsOneWidget,
    );
  });

  testWidgets('alongside two OSes', (tester) async {
    final model = buildGuidedResizeModel(
      existingOs: [ubuntu2110, ubuntu2204],
      productInfo: ProductInfo(name: 'Ubuntu', version: '22.10'),
    );
    await tester.pumpApp((_) => buildPage(model));

    final context = tester.element(find.byType(GuidedResizePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    expect(
      find.text(l10n.installationTypeAlongsideDual(
          'Ubuntu 22.10', 'Ubuntu 21.10', 'Ubuntu 22.04 LTS')),
      findsOneWidget,
    );
  });

  testWidgets('alongside multiple OSes', (tester) async {
    final model = buildGuidedResizeModel(
      existingOs: [windows10, ubuntu2110, ubuntu2204],
      productInfo: ProductInfo(name: 'Ubuntu', version: '22.10'),
    );
    await tester.pumpApp((_) => buildPage(model));

    final context = tester.element(find.byType(GuidedResizePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    expect(
      find.text(l10n.installationTypeAlongsideMulti('Ubuntu 22.10')),
      findsOneWidget,
    );
  });

  testWidgets('reset when going back', (tester) async {
    final model = buildGuidedResizeModel();
    await tester.pumpApp((_) => buildPage(model));

    final backButton = find.byType(BackWizardButton);
    expect(backButton, findsOneWidget);
    await tester.widget<BackWizardButton>(backButton).onBack!();

    verify(model.reset()).called(1);
  });
}
