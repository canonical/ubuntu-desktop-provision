import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:intl/intl_standalone.dart';
import 'package:path/path.dart' as p;
import 'package:pdfrx/pdfrx.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_provision/interfaces.dart';
import 'package:ubuntu_provision/src/eula/eula_l10n.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

const defaultFilePath = '/usr/share/desktop-provision';

final eulaPageProvider = FutureProvider<File>((ref) async {
  final locale = Intl.defaultLocale ?? await findSystemLocale();
  final directory = p.join(
    Platform.environment['DESKTOP_PROVISION_PATH'] ?? defaultFilePath,
    'eula',
  );
  final localizedEula = File(p.join(directory, 'EULA_$locale.pdf'));
  late final fallbackEula = File(p.join(directory, 'EULA.pdf'));
  final eulaFile = localizedEula.existsSync() ? localizedEula : fallbackEula;
  assert(eulaFile.existsSync()); // throw error if fallback file doesn't exist
  Logger('eula').debug('EULA file: ${eulaFile.path}');

  return eulaFile;
});

final eulaAcceptedProvider = StateProvider<bool>((_) => false);

class EulaPage extends ConsumerWidget with ProvisioningPage {
  const EulaPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = EulaLocalizations.of(context);
    final eulaWidget = ref.watch(eulaPageProvider).when(
          data: (eulaFile) => _EulaPdfViewer(path: eulaFile.path),
          loading: () => const YaruCircularProgressIndicator(),
          error: (error, stackTrace) {
            Logger('eula')
                .error('Error loading EULA file: $error', error, stackTrace);
            return Placeholder(); // TODO: Implement proper error state in case EULA file can't be loaded
          },
        );

    return WizardPage(
      title: YaruWindowTitleBar(
        title: Text(lang.eulaPageTitle),
      ),
      content: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              lang.eulaReviewTerms,
              style: Theme.of(context).textTheme.titleLarge,
            ),
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
                value: ref.watch(eulaAcceptedProvider),
                onChanged: (value) =>
                    ref.read(eulaAcceptedProvider.notifier).state = value!,
              ),
            ),
          ],
        ),
      ),
      bottomBar: WizardBar(
        leading: const BackWizardButton(),
        trailing: [
          NextWizardButton(
            enabled: ref.watch(eulaAcceptedProvider),
          ),
        ],
      ),
    );
  }
}

class _EulaPdfViewer extends StatelessWidget {
  const _EulaPdfViewer({required this.path});

  final String path;

  @override
  Widget build(BuildContext context) {
    return PdfViewer.file(
      path,
      params: PdfViewerParams(
        errorBannerBuilder: (context, error, stackTrace, documentRef) => Center(
          child: Text(
            stackTrace.toString(),
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        linkWidgetBuilder: (context, link, size) => MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              UrlLauncher().launchUrl(link.url.toString());
            },
            child: Container(
              width: size.width,
              height: size.height,
              color: Colors.transparent,
            ),
          ),
        ),
      ),
    );
  }
}
