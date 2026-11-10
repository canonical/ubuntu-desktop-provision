import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ubuntu_init/pages.dart';
import 'package:ubuntu_init/ubuntu_init.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_widgets/ubuntu_widgets.dart';
import '../init_model_test.mocks.dart';
import 'test_ubuntu_pro.dart';

void main() {
  Widget buildPage() {
    final pageImages = PageImages.internal(
      MockPageConfigService(),
      MockThemeVariantService(),
    );
    return ProviderScope(
      overrides: [
        pageImagesProvider.overrideWithValue(pageImages),
      ],
      child: const UbuntuProSuccessAttachPage(),
    );
  }

  testWidgets('ubuntu pro - success attach', (tester) async {
    await tester.pumpApp((_) => buildPage());

    final successIcon = find.byType(SuccessIcon);
    expect(successIcon, findsOneWidget);
  });
}
