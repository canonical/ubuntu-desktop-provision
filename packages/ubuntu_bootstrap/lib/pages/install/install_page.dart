import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/install/bottom_bar.dart';
import 'package:ubuntu_bootstrap/pages/install/done_page.dart';
import 'package:ubuntu_bootstrap/pages/install/install_model.dart';
import 'package:ubuntu_bootstrap/pages/install/slide_view.dart';
import 'package:ubuntu_bootstrap/slides/slides_provider.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

class InstallPage extends ConsumerWidget with ProvisioningPage {
  const InstallPage({super.key});

  @override
  FutureOr<bool> load(BuildContext context, WidgetRef ref) {
    if (!ref.context.mounted) return false;
    final model = ref.read(installModelProvider);
    final slides = ref.read(slidesProvider);
    return Future.wait([
      model.init(),
      slides.preCache(),
    ]).then((_) => true);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDone = ref.watch(installModelProvider.select((m) => m.isDone));
    final isInstalling =
        ref.watch(installModelProvider.select((m) => m.isInstalling));
    YaruWindow.setClosable(context, !isInstalling);

    return AnimatedSwitcher(
      duration: kThemeAnimationDuration,
      switchInCurve: Curves.easeInExpo,
      switchOutCurve: Curves.easeOutExpo,
      child: isDone ? const DonePage() : const _SlidePage(),
    );
  }
}

class _SlidePage extends ConsumerStatefulWidget {
  const _SlidePage();

  @override
  ConsumerState<_SlidePage> createState() => _SlidePageState();
}

class _SlidePageState extends ConsumerState<_SlidePage> {
  final _slideController = ValueNotifier(0);

  @override
  void dispose() {
    _slideController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final lang = UbuntuBootstrapLocalizations.of(context);
    final model = ref.watch(installModelProvider);
    final htmlSlides = ref.watch(slidesProvider).slides;
    return WizardPage(
      headerPadding: EdgeInsets.zero,
      contentPadding: EdgeInsets.zero,
      title: YaruWindowTitleBar(
        title: Text(model.productInfo.toString()),
      ),
      content: Stack(
        children: [
          SlideView(
            controller: _slideController,
            interval: model.isPlaying ? kDefaultSlideInterval : Duration.zero,
            slides: htmlSlides,
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
                child: Container(
                  color: Theme.of(context).colorScheme.background,
                  padding: const EdgeInsets.only(
                    top: kWizardSpacing,
                    left: kWizardSpacing,
                    right: kWizardSpacing,
                  ),
                  child: JournalView(journal: model.log),
                ),
              ),
            ),
          )
        ],
      ),
      bottomBar: ValueListenableBuilder(
        valueListenable: _slideController,
        builder: (context, value, child) {
          return BottomBar(
            title: Text(
              model.hasError
                  ? lang.installationFailed
                  : model.event.action.localize(lang),
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: model.hasError
                      ? Theme.of(context).colorScheme.error
                      : null),
            ),
            subtitle: RepaintBoundary(
              child: YaruLinearProgressIndicator(
                value: model.isInstalling ? null : 0,
              ),
            ),
            trailing: IconButton(
              icon: Icon(YaruIcons.terminal,
                  color: model.isLogVisible
                      ? Theme.of(context).primaryColor
                      : null),
              onPressed: model.toggleLogVisibility,
            ),
            leading: Row(
              children: [
                IconButton(
                  onPressed: _slideController.value > 0
                      ? () => --_slideController.value
                      : null,
                  icon: const Icon(YaruIcons.pan_start),
                ),
                const SizedBox(width: 10),
                IconButton(
                  onPressed: model.togglePlaying,
                  icon: model.isPlaying
                      ? const Icon(YaruIcons.media_pause)
                      : const Icon(YaruIcons.media_play),
                ),
                const SizedBox(width: 10),
                IconButton(
                  onPressed: _slideController.value < htmlSlides.length - 1
                      ? () => ++_slideController.value
                      : null,
                  icon: const Icon(YaruIcons.pan_end),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

extension InstallationActionL10n on InstallationAction {
  String localize(UbuntuBootstrapLocalizations lang) {
    switch (this) {
      case InstallationAction.installingSystem:
        return lang.installingSystem;
      case InstallationAction.configuringSystem:
        return lang.configuringSystem;
      case InstallationAction.copyingFiles:
        return lang.copyingFiles;
      case InstallationAction.none:
        return '';
    }
  }
}
