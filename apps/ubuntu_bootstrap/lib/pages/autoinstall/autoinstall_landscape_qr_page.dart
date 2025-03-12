import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_bootstrap/l10n/ubuntu_bootstrap_localizations.dart';
import 'package:ubuntu_bootstrap/pages/autoinstall/autoinstall_landscape_model.dart';
import 'package:ubuntu_bootstrap/pages/autoinstall/autoinstall_model.dart';
import 'package:ubuntu_bootstrap/services.dart' as service;
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_widgets/ubuntu_widgets.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

final _log = Logger('landscape');

class AutoinstallLandscapeQrPage extends ConsumerWidget with ProvisioningPage {
  const AutoinstallLandscapeQrPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = UbuntuBootstrapLocalizations.of(context);
    final model = ref.watch(landscapeDataModelProvider);
    // log current authentication status when is changes:
    _log.debug(model.authenticationStatus);
    if (model.authenticationStatus ==
            service.AuthenticationStatus.authenticationSuccess ||
        model.authenticationStatus ==
            service.AuthenticationStatus.errorEmployeeLimitExceeded ||
        model.authenticationStatus ==
            service.AuthenticationStatus.errorEmployeeDeactivated ||
        model.authenticationStatus ==
            service.AuthenticationStatus.errorEmployeeComputerLimitExceeded ||
        model.authenticationStatus ==
            service.AuthenticationStatus.errorMissingAutoinstallFile) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Wizard.of(context).next();
      });
    if (model.unretryableError) {
        Wizard.of(context).back();
    }
    }
    return HorizontalPage(
      windowTitle: l10n.landscapePageTitle,
      title: l10n.landscapeHeader,
      bottomBar: WizardBar(
        leading: BackWizardButton(
          onBack: ref.watch(landscapeDataModelProvider.notifier).cancelStream,
        ),
      ),
      imageTitleWidget: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BarcodeWidget(
            margin: const EdgeInsets.symmetric(
              vertical: kWizardSpacing,
            ),
            color: Theme.of(context).colorScheme.onSurface,
            barcode: Barcode.qrCode(),
            data: '${model.domainUrl}?magic-attach-code=${model.userCode}',
            width: 200,
            height: 200,
          ),
        ],
      ),
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Html(
              data: l10n.landscapeMagicAttachInstructions(
                model.domainUrl.replaceFirst('https://', ''),
              ),
              style: {
                'body':
                    Style(margin: Margins.zero, fontWeight: FontWeight.w500),
                'a': Style(
                  color: Theme.of(context).colorScheme.link,
                  fontWeight: FontWeight.w500,
                ),
              },
              onLinkTap: (url, _, __) => launchUrl(url!),
            ),
            const SizedBox(height: kWizardSpacing / 2),
            model.userCode.isEmpty
                ? const Padding(
                    padding: EdgeInsets.all(kWizardBarSpacing * 2),
                    child: YaruCircularProgressIndicator(),
                  )
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SelectableText(
                        model.userCode,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      const SizedBox(width: kWizardSpacing / 2),
                      switch (model.authenticationStatus) {
                        service.AuthenticationStatus.errorCodeExpired => Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const ErrorIcon(),
                              const SizedBox(width: kWizardSpacing / 4),
                              Text(
                                l10n.landscapeCodeExpiredWarning,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.error,
                                    ),
                              ),
                            ],
                          ),
                        service.AuthenticationStatus.authenticationSuccess ||
                        service.AuthenticationStatus.authenticationPending =>
                          SizedBox.shrink(),
                        _ => Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const ErrorIcon(),
                              const SizedBox(width: kWizardSpacing / 4),
                              Text(
                                l10n.landscapeLoginFailedWarning,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      color:
                                          Theme.of(context).colorScheme.error,
                                    ),
                              ),
                            ],
                          ),
                      },
                      const SizedBox(width: kWizardSpacing / 2),
                    ],
                  ),
          ],
        ),
      ],
    );
  }

  @override
  Future<bool> load(BuildContext context, WidgetRef ref) async {
    _log.debug(
        'unretryableError: ${ref.watch(landscapeDataModelProvider).unretryableError}');
    if (ref.watch(autoinstallModelProvider).type != AutoinstallType.landscape ||
        ref.watch(landscapeDataModelProvider).unretryableError) {
      return false;
    }
    final model = ref.watch(landscapeDataModelProvider.notifier);
    try {
      await model.watch();
    } on Exception catch (e) {
      _log.error(e);
      rethrow;
    }
    return true;
  }
}
