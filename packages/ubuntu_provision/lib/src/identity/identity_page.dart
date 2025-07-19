import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ubuntu_provision/interfaces.dart';
import 'package:ubuntu_provision/src/identity/identity_l10n.dart';
import 'package:ubuntu_provision/src/identity/identity_model.dart';
import 'package:ubuntu_provision/src/identity/identity_widgets.dart';
import 'package:ubuntu_provision/widgets.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';
import 'package:ubuntu_wizard/ubuntu_wizard.dart';

/// The installer page for setting up the user account.
class IdentityPage extends ConsumerStatefulWidget with ProvisioningPage {
  const IdentityPage({super.key});

  @override
  ConsumerState<IdentityPage> createState() => _IdentityPageState();

  @override
  Future<bool> load(BuildContext context, WidgetRef ref) {
    return ref.read(identityModelProvider).init().then((_) => true);
  }
}

class _IdentityPageState extends ConsumerState<IdentityPage> {
  // Focus node for initial focus
  final FocusNode _initialFocusNode = FocusNode();
  
  // Focus nodes for form fields
  final FocusNode _realNameFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    
    // Announce the page when it loads
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      
      // Ensure semantics are enabled
      WidgetsBinding.instance.ensureSemantics();
      
      final lang = IdentityLocalizations.of(context);
      
      // Request focus to ensure Orca is active
      _initialFocusNode.requestFocus();
      
      // Main announcement with delay to ensure Orca catches it
      Future.delayed(const Duration(milliseconds: 100), () {
        if (!mounted) return;
        
        SemanticsService.announce(
          'Create your account page. ${lang.identityPageTitle}. Please fill in your personal information to create a user account.',
          TextDirection.ltr,
          assertiveness: Assertiveness.assertive,
        );
      });
      
      // Set focus on first form field after announcement
      Future.delayed(const Duration(milliseconds: 600), () {
        if (mounted) {
          _realNameFocusNode.requestFocus();
        }
      });
    });
  }

  @override
  void dispose() {
    _initialFocusNode.dispose();
    _realNameFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final lang = IdentityLocalizations.of(context);
    final model = ref.watch(identityModelProvider);
    
    return Focus(
      focusNode: _initialFocusNode,
      child: Semantics(
        label: 'Create your account page',
        container: true,
        child: HorizontalPage(
          windowTitle: lang.identityPageTitle,
          title: lang.identityPageTitle,
          bottomBar: WizardBar(
        leading: Semantics(
          button: true,
          label: 'Back button',
          child: const BackWizardButton(),
        ),
        trailing: [
          Semantics(
            button: true,
            label: model.isValid 
                ? 'Next button' 
                : 'Next button, disabled. Please fill in all required fields',
            enabled: model.isValid,
            child: NextWizardButton(
              enabled: model.isValid,
              onNext: () async {
                if (mounted) {
                  SemanticsService.announce(
                    'Creating account with username ${model.username}',
                    TextDirection.ltr,
                  );
                }
                await model.save();
              },
            ),
          ),
        ],
      ),
      children: [
        // Hidden live region for announcements
        Semantics(
          liveRegion: true,
          hidden: true,
          child: Container(
            height: 0,
            child: const Text(
              'Create your account page',
              style: TextStyle(fontSize: 0),
            ),
          ),
        ),
        // Real Name field with focus node
        Semantics(
          label: 'Your full name, required field',
          textField: true,
          child: Focus(
            focusNode: _realNameFocusNode,
            child: const RealNameFormField(),
          ),
        ),
        // Hostname field
        Semantics(
          label: 'Computer name, required field',
          hint: 'This will be your computer\'s network name',
          textField: true,
          child: const HostnameFormField(),
        ),
        // Username field
        Semantics(
          label: 'Username, required field',
          hint: 'Choose a username for your account',
          textField: true,
          child: const UsernameFormField(),
        ),
        // Password field
        Semantics(
          label: 'Password, required field',
          hint: 'Choose a strong password',
          textField: true,
          obscured: true,
          child: const PasswordFormField(),
        ),
        // Confirm Password field
        Semantics(
          label: 'Confirm password, required field',
          hint: 'Type your password again',
          textField: true,
          obscured: true,
          child: const ConfirmPasswordFormField(),
        ),
        // Auto Login checkbox
        Semantics(
          label: 'Log in automatically',
          hint: 'Check to log in without entering password',
          checked: model.autoLogin,
          child: const AutoLoginCheckButton(),
        ),
        // Active Directory checkbox
        Semantics(
          label: 'Use Active Directory',
          hint: 'Check to configure Active Directory authentication',
          checked: model.useActiveDirectory,
          child: const UseActiveDirectoryCheckButton(),
        ),
      ].withSpacing(kWizardSpacing),
        ),
      ),
    );
  }
}