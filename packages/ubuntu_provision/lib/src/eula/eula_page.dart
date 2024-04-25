import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:intl/intl_standalone.dart';
import 'package:intl/locale.dart' as intl_locale;
import 'package:path/path.dart' as p;
import 'package:pdfrx/pdfrx.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_provision/interfaces.dart';
import 'package:ubuntu_provision/src/eula/eula_l10n.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

extension LocaleExt on Locale {
  static Locale? tryParse(String localeIdentifier) {
    final parsed = intl_locale.Locale.tryParse(localeIdentifier);
    if (parsed == null) {
      return null;
    }
    return Locale.fromSubtags(
        languageCode: parsed.languageCode,
        scriptCode: parsed.scriptCode,
        countryCode: parsed.countryCode);
  }
}

final eulaPageProvider = FutureProvider<File>((ref) async {
  final locale =
      LocaleExt.tryParse(Intl.defaultLocale ?? await findSystemLocale())!;
  final eulaDir = Directory('/usr/share/desktop-provision/eula');
  final fileList = eulaDir.listSync();
  final exp = RegExp(r'EULA_([a-zA-Z0-9\-]+)\.');

  // get list of EULA_[locales].pdf files, then list the available locales
  final supportedLocales = fileList
      .map((entry) => p.basename(entry.path))
      .where(exp.hasMatch)
      .map((entry) => LocaleExt.tryParse(exp.firstMatch(entry)!.group(1)!))
      .whereType<Locale>()
      .toList();

  Logger('eula').debug(
      'Available EULA locales: ${supportedLocales.map((entry) => entry.toLanguageTag()).join(', ')}');
  Logger('eula').debug('Preferred locale: ${locale.toLanguageTag()}');

  // find preferred locale with resolution algorithm in flutter, use
  // Locale('und') to mark that there's no available file for the preferred
  // language
  final eulaLocale = basicLocaleListResolution(
      [locale], [const Locale('und'), ...supportedLocales]);

  final localizedEula =
      File(p.join(eulaDir.path, 'EULA_${eulaLocale.toLanguageTag()}.pdf'));
  late final fallbackEula = File(p.join(eulaDir.path, 'EULA.pdf'));
  final eulaFile = localizedEula.existsSync() ? localizedEula : fallbackEula;
  Logger('eula').debug('EULA file: ${eulaFile.path}');

  return eulaFile;
});

class EulaPage extends ConsumerStatefulWidget with ProvisioningPage {
  const EulaPage({super.key});

  @override
  ConsumerState<EulaPage> createState() => _EulaPageState();
}

class _EulaPageState extends ConsumerState<EulaPage> {
  bool _hasAcceptedTerms = false;

  @override
  Widget build(BuildContext context) {
    final lang = EulaLocalizations.of(context);
    final eulaWidget = ref.watch(eulaPageProvider).when(
        data: (eulaFile) => _EulaPdfViewer(path: eulaFile.path),
        loading: () => const YaruCircularProgressIndicator(),
        error: (error, stackTrace) {
          Logger('eula')
              .error('Error loading EULA file: $error', error, stackTrace);
          return _EulaPdfViewer(
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
