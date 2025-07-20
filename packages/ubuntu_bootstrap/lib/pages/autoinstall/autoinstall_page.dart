import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/autoinstall/autoinstall_model.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_provision/src/accessibility/accessibility_widgets.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_widgets/ubuntu_widgets.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';
import 'package:yaml/yaml.dart';
import 'package:yaru/yaru.dart';

class AutoinstallPage extends ConsumerStatefulWidget with ProvisioningPage {
  const AutoinstallPage({super.key});

  @override
  ConsumerState<AutoinstallPage> createState() => _AutoinstallPageState();

  @override
  Future<bool> load(BuildContext context, WidgetRef ref) async => true;
}

class _AutoinstallPageState extends ConsumerState<AutoinstallPage> {
  // Focus nodes for navigation
  final FocusNode _interactiveFocusNode = FocusNode();
  final FocusNode _automatedFocusNode = FocusNode();
  final FocusNode _urlFieldFocusNode = FocusNode();
  final FocusNode _validateButtonFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    
    // Announce page on load using shared utility
    final lang = UbuntuBootstrapLocalizations.of(context);
    final flavor = ref.read(flavorProvider);
    
    PageAnnouncer.announcePageLoad(
      title: lang.autoinstallPageTitle,
      subtitle: lang.autoinstallHeader(flavor.displayName),
      instructions: lang.autoinstallPageInstructions,
    );
    
    // Set initial focus
    AccessibleFocusManager.requestFocusWithDelay(_interactiveFocusNode);
  }

  @override
  void dispose() {
    _interactiveFocusNode.dispose();
    _automatedFocusNode.dispose();
    _urlFieldFocusNode.dispose();
    _validateButtonFocusNode.dispose();
    // Clean up debounced announcements
    DebouncedAnnouncer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final lang = UbuntuBootstrapLocalizations.of(context);
    final model = ref.watch(autoinstallModelProvider);
    final flavor = ref.watch(flavorProvider);

    return Semantics(
      label: lang.autoinstallPageAccessibilityLabel,
      child: HorizontalPage(
        windowTitle: lang.autoinstallTitle,
        title: lang.autoinstallHeader(flavor.displayName),
        bottomBar: WizardBar(
          leading: Semantics(
            button: true,
            label: lang.backButtonLabel,
            child: const BackWizardButton(),
          ),
          trailing: [
            model.autoinstall
                ? Focus(
                    focusNode: _validateButtonFocusNode,
                    child: Semantics(
                      button: true,
                      label: lang.autoinstallValidateButtonLabel(model.state.isLoading ? 
                        lang.autoinstallValidating : ""),
                      enabled: !model.state.hasError && model.url.isNotEmpty,
                      child: _ValidateButton(model: model),
                    ),
                  )
                : Semantics(
                    button: true,
                    label: UbuntuLocalizations.of(context).nextLabel,
                    child: WizardButton(
                      label: UbuntuLocalizations.of(context).nextLabel,
                      onActivated: () {
                        SemanticsService.announce(
                          UbuntuLocalizations.of(context).nextLabel,
                          TextDirection.ltr,
                        );
                        Wizard.of(context).next();
                      },
                    ),
                  ),
          ],
        ),
        children: [
          // Interactive Option
          Focus(
            focusNode: _interactiveFocusNode,
            onFocusChange: (hasFocus) {
              if (hasFocus) {
                SemanticsService.announce(
                  lang.autoinstallInteractiveOptionStatus(
                    !model.autoinstall ? lang.autoinstallOptionSelected : lang.autoinstallOptionNotSelected,
                    lang.autoinstallInteractiveDescription
                  ),
                  TextDirection.ltr,
                );
              }
            },
            child: AccessibleOptionButton(
              title: Text(lang.autoinstallInteractiveOption),
              subtitle: Text(lang.autoinstallInteractiveDescription),
              value: false,
              groupValue: model.autoinstall,
              semanticLabel: lang.autoinstallInteractiveOption,
              description: lang.autoinstallInteractiveDescription,
              onChanged: (value) {
                ref.read(autoinstallModelProvider).autoinstall = value ?? false;
                DebouncedAnnouncer.announce(lang.autoinstallInteractiveSelected);
              },
            ),
          ),
          
          const SizedBox(height: kWizardSpacing / 2),
          
          // Automated Option
          Focus(
            focusNode: _automatedFocusNode,
            onFocusChange: (hasFocus) {
              if (hasFocus) {
                SemanticsService.announce(
                  lang.autoinstallInteractiveOptionStatus(
                    model.autoinstall ? lang.autoinstallOptionSelected : lang.autoinstallOptionNotSelected,
                    lang.autoinstallAutomatedDescription
                  ),
                  TextDirection.ltr,
                );
              }
            },
            child: AccessibleOptionButton(
              title: Text(lang.autoinstallAutomatedOption),
              subtitle: Text(lang.autoinstallAutomatedDescription),
              value: true,
              groupValue: model.autoinstall,
              semanticLabel: lang.autoinstallAutomatedOption,
              description: lang.autoinstallAutomatedDescription,
              onChanged: (value) {
                ref.read(autoinstallModelProvider).autoinstall = value ?? false;
                DebouncedAnnouncer.announce(
                  lang.autoinstallAutomatedSelected,
                );
                // Move focus to URL field when automated is selected
                if (value == true) {
                  AccessibleFocusManager.requestFocusWithDelay(
                    _urlFieldFocusNode,
                    delay: AccessibilityConstants.announcementDelay,
                  );
                }
              },
            ),
          ),
          
          const SizedBox(height: kWizardSpacing),
          
          // Automated Configuration Section
          AnimatedSize(
            duration: const Duration(milliseconds: 300),
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 500),
              opacity: model.autoinstall ? 1 : 0,
              child: SizedBox(
                height: model.autoinstall ? 160 : 0,
                child: Semantics(
                  container: true,
                  label: lang.autoinstallConfigSectionLabel,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Semantics(
                        label: lang.autoinstallInstructions,
                        child: Text(lang.autoinstallInstructions),
                      ),
                      const SizedBox(height: kWizardSpacing),
                      Focus(
                        focusNode: _urlFieldFocusNode,
                        onFocusChange: (hasFocus) {
                          if (hasFocus) {
                            SemanticsService.announce(
                              lang.autoinstallUrlFieldLabel,
                              TextDirection.ltr,
                            );
                          }
                        },
                        child: Semantics(
                          textField: true,
                          label: lang.autoinstallUrlLabel,
                          hint: lang.autoinstallUrlHint,
                          child: TextFormField(
                            initialValue: model.url,
                            onChanged: (value) {
                              model.url = value;
                              // Announce validation errors
                              if (model.state.hasError) {
                                final error = model.state.maybeWhen(
                                  error: (error, _) {
                                    return switch (error) {
                                      YamlException _ => 'Invalid YAML',
                                      final SocketException e =>
                                        'Network error: ${e.message}',
                                      final ArgumentError e => 
                                        'Invalid URL: ${e.message}',
                                      final FormatException e =>
                                        'Invalid Format: ${e.message}',
                                      final FileSystemException e =>
                                        'File system error: ${e.message}',
                                      _ => 'Unknown Error',
                                    };
                                  },
                                  orElse: () => null,
                                );
                                if (error != null) {
                                  SemanticsService.announce(
                                    'Validation error: $error',
                                    TextDirection.ltr,
                                  );
                                }
                              }
                            },
                            maxLines: null,
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            validator: (_) => model.state.maybeWhen(
                              error: (error, _) {
                                return switch (error) {
                                  YamlException _ => 'Invalid YAML',
                                  final SocketException e =>
                                    'Network error: ${e.message}',
                                  final ArgumentError e => 
                                    'Invalid URL: ${e.message}',
                                  final FormatException e =>
                                    'Invalid Format: ${e.message}',
                                  final FileSystemException e =>
                                    'File system error: ${e.message}',
                                  _ => 'Unknown Error',
                                };
                              },
                              orElse: () => null,
                            ),
                          ),
                        ),
                      ),
                    ],
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



class _ValidateButton extends StatelessWidget {
  const _ValidateButton({required this.model});

  final AutoinstallModel model;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final lang = UbuntuBootstrapLocalizations.of(context);

    return ElevatedButton(
      style: theme.elevatedButtonTheme.style?.copyWith(
        minimumSize: MaterialStateProperty.all(kPushButtonSize),
      ),
                            onPressed: !model.state.hasError && model.url.isNotEmpty 
          ? () {
              DebouncedAnnouncer.announce(lang.autoinstallValidatingMessage);
              model.apply();
            }
          : null,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (model.state.isLoading) ...[
            SizedBox.square(
              dimension: 16.0,
              child: YaruCircularProgressIndicator(
                color: Theme.of(context).colorScheme.onPrimary,
                strokeWidth: 2,
              ),
            ),
            const SizedBox(width: 8),
          ],
          Text(lang.validate),
        ],
      ),
    );
  }
}
