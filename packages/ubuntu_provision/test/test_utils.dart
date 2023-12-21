import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:timezone_map/timezone_map.dart';
import 'package:ubuntu_localizations/ubuntu_localizations.dart';
import 'package:ubuntu_provision/l10n.dart';
import 'package:ubuntu_provision/services.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

export 'test_utils.mocks.dart';

extension UbuntuProvisionTester on WidgetTester {
  static Type context = WizardPage;

  UbuntuProvisionLocalizations get lang {
    final widget = element(find.byType(context).first);
    return UbuntuProvisionLocalizations.of(widget);
  }

  UbuntuLocalizations get ulang {
    final widget = element(find.byType(context).first);
    return UbuntuLocalizations.of(widget);
  }

  Future<void> pumpApp(WidgetBuilder builder) async {
    view.devicePixelRatio = 1;
    view.physicalSize = const Size(960, 680);
    return pumpWidget(
      MaterialApp(
        localizationsDelegates: const [
          UbuntuProvisionLocalizations.delegate,
          ...GlobalUbuntuLocalizations.delegates,
        ],
        theme: yaruLight,
        home: Wizard(
          routes: {
            '/': WizardRoute(
              builder: builder,
              onNext: (settings) => '/next',
            ),
            '/next': WizardRoute(
              builder: (_) => const Text('Next page'),
            ),
          },
        ),
      ),
    );
  }
}

@GenerateMocks([
  ActiveDirectoryService,
  ConfigService,
  DesktopService,
  GeoService,
  IdentityService,
  Image,
  JournalService,
  KeyboardService,
  LocaleService,
  NetworkService,
  PageConfigService,
  PowerService,
  ProductService,
  SessionService,
  SoundService,
  TelemetryService,
  ThemeService,
  TimezoneService,
  UdevDeviceInfo,
  UdevService,
  UrlLauncher,
])
class _Dummy {} // ignore: unused_element

@GenerateNiceMocks([
  MockSpec<BuildContext>(),
  MockSpec<File>(),
  MockSpec<SvgFileLoader>(),
  MockSpec<SvgPicture>(),
])
class _Dummy2 {} // ignore: unused_element
