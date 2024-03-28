import 'package:factory_reset_tools/horizontal_page.dart';
import 'package:factory_reset_tools/l10n/factory_reset_tools_localizations.dart';
import 'package:factory_reset_tools/pages/reset_media/providers/selected_media_provider.dart';
import 'package:factory_reset_tools/reset_media.dart';
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
    setState(() {
      _progress = progress;
    });
  }

  @override
  void initState() {
    super.initState();
    createResetMediaAsyncStream ??= createResetMedia(
      ref.read(selectedMediaProvider.notifier).state!.devicePath,
    );
    createResetMediaAsyncStream!.listen(onStatusChanged);
  }

  @override
  Widget build(BuildContext context) {
    final lang = FactoryResetToolsLocalizations.of(context);
    final theme = Theme.of(context);

    var msgText = _progress.status.name;
    if (_progress.percent != null) {
      msgText =
          '${((_progress.percent ?? 0.0) * 100).toStringAsFixed(2)}% $msgText';
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
