import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:split_view/split_view.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/storage/guided_resize/storage_button.dart';
import 'package:ubuntu_bootstrap/pages/storage/guided_resize/storage_split_view.dart';
import 'package:ubuntu_bootstrap/widgets/storage_size_box.dart';
import 'package:ubuntu_provision/providers.dart';
import 'package:ubuntu_provision/services.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';

import '../../test_utils.dart';

void main() {
  testWidgets('resize by drag', (tester) async {
    int? size;

    await tester.pumpApp(
      (_) => buildStorageSplitViewPage(
        onResize: (v) => size = v,
      ),
    );
    await tester.pumpAndSettle();

    expect(size, isNull);

    final indicator = find.ancestor(
      of: find.byKey(const Key('indicator')),
      matching: find.byType(Container),
    );
    expect(indicator, findsOneWidget);

    await tester.drag(indicator, const Offset(100, 0));
    expect(size, greaterThan(50));

    await tester.drag(indicator, const Offset(-200, 0));
    expect(size, lessThan(50));
  });

  testWidgets('resize existing partition via dialog', (tester) async {
    int? size;

    await tester.pumpApp(
      (_) => buildStorageSplitViewPage(
        dataUnit: DataUnit.megabytes,
        onResize: (v) => size = v,
      ),
    );
    await tester.pumpAndSettle();

    final windows = find.ancestor(
        of: find.text('Windows'), matching: find.byType(StorageButton),);
    expect(windows, findsOneWidget);

    await tester.tap(windows);
    await tester.pumpAndSettle();

    await tester.enterText(find.byType(StorageSizeBox), '25');
    await tester.pump();

    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    await tester.pump();

    await tester.pumpAndSettle();

    expect(size, equals(toBytes(25, DataUnit.megabytes)));
  });

  testWidgets('allocate installation space via dialog', (tester) async {
    int? size;

    await tester.pumpApp(
      (_) => buildStorageSplitViewPage(
        dataUnit: DataUnit.megabytes,
        onResize: (v) => size = v,
      ),
    );
    await tester.pumpAndSettle();

    final windows = find.ancestor(
        of: find.text('Ubuntu'), matching: find.byType(StorageButton),);
    expect(windows, findsOneWidget);

    await tester.tap(windows);
    await tester.pumpAndSettle();

    await tester.enterText(find.byType(StorageSizeBox), '25');
    await tester.pump();

    await tester.sendKeyEvent(LogicalKeyboardKey.enter);
    await tester.pump();

    await tester.pumpAndSettle();

    expect(size, equals(toBytes(75, DataUnit.megabytes)));
  });

  testWidgets('rebuild on storage change', (tester) async {
    int? size;

    await tester.pumpWidget(
      buildStorageSplitViewPage(
        currentSize: 55,
        partition: const Partition(number: 1),
        onResize: (v) => size = v,
      ),
    );
    await tester.pumpAndSettle();

    final controller1 =
        tester.widget<SplitView>(find.byType(SplitView)).controller;
    expect(controller1, isNotNull);
    expect(
      controller1!.weights,
      orderedEquals([moreOrLessEquals(55 / 100), moreOrLessEquals(45 / 100)]),
    );

    final indicator = find.ancestor(
      of: find.byKey(const Key('indicator')),
      matching: find.byType(Container),
    );
    expect(indicator, findsOneWidget);

    final windowWidth = tester.view.physicalSize.width;
    await tester.drag(indicator, Offset(windowWidth, 0));
    expect(size, 75);

    await tester.drag(indicator, Offset(-windowWidth, 0));
    expect(size, 20);

    // rebuild with different size and limits
    await tester.pumpWidget(
      buildStorageSplitViewPage(
        currentSize: 35,
        minimumSize: 30,
        maximumSize: 50,
        totalSize: 60,
        partition: const Partition(number: 2),
        onResize: (v) => size = v,
      ),
    );
    await tester.pumpAndSettle();

    final controller2 =
        tester.widget<SplitView>(find.byType(SplitView)).controller;
    expect(controller2, isNotNull);
    expect(
      controller2!.weights,
      orderedEquals([moreOrLessEquals(35 / 60), moreOrLessEquals(25 / 60)]),
    );

    await tester.drag(indicator, Offset(windowWidth, 0));
    expect(size, 50);

    await tester.drag(indicator, Offset(-windowWidth, 0));
    expect(size, 30);
  });
}

Widget buildStorageSplitViewPage({
  required void Function(int) onResize,
  int currentSize = 50,
  int minimumSize = 20,
  int maximumSize = 75,
  int totalSize = 100,
  DataUnit dataUnit = DataUnit.bytes,
  Partition partition = const Partition(),
  String existingLabel = 'Windows',
  String productName = 'Ubuntu',
}) {
  final pageImages = PageImages.internal(
    MockPageConfigService(),
    MockThemeVariantService(),
  );

  return MaterialApp(
    localizationsDelegates: GlobalUbuntuBootstrapLocalizations.delegates,
    home: Scaffold(
      body: ProviderScope(
        overrides: [
          pageImagesProvider.overrideWith((_) => pageImages),
        ],
        child: StorageSplitView(
          currentSize: toBytes(currentSize, dataUnit),
          minimumSize: toBytes(minimumSize, dataUnit),
          maximumSize: toBytes(maximumSize, dataUnit),
          totalSize: toBytes(totalSize, dataUnit),
          partition: partition,
          existingOS: OsProber(long: existingLabel, label: '', type: ''),
          productInfo: ProductInfo(name: productName),
          onResize: onResize,
        ),
      ),
    ),
  );
}
