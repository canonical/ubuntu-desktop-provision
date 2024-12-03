import 'package:flutter/material.dart';
import 'package:ubuntu_init/pages/telemetry/telemetry_l10n.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:yaru/yaru.dart';

final _log = Logger('telemetry_widgets');

// TODO: copied from ubuntu_bootstrap/welcome_widgets. either YaruRadioButton
// background could be configurable, or this widget could be promoted to
// ubuntu-flutter-plugins/ubuntu_widgets
class TelemetryButton extends StatelessWidget {
  const TelemetryButton({
    required this.title,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    super.key,
  });

  final Widget title;
  final bool value;
  final bool groupValue;
  final ValueChanged<bool?>? onChanged;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Container(
      width: double.infinity,
      constraints: const BoxConstraints(maxWidth: 500),
      decoration: BoxDecoration(
        color: value == groupValue
            ? scheme.primary.withOpacity(0.1)
            : scheme.primaryContainer,
        border: Border.all(
          color: value == groupValue ? scheme.primary : scheme.outline,
        ),
        borderRadius: BorderRadius.circular(kYaruButtonRadius),
      ),
      child: YaruRadioButton<bool>(
        contentPadding: const EdgeInsetsDirectional.fromSTEB(15, 10, 60, 10),
        title: DefaultTextStyle(
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(fontWeight: FontWeight.bold),
          child: title,
        ),
        value: value,
        groupValue: groupValue,
        onChanged: onChanged,
      ),
    );
  }
}

class TelemetryView extends StatelessWidget {
  const TelemetryView({required this.data, super.key});

  final Stream<String> data;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: data,
      builder: (context, snapshot) {
        final theme = Theme.of(context);
        final l10n = TelemetryLocalizations.of(context);
        if (snapshot.hasData) {
          return SelectableText(
            snapshot.data!,
            style: TextStyle(
              inherit: false,
              color: theme.colorScheme.onSurface,
              fontFamily: 'Ubuntu Mono',
              fontSize: theme.textTheme.bodyLarge!.fontSize,
              textBaseline: TextBaseline.alphabetic,
            ),
          );
        } else if (snapshot.hasError) {
          _log.error('Error loading telemetry data', snapshot.error);
          return Text(l10n.telemetryCollectError);
        }
        return const Center(child: YaruCircularProgressIndicator());
      },
    );
  }
}
