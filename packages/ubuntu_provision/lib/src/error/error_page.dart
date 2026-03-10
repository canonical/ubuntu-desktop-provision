import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_provision/src/error/error_model.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_widgets/ubuntu_widgets.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/foundation.dart';
import 'package:yaru/icons.dart';
import 'package:yaru/widgets.dart';

class ErrorDetails {
  const ErrorDetails({
    this.title,
    this.message,
    this.details,
    this.action,
    this.actionLabel,
  }) : assert((action == null) == (actionLabel == null));
  final String? title;
  final List<String>? message;
  final String? details;
  final void Function(WidgetRef)? action;
  final String? actionLabel;
}

/// This is an error page that is shown when an unexpected error occurs.
/// It shows a message and a the log.
class ErrorPage extends ConsumerWidget with ProvisioningPage {
  const ErrorPage({
    required this.allowRestart,
    this.errorDetails,
    super.key,
  });

  final bool allowRestart;
  final ErrorDetails? errorDetails;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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

    final content = errorDetails?.message != null
        ? errorDetails!.message!.map(Text.new).withSpacing(kWizardSpacing / 2)
        : [
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
                      ..onTap = model.launchApport,
                    // Handle link tap
                  ),
                  TextSpan(text: endText),
                ],
              ),
            ),
          ];

    return WizardPage(
      headerPadding: EdgeInsets.zero,
      contentPadding: EdgeInsets.zero,
      title: YaruWindowTitleBar(
        title: Text(errorDetails?.title ?? lang.errorPageTitle),
        closeSemanticLabel: lang.closeIconSemanticLabel,
        maximizeSemanticLabel: lang.maximizeIconSemanticLabel,
        minimizeSemanticLabel: lang.minimizeIconSemanticLabel,
      ),
      content: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (image != null)
                Expanded(
                  flex: 6,
                  child: image,
                ),
              const SizedBox(width: kWizardSpacing),
              Expanded(
                flex: 8,
                child: Padding(
                  padding: const EdgeInsets.only(right: 3 * kWizardSpacing),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Semantics(
                        focused: true,
                        header: true,
                        child: Text(
                          errorDetails?.title ?? lang.errorPageTitle,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                      SizedBox(height: kWizardSpacing),
                      ...content,
                      if (errorDetails?.details != null) ...[
                        const SizedBox(height: kWizardSpacing),
                        YaruExpandable(
                          expandButtonPosition:
                              YaruExpandableButtonPosition.start,
                          header: Text(lang.errorPageTechnicalDetails),
                          child: TextFormField(
                            style: TextStyle(
                              inherit: false,
                              color: Theme.of(context).colorScheme.onSurface,
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .fontSize,
                              fontFamily: 'Ubuntu Mono',
                              textBaseline: TextBaseline.alphabetic,
                            ),
                            initialValue: errorDetails!.details,
                            readOnly: true,
                            maxLines: null,
                          ),
                        ),
                      ],
                    ],
                  ),
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
          if (errorDetails?.action != null)
            PushButton.elevated(
              onPressed: () => errorDetails!.action!.call(ref),
              child: Text(errorDetails!.actionLabel!),
            ),
          if (allowRestart)
            WizardButton(
              label: lang.restart,
              highlighted: true,
              onActivated: () async {
                final window = YaruWindow.of(context);
                await model.reboot().then((_) => window.close());
              },
            ),
        ].withSpacing(kWizardBarSpacing),
      ),
    );
  }
}
