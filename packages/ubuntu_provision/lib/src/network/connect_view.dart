import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_provision/src/network/connect_model.dart';
import 'package:ubuntu_provision/src/network/ethernet_model.dart';
import 'package:ubuntu_provision/src/network/network_l10n.dart';
import 'package:ubuntu_provision/src/network/wifi_model.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

class NoConnectView extends ConsumerWidget {
  const NoConnectView({
    required this.value,
    required this.onChanged,
    super.key,
  });

  final ConnectMode? value;
  final ValueChanged<ConnectMode?> onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = NetworkLocalizations.of(context);
    final ethernet = ref.watch(ethernetModelProvider
        .select((m) => m.isEnabled && m.devices.isNotEmpty));
    final wifi = ref.watch(
        wifiModelProvider.select((m) => m.isEnabled && m.devices.isNotEmpty));

    return YaruRadioButton<ConnectMode>(
      title: Text(lang.networkNoneOption),
      value: ConnectMode.none,
      contentPadding: const EdgeInsets.only(top: 8),
      groupValue: value,
      onChanged: ethernet || wifi ? onChanged : null,
    );
  }
}
