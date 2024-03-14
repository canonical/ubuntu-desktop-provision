import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_provision/src/network/connect_model.dart';
import 'package:ubuntu_provision/src/network/ethernet_model.dart';
import 'package:ubuntu_provision/src/network/network_l10n.dart';
import 'package:ubuntu_provision/src/network/network_tile.dart';
import 'package:yaru/yaru.dart';

class EthernetRadioButton extends ConsumerWidget {
  const EthernetRadioButton({
    required this.value,
    required this.onChanged,
    super.key,
  });

  final ConnectMode? value;
  final ValueChanged<ConnectMode?> onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(ethernetModelProvider);
    final lang = NetworkLocalizations.of(context);
    final isEnabled = model.isEnabled && model.devices.isNotEmpty;
    final disabledTitle =
        model.devices.isEmpty ? lang.networkWiredNone : lang.networkWiredOff;

    return YaruRadioButton<ConnectMode>(
      title: Text(isEnabled ? lang.networkWiredOption : disabledTitle),
      value: ConnectMode.ethernet,
      groupValue: value,
      onChanged: isEnabled ? onChanged : null,
    );
  }
}

class EthernetView extends ConsumerWidget {
  const EthernetView({
    required this.expanded,
    required this.onEnabled,
    super.key,
  });

  final bool expanded;
  final VoidCallback onEnabled;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = NetworkLocalizations.of(context);
    final model = ref.watch(ethernetModelProvider);
    if (model.devices.isNotEmpty && !model.isEnabled) {
      return NetworkTile(
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(lang.networkWiredDisabled),
            const SizedBox(height: 16),
            OutlinedButton(
              onPressed: () {
                model.enable();
                onEnabled();
              },
              child: Text(lang.networkWiredEnable),
            ),
          ],
        ),
      );
    }
    return const SizedBox.shrink();
  }
}
