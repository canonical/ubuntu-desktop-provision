import 'package:flutter/material.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';

// TODO: Replace this with the error page from the ubuntu_provision package
class ErrorPage extends StatelessWidget with ProvisioningPage {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    final lang = UbuntuProvisionLocalizations.of(context);

    return HorizontalPage(
      windowTitle: lang.errorPageTitle,
      title: lang.errorPageTitle,
      children: [
        Text(
          ModalRoute.of(context)?.settings.arguments?.toString() ??
              lang.errorPageUnexpected,
        ),
      ],
    );
  }
}
