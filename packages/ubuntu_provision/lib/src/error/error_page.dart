import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_provision/src/error/error_model.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_widgets/ubuntu_widgets.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:yaru/foundation.dart';
import 'package:yaru/icons.dart';
import 'package:yaru/widgets.dart';

/// This is an error page that is shown when an unexpected error occurs.
/// It shows a message and a the log.
class ErrorPage extends ConsumerStatefulWidget with ProvisioningPage {
  const ErrorPage({
    required this.allowRestart,
    super.key,
  });

  final bool allowRestart;

  @override
  ConsumerState<ErrorPage> createState() => _ErrorPageState();
}

class _ErrorPageState extends ConsumerState<ErrorPage> {
  final launchpadUrl =
      'https://bugs.launchpad.net/ubuntu-desktop-provision/+filebug';

  @override
  void initState() {
    super.initState();
    ref.read(apportProvider)?.launch();
  }

  @override
  Widget build(BuildContext context) {
    final name = ModalRoute.of(context)!.settings.name!.replaceFirst('/', '');
    final image = ref.watch(pageImagesProvider).get(name);
    final lang = UbuntuProvisionLocalizations.of(context);
    final bodyText = lang.errorPageUnexpected;
    final linkRegExp = RegExp(r'<a>(.*?)<\/a>');
    final match = linkRegExp.firstMatch(bodyText);

    final normalText = bodyText.substring(0, match?.start);
    final linkText = match?.group(1);
    final endText = match?.end != null ? bodyText.substring(match!.end) : '';
    final model = ref.watch(errorModelProvider);

    return WizardPage(
      headerPadding: EdgeInsets.zero,
      contentPadding: EdgeInsets.zero,
      title: YaruWindowTitleBar(
        title: Text(lang.errorPageTitle),
      ),
      content: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (image != null) image,
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
                              ..onTap =
                                  () => launchUrl(Uri.parse(launchpadUrl)),
                            // Handle link tap
                          ),
                          TextSpan(text: endText),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned.fill(
            child: AnimatedOpacity(
              curve: Curves.easeIn,
              duration: const Duration(milliseconds: 150),
              opacity: model.isLogVisible ? 1 : 0,
              child: AnimatedSlide(
                curve: Curves.easeIn,
                duration: const Duration(milliseconds: 150),
                offset: Offset(0, model.isLogVisible ? 0 : 1),
                child: JournalView(journal: model.logStream),
              ),
            ),
          ),
        ],
      ),
      bottomBar: WizardBar(
        trailing: [
          PushButton.filled(
            child: Wrap(
              children: [
                Icon(
                  YaruIcons.terminal,
                  color: model.isLogVisible
                      ? Theme.of(context).primaryColor
                      : null,
                ),
                const SizedBox(width: 5),
                Text(
                  model.isLogVisible
                      ? lang.errorPageHideLog
                      : lang.errorPageShowLog,
                ),
              ],
            ),
            onPressed: () {
              ref.read(errorModelProvider.notifier).state =
                  model.copyWith(isLogVisible: !model.isLogVisible);
            },
          ),
          const SizedBox(width: kWizardBarSpacing),
          WizardButton(
            label: widget.allowRestart ? lang.restart : lang.close,
            highlighted: true,
            onActivated: () async {
              final window = YaruWindow.of(context);
              if (widget.allowRestart) {
                await model.reboot().then((_) => window.close());
              } else {
                await window.close();
              }
            },
          )
        ],
      ),
    );
  }
}
