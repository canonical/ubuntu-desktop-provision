import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_localizations/ubuntu_localizations.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_provision/src/network/connect_model.dart';
import 'package:ubuntu_provision/src/network/connect_view.dart';
import 'package:ubuntu_provision/src/network/ethernet_view.dart';
import 'package:ubuntu_provision/src/network/hidden_wifi_view.dart';
import 'package:ubuntu_provision/src/network/wifi_view.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/constants.dart';

export 'connect_model.dart' show ConnectMode;

final _log = Logger('network_page');

/// https://github.com/canonical/ubuntu-desktop-installer/issues/30
class NetworkPage extends ConsumerWidget with ProvisioningPage {
  NetworkPage({super.key});

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

    _log.debug(
      'isEnabled: ${model.isEnabled}, canConnect: ${model.canConnect}, isConnected: ${model.isConnected}, isConnecting: ${model.isConnecting}',
    );

    // Explicitly exchange the buttons depending on the model state to make sure we don't get stuck in a loading state
    final Widget button;
    if (model.isEnabled && model.canConnect) {
      _log.debug('showing \'connect\' button');
      button = WizardButton(
        label: UbuntuLocalizations.of(context).connectLabel,
        enabled: !model.isConnecting,
        onActivated: model.connect,
      );
    } else {
      _log.debug('showing \'next\' button');
      button = NextWizardButton(
        enabled: model.isEnabled && !model.isConnecting && model.isConnected,
        // suspend network activity when proceeding on the next page
        onNext: model.cleanup,
        // resume network activity if/when returning back to this page
        onReturn: model.init,
        focusNode: ref.watch(_nextFocusNodeProvider),
      );
    }

    return HorizontalPage(
      windowTitle: lang.networkPageTitle,
      title: lang.networkPageHeader,
      padding: const EdgeInsets.all(kYaruPagePadding),
      bottomBar: WizardBar(
        leading: const BackWizardButton(),
        trailing: [button],
      ),
      children: <Widget>[
        Text(lang.networkPageBody),
        const SizedBox(height: kWizardSpacing),
        const Divider(),
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
        WifiView(
          expanded: model.connectMode == ConnectMode.wifi,
          onEnabled: () => model.selectConnectMode(ConnectMode.wifi),
          onSelected: (_, __) => model.selectConnectMode(ConnectMode.wifi),
          tabFocusNode: ref.watch(_nextFocusNodeProvider),
        ),
        HiddenWifiRadioButton(
          value: model.connectMode,
          onChanged: (_) => model.selectConnectMode(ConnectMode.hiddenWifi),
        ),
        HiddenWifiView(
          expanded: model.connectMode == ConnectMode.hiddenWifi,
        ),
        NoConnectView(
          value: model.connectMode,
          onChanged: (_) => model.selectConnectMode(ConnectMode.none),
        ),
      ],
    );
  }
}

final _nextFocusNodeProvider = ProvisioningPage.createNextFocusNodeProvider();
