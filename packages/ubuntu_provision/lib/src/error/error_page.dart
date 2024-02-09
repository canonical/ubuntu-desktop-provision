import 'package:flutter/material.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';

class ErrorPage extends StatelessWidget with ProvisioningPage {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    final lang = ErrorLocalizations.of(context);

    return HorizontalPage(
      windowTitle: lang.errorPageTitle,
      title: lang.errorPageTitle,
      expandContent: true,
      content: Center(
        child: Text(
          ModalRoute.of(context)?.settings.arguments?.toString() ??
              lang.errorPageUnexpected,
        ),
      ),
    );
  }
}
