import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_provision/src/error/error_model.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:yaru/foundation.dart';
import 'package:yaru/widgets.dart';

/// This is an error page that is shown when an unexpected error occurs.
/// It shows a message and a the log.
class ErrorPage extends ConsumerWidget with ProvisioningPage {
  const ErrorPage({
    required this.allowRestart,
    super.key,
  });

  final bool allowRestart;
  final launchpadUrl =
      'https://bugs.launchpad.net/ubuntu-desktop-provision/+filebug';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = UbuntuProvisionLocalizations.of(context);
    final bodyText = lang.errorPageUnexpected;
    final linkRegExp = RegExp(r'<a>(.*?)<\/a>');
    final match = linkRegExp.firstMatch(bodyText);

    final normalText = bodyText.substring(0, match?.start);
    final linkText = match?.group(1);
    final endText = match?.end != null ? bodyText.substring(match!.end) : '';
    final model = ref.watch(errorModelProvider);

    return HorizontalPage(
      windowTitle: lang.errorPageTitle,
      title: lang.errorPageTitle,
      bottomBar: WizardBar(
        trailing: [
          WizardButton(
            label: allowRestart ? lang.restart : lang.close,
            highlighted: true,
            onActivated: () async {
              final window = YaruWindow.of(context);
              if (allowRestart) {
                await model.reboot().then((_) => window.close());
              } else {
                await window.close();
              }
            },
          )
        ],
      ),
      children: [
        Text.rich(
          TextSpan(
            text: normalText,
            children: [
              TextSpan(
                text: linkText,
                style: const TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () => launchUrl(Uri.parse(launchpadUrl)),
                // Handle link tap
              ),
              TextSpan(text: endText),
            ],
          ),
        ),
        const SizedBox(height: kWizardSpacing),
        YaruExpandable(
          header: Text(
            model.isLogVisible ? lang.errorPageHideLog : lang.errorPageShowLog,
          ),
          expandButtonPosition: YaruExpandableButtonPosition.start,
          isExpanded: model.isLogVisible,
          onChange: (isExpanded) {
            ref.read(errorModelProvider.notifier).state = model.copyWith(
              isLogVisible: isExpanded,
            );
          },
          child: SizedBox(
            height: 300,
            child: JournalView(journal: model.logStream),
          ),
        ),
      ],
    );
  }
}
