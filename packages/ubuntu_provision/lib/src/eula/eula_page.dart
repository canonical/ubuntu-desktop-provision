import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:intl/intl_standalone.dart';
import 'package:path/path.dart' as p;
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_provision/interfaces.dart';
import 'package:ubuntu_provision/src/eula/eula_l10n.dart';
import 'package:ubuntu_provision/src/eula/eula_widgets.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

final eulaPageProvider = FutureProvider<File>((ref) async {
  final locale = Intl.defaultLocale ?? await findSystemLocale();
  const directory = '/usr/share/desktop-provision/eula';
  final localizedEula = File(p.join(directory, 'EULA_$locale.pdf'));
  late final fallbackEula = File(p.join(directory, 'EULA.pdf'));
  final eulaFile = localizedEula.existsSync() ? localizedEula : fallbackEula;
  Logger('eula').debug('EULA file: ${eulaFile.path}');

  return eulaFile;
});

class EULAPage extends ConsumerStatefulWidget with ProvisioningPage {
  const EULAPage({super.key});

  @override
  ConsumerState<EULAPage> createState() => _EULAPageState();
}

class _EULAPageState extends ConsumerState<EULAPage> {
  bool _hasAcceptedTerms = false;

  @override
  Widget build(BuildContext context) {
    final lang = EULALocalizations.of(context);
    final eulaWidget = ref.watch(eulaPageProvider).when(
        data: (eulaFile) => EULAPdfViewer(path: eulaFile.path),
        loading: () => const YaruCircularProgressIndicator(),
        error: (error, stackTrace) {
          Logger('eula')
              .error('Error loading EULA file: $error', error, stackTrace);
          return EULAPdfViewer(
              path: File('/usr/share/desktop-provision/eula/EULA.pdf').path);
        });

    return WizardPage(
      title: YaruWindowTitleBar(
        title: Text(lang.eulaPageTitle),
      ),
      content: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(lang.eulaReviewTerms,
                style: Theme.of(context).textTheme.titleLarge),
            Text(lang.eulaReadAndAcceptTerms),
            const SizedBox(height: kWizardSpacing),
            Expanded(
              child: eulaWidget,
            ),
            const SizedBox(height: kWizardSpacing),
            Center(
              child: YaruCheckButton(
                title: Text(
                  lang.eulaAcceptTerms,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                value: _hasAcceptedTerms,
                onChanged: (value) => setState(
                  () => _hasAcceptedTerms = !_hasAcceptedTerms,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomBar: WizardBar(
        leading: const BackWizardButton(),
        trailing: [
          NextWizardButton(
            enabled: _hasAcceptedTerms,
          ),
        ],
      ),
    );
  }
}
