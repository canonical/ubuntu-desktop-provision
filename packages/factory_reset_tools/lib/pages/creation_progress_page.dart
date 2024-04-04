import 'package:factory_reset_tools/dbus/reset_media.dart';
import 'package:factory_reset_tools/l10n/factory_reset_tools_localizations.dart';
import 'package:factory_reset_tools/providers/selected_media_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/widgets.dart';

class CreationProgressPage extends ConsumerStatefulWidget {
  const CreationProgressPage({super.key});

  @override
  ConsumerState<CreationProgressPage> createState() =>
      _CreationProgressPageState();
}

class _CreationProgressPageState extends ConsumerState<CreationProgressPage> {
  Stream<ResetMediaCreationProgress>? createResetMediaAsyncStream;
  var _progress = ResetMediaCreationProgress(
    ResetMediaCreationStatus.initializing,
    null,
    null,
  );

  void onStatusChanged(ResetMediaCreationProgress progress) {
    if (progress.status == ResetMediaCreationStatus.finished) {
      Future.delayed(const Duration(seconds: 2), () {
        Wizard.of(context).next();
      });
    }
    setState(() {
      _progress = progress;
    });
  }

  @override
  void initState() {
    super.initState();
    createResetMediaAsyncStream ??= createFakeResetMedia(
      ref.read(selectedMediaProvider)!.devicePath,
    );
    createResetMediaAsyncStream!.listen(onStatusChanged);
  }

  @override
  Widget build(BuildContext context) {
    final lang = FactoryResetToolsLocalizations.of(context);
    final theme = Theme.of(context);

    var msgText = _progress.status.name.capitalize;
    if (_progress.percent != null) {
      msgText = '$msgText ${((_progress.percent ?? 0.0) * 100).round()}%';
    }
    if (_progress.errMsg != null) {
      msgText = '${_progress.status.name} ${_progress.errMsg}';
    }

    return WizardPage(
      title: YaruWindowTitleBar(title: Text(lang.resetMediaTitle)),
      content: Row(
        children: [
          const Spacer(),
          Expanded(
            flex: 8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(msgText, style: theme.textTheme.titleLarge),
                LinearProgressIndicator(value: _progress.percent),
                SizedBox(height: theme.textTheme.titleLarge?.height ?? 0),
              ].withSpacing(kWizardSpacing),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
