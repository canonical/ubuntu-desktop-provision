import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/source/on_battery_snackbar.dart';
import 'package:ubuntu_bootstrap/pages/source/source_model.dart';
import 'package:ubuntu_bootstrap/pages/source/source_x.dart';
import 'package:ubuntu_bootstrap/services.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';

/// A page where the user can decide whether they want to do a full installation
/// with all selected applications or a minimal installation.
///
/// This uses the `source` API of the Subiquity client to get the available
/// sources, and to set the selected source.
class SourceSelectionPage extends ConsumerStatefulWidget with ProvisioningPage {
  SourceSelectionPage({super.key});

  @override
  ConsumerState<SourceSelectionPage> createState() => _SourceSelectionPageState();

  @override
  Future<bool> load(BuildContext context, WidgetRef ref) {
    return ref.read(sourceModelProvider).init().then((_) => true);
  }
}

class _SourceSelectionPageState extends ConsumerState<SourceSelectionPage> {
  // Focus nodes for each source option
  final List<FocusNode> _sourceFocusNodes = [];
  
  @override
  void initState() {
    super.initState();
    
    // Enable semantics and announce page on load
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      
      // Ensure semantics are enabled for Orca
      WidgetsBinding.instance.ensureSemantics();
      
      // Announce welcome message
      final lang = UbuntuBootstrapLocalizations.of(context);
      final model = ref.read(sourceModelProvider);
      
      SemanticsService.announce(
        'What apps would you like to install to start with? ${lang.updatesOtherSoftwarePageDescription}',
        TextDirection.ltr,
      );
      
      // Create focus nodes for each source
      for (int i = 0; i < model.sources.length; i++) {
        _sourceFocusNodes.add(FocusNode());
      }
      
      // Set initial focus on first option
      if (_sourceFocusNodes.isNotEmpty && mounted) {
        Future.delayed(const Duration(milliseconds: 500), () {
          if (mounted && _sourceFocusNodes.isNotEmpty) {
            _sourceFocusNodes[0].requestFocus();
          }
        });
      }
      
      // Announce if on battery
      if (model.onBattery) {
        Future.delayed(const Duration(milliseconds: 800), () {
          if (mounted) {
            SemanticsService.announce(
              'Warning: You are running on battery power. Connecting to a power source is recommended',
              TextDirection.ltr,
            );
          }
        });
      }
    });
  }
  
  @override
  void dispose() {
    for (var node in _sourceFocusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final model = ref.watch(sourceModelProvider);
    final lang = UbuntuBootstrapLocalizations.of(context);
    
    // Ensure we have enough focus nodes
    while (_sourceFocusNodes.length < model.sources.length) {
      _sourceFocusNodes.add(FocusNode());
    }

    return Semantics(
      label: 'Software selection page',
      child: HorizontalPage(
        windowTitle: lang.updatesOtherSoftwarePageTitle,
        title: lang.updatesOtherSoftwarePageDescription,
        snackBar: model.onBattery ? OnBatterySnackBar() : null,
        isNextEnabled: model.sourceId != null,
        onNext: () async {
          SemanticsService.announce(
            'Proceeding with ${model.sourceId?.contains('minimal') ?? false ? "minimal" : "full"} installation',
            TextDirection.ltr,
          );
          
          final telemetry = tryGetService<TelemetryService>();
          await telemetry?.addMetrics({
            'Minimal': model.sourceId?.contains('minimal') ?? false,
          });
        },
        children: [
          // Add a semantic container for the options
          Semantics(
            label: 'Installation options. Use arrow keys to navigate between options',
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: model.sources
                  .asMap()
                  .entries
                  .map((entry) {
                    final index = entry.key;
                    final source = entry.value;
                    final isSelected = source.id == model.sourceId;
                    
                    return Padding(
                      padding: EdgeInsets.only(
                        bottom: index < model.sources.length - 1 ? kWizardSpacing / 2 : 0,
                      ),
                      child: Focus(
                        focusNode: index < _sourceFocusNodes.length ? _sourceFocusNodes[index] : null,
                        onFocusChange: (hasFocus) {
                          if (hasFocus && mounted) {
                            SemanticsService.announce(
                              '${source.localizedTitle(lang)}. ${source.localizedSubtitle(lang)}. ${isSelected ? "Currently selected" : "Not selected"}. Option ${index + 1} of ${model.sources.length}',
                              TextDirection.ltr,
                            );
                          }
                        },
                        child: Semantics(
                          button: true,
                          checked: isSelected,
                          label: '${source.localizedTitle(lang)}. ${source.localizedSubtitle(lang)}',
                          hint: 'Radio button option ${index + 1} of ${model.sources.length}',
                          onTap: () {
                            model.setSourceId(source.id);
                            SemanticsService.announce(
                              '${source.localizedTitle(lang)} selected',
                              TextDirection.ltr,
                            );
                          },
                          child: AccessibleSourceOptionButton<String>(
                            value: source.id,
                            groupValue: model.sourceId ?? '',
                            title: Text(source.localizedTitle(lang)),
                            subtitle: Text(source.localizedSubtitle(lang)),
                            onChanged: (value) {
                              model.setSourceId(value);
                              SemanticsService.announce(
                                '${source.localizedTitle(lang)} selected',
                                TextDirection.ltr,
                              );
                            },
                          ),
                        ),
                      ),
                    );
                  })
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}

// Accessible Source Option Button wrapper
class AccessibleSourceOptionButton<T> extends StatelessWidget {
  final T value;
  final T groupValue;
  final Widget title;
  final Widget subtitle;
  final ValueChanged<T?>? onChanged;

  const AccessibleSourceOptionButton({
    Key? key,
    required this.value,
    required this.groupValue,
    required this.title,
    required this.subtitle,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OptionButton<T>(
      value: value,
      groupValue: groupValue,
      title: title,
      subtitle: subtitle,
      onChanged: onChanged,
    );
  }
}