import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pdfrx/pdfrx.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_provision/interfaces.dart';
import 'package:ubuntu_provision/providers.dart';
import 'package:ubuntu_provision/src/eula/eula_l10n.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

class EULAPage extends ConsumerStatefulWidget with ProvisioningPage {
  const EULAPage({super.key});

  @override
  ConsumerState<EULAPage> createState() => _EULAPageState();
}

class _EULAPageState extends ConsumerState<EULAPage> {
  bool _hasAcceptedTerms = false;

  @override
  Widget build(BuildContext context) {
    final localeModel = ref.read(localeModelProvider);
    final lang = EULALocalizations.of(context);
    final eulaFile = File(
        '/run/gnome-initial-setup/desktop-provision/EULA_${localeModel.selectedLocale?.languageCode}.pdf');

    Logger('eula').debug('EULA file: ${eulaFile.path}');

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
              child: PdfViewer.file(
                eulaFile.existsSync()
                    ? eulaFile.path
                    : '/usr/share/desktop-provision/eula/EULA.pdf',
                params: PdfViewerParams(
                  errorBannerBuilder:
                      (context, error, stackTrace, documentRef) => Center(
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
              ),
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
