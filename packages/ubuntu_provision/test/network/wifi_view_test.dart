import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:ubuntu_provision/src/network/network_l10n.dart';
import 'package:ubuntu_provision/src/network/network_page.dart';
import 'package:ubuntu_provision/src/network/wifi_model.dart';
import 'package:ubuntu_provision/src/network/wifi_view.dart';
import 'package:yaru/yaru.dart';
import 'package:yaru_test/yaru_test.dart';

import 'test_network.dart';

void main() {
  testWidgets('device and access point tiles', (tester) async {
    final device1 = MockWifiDevice();
    when(device1.model).thenReturn('model1');
    when(device1.scanning).thenReturn(false);
    when(device1.isConnecting).thenReturn(false);
    when(device1.isAvailable).thenReturn(true);
    when(device1.isActive).thenReturn(false);

    final accessPoint1 = MockAccessPoint();
    when(accessPoint1.name).thenReturn('ap1');
    when(accessPoint1.strength).thenReturn(1);
    when(accessPoint1.isOpen).thenReturn(true);
    when(device1.accessPoints).thenReturn([accessPoint1]);
    when(device1.isSelectedAccessPoint(accessPoint1)).thenReturn(false);
    when(device1.isActiveAccessPoint(accessPoint1)).thenReturn(false);

    final device2 = MockWifiDevice();
    when(device2.model).thenReturn('model2');
    when(device2.scanning).thenReturn(true);
    when(device2.isConnecting).thenReturn(true);
    when(device2.isAvailable).thenReturn(true);
    when(device2.isActive).thenReturn(true);

    final accessPoint2 = MockAccessPoint();
    when(accessPoint2.name).thenReturn('ap2');
    when(accessPoint2.strength).thenReturn(2);
    when(accessPoint2.isOpen).thenReturn(false);
    when(device2.accessPoints).thenReturn([accessPoint2]);
    when(device2.isActiveAccessPoint(accessPoint2)).thenReturn(true);
    when(device2.isSelectedAccessPoint(accessPoint2)).thenReturn(true);

    final model = buildWifiModel(
      devices: [device1, device2],
      isEnabled: true,
    );

    WifiDevice? selectedDevice;
    AccessPoint? selectedAccessPoint;

    await tester.pumpApp(
      (_) => ProviderScope(
        overrides: [
          wifiModelProvider.overrideWith((_) => model),
        ],
        child: Material(
          child: Column(
            children: [
              WifiView(
                expanded: true,
                onEnabled: () {},
                onSelected: (device, accessPoint) {
                  selectedDevice = device;
                  selectedAccessPoint = accessPoint;
                },
              ),
            ],
          ),
        ),
      ),
    );

    // inactive device
    final tile1 = find.listTile('model1');
    expect(tile1, findsOneWidget);
    expect(
      find.descendant(
        of: tile1,
        matching: find.byType(YaruCircularProgressIndicator),
      ),
      findsNothing,
    );

    // connecting device
    final tile2 = find.listTile('model2');
    expect(tile2, findsOneWidget);
    expect(
      find.descendant(
        of: tile2,
        matching: find.byType(YaruCircularProgressIndicator),
      ),
      findsOneWidget,
    );

    // select ap
    final ap1 = find.listTile('ap1').first;
    expect(ap1, findsOneWidget);
    await tester.tap(ap1);
    expect(selectedDevice, equals(device1));
    expect(selectedAccessPoint, equals(accessPoint1));

    // select another ap
    final ap2 = find.listTile('ap2').first;
    expect(ap2, findsOneWidget);
    await tester.tap(ap2);
    expect(selectedDevice, equals(device2));
    expect(selectedAccessPoint, equals(accessPoint2));
  });

  testWidgets('wifi disabled', (tester) async {
    final model = buildWifiModel(isEnabled: false);

    var wasEnabled = false;

    await tester.pumpApp(
      (_) => ProviderScope(
        overrides: [
          wifiModelProvider.overrideWith((_) => model),
        ],
        child: Column(
          children: [
            WifiRadioButton(
              value: ConnectMode.wifi,
              onChanged: (v) {},
            ),
            WifiView(
              expanded: true,
              onEnabled: () => wasEnabled = true,
              onSelected: (device, accessPoint) {},
            ),
          ],
        ),
      ),
    );

    final context = tester.element(find.byType(WifiView));
    final l10n = NetworkLocalizations.of(context);

    expect(find.byType(WifiListView), findsNothing);

    final radioButtonFinder = find.byType(YaruRadioButton<ConnectMode>);
    expect(radioButtonFinder, findsOneWidget);

    final radioButton =
        tester.widget<YaruRadioButton<ConnectMode>>(radioButtonFinder);
    expect(radioButton.onChanged, isNull);

    expect(find.text(l10n.networkWifiOff), findsOneWidget);
    expect(find.text(l10n.networkWifiDisabled), findsOneWidget);

    final button = find.button(l10n.networkWifiEnable);
    expect(button, findsOneWidget);
    await tester.tap(button);
    expect(wasEnabled, isTrue);
  });

  testWidgets('no wifi devices', (tester) async {
    final model = buildWifiModel();

    await tester.pumpApp(
      (_) => ProviderScope(
        overrides: [
          wifiModelProvider.overrideWith((_) => model),
        ],
        child: Column(
          children: [
            WifiRadioButton(
              value: ConnectMode.wifi,
              onChanged: (v) {},
            ),
            WifiView(
              expanded: true,
              onEnabled: () {},
              onSelected: (device, accessPoint) {},
            ),
          ],
        ),
      ),
    );

    final context = tester.element(find.byType(WifiView));
    final l10n = NetworkLocalizations.of(context);

    final radioButtonFinder = find.byType(YaruRadioButton<ConnectMode>);
    expect(radioButtonFinder, findsOneWidget);

    final radioButton =
        tester.widget<YaruRadioButton<ConnectMode>>(radioButtonFinder);
    expect(radioButton.onChanged, isNull);

    expect(find.text(l10n.networkWifiNone), findsOneWidget);
  });

  testWidgets('wifi semantics - signal and security labels', (tester) async {
    final handle = tester.ensureSemantics();

    final device = MockWifiDevice();
    when(device.model).thenReturn('device');
    when(device.scanning).thenReturn(false);
    when(device.isConnecting).thenReturn(false);
    when(device.isAvailable).thenReturn(true);
    when(device.isActive).thenReturn(false);

    final apOpen = MockAccessPoint();
    when(apOpen.name).thenReturn('open_ap');
    when(apOpen.strength).thenReturn(80);
    when(apOpen.isOpen).thenReturn(true);

    final apSecure = MockAccessPoint();
    when(apSecure.name).thenReturn('secure_ap');
    when(apSecure.strength).thenReturn(20);
    when(apSecure.isOpen).thenReturn(false);

    when(device.accessPoints).thenReturn([apOpen, apSecure]);
    when(device.isActiveAccessPoint(any)).thenReturn(false);
    when(device.isSelectedAccessPoint(any)).thenReturn(false);

    final model = buildWifiModel(devices: [device], isEnabled: true);

    await tester.pumpApp(
      (_) => ProviderScope(
        overrides: [
          wifiModelProvider.overrideWith((_) => model),
        ],
        child: Material(
          child: WifiView(
            expanded: true,
            onEnabled: () {},
            onSelected: (device, accessPoint) {},
          ),
        ),
      ),
    );

    final context = tester.element(find.byType(WifiListView));
    final l10n = NetworkLocalizations.of(context);

    expect(
      find.bySemanticsLabel(
        RegExp(
          RegExp.escape(
            '${l10n.networkWifiSignalExcellent}, ${l10n.networkWifiOpenNetwork}',
          ),
        ),
      ),
      findsOneWidget,
    );
    expect(
      find.bySemanticsLabel(
        RegExp(
          RegExp.escape(
            '${l10n.networkWifiSignalWeak}, ${l10n.networkWifiSecureNetwork}',
          ),
        ),
      ),
      findsOneWidget,
    );

    handle.dispose();
  });

  testWidgets('wifi semantics - connection state labels', (tester) async {
    final handle = tester.ensureSemantics();

    // Device 1: connecting with active AP
    final device1 = MockWifiDevice();
    when(device1.model).thenReturn('device1');
    when(device1.scanning).thenReturn(false);
    when(device1.isConnecting).thenReturn(true);
    when(device1.isAvailable).thenReturn(true);
    when(device1.isActive).thenReturn(true);

    final ap1 = MockAccessPoint();
    when(ap1.name).thenReturn('ap1');
    when(ap1.strength).thenReturn(80);
    when(ap1.isOpen).thenReturn(true);
    when(device1.accessPoints).thenReturn([ap1]);
    when(device1.isActiveAccessPoint(ap1)).thenReturn(true);
    when(device1.isSelectedAccessPoint(ap1)).thenReturn(false);

    // Device 2: connected (active AP, not connecting)
    final device2 = MockWifiDevice();
    when(device2.model).thenReturn('device2');
    when(device2.scanning).thenReturn(false);
    when(device2.isConnecting).thenReturn(false);
    when(device2.isAvailable).thenReturn(true);
    when(device2.isActive).thenReturn(true);

    final ap2 = MockAccessPoint();
    when(ap2.name).thenReturn('ap2');
    when(ap2.strength).thenReturn(80);
    when(ap2.isOpen).thenReturn(true);
    when(device2.accessPoints).thenReturn([ap2]);
    when(device2.isActiveAccessPoint(ap2)).thenReturn(true);
    when(device2.isSelectedAccessPoint(ap2)).thenReturn(true);

    final model = buildWifiModel(
      devices: [device1, device2],
      isEnabled: true,
    );

    await tester.pumpApp(
      (_) => ProviderScope(
        overrides: [
          wifiModelProvider.overrideWith((_) => model),
        ],
        child: Material(
          child: Column(
            children: [
              WifiView(
                expanded: true,
                onEnabled: () {},
                onSelected: (device, accessPoint) {},
              ),
            ],
          ),
        ),
      ),
    );

    final context = tester.element(find.byType(WifiListView));
    final l10n = NetworkLocalizations.of(context);

    // "Connecting…" appears at both device-level (ExpansionTile trailing)
    // and AP-level (leading icon) for device1's connecting state.
    expect(
      find.bySemanticsLabel(RegExp(RegExp.escape(l10n.networkWifiConnecting))),
      findsNWidgets(2),
    );
    // "Connected" appears at AP-level for device2's active (non-connecting) AP.
    expect(
      find.bySemanticsLabel(RegExp(RegExp.escape(l10n.networkWifiConnected))),
      findsOneWidget,
    );

    handle.dispose();
  });

  testWidgets('starts periodic scanning', (tester) async {
    final model = buildWifiModel();

    await tester.pumpApp(
      (_) => ProviderScope(
        overrides: [
          wifiModelProvider.overrideWith((_) => model),
        ],
        child: WifiView(
          expanded: true,
          onEnabled: () {},
          onSelected: (device, accessPoint) {},
        ),
      ),
    );

    verify(model.startPeriodicScanning()).called(1);
  });
}
