import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_localizations/ubuntu_localizations.dart';
import 'package:ubuntu_provision/src/network/connect_model.dart';
import 'package:ubuntu_provision/src/network/connect_view.dart';
import 'package:ubuntu_provision/src/network/ethernet_view.dart';
import 'package:ubuntu_provision/src/network/hidden_wifi_view.dart';
import 'package:ubuntu_provision/src/network/wifi_view.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';

export 'connect_model.dart' show ConnectMode;

/// https://github.com/canonical/ubuntu-desktop-installer/issues/30
class NetworkPage extends ConsumerWidget with ProvisioningPage {
  const NetworkPage({super.key});

  @override
  Future<bool> load(BuildContext context, WidgetRef ref) {
    final model = ref.read(networkModelProvider);
    model.addConnectMode(ref.read(ethernetModelProvider));
    model.addConnectMode(ref.read(wifiModelProvider));
    model.addConnectMode(ref.read(hiddenWifiModelProvider));
    model.addConnectMode(ref.read(noConnectModelProvider));
    return model
        .init()
        .then((_) => model.selectConnectMode())
        .then((_) => true);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(networkModelProvider);
    final lang = NetworkLocalizations.of(context);
    return HorizontalPage(
      name: 'network',
      windowTitle: lang.networkPageTitle,
      title: 'Connect to the Internet?', // TODO(Lukas): Add to localization
      expandContent: true,
      content: Scrollbar(
        thumbVisibility: true,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(lang.networkPageHeader),
              const SizedBox(height: kWizardSpacing),
              EthernetRadioButton(
                value: model.connectMode,
                onChanged: (_) => model.selectConnectMode(ConnectMode.ethernet),
              ),
              EthernetView(
                expanded: model.connectMode == ConnectMode.ethernet,
                onEnabled: () => model.selectConnectMode(ConnectMode.ethernet),
              ),
              WifiRadioButton(
                value: model.connectMode,
                onChanged: (_) => model.selectConnectMode(ConnectMode.wifi),
              ),
              ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: model.connectMode == ConnectMode.wifi ? 100 : 0,
                  maxHeight: 200,
                ),
                child: Column(
                  children: [
                    WifiView(
                      expanded: model.connectMode == ConnectMode.wifi,
                      onEnabled: () =>
                          model.selectConnectMode(ConnectMode.wifi),
                      onSelected: (_, __) =>
                          model.selectConnectMode(ConnectMode.wifi),
                    ),
                  ],
                ),
              ),
              HiddenWifiRadioButton(
                value: model.connectMode,
                onChanged: (_) =>
                    model.selectConnectMode(ConnectMode.hiddenWifi),
              ),
              HiddenWifiView(
                expanded: model.connectMode == ConnectMode.hiddenWifi,
              ),
              NoConnectView(
                value: model.connectMode,
                onChanged: (_) => model.selectConnectMode(ConnectMode.none),
              ),
            ],
          ),
        ),
      ),
      bottomBar: WizardBar(
        leading: const PreviousWizardButton(),
        trailing: [
          WizardButton(
            label: UbuntuLocalizations.of(context).connectLabel,
            enabled: !model.isConnecting,
            visible: model.isEnabled && model.canConnect,
            onActivated: model.connect,
          ),
          NextWizardButton(
            enabled:
                model.isEnabled && !model.isConnecting && model.isConnected,
            visible: !model.isEnabled || !model.canConnect,
            // suspend network activity when proceeding on the next page
            onNext: model.cleanup,
            // resume network activity if/when returning back to this page
            onExecute: model.init,
          ),
        ],
      ),
    );
  }
}
