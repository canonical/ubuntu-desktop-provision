import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/source/on_battery_snackbar.dart';
import 'package:ubuntu_bootstrap/pages/source/source_model.dart';
import 'package:ubuntu_bootstrap/services.dart';
import 'package:ubuntu_bootstrap/widgets/info_box.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaru/yaru.dart';

export 'source_model.dart' show kFullSourceId, kMinimalSourceId;

/// A page where the user can decide whether they want to install 3rd party
/// drivers or codecs.
class CodecsAndDriversPage extends ConsumerStatefulWidget with ProvisioningPage {
  CodecsAndDriversPage({super.key});

  @override
  ConsumerState<CodecsAndDriversPage> createState() => _CodecsAndDriversPageState();

  @override
  Future<bool> load(BuildContext context, WidgetRef ref) {
    return ref.read(sourceModelProvider).init().then((_) => true);
  }
}

class _CodecsAndDriversPageState extends ConsumerState<CodecsAndDriversPage> {
  // Focus nodes for checkboxes
  final FocusNode _driversFocusNode = FocusNode();
  final FocusNode _codecsFocusNode = FocusNode();

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
      final flavor = ref.read(flavorProvider);
      final model = ref.read(sourceModelProvider);
      
      SemanticsService.announce(
        'Optimise your computer. Install recommended proprietary software? ${lang.codecsAndDriversPageDescription}. ${lang.codecsAndDriversPageBody(flavor.displayName)}',
        TextDirection.ltr,
      );
      
      // Set initial focus on first checkbox
      Future.delayed(const Duration(milliseconds: 500), () {
        if (mounted) {
          _driversFocusNode.requestFocus();
        }
      });
      
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
      
      // Announce if offline and codecs are disabled
      if (!model.isOnline) {
        Future.delayed(const Duration(milliseconds: 1000), () {
          if (mounted) {
            SemanticsService.announce(
              lang.offlineWarning,
              TextDirection.ltr,
            );
          }
        });
      }
    });
  }

  @override
  void dispose() {
    _driversFocusNode.dispose();
    _codecsFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final model = ref.watch(sourceModelProvider);
    final lang = UbuntuBootstrapLocalizations.of(context);
    final flavor = ref.watch(flavorProvider);

    return Semantics(
      label: 'Proprietary software installation page',
      child: HorizontalPage(
        windowTitle: lang.codecsAndDriversPageTitle,
        title: lang.codecsAndDriversPageDescription,
        snackBar: model.onBattery ? OnBatterySnackBar() : null,
        isNextEnabled: model.sourceId != null,
        onNext: () async {
          final selections = [];
          if (model.installDrivers) selections.add('drivers');
          if (model.installCodecs) selections.add('codecs');
          
          final message = selections.isEmpty 
              ? 'Proceeding without additional software'
              : 'Proceeding with ${selections.join(" and ")} installation';
              
          SemanticsService.announce(message, TextDirection.ltr);
          
          final telemetry = tryGetService<TelemetryService>();
          await telemetry?.addMetrics({
            'RestrictedAddons': model.installCodecs,
          });
          await model.save();
        },
        children: [
          Semantics(
            label: lang.codecsAndDriversPageBody(flavor.displayName),
            child: Text(lang.codecsAndDriversPageBody(flavor.displayName)),
          ),
          const SizedBox(height: kWizardSpacing),
          
          // TODO(Lukas): Add a proper check when we know where to get this information.
          if (false)
            // ignore: dead_code
            Semantics(
              label: '${lang.codecsAndDriversNvidiaNote}. ${lang.codecsAndDriversNvidiaBody}',
              child: InfoBox(
                title: lang.codecsAndDriversNvidiaNote,
                subtitle: lang.codecsAndDriversNvidiaBody,
                isThreeLine: true,
              ),
            ),
          const SizedBox(height: kWizardSpacing),
          
          // Install Drivers Checkbox
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Focus(
              focusNode: _driversFocusNode,
              onFocusChange: (hasFocus) {
                if (hasFocus && mounted) {
                  SemanticsService.announce(
                    '${lang.installDriversTitle}. ${lang.installDriversSubtitle}. Checkbox ${model.installDrivers ? "checked" : "not checked"}',
                    TextDirection.ltr,
                  );
                }
              },
              child: Semantics(
                checked: model.installDrivers,
                label: '${lang.installDriversTitle}. ${lang.installDriversSubtitle}',
                hint: 'Check to install third-party drivers',
                child: AccessibleCheckButton(
                  title: Text(
                    lang.installDriversTitle,
                    maxLines: 2,
                  ),
                  subtitle: Text(lang.installDriversSubtitle),
                  contentPadding: kWizardPadding,
                  value: model.installDrivers,
                  onChanged: (value) {
                    model.setInstallDrivers(value);
                    if (mounted && value != null) {
                      SemanticsService.announce(
                        value 
                            ? 'Third-party drivers will be installed' 
                            : 'Third-party drivers will not be installed',
                        TextDirection.ltr,
                      );
                    }
                  },
                ),
              ),
            ),
          ),
          const SizedBox(height: kWizardSpacing),
          
          // Install Codecs Checkbox
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Focus(
              focusNode: _codecsFocusNode,
              onFocusChange: (hasFocus) {
                if (hasFocus && mounted) {
                  final status = !model.isOnline 
                      ? 'disabled because you are offline' 
                      : model.installCodecs ? "checked" : "not checked";
                  SemanticsService.announce(
                    '${lang.installCodecsTitle}. ${lang.installCodecsSubtitle}. Checkbox $status',
                    TextDirection.ltr,
                  );
                }
              },
              child: Tooltip(
                message: !model.isOnline ? lang.offlineWarning : '',
                child: Semantics(
                  checked: model.installCodecs && model.isOnline,
                  enabled: model.isOnline,
                  label: '${lang.installCodecsTitle}. ${lang.installCodecsSubtitle}',
                  hint: model.isOnline 
                      ? 'Check to install multimedia codecs' 
                      : 'Disabled: ${lang.offlineWarning}',
                  child: AccessibleCheckButton(
                    title: Text(
                      lang.installCodecsTitle,
                      maxLines: 2,
                    ),
                    subtitle: Text(lang.installCodecsSubtitle),
                    contentPadding: kWizardPadding,
                    value: model.installCodecs && model.isOnline,
                    onChanged: model.isOnline 
                        ? (value) {
                            model.setInstallCodecs(value);
                            if (mounted && value != null) {
                              SemanticsService.announce(
                                value 
                                    ? 'Multimedia codecs will be installed' 
                                    : 'Multimedia codecs will not be installed',
                                TextDirection.ltr,
                              );
                            }
                          }
                        : null,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Accessible Check Button wrapper
class AccessibleCheckButton extends StatelessWidget {
  final Widget title;
  final Widget subtitle;
  final EdgeInsetsGeometry? contentPadding;
  final bool? value;
  final ValueChanged<bool?>? onChanged;

  const AccessibleCheckButton({
    Key? key,
    required this.title,
    required this.subtitle,
    this.contentPadding,
    required this.value,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return YaruCheckButton(
      title: title,
      subtitle: subtitle,
      contentPadding: contentPadding,
      value: value,
      onChanged: onChanged,
    );
  }
}