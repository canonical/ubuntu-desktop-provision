import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_init/src/store/store_l10n.dart';
import 'package:ubuntu_init/src/store/store_model.dart';
import 'package:ubuntu_init/src/store/store_page.dart';
import 'package:yaru_test/yaru_test.dart';

import 'test_store.dart';

void main() {
  Widget buildPage(StoreModel model) {
    return ProviderScope(
      overrides: [
        storeModelProvider.overrideWith((_) => model),
      ],
      child: const StorePage(),
    );
  }

  testWidgets('launch store', (tester) async {
    final model = buildStoreModel(canLaunch: true);

    await tester.pumpWidget(tester.buildApp((_) => buildPage(model)));

    final context = tester.element(find.byType(StorePage));
    final l10n = StoreLocalizations.of(context);

    await tester.tapButton(l10n.storeOpen);
    verify(model.launch()).called(1);
  });
}
