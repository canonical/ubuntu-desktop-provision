import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

import 'launchsession_l10n.dart';
import 'launchsession_model.dart';

class LaunchSessionPage extends ConsumerWidget {
  const LaunchSessionPage({super.key});

  static Future<bool> load(WidgetRef ref) {
    return ref.read(launchsessionModelProvider).init();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = LaunchsessionLocalizations.of(context);
    return WizardPage(
      title: YaruWindowTitleBar(
        title: Text(l10n.storeTitle),
      ),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: SvgPicture.asset('assets/store.svg', package: 'ubuntu_init'),
          ),
          Text(
            l10n.storeHeader,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          FractionallySizedBox(
            widthFactor: 0.5,
            child: Text(l10n.storeDescription, textAlign: TextAlign.center),
          ),
        ].withSpacing(kWizardSpacing),
      ),
      bottomBar: WizardBar(
        leading: WizardButton.previous(context),
        trailing: [
          WizardButton.next(context),
        ],
      ),
    );
  }
}

extension on Iterable<Widget> {
  List<Widget> withSpacing(double spacing) {
    return expand((item) sync* {
      yield SizedBox(width: spacing, height: spacing);
      yield item;
    }).skip(1).toList();
  }
}
