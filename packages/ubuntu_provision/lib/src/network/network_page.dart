import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_localizations/ubuntu_localizations.dart';
import 'package:ubuntu_provision/src/network/connect_model.dart';
import 'package:ubuntu_provision/src/network/connect_view.dart';
import 'package:ubuntu_provision/src/network/ethernet_view.dart';
import 'package:ubuntu_provision/src/network/hidden_wifi_view.dart';
import 'package:ubuntu_provision/src/network/wifi_view.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/constants.dart';

export 'connect_model.dart' show ConnectMode;

/// https://github.com/canonical/ubuntu-desktop-installer/issues/30
class NetworkPage extends ConsumerStatefulWidget with ProvisioningPage {
  NetworkPage({super.key});

  @override
  ConsumerState<NetworkPage> createState() => _NetworkPageState();

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
}

class _NetworkPageState extends ConsumerState<NetworkPage> {
  // Focus nodes for navigation
  final FocusNode _ethernetFocusNode = FocusNode();
  final FocusNode _wifiFocusNode = FocusNode();
  final FocusNode _hiddenWifiFocusNode = FocusNode();
  final FocusNode _noConnectFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    
    // Enable semantics and announce page on load
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Ensure semantics are enabled for Orca
      WidgetsBinding.instance.ensureSemantics();
      
      // Announce welcome message
      final lang = NetworkLocalizations.of(context);
      SemanticsService.announce(
        'Welcome to network page. ${lang.networkPageHeader}. ${lang.networkPageBody}',
        TextDirection.ltr,
      );
      
      // Set initial focus on ethernet option
      Future.delayed(const Duration(milliseconds: 500), () {
        _ethernetFocusNode.requestFocus();
      });
    });
  }

  @override
  void dispose() {
    _ethernetFocusNode.dispose();
    _wifiFocusNode.dispose();
    _hiddenWifiFocusNode.dispose();
    _noConnectFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final model = ref.watch(networkModelProvider);
    final lang = NetworkLocalizations.of(context);
    final nextFocusNode = ref.watch(_nextFocusNodeProvider);

    return Semantics(
      label: 'Network configuration page',
      child: HorizontalPage(
        windowTitle: lang.networkPageTitle,
        title: lang.networkPageHeader,
        padding: const EdgeInsets.all(kYaruPagePadding),
        bottomBar: WizardBar(
          leading: Semantics(
            button: true,
            label: 'Back button',
            child: const BackWizardButton(),
          ),
          trailing: [
            Semantics(
              button: true,
              label: 'Connect button ${model.isConnecting ? "connecting" : ""}',
              enabled: !model.isConnecting,
              child: WizardButton(
                label: UbuntuLocalizations.of(context).connectLabel,
                enabled: !model.isConnecting,
                visible: model.isEnabled && model.canConnect,
                onActivated: () {
                  SemanticsService.announce(
                    'Connecting to network',
                    TextDirection.ltr,
                  );
                  model.connect();
                },
              ),
            ),
            Semantics(
              button: true,
              label: 'Next button ${!model.isEnabled || model.isConnected ? "enabled" : "disabled"}',
              enabled: model.isEnabled && !model.isConnecting && model.isConnected,
              child: NextWizardButton(
                enabled: model.isEnabled && !model.isConnecting && model.isConnected,
                visible: !model.isEnabled || !model.canConnect,
                onNext: model.cleanup,
                onReturn: model.init,
                focusNode: nextFocusNode,
              ),
            ),
          ],
        ),
        children: <Widget>[
          Semantics(
            container: true,
            label: lang.networkPageBody,
            child: Text(lang.networkPageBody),
          ),
          const SizedBox(height: kWizardSpacing),
          const Divider(),
          const SizedBox(height: kWizardSpacing),
          
          // Ethernet Option
          Focus(
            focusNode: _ethernetFocusNode,
            onFocusChange: (hasFocus) {
              if (hasFocus) {
                SemanticsService.announce(
                  'Ethernet option ${model.connectMode == ConnectMode.ethernet ? "selected" : "not selected"}',
                  TextDirection.ltr,
                );
              }
            },
            child: Semantics(
              checked: model.connectMode == ConnectMode.ethernet,
              label: 'Use wired connection',
              hint: 'Radio button',
              child: AccessibleRadioListTile<ConnectMode>(
                title: EthernetRadioButton(
                  value: model.connectMode,
                  onChanged: (_) {
                    model.selectConnectMode(ConnectMode.ethernet);
                    SemanticsService.announce(
                      'Ethernet selected',
                      TextDirection.ltr,
                    );
                  },
                ),
                value: ConnectMode.ethernet,
                groupValue: model.connectMode,
                onChanged: (_) {
                  model.selectConnectMode(ConnectMode.ethernet);
                  SemanticsService.announce(
                    'Ethernet selected',
                    TextDirection.ltr,
                  );
                },
              ),
            ),
          ),
          
          EthernetView(
            expanded: model.connectMode == ConnectMode.ethernet,
            onEnabled: () => model.selectConnectMode(ConnectMode.ethernet),
          ),
          
          // WiFi Option
          Focus(
            focusNode: _wifiFocusNode,
            onFocusChange: (hasFocus) {
              if (hasFocus) {
                SemanticsService.announce(
                  'WiFi option ${model.connectMode == ConnectMode.wifi ? "selected" : "not selected"}',
                  TextDirection.ltr,
                );
              }
            },
            child: Semantics(
              checked: model.connectMode == ConnectMode.wifi,
              label: 'Connect to WiFi network',
              hint: 'Radio button',
              child: AccessibleRadioListTile<ConnectMode>(
                title: WifiRadioButton(
                  value: model.connectMode,
                  onChanged: (_) {
                    model.selectConnectMode(ConnectMode.wifi);
                    SemanticsService.announce(
                      'WiFi selected',
                      TextDirection.ltr,
                    );
                  },
                ),
                value: ConnectMode.wifi,
                groupValue: model.connectMode,
                onChanged: (_) {
                  model.selectConnectMode(ConnectMode.wifi);
                  SemanticsService.announce(
                    'WiFi selected',
                    TextDirection.ltr,
                  );
                },
              ),
            ),
          ),
          
          Semantics(
            label: 'WiFi networks list',
            child: WifiView(
              expanded: model.connectMode == ConnectMode.wifi,
              onEnabled: () => model.selectConnectMode(ConnectMode.wifi),
              onSelected: (_, __) {
                model.selectConnectMode(ConnectMode.wifi);
                SemanticsService.announce(
                  'WiFi network selected',
                  TextDirection.ltr,
                );
              },
              tabFocusNode: nextFocusNode,
            ),
          ),
          
          // Hidden WiFi Option
          Focus(
            focusNode: _hiddenWifiFocusNode,
            onFocusChange: (hasFocus) {
              if (hasFocus) {
                SemanticsService.announce(
                  'Hidden WiFi option ${model.connectMode == ConnectMode.hiddenWifi ? "selected" : "not selected"}',
                  TextDirection.ltr,
                );
              }
            },
            child: Semantics(
              checked: model.connectMode == ConnectMode.hiddenWifi,
              label: 'Connect to hidden WiFi network',
              hint: 'Radio button',
              child: AccessibleRadioListTile<ConnectMode>(
                title: HiddenWifiRadioButton(
                  value: model.connectMode,
                  onChanged: (_) {
                    model.selectConnectMode(ConnectMode.hiddenWifi);
                    SemanticsService.announce(
                      'Hidden WiFi selected',
                      TextDirection.ltr,
                    );
                  },
                ),
                value: ConnectMode.hiddenWifi,
                groupValue: model.connectMode,
                onChanged: (_) {
                  model.selectConnectMode(ConnectMode.hiddenWifi);
                  SemanticsService.announce(
                    'Hidden WiFi selected',
                    TextDirection.ltr,
                  );
                },
              ),
            ),
          ),
          
          HiddenWifiView(
            expanded: model.connectMode == ConnectMode.hiddenWifi,
          ),
          
          // No Connection Option
          Focus(
            focusNode: _noConnectFocusNode,
            onFocusChange: (hasFocus) {
              if (hasFocus) {
                SemanticsService.announce(
                  'No connection option ${model.connectMode == ConnectMode.none ? "selected" : "not selected"}',
                  TextDirection.ltr,
                );
              }
            },
            child: Semantics(
              checked: model.connectMode == ConnectMode.none,
              label: 'Continue without network',
              hint: 'Radio button',
              child: AccessibleRadioListTile<ConnectMode>(
                title: NoConnectView(
                  value: model.connectMode,
                  onChanged: (_) {
                    model.selectConnectMode(ConnectMode.none);
                    SemanticsService.announce(
                      'Continue without network selected',
                      TextDirection.ltr,
                    );
                  },
                ),
                value: ConnectMode.none,
                groupValue: model.connectMode,
                onChanged: (_) {
                  model.selectConnectMode(ConnectMode.none);
                  SemanticsService.announce(
                    'Continue without network selected',
                    TextDirection.ltr,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Accessible Radio List Tile wrapper
class AccessibleRadioListTile<T> extends StatelessWidget {
  final Widget title;
  final T value;
  final T? groupValue;
  final ValueChanged<T?>? onChanged;

  const AccessibleRadioListTile({
    Key? key,
    required this.title,
    required this.value,
    required this.groupValue,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChanged?.call(value),
      child: title,
    );
  }
}

final _nextFocusNodeProvider = ProvisioningPage.createNextFocusNodeProvider();