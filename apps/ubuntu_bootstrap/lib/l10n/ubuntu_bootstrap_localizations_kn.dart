// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_bootstrap_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kannada (`kn`).
class UbuntuBootstrapLocalizationsKn extends UbuntuBootstrapLocalizations {
  UbuntuBootstrapLocalizationsKn([String locale = 'kn']) : super(locale);

  @override
  String get appTitle => 'ಉಬುಂಟು ಡೆಸ್ಕ್‌ಟಾಪ್ ಸ್ಥಾಪಕ';

  @override
  String windowTitle(String RELEASE) {
    return 'ಸ್ಥಾಪಿಸಿ $RELEASE';
  }

  @override
  String get autoinstallDirectTitle => 'ಸ್ವಯಂಚಾಲಿತ ಅನುಸ್ಥಾಪನೆ';

  @override
  String get autoinstallDirectHeader => 'ಸ್ವಯಂಇನ್‌ಸ್ಟಾಲ್ ಫೈಲ್ ಅನ್ನು ಆಮದು ಮಾಡಿ';

  @override
  String get autoinstallDirectUrlLabel =>
      'ಸ್ವಯಂಇನ್‌ಸ್ಟಾಲ್ ಫೈಲ್ ಅನ್ನು ಆಮದು ಮಾಡಿನೀವು ಸ್ವಯಂಇನ್‌ಸ್ಟಾಲ್ ಫೈಲ್‌ನ URL ಅನ್ನು ನಮೂದಿಸಬಹುದು:';

  @override
  String get autoinstallDirectFileLabel => 'ಅಥವಾ ಸ್ಥಳೀಯ ಫೈಲ್ ಆಯ್ಕೆಮಾಡಿ:';

  @override
  String get autoinstallDirectFileButtonLabel => 'ಫೈಲ್ ಆಯ್ಕೆಮಾಡಿ...';

  @override
  String get autoinstallDirectFileClearButtonLabel => 'ಫೈಲ್ ತೆರವುಗೊಳಿಸಿ';

  @override
  String get autoinstallDirectFilePickerTitle => 'ಫೈಲ್ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get autoinstallDirectFilePickerFilterLabel => 'YAML ಫೈಲ್‌ಗಳು';

  @override
  String get autoinstallDirectImportButtonLabel => 'ಆಮದು ಮಾಡಿಕೊಳ್ಳಿ';

  @override
  String get autoinstallDirectErrorNetworkTitle =>
      'ಸ್ವಯಂಇನ್‌ಸ್ಟಾಲ್ ಫೈಲ್ ಅನ್ನು ತಲುಪಲಾಗುವುದಿಲ್ಲ';

  @override
  String get autoinstallDirectErrorNetworkBody =>
      'URL ಸರಿಯಾಗಿದೆಯೇ ಎಂದು ಪರಿಶೀಲಿಸಿ, ನಿಮ್ಮ ಇಂಟರ್ನೆಟ್ ಸಂಪರ್ಕವನ್ನು ಪರೀಕ್ಷಿಸಿ ಅಥವಾ ನಂತರ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get autoinstallDirectErrorInvalidUrlTitle => 'ಅಮಾನ್ಯ URL';

  @override
  String get autoinstallDirectErrorInvalidUrlBody =>
      'URL ಸರಿಯಾಗಿದೆಯೇ ಎಂದು ಪರಿಶೀಲಿಸಿ ಅಥವಾ ಸ್ಥಳೀಯ ಫೈಲ್ ಅನ್ನು ಆಯ್ಕೆಮಾಡಿ.';

  @override
  String get autoinstallDirectErrorInvalidContentTitle =>
      'ಅಮಾನ್ಯ ಸ್ವಯಂ ಸ್ಥಾಪನೆ ಫೈಲ್';

  @override
  String get autoinstallDirectErrorInvalidContentBody =>
      'ಫೈಲ್ ಅನ್ನು ಪರಿಶೀಲಿಸಿ ಅಥವಾ ಬೇರೆಯದನ್ನು ಒದಗಿಸಿ.';

  @override
  String get autoinstallDirectErrorFileSystemTitle =>
      'ಫೈಲ್ ಅನ್ನು ಪರಿಶೀಲಿಸಿ ಅಥವಾ ಬೇರೆಯದನ್ನು ಒದಗಿಸಿ.ಫೈಲ್ ಅನ್ನು ಪರಿಶೀಲಿಸಿ ಅಥವಾ ಬೇರೆಯದನ್ನು ಒದಗಿಸಿ.';

  @override
  String get autoinstallDirectErrorFileSystemBody =>
      'ಫೈಲ್ ಅನ್ನು ಪರಿಶೀಲಿಸಿ ಅಥವಾ ಬೇರೆಯದನ್ನು ಒದಗಿಸಿ.ನಿಮ್ಮ ಅನುಮತಿಗಳನ್ನು ಪರಿಶೀಲಿಸಿ ಅಥವಾ ಬೇರೆ ಫೈಲ್ ಅನ್ನು ಒದಗಿಸಿ.';

  @override
  String get autoinstallDirectErrorUnkownTitle => 'ಅಜ್ಞಾತ ದೋಷ';

  @override
  String get autoinstallTitle => 'ಅನುಸ್ಥಾಪನೆಯ ಪ್ರಕಾರ';

  @override
  String autoinstallHeader(String DISTRO) {
    return 'ನೀವು $DISTRO ಅನ್ನು ಹೇಗೆ ಸ್ಥಾಪಿಸಲು ಬಯಸುತ್ತೀರಿ?';
  }

  @override
  String get autoinstallInstructions =>
      'autoinstall.yaml URL ಅಥವಾ ಸ್ಥಳೀಯ ಫೈಲ್ ಮಾರ್ಗವನ್ನು ನಮೂದಿಸಿ:';

  @override
  String get autoinstallInteractiveOption => 'ಸಂವಾದಾತ್ಮಕ ಸ್ಥಾಪನೆ';

  @override
  String get autoinstallInteractiveDescription =>
      'ಅನುಸ್ಥಾಪನೆಯ ಮೂಲಕ ಹಂತ ಹಂತವಾಗಿ ಮಾರ್ಗದರ್ಶನ ಮಾಡಲು ಬಯಸುವ ಬಳಕೆದಾರರಿಗೆ.';

  @override
  String get autoinstallDirectOption =>
      'ಸ್ವಯಂಇನ್‌ಸ್ಟಾಲ್ ಫೈಲ್‌ನೊಂದಿಗೆ ಸ್ವಯಂಚಾಲಿತವಾಗಿದೆ';

  @override
  String get autoinstallDirectDescription =>
      'ಸ್ಥಿರವಾದ ಮತ್ತು ಪುನರಾವರ್ತಿತ ಸಿಸ್ಟಮ್ ಸೆಟಪ್‌ಗಳಿಗಾಗಿ autoinstall.yaml ಅನ್ನು ಹೊಂದಿರುವ ಮುಂದುವರಿದ ಬಳಕೆದಾರರಿಗೆ.';

  @override
  String get autoinstallLandscapeOption => 'ಭೂದೃಶ್ಯದೊಂದಿಗೆ ಸ್ವಯಂಚಾಲಿತ';

  @override
  String get autoinstallLandscapeDescription =>
      'ಲ್ಯಾಂಡ್‌ಸ್ಕೇಪ್ ಮೂಲಕ ಸ್ವಯಂಇನ್‌ಸ್ಟಾಲ್ ಫೈಲ್ ಅನ್ನು ಒದಗಿಸುವ ಸಂಸ್ಥೆಗಳಲ್ಲಿನ ಬಳಕೆದಾರರಿಗೆ.';

  @override
  String get autoinstallErrorMessage =>
      'A command in the autoinstall file failed to run during installation.';

  @override
  String get autoinstallErrorInstructions =>
      'You will need to restart the installation. Check the autoinstall file, choose a different installation type, or contact your IT support.';

  @override
  String get changeButtonText => 'ಬದಲಾವಣೆ';

  @override
  String get quitButtonText => 'ಅನುಸ್ಥಾಪನೆಯನ್ನು ತ್ಯಜಿಸಿ';

  @override
  String loadingPageTitle(String DISTRO) {
    return '$DISTRO ಗೆ ಸುಸ್ವಾಗತ';
  }

  @override
  String loadingHeader(String DISTRO) {
    return '$DISTRO ಸಿದ್ಧಪಡಿಸಲಾಗುತ್ತಿದೆ…';
  }

  @override
  String get warningLabel => 'ಎಚ್ಚರಿಕೆ:';

  @override
  String tryOrInstallTitle(String DISTRO) {
    return '$DISTRO ಅನ್ನು ಪ್ರಯತ್ನಿಸಿ ಅಥವಾ ಸ್ಥಾಪಿಸಿ';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return 'ನೀವು $DISTRO ಜೊತೆಗೆ ಏನು ಮಾಡಲು ಬಯಸುತ್ತೀರಿ?';
  }

  @override
  String get tryOrInstallRepairOption => 'ದುರಸ್ತಿ ಅನುಸ್ಥಾಪನೆ';

  @override
  String get tryOrInstallRepairDescription =>
      'ರಿಪೇರಿ ಮಾಡುವುದರಿಂದ ಡಾಕ್ಯುಮೆಂಟ್‌ಗಳು ಅಥವಾ ಸೆಟ್ಟಿಂಗ್‌ಗಳನ್ನು ಸ್ಪರ್ಶಿಸದೆಯೇ ಎಲ್ಲಾ ಸ್ಥಾಪಿಸಲಾದ ಸಾಫ್ಟ್‌ವೇರ್ ಅನ್ನು ಮರುಸ್ಥಾಪಿಸುತ್ತದೆ.';

  @override
  String tryOption(String RELEASE) {
    return '$RELEASE ಪ್ರಯತ್ನಿಸಿ';
  }

  @override
  String tryDescription(String RELEASE) {
    return 'ನಿಮ್ಮ ಕಂಪ್ಯೂಟರ್‌ಗೆ ಯಾವುದೇ ಬದಲಾವಣೆಗಳನ್ನು ಮಾಡದೆಯೇ ನೀವು $RELEASE ಅನ್ನು ಪ್ರಯತ್ನಿಸಬಹುದು.';
  }

  @override
  String installOption(String RELEASE) {
    return 'ಸ್ಥಾಪಿಸಿ $RELEASE';
  }

  @override
  String installDescription(String RELEASE) {
    return 'ನಿಮ್ಮ ಪ್ರಸ್ತುತ ಆಪರೇಟಿಂಗ್ ಸಿಸ್ಟಂ ಜೊತೆಗೆ (ಅಥವಾ ಬದಲಿಗೆ) $RELEASE ಅನ್ನು ಸ್ಥಾಪಿಸಿ. ಇದು ಹೆಚ್ಚು ಸಮಯ ತೆಗೆದುಕೊಳ್ಳಬಾರದು.';
  }

  @override
  String tryOrInstallReleaseNotesLabel(String url) {
    return 'ನೀವು <a href=\"$url\">ಬಿಡುಗಡೆ ಟಿಪ್ಪಣಿಗಳನ್ನು</a> ಓದಲು ಬಯಸಬಹುದು.';
  }

  @override
  String get rstTitle => 'RST ಪತ್ತೆಯಾಗಿದೆ';

  @override
  String get rstHeader =>
      'ಅನುಸ್ಥಾಪನೆಯನ್ನು ಮುಂದುವರಿಸಲು ನೀವು RST ಅನ್ನು ನಿಷ್ಕ್ರಿಯಗೊಳಿಸಬೇಕು';

  @override
  String get rstDisable =>
      'ನಿಮ್ಮ ಕಂಪ್ಯೂಟರ್ ಇಂಟೆಲ್ RST (ರಾಪಿಡ್ ಸ್ಟೋರೇಜ್ ಟೆಕ್ನಾಲಜಿ) ಅನ್ನು ಬಳಸುತ್ತದೆ. ನೀವು ಇದರಲ್ಲಿ RST ಅನ್ನು ನಿಷ್ಕ್ರಿಯಗೊಳಿಸಬಹುದು:';

  @override
  String get rstDisableWindows =>
      'ವಿಂಡೋಸ್, ನೀವು ವಿಂಡೋಸ್ನೊಂದಿಗೆ ಡ್ಯುಯಲ್ ಬೂಟ್ ಸೆಟಪ್ ಅನ್ನು ಬಳಸುತ್ತಿದ್ದರೆ';

  @override
  String get rstDisableBios => 'BIOS ಸೆಟ್ಟಿಂಗ್‌ಗಳು';

  @override
  String rstInstructions(String url) {
    return 'ಸೂಚನೆಗಳಿಗಾಗಿ, ಇನ್ನೊಂದು ಸಾಧನದಲ್ಲಿ QR ಕೋಡ್ ಅನ್ನು ಸ್ಕ್ಯಾನ್ ಮಾಡಿ ಅಥವಾ ಭೇಟಿ ನೀಡಿ: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'ಸುರಕ್ಷಿತ ಬೂಟ್ ಅನ್ನು ಕಾನ್ಫಿಗರ್ ಮಾಡಿ';

  @override
  String get configureSecureBootDescription =>
      'ನೀವು ಮೂರನೇ ವ್ಯಕ್ತಿಯ ಡ್ರೈವರ್ ಸಾಫ್ಟ್‌ವೇರ್ ಅನ್ನು ಸ್ಥಾಪಿಸಲು ಆಯ್ಕೆ ಮಾಡಿದ್ದೀರಿ. ಇದಕ್ಕೆ ಸುರಕ್ಷಿತ ಬೂಟ್ ಅನ್ನು ಆಫ್ ಮಾಡುವ ಅಗತ್ಯವಿದೆ.ಇದನ್ನು ಮಾಡಲು, ನೀವು ಇದೀಗ ಭದ್ರತಾ ಕೀಲಿಯನ್ನು ಆರಿಸಬೇಕಾಗುತ್ತದೆ ಮತ್ತು ಸಿಸ್ಟಮ್ ಮರುಪ್ರಾರಂಭಿಸಿದಾಗ ಅದನ್ನು ನಮೂದಿಸಿ.ನೀವು ಮೂರನೇ ವ್ಯಕ್ತಿಯ ಡ್ರೈವರ್ ಸಾಫ್ಟ್‌ವೇರ್ ಅನ್ನು ಸ್ಥಾಪಿಸಲು ಆಯ್ಕೆ ಮಾಡಿದ್ದೀರಿ. ಇದಕ್ಕೆ ಸುರಕ್ಷಿತ ಬೂಟ್ ಅನ್ನು ಆಫ್ ಮಾಡುವ ಅಗತ್ಯವಿದೆ.ಇದನ್ನು ಮಾಡಲು, ನೀವು ಇದೀಗ ಭದ್ರತಾ ಕೀಲಿಯನ್ನು ಆರಿಸಬೇಕಾಗುತ್ತದೆ ಮತ್ತು ಸಿಸ್ಟಮ್ ಮರುಪ್ರಾರಂಭಿಸಿದಾಗ ಅದನ್ನು ನಮೂದಿಸಿ.';

  @override
  String get configureSecureBootOption => 'ಸುರಕ್ಷಿತ ಬೂಟ್ ಅನ್ನು ಕಾನ್ಫಿಗರ್ ಮಾಡಿ';

  @override
  String get chooseSecurityKey => 'ಭದ್ರತಾ ಕೀಲಿಯನ್ನು ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get confirmSecurityKey => 'ಭದ್ರತಾ ಕೀಯನ್ನು ದೃಢೀಕರಿಸಿ';

  @override
  String get dontInstallDriverSoftwareNow =>
      'ಸದ್ಯಕ್ಕೆ ಡ್ರೈವರ್ ಸಾಫ್ಟ್‌ವೇರ್ ಅನ್ನು ಸ್ಥಾಪಿಸಬೇಡಿ';

  @override
  String get dontInstallDriverSoftwareNowDescription =>
      'ನೀವು ಅದನ್ನು ನಂತರ ಸಾಫ್ಟ್‌ವೇರ್‌ನಿಂದ ಸ್ಥಾಪಿಸಬಹುದುನೀವು ಅದನ್ನು ನಂತರ ಸಾಫ್ಟ್‌ವೇರ್‌ನಿಂದ ಸ್ಥಾಪಿಸಬಹುದು';

  @override
  String get configureSecureBootSecurityKeyRequired => 'ಭದ್ರತಾ ಕೀ ಅಗತ್ಯವಿದೆ';

  @override
  String get secureBootSecurityKeysDontMatch =>
      'ಭದ್ರತಾ ಕೀಗಳು ಹೊಂದಿಕೆಯಾಗುತ್ತಿಲ್ಲ';

  @override
  String get showSecurityKey => 'ತೋರಿಸು';

  @override
  String get hideSecurityKey => 'ಮರೆಮಾಡಿ';

  @override
  String get updatesOtherSoftwarePageTitle => 'ಅಪ್ಲಿಕೇಶನ್‌ಗಳು';

  @override
  String get updatesOtherSoftwarePageDescription =>
      'ಪ್ರಾರಂಭಿಸಲು ನೀವು ಯಾವ ಅಪ್ಲಿಕೇಶನ್‌ಗಳನ್ನು ಸ್ಥಾಪಿಸಲು ಬಯಸುತ್ತೀರಿ?';

  @override
  String get codecsAndDriversPageTitle =>
      'ನಿಮ್ಮ ಕಂಪ್ಯೂಟರ್ ಅನ್ನು ಆಪ್ಟಿಮೈಜ್ ಮಾಡಿ';

  @override
  String get codecsAndDriversPageDescription =>
      'ಶಿಫಾರಸು ಮಾಡಲಾದ ಸ್ವಾಮ್ಯದ ಸಾಫ್ಟ್‌ವೇರ್ ಅನ್ನು ಸ್ಥಾಪಿಸುವುದೇ?';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return 'ಪೂರ್ವನಿಯೋಜಿತವಾಗಿ ಯಾವುದೇ ಸ್ವಾಮ್ಯದ ಸಾಫ್ಟ್‌ವೇರ್ ಅನ್ನು $DISTRO ರವಾನಿಸುತ್ತದೆ. ಹೆಚ್ಚುವರಿ ಸಾಫ್ಟ್‌ವೇರ್ ಅನ್ನು ಸ್ಥಾಪಿಸುವುದು ನಿಮ್ಮ ಕಂಪ್ಯೂಟರ್‌ನ ಕಾರ್ಯಕ್ಷಮತೆಯನ್ನು ಸುಧಾರಿಸಬಹುದು.';
  }

  @override
  String get codecsAndDriversNvidiaNote =>
      'NVIDIA ಗ್ರಾಫಿಕ್ಸ್ ಕಾರ್ಡ್ ಪತ್ತೆಯಾಗಿದೆ';

  @override
  String get codecsAndDriversNvidiaBody =>
      'NVIDIA ಗ್ರಾಫಿಕ್ ಕಾರ್ಡ್‌ಗಳ ಉತ್ತಮ ಕಾರ್ಯಕ್ಷಮತೆಗಾಗಿ, ಹೆಚ್ಚುವರಿ ಡ್ರೈವರ್‌ಗಳನ್ನು ಸ್ಥಾಪಿಸುವುದನ್ನು ಬಲವಾಗಿ ಶಿಫಾರಸು ಮಾಡಲಾಗಿದೆ.';

  @override
  String get fullInstallationTitle => 'ವಿಸ್ತೃತ ಆಯ್ಕೆ';

  @override
  String get fullInstallationSubtitle =>
      'ಕಚೇರಿ ಪರಿಕರಗಳು, ಉಪಯುಕ್ತತೆಗಳು ಮತ್ತು ವೆಬ್ ಬ್ರೌಸರ್‌ನ ಆಫ್‌ಲೈನ್-ಸ್ನೇಹಿ ಆಯ್ಕೆ.';

  @override
  String get minimalInstallationTitle => 'ಡೀಫಾಲ್ಟ್ ಆಯ್ಕೆ';

  @override
  String get minimalInstallationSubtitle =>
      'ಕೇವಲ ಅಗತ್ಯಗಳು, ವೆಬ್ ಬ್ರೌಸರ್ ಮತ್ತು ಮೂಲಭೂತ ಉಪಯುಕ್ತತೆಗಳು.';

  @override
  String get otherOptions => 'ಇತರ ಆಯ್ಕೆಗಳು';

  @override
  String get installThirdPartyTitle =>
      'ಗ್ರಾಫಿಕ್ಸ್ ಮತ್ತು ವೈ-ಫೈ ಹಾರ್ಡ್‌ವೇರ್‌ಗಾಗಿ ಮೂರನೇ ವ್ಯಕ್ತಿಯ ಸಾಫ್ಟ್‌ವೇರ್ ಅನ್ನು ಸ್ಥಾಪಿಸಿ, ಜೊತೆಗೆ ಹೆಚ್ಚುವರಿ ಮಾಧ್ಯಮ ಸ್ವರೂಪಗಳು';

  @override
  String get installThirdPartySubtitle =>
      'ಈ ಸಾಫ್ಟ್‌ವೇರ್ ಅದರ ದಸ್ತಾವೇಜನ್ನು ಒಳಗೊಂಡಿರುವ ಪರವಾನಗಿ ನಿಯಮಗಳಿಗೆ ಒಳಪಟ್ಟಿರುತ್ತದೆ. ಕೆಲವು ಸ್ವಾಮ್ಯದವು.';

  @override
  String get installDriversTitle =>
      'ಗ್ರಾಫಿಕ್ಸ್ ಮತ್ತು ವೈ-ಫೈ ಹಾರ್ಡ್‌ವೇರ್‌ಗಾಗಿ ಮೂರನೇ ವ್ಯಕ್ತಿಯ ಸಾಫ್ಟ್‌ವೇರ್ ಅನ್ನು ಸ್ಥಾಪಿಸಿ';

  @override
  String get installDriversSubtitle =>
      'NVIDIA ಡ್ರೈವರ್‌ಗಳು ಮತ್ತು ಅಂತಹುದೇ ಸೇರಿದಂತೆ ಆದರೆ ಸೀಮಿತವಾಗಿಲ್ಲ';

  @override
  String get installCodecsTitle =>
      'ಹೆಚ್ಚುವರಿ ಮಾಧ್ಯಮ ಸ್ವರೂಪಗಳಿಗೆ ಬೆಂಬಲವನ್ನು ಡೌನ್‌ಲೋಡ್ ಮಾಡಿ ಮತ್ತು ಸ್ಥಾಪಿಸಿ';

  @override
  String get installCodecsSubtitle =>
      'MP3, MP4, MOV ಮತ್ತು ಅಂತಹುದೇ ಸೇರಿದಂತೆ ಆದರೆ ಸೀಮಿತವಾಗಿಲ್ಲ';

  @override
  String get batteryWarning =>
      'ಕಂಪ್ಯೂಟರ್ ಅನ್ನು ವಿದ್ಯುತ್ ಮೂಲಕ್ಕೆ ಪ್ಲಗ್ ಇನ್ ಮಾಡಲಾಗಿಲ್ಲ.';

  @override
  String get offlineWarning => 'ನೀವು ಪ್ರಸ್ತುತ ಆಫ್‌ಲೈನ್‌ನಲ್ಲಿದ್ದೀರಿ';

  @override
  String get choosePassphraseHeader => 'ಪಾಸ್‌ಫ್ರೇಸ್ ರಚಿಸಿ';

  @override
  String get choosePassphraseBody =>
      'ನೀವು ನಿಮ್ಮ ಕಂಪ್ಯೂಟರ್ ಅನ್ನು ಆನ್ ಮಾಡಿದಾಗಲೆಲ್ಲಾ ನಿಮ್ಮ ಪಾಸ್‌ಫ್ರೇಸ್ ಅನ್ನು ನಮೂದಿಸಬೇಕಾಗುತ್ತದೆ. ಈ ಪಾಸ್‌ಫ್ರೇಸ್ ನಿಮ್ಮ ಬಳಕೆದಾರ ಪಾಸ್‌ವರ್ಡ್‌ಗಿಂತ ಭಿನ್ನವಾಗಿದೆ.';

  @override
  String get choosePassphraseInfoHeader =>
      'ನಿಮ್ಮ ಪಾಸ್‌ಫ್ರೇಸ್ ಅನ್ನು ಉಳಿಸಲು ಖಚಿತಪಡಿಸಿಕೊಳ್ಳಿ';

  @override
  String get choosePassphraseInfoBody =>
      'ನೀವು ಅದನ್ನು ಕಳೆದುಕೊಂಡರೆ, ನಿಮ್ಮ ಎಲ್ಲಾ ಡೇಟಾವನ್ನು ನೀವು ಕಳೆದುಕೊಳ್ಳುತ್ತೀರಿ.';

  @override
  String get chooseOptionalPassphraseInfoHeader =>
      'ನಿಮ್ಮ ಪಾಸ್‌ಫ್ರೇಸ್ ಮತ್ತು ಮರುಪ್ರಾಪ್ತಿ ಕೀಯನ್ನು ಎಲ್ಲೋ ಸುರಕ್ಷಿತವಾಗಿ ಸಂಗ್ರಹಿಸಿ';

  @override
  String get chooseOptionalPassphraseInfoBody =>
      'ನಿಮ್ಮ ಪಾಸ್‌ಫ್ರೇಸ್ ಅನ್ನು ನೀವು ಕಳೆದುಕೊಂಡರೆ, ನಿಮ್ಮ ಎಲ್ಲಾ ಡೇಟಾವನ್ನು ನೀವು ಕಳೆದುಕೊಳ್ಳುತ್ತೀರಿ. ಪಾಸ್‌ಫ್ರೇಸ್ ಮರುಪ್ರಾಪ್ತಿ ಕೀ ಅಥವಾ ನಿಮ್ಮ ಬಳಕೆದಾರ ಪಾಸ್‌ವರ್ಡ್ ಅನ್ನು ಬದಲಾಯಿಸುವುದಿಲ್ಲ.';

  @override
  String get passphrasePageTitle => 'ಗೂಢಲಿಪೀಕರಣ';

  @override
  String get passphrasePageHeaderPassphrase =>
      'ಎನ್‌ಕ್ರಿಪ್ಶನ್ ಪಾಸ್‌ಫ್ರೇಸ್ ಅನ್ನು ಹೊಂದಿಸಿ';

  @override
  String get passphrasePageHeaderPin => 'ಎನ್‌ಕ್ರಿಪ್ಶನ್ ಪಿನ್ ಹೊಂದಿಸಿ';

  @override
  String get passphrasePageBodyPassphrase =>
      'ನೀವು ನಿಮ್ಮ ಕಂಪ್ಯೂಟರ್ ಅನ್ನು ಆನ್ ಮಾಡಿದಾಗಲೆಲ್ಲಾ ನಿಮ್ಮ ಪಾಸ್‌ಫ್ರೇಸ್ ಅನ್ನು ನಮೂದಿಸಬೇಕಾಗುತ್ತದೆ. ಈ ಪಾಸ್‌ಫ್ರೇಸ್ ನಿಮ್ಮ ಬಳಕೆದಾರ ಪಾಸ್‌ವರ್ಡ್‌ಗಿಂತ ಭಿನ್ನವಾಗಿದೆ. ನೀವು ಅದನ್ನು ನಂತರ ಬದಲಾಯಿಸಬಹುದು, ಆದರೆ ನಿಷ್ಕ್ರಿಯಗೊಳಿಸುವುದಿಲ್ಲ. ನಿಮ್ಮ ಪಾಸ್‌ಫ್ರೇಸ್ ಅನ್ನು ನೀವು ಮರೆತರೆ, ಮರುಪಡೆಯುವಿಕೆ ಕೀಲಿಯನ್ನು ಬಳಸಿಕೊಂಡು ನೀವು ಡಿಸ್ಕ್‌ಗೆ ಪ್ರವೇಶವನ್ನು ಮರಳಿ ಪಡೆಯಬಹುದು.';

  @override
  String get passphrasePageBodyPin =>
      'ನೀವು ನಿಮ್ಮ ಕಂಪ್ಯೂಟರ್ ಅನ್ನು ಆನ್ ಮಾಡಿದಾಗಲೆಲ್ಲಾ ನಿಮ್ಮ ಪಿನ್ ಅನ್ನು ನಮೂದಿಸಬೇಕಾಗುತ್ತದೆ. ಈ ಪಿನ್ ನಿಮ್ಮ ಬಳಕೆದಾರ ಪಾಸ್‌ವರ್ಡ್‌ಗಿಂತ ಭಿನ್ನವಾಗಿದೆ. ನೀವು ಅದನ್ನು ನಂತರ ಬದಲಾಯಿಸಬಹುದು, ಆದರೆ ನಿಷ್ಕ್ರಿಯಗೊಳಿಸುವುದಿಲ್ಲ. ನಿಮ್ಮ ಪಿನ್ ಅನ್ನು ನೀವು ಮರೆತರೆ, ಮರುಪ್ರಾಪ್ತಿ ಕೀಯನ್ನು ಬಳಸಿಕೊಂಡು ನೀವು ಡಿಸ್ಕ್‌ಗೆ ಪ್ರವೇಶವನ್ನು ಮರಳಿ ಪಡೆಯಬಹುದು.';

  @override
  String get passphrasePageChoosePassphraseHint => 'ಪಾಸ್ಫ್ರೇಸ್';

  @override
  String get passphrasePageConfirmPassphraseHint =>
      'ಪಾಸ್‌ಫ್ರೇಸ್ ಅನ್ನು ದೃಢೀಕರಿಸಿ';

  @override
  String get passphrasePageRequiredPassphrase => 'ಪಾಸ್‌ಫ್ರೇಸ್ ಅಗತ್ಯವಿದೆ';

  @override
  String get passphrasePageMismatchPassphrase =>
      'ಪಾಸ್‌ಫ್ರೇಸ್‌ಗಳು ಹೊಂದಿಕೆಯಾಗುವುದಿಲ್ಲ';

  @override
  String get passphrasePageChoosePinHint => 'ಪಿನ್';

  @override
  String get passphrasePageConfirmPinHint => 'ಪಿನ್ ಅನ್ನು ದೃಢೀಕರಿಸಿ';

  @override
  String get passphrasePageRequiredPin => 'ಪಿನ್ ಅಗತ್ಯವಿದೆ';

  @override
  String get passphrasePageMismatchPin => 'ಪಿನ್‌ಗಳು ಹೊಂದಿಕೆಯಾಗುತ್ತಿಲ್ಲ';

  @override
  String get passphraseTypePassphraseTileTitle =>
      'ಪಾಸ್‌ಫ್ರೇಸ್ ಅಗತ್ಯವಿದೆಪಾಸ್‌ಫ್ರೇಸ್ ಅಗತ್ಯವಿದೆ';

  @override
  String get passphraseTypePassphraseTileSubTitle =>
      'ಅತ್ಯಂತ ಸುರಕ್ಷಿತ. ನಿಮ್ಮ ಕಂಪ್ಯೂಟರ್ ಅನ್ನು ನೀವು ಪ್ರತಿ ಬಾರಿ ಆನ್ ಮಾಡಿದಾಗಲೂ ನೀವು ದೀರ್ಘವಾದ ಪಾಸ್‌ಫ್ರೇಸ್ ಅನ್ನು ನಮೂದಿಸಬೇಕಾಗುತ್ತದೆ.';

  @override
  String get passphraseTypePinTileTitle => 'ಪಿನ್ ಅಗತ್ಯವಿದೆಪಿನ್ ಅಗತ್ಯವಿದೆ';

  @override
  String get passphraseTypePinTileSubTitle =>
      'ಹೆಚ್ಚು ಸುರಕ್ಷಿತ. ನಿಮ್ಮ ಕಂಪ್ಯೂಟರ್ ಅನ್ನು ನೀವು ಪ್ರತಿ ಬಾರಿ ಆನ್ ಮಾಡಿದಾಗಲೂ ನೀವು ಸಂಖ್ಯಾತ್ಮಕ ಪಿನ್ ಅನ್ನು ನಮೂದಿಸಬೇಕಾಗುತ್ತದೆ.';

  @override
  String get passphraseTypeNoneTileTitle =>
      'ಡಿಸ್ಕ್ ಅನ್ನು ಸ್ವಯಂಚಾಲಿತವಾಗಿ ಅನ್ಲಾಕ್ ಮಾಡಿ';

  @override
  String get passphraseTypePageHeader => 'ಹೆಚ್ಚುವರಿ ಭದ್ರತೆ';

  @override
  String get passphraseTypePageBody =>
      'ಪೂರ್ವನಿಯೋಜಿತವಾಗಿ, ಕಂಪ್ಯೂಟರ್‌ನ ವಿಶ್ವಾಸಾರ್ಹ ಪ್ಲಾಟ್‌ಫಾರ್ಮ್ ಮಾಡ್ಯೂಲ್ (TPM) ಪ್ರಾರಂಭದ ಸಮಯದಲ್ಲಿ ಡಿಸ್ಕ್ ಅನ್ನು ಅನ್‌ಲಾಕ್ ಮಾಡುತ್ತದೆ. ನಿಮ್ಮ ಡೇಟಾವನ್ನು ಮತ್ತಷ್ಟು ರಕ್ಷಿಸಲು ನಿಮಗೆ ಆಯ್ಕೆಗಳಿವೆ.';

  @override
  String get passphrasePagePassphraseEntropyBelowMin =>
      'ದುರ್ಬಲ ಪಾಸ್‌ಫ್ರೇಸ್, ಅದನ್ನು ಉದ್ದ ಅಥವಾ ಹೆಚ್ಚು ಸಂಕೀರ್ಣಗೊಳಿಸಿ';

  @override
  String get passphrasePagePassphraseEntropyBelowOptimal =>
      'ನ್ಯಾಯೋಚಿತ ಪಾಸ್‌ಫ್ರೇಸ್, ಉತ್ತಮ ಭದ್ರತೆಗಾಗಿ ಅದನ್ನು ದೀರ್ಘ ಅಥವಾ ಹೆಚ್ಚು ಸಂಕೀರ್ಣಗೊಳಿಸಿ';

  @override
  String get passphrasePagePassphraseEntropyOptimal => 'ಬಲವಾದ ಪಾಸ್‌ಫ್ರೇಸ್';

  @override
  String get passphrasePagePinEntropyBelowMin =>
      'ದುರ್ಬಲವಾದ ಪಿನ್, ಅದನ್ನು ಉದ್ದ ಅಥವಾ ಕಡಿಮೆ ಊಹಿಸಬಹುದಾದಂತೆ ಮಾಡಿ';

  @override
  String get passphrasePagePinEntropyBelowOptimal =>
      'ನ್ಯಾಯೋಚಿತ ಪಿನ್, ಉತ್ತಮ ಭದ್ರತೆಗಾಗಿ ದೀರ್ಘ ಅಥವಾ ಕಡಿಮೆ ಊಹಿಸಬಹುದಾದಂತೆ ಮಾಡಿ';

  @override
  String get passphrasePagePinEntropyOptimal => 'ಪಿನ್ ಸಾಕಷ್ಟು ಉದ್ದವಾಗಿದೆ';

  @override
  String get installationTypeTitle => 'ಡಿಸ್ಕ್ ಸೆಟಪ್';

  @override
  String installationTypeHeader(String DISTRO) {
    return 'ನೀವು $DISTRO ಅನ್ನು ಹೇಗೆ ಸ್ಥಾಪಿಸಲು ಬಯಸುತ್ತೀರಿ?ನೀವು $DISTRO ಅನ್ನು ಹೇಗೆ ಸ್ಥಾಪಿಸಲು ಬಯಸುತ್ತೀರಿ?';
  }

  @override
  String installationTypeOSDetected(String os) {
    return 'ಈ ಕಂಪ್ಯೂಟರ್ ಪ್ರಸ್ತುತ $os ಅನ್ನು ಹೊಂದಿದೆ. ನೀವು ಏನು ಮಾಡಲು ಬಯಸುತ್ತೀರಿ?';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return 'ಈ ಕಂಪ್ಯೂಟರ್ ಪ್ರಸ್ತುತ $os1 ಮತ್ತು $os2 ಅನ್ನು ಹೊಂದಿದೆ. ನೀವು ಏನು ಮಾಡಲು ಬಯಸುತ್ತೀರಿ?';
  }

  @override
  String get installationTypeMultiOSDetected =>
      'ಈ ಕಂಪ್ಯೂಟರ್ ಪ್ರಸ್ತುತ ಬಹು ಆಪರೇಟಿಂಗ್ ಸಿಸ್ಟಮ್‌ಗಳನ್ನು ಹೊಂದಿದೆ. ನೀವು ಏನು ಮಾಡಲು ಬಯಸುತ್ತೀರಿ?';

  @override
  String get installationTypeNoOSDetected =>
      'ಈ ಕಂಪ್ಯೂಟರ್ ಪ್ರಸ್ತುತ ಯಾವುದೇ ಪತ್ತೆಯಾದ ಆಪರೇಟಿಂಗ್ ಸಿಸ್ಟಮ್‌ಗಳನ್ನು ಹೊಂದಿಲ್ಲ. ನೀವು ಏನು ಮಾಡಲು ಬಯಸುತ್ತೀರಿ?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'ಡಿಸ್ಕ್ ಅನ್ನು ಅಳಿಸಿ ಮತ್ತು $DISTRO ಅನ್ನು ಸ್ಥಾಪಿಸಿ';
  }

  @override
  String get installationTypeEraseInfo =>
      'ಆಪರೇಟಿಂಗ್ ಸಿಸ್ಟಮ್‌ಗಳನ್ನು ಒಳಗೊಂಡಂತೆ ಡಿಸ್ಕ್‌ನಲ್ಲಿರುವ ಎಲ್ಲಾ ಡೇಟಾ ಮತ್ತು ವಿಭಾಗಗಳನ್ನು ಅಳಿಸಲಾಗುತ್ತದೆ.';

  @override
  String get installationTypeAdvancedLabel => 'ಸುಧಾರಿತ ಆಯ್ಕೆಗಳನ್ನು ತೋರಿಸಿ...';

  @override
  String get installationTypeAdvancedTitle => 'ಎನ್ಕ್ರಿಪ್ಶನ್ ಮತ್ತು ಫೈಲ್ ಸಿಸ್ಟಮ್';

  @override
  String get installationTypeExperimental => 'ಪ್ರಾಯೋಗಿಕ';

  @override
  String get installationTypeNone => 'ಎನ್‌ಕ್ರಿಪ್ಶನ್ ಇಲ್ಲ';

  @override
  String get installationTypeNoneInfo =>
      'ಗೂಢಲಿಪೀಕರಣವಿಲ್ಲದೆ ಪ್ರಮಾಣಿತ ಫೈಲ್ ಸಿಸ್ಟಮ್.';

  @override
  String get installationTypeNoneSelected => 'ಯಾವುದನ್ನೂ ಆಯ್ಕೆ ಮಾಡಿಲ್ಲ';

  @override
  String get installationTypeLVM => 'ಗೂಢಲಿಪೀಕರಣವಿಲ್ಲದೆ LVM ಬಳಸಿ';

  @override
  String get installationTypeLVMSelected => 'LVM ಆಯ್ಕೆಮಾಡಲಾಗಿದೆ';

  @override
  String get installationTypeLVMEncryption =>
      'ಪಾಸ್‌ಫ್ರೇಸ್‌ನೊಂದಿಗೆ ಎನ್‌ಕ್ರಿಪ್ಟ್ ಮಾಡಿ';

  @override
  String installationTypeLVMEncryptionInfoResolute(String advancedHint) {
    return 'You will need to enter a passphrase every time you turn on your computer. $advancedHint';
  }

  @override
  String get installationTypeLVMEncryptionInfo2 =>
      'This uses LVM with LUKS encryption.';

  @override
  String get installationTypeLVMEncryptionSelected =>
      'LVM ಮತ್ತು ಎನ್‌ಕ್ರಿಪ್ಶನ್ ಆಯ್ಕೆಮಾಡಲಾಗಿದೆ';

  @override
  String get installationTypeEncryptInfo =>
      'ಮುಂದಿನ ಹಂತದಲ್ಲಿ ನೀವು ಭದ್ರತಾ ಕೀಲಿಯನ್ನು ಆಯ್ಕೆ ಮಾಡುತ್ತೀರಿ.';

  @override
  String get installationTypeZFS => 'ಎನ್‌ಕ್ರಿಪ್ಶನ್ ಇಲ್ಲದೆ ZFS ಬಳಸಿ';

  @override
  String get installationTypeZFSEncryption =>
      'ZFS ಬಳಸಿಕೊಂಡು ಪಾಸ್‌ಫ್ರೇಸ್‌ನೊಂದಿಗೆ ಎನ್‌ಕ್ರಿಪ್ಟ್ ಮಾಡಿ';

  @override
  String get installationTypeZFSEncryptionInfo =>
      'ZFS ನೊಂದಿಗೆ ಸ್ಥಳೀಯ ಎನ್‌ಕ್ರಿಪ್ಶನ್. ನಿಮ್ಮ ಕಂಪ್ಯೂಟರ್ ಅನ್ನು ಆನ್ ಮಾಡಿದಾಗಲೆಲ್ಲಾ ನೀವು ಪಾಸ್‌ಫ್ರೇಸ್ ಅನ್ನು ನಮೂದಿಸಬೇಕಾಗುತ್ತದೆ.';

  @override
  String get installationTypeZFSSelected => 'ZFS ಆಯ್ಕೆಮಾಡಲಾಗಿದೆ';

  @override
  String get installationTypeZFSEncryptionSelected =>
      'ZFS ಮತ್ತು ಎನ್‌ಕ್ರಿಪ್ಶನ್ ಆಯ್ಕೆಮಾಡಲಾಗಿದೆ';

  @override
  String get installationTypeTPM => 'ಹಾರ್ಡ್‌ವೇರ್-ಬೆಂಬಲಿತ ಎನ್‌ಕ್ರಿಪ್ಶನ್ ಬಳಸಿ';

  @override
  String get installationTypeTPMInfoResolute =>
      'The disk will unlock automatically during startup.';

  @override
  String get installationTypeTPMInfoUnavailable =>
      'Not available on this computer.';

  @override
  String get installationTypeTPMSelected => 'TPM ಆಯ್ಕೆಮಾಡಲಾಗಿದೆ';

  @override
  String installationTypeReinstall(String os) {
    return '$os ಅನ್ನು ಅಳಿಸಿ ಮತ್ತು ಮರುಸ್ಥಾಪಿಸಿ';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">ಎಚ್ಚರಿಕೆ:</font> ಇದು ನಿಮ್ಮ ಎಲ್ಲಾ $os ಪ್ರೋಗ್ರಾಂಗಳು, ಡಾಕ್ಯುಮೆಂಟ್‌ಗಳು, ಫೋಟೋಗಳು, ಸಂಗೀತ ಮತ್ತು ಯಾವುದೇ ಇತರ ಫೈಲ್‌ಗಳನ್ನು ಅಳಿಸುತ್ತದೆ.';
  }

  @override
  String installationTypeAlongside(String product, String os) {
    return '$os ಜೊತೆಗೆ $product ಅನ್ನು ಸ್ಥಾಪಿಸಿ';
  }

  @override
  String installationTypeAlongsideDual(String product, String os1, String os2) {
    return '$os1 ಮತ್ತು $os2 ಜೊತೆಗೆ $product ಅನ್ನು ಸ್ಥಾಪಿಸಿ';
  }

  @override
  String installationTypeAlongsideMulti(String product) {
    return 'ಅಸ್ತಿತ್ವದಲ್ಲಿರುವ ಆಪರೇಟಿಂಗ್ ಸಿಸ್ಟಂಗಳ ಜೊತೆಗೆ $product ಅನ್ನು ಸ್ಥಾಪಿಸಿ';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return 'ಇತರ ವಿಭಾಗಗಳ ಜೊತೆಗೆ $product ಅನ್ನು ಸ್ಥಾಪಿಸಿ';
  }

  @override
  String installationTypeAlongsideInfo(String product) {
    return 'ಮರುಗಾತ್ರಗೊಳಿಸಲು ಮತ್ತು $product ಗಾಗಿ ಜಾಗವನ್ನು ರಚಿಸಲು ವಿಭಾಗವನ್ನು ಆಯ್ಕೆಮಾಡಿ. ಬೂಟ್ ಸಮಯದಲ್ಲಿ ನಿಮ್ಮ ಆಪರೇಟಿಂಗ್ ಸಿಸ್ಟಮ್ ಅನ್ನು ನೀವು ಆಯ್ಕೆ ಮಾಡಬಹುದು.';
  }

  @override
  String installationTypeEraseAndInstall(String os, String product) {
    return '$os ಅನ್ನು ಅಳಿಸಿ ಮತ್ತು $product ಅನ್ನು ಸ್ಥಾಪಿಸಿ';
  }

  @override
  String installationTypeEraseAndInstallInfo(String os) {
    return 'ಅಸ್ತಿತ್ವದಲ್ಲಿರುವ $os ಸ್ಥಾಪನೆಯಿಂದ ಎಲ್ಲಾ ಫೈಲ್‌ಗಳು ಮತ್ತು ಡೇಟಾವನ್ನು ಶಾಶ್ವತವಾಗಿ ಅಳಿಸಲಾಗುತ್ತದೆ.';
  }

  @override
  String get installationTypeManual => 'ಹಸ್ತಚಾಲಿತ ಸ್ಥಾಪನೆ';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'ಕಸ್ಟಮೈಸ್ ಮಾಡಿದ ಡಿಸ್ಕ್ ಸೆಟಪ್‌ಗಳನ್ನು ಬಯಸುವ ಮುಂದುವರಿದ ಬಳಕೆದಾರರಿಗೆ.';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'ಡಿಸ್ಕ್ ಅನ್ನು ಅಳಿಸಿ ಮತ್ತು $DISTRO ಅನ್ನು ಸ್ಥಾಪಿಸಿ';
  }

  @override
  String get selectGuidedStorageInfo =>
      'ನಿಮ್ಮ ಆಯ್ಕೆಮಾಡಿದ ಡಿಸ್ಕ್‌ನಲ್ಲಿ ಮೊದಲಿನಿಂದ ಪ್ರಾರಂಭಿಸಿ.';

  @override
  String get selectGuidedStorageDriveDropdownLabel => 'ಡ್ರೈವ್ ಆಯ್ಕೆಮಾಡಿ:';

  @override
  String get selectGuidedStoragePartitionDropdownLabel =>
      'ವಿಭಾಗವನ್ನು ಆಯ್ಕೆಮಾಡಿ:';

  @override
  String get selectGuidedStorageInfoLabel =>
      'ಸಂಪೂರ್ಣ ಡಿಸ್ಕ್ ಅನ್ನು ಬಳಸಲಾಗುತ್ತದೆ:';

  @override
  String get selectGuidedStorageInstallNow => 'ಈಗ ಸ್ಥಾಪಿಸಿ';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return '$DISTRO ಅನ್ನು ಎಲ್ಲಿ ಸ್ಥಾಪಿಸಬೇಕು ಎಂಬುದನ್ನು ಆರಿಸಿ';
  }

  @override
  String get installAlongsideSpaceDivider =>
      'ಕೆಳಗಿನ ವಿಭಾಜಕವನ್ನು ಎಳೆಯುವ ಮೂಲಕ ಡ್ರೈವ್ ಜಾಗವನ್ನು ನಿಯೋಜಿಸಿ:';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return '$num ಚಿಕ್ಕ ವಿಭಾಗಗಳನ್ನು ಮರೆಮಾಡಲಾಗಿದೆ, ಹೆಚ್ಚಿನ ನಿಯಂತ್ರಣಕ್ಕಾಗಿ <a href=\"$url\">ಸುಧಾರಿತ ವಿಭಜನಾ ಉಪಕರಣವನ್ನು</a> ಬಳಸಿ';
  }

  @override
  String get installAlongsideResizePartition => 'ವಿಭಾಗವನ್ನು ಮರುಗಾತ್ರಗೊಳಿಸಿ';

  @override
  String get installAlongsideAllocateSpace => 'ಜಾಗವನ್ನು ನಿಗದಿಪಡಿಸಿ';

  @override
  String get installAlongsideFiles => 'ಫೈಲ್‌ಗಳು';

  @override
  String get installAlongsidePartition => 'ವಿಭಜನೆ:';

  @override
  String get installAlongsideSize => 'ಗಾತ್ರ:';

  @override
  String get installAlongsideAvailable => 'ಲಭ್ಯವಿದೆ:';

  @override
  String get allocateDiskSpace => 'ಹಸ್ತಚಾಲಿತ ವಿಭಜನೆ';

  @override
  String get allocateDiskSpaceInvalidMountPointSlash =>
      'ಮೌಂಟ್ ಪಾಯಿಂಟ್‌ಗಳು \"/\" ನೊಂದಿಗೆ ಪ್ರಾರಂಭವಾಗಬೇಕು';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace =>
      'ಮೌಂಟ್ ಪಾಯಿಂಟ್‌ಗಳು ಜಾಗವನ್ನು ಹೊಂದಿರಬಾರದು';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(
      String mountpoint, String format) {
    return '$format ಎಂಬುದು $mountpoint ಗಾಗಿ ಬೆಂಬಲಿತ ಫೈಲ್ ಸಿಸ್ಟಂ ಅಲ್ಲ';
  }

  @override
  String get diskHeadersDevice => 'ಸಾಧನ';

  @override
  String get diskHeadersType => 'ಟೈಪ್ ಮಾಡಿ';

  @override
  String get diskHeadersMountPoint => 'ಮೌಂಟ್ ಪಾಯಿಂಟ್';

  @override
  String get diskHeadersSize => 'ಗಾತ್ರ';

  @override
  String get diskHeadersUsed => 'ಬಳಸಲಾಗಿದೆ';

  @override
  String get diskHeadersSystem => 'ವ್ಯವಸ್ಥೆ';

  @override
  String get diskHeadersFormat => 'ಫಾರ್ಮ್ಯಾಟ್';

  @override
  String get freeDiskSpace => 'ಮುಕ್ತ ಸ್ಥಳ';

  @override
  String get newPartitionTable => 'ಹೊಸ ವಿಭಜನಾ ಕೋಷ್ಟಕ';

  @override
  String get newPartitionTableConfirmationTitle => 'ಹೊಸ ಖಾಲಿ ವಿಭಾಗ';

  @override
  String get newPartitionTableConfirmationMessage =>
      'ಸಂಪೂರ್ಣ ಸಾಧನದಲ್ಲಿ ಹೊಸ ವಿಭಜನಾ ಕೋಷ್ಟಕವನ್ನು ರಚಿಸುವುದು ಅದರ ಎಲ್ಲಾ ಪ್ರಸ್ತುತ ವಿಭಾಗಗಳನ್ನು ತೆಗೆದುಹಾಕುತ್ತದೆ. ಅಗತ್ಯವಿದ್ದರೆ ಈ ಕಾರ್ಯಾಚರಣೆಯನ್ನು ರದ್ದುಗೊಳಿಸಬಹುದು.';

  @override
  String get tooManyPrimaryPartitions => 'ಹಲವಾರು ಪ್ರಾಥಮಿಕ ವಿಭಾಗಗಳು';

  @override
  String get partitionLimitReached => 'ಮಿತಿಯನ್ನು ತಲುಪಿದೆ';

  @override
  String get bootLoaderDevice => 'ಬೂಟ್ ಲೋಡರ್ ಅನುಸ್ಥಾಪನೆಗೆ ಸಾಧನ';

  @override
  String get partitionCreateTitle => 'ವಿಭಾಗವನ್ನು ರಚಿಸಿ';

  @override
  String get partitionEditTitle => 'ವಿಭಾಗವನ್ನು ಸಂಪಾದಿಸಿ';

  @override
  String get partitionSizeLabel => 'ಗಾತ್ರ:';

  @override
  String get partitionTypeLabel => 'ಹೊಸ ವಿಭಾಗಕ್ಕಾಗಿ ಟೈಪ್ ಮಾಡಿ:';

  @override
  String get partitionTypePrimary => 'ಪ್ರಾಥಮಿಕ';

  @override
  String get partitionTypeLogical => 'ತಾರ್ಕಿಕ';

  @override
  String get partitionLocationLabel => 'ಹೊಸ ವಿಭಾಗದ ಸ್ಥಳ:';

  @override
  String get partitionLocationBeginning => 'ಈ ಜಾಗದ ಆರಂಭ';

  @override
  String get partitionLocationEnd => 'ಈ ಜಾಗದ ಅಂತ್ಯ';

  @override
  String get partitionFormatLabel => 'ಹೀಗೆ ಬಳಸಲಾಗಿದೆ:';

  @override
  String get partitionFormatNone => 'ಫಾರ್ಮ್ಯಾಟ್ ಮಾಡದೆ ಬಿಡಿ';

  @override
  String partitionFormatKeep(String format) {
    return '$format ನಂತೆ ಫಾರ್ಮ್ಯಾಟ್ ಮಾಡುವುದನ್ನು ಬಿಡಿ';
  }

  @override
  String get partitionErase => 'ವಿಭಾಗವನ್ನು ಫಾರ್ಮ್ಯಾಟ್ ಮಾಡಿ';

  @override
  String get partitionMountPointLabel => 'ಮೌಂಟ್ ಪಾಯಿಂಟ್:';

  @override
  String get confirmPageTitle => 'ಸ್ಥಾಪಿಸಲು ಸಿದ್ಧವಾಗಿದೆ';

  @override
  String get confirmHeader => 'ನಿಮ್ಮ ಆಯ್ಕೆಗಳನ್ನು ಪರಿಶೀಲಿಸಿ';

  @override
  String get confirmDiskEncryptionLVM => 'LUKS (LVM)';

  @override
  String get confirmDiskEncryptionZFS => 'LUKS (ZFS)';

  @override
  String get confirmDiskEncryptionTPM => 'TPM';

  @override
  String get confirmDiskEncryptionNone => 'ಯಾವುದೂ ಇಲ್ಲ';

  @override
  String get confirmDevicesTitle => 'ಸಾಧನಗಳು';

  @override
  String get confirmEntryApplications => 'ಅಪ್ಲಿಕೇಶನ್‌ಗಳು';

  @override
  String get confirmEntryDiskSetup => 'ಅನುಸ್ಥಾಪನೆಯ ಪ್ರಕಾರ';

  @override
  String get confirmEntryDiskEncryption => 'ಡಿಸ್ಕ್ ಎನ್ಕ್ರಿಪ್ಶನ್';

  @override
  String get confirmEntryInstallationDisk => 'ಅನುಸ್ಥಾಪನ ಡಿಸ್ಕ್';

  @override
  String get confirmEntryProprietarySoftware => 'ಸ್ವಾಮ್ಯದ ಸಾಫ್ಟ್‌ವೇರ್';

  @override
  String get confirmSectionGeneralTitle => 'ಸಾಮಾನ್ಯಸಾಮಾನ್ಯ';

  @override
  String get confirmSectionSecurityAndMoreTitle => 'ಭದ್ರತೆಭದ್ರತೆ';

  @override
  String get confirmPartitionsTitle => 'ವಿಭಜನೆಗಳು';

  @override
  String get confirmPartitionTables =>
      'ಕೆಳಗಿನ ಸಾಧನಗಳ ವಿಭಜನಾ ಕೋಷ್ಟಕಗಳನ್ನು ಬದಲಾಯಿಸಲಾಗಿದೆ:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmProprietarySoftwareCodecs => 'ಕೊಡೆಕ್‌ಗಳು';

  @override
  String get confirmProprietarySoftwareCodecsDrivers => 'ಕೊಡೆಕ್‌ಗಳುಕೊಡೆಕ್‌ಗಳು';

  @override
  String get confirmProprietarySoftwareDrivers => 'ಚಾಲಕರು';

  @override
  String get confirmInstallButton => 'ಸ್ಥಾಪಿಸಿ';

  @override
  String get confirmTableErased => 'ಅಳಿಸಲಾಗಿದೆ';

  @override
  String get confirmTableUnchanged => 'ಬದಲಾಗದೆ';

  @override
  String confirmTableResized(String oldsize, String newsize) {
    return '$oldsize ನಿಂದ $newsize ಗೆ ಮರುಗಾತ್ರಗೊಳಿಸಲಾಗಿದೆ';
  }

  @override
  String confirmTableCreatedFormattedMounted(String format, String mountpoint) {
    return '$mountpoint ಗಾಗಿ ಬಳಸಲಾದ $format ನಂತೆ ರಚಿಸಲಾಗಿದೆ ಮತ್ತು ಫಾರ್ಮ್ಯಾಟ್ ಮಾಡಲಾಗಿದೆ';
  }

  @override
  String confirmTableFormattedMounted(String format, String mountpoint) {
    return '$mountpoint ಗಾಗಿ ಬಳಸಲಾದ $format ನಂತೆ ಫಾರ್ಮ್ಯಾಟ್ ಮಾಡಲಾಗಿದೆ';
  }

  @override
  String confirmTableMounted(String mountpoint) {
    return '$mountpoint ಗಾಗಿ ಬಳಸಲಾಗಿದೆ';
  }

  @override
  String confirmTableFormatted(String format) {
    return '$format ನಂತೆ ಫಾರ್ಮ್ಯಾಟ್ ಮಾಡಲಾಗಿದೆ';
  }

  @override
  String get installationCompleteTitle => 'ಅನುಸ್ಥಾಪನೆಯು ಪೂರ್ಣಗೊಂಡಿದೆ';

  @override
  String readyToUse(String system) {
    return '$system ಅನ್ನು ಸ್ಥಾಪಿಸಲಾಗಿದೆ ಮತ್ತು ಬಳಸಲು ಸಿದ್ಧವಾಗಿದೆ';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system** ಅನ್ನು ಡಿಸ್ಕ್‌ಗೆ ನಕಲಿಸಲಾಗಿದೆ';
  }

  @override
  String restartInto(String system) {
    return '$system ಗೆ ಮರುಪ್ರಾರಂಭಿಸಿ';
  }

  @override
  String get restartWarningBody =>
      'ಅನುಸ್ಥಾಪನೆಯನ್ನು ಪೂರ್ಣಗೊಳಿಸಲು ಅಥವಾ ಪರೀಕ್ಷೆಯನ್ನು ಮುಂದುವರಿಸಲು ಮರುಪ್ರಾರಂಭಿಸಿ. ನೀವು ಮಾಡುವ ಯಾವುದೇ ಬದಲಾವಣೆಗಳನ್ನು ಉಳಿಸಲಾಗುವುದಿಲ್ಲ.';

  @override
  String get rebootToConfigureWarning =>
      'ಅನುಸ್ಥಾಪನಾ ಪ್ರಕ್ರಿಯೆಯನ್ನು ಮುಂದುವರಿಸಲು ನೀವು ಕಂಪ್ಯೂಟರ್ ಅನ್ನು ಮರುಪ್ರಾರಂಭಿಸಬೇಕು.';

  @override
  String get shutdown => 'ಸ್ಥಗಿತಗೊಳಿಸಿ';

  @override
  String get restartNow => 'ಈಗ ಮರುಪ್ರಾರಂಭಿಸಿ';

  @override
  String get continueTesting => 'ಪರೀಕ್ಷೆಯನ್ನು ಮುಂದುವರಿಸಿ';

  @override
  String get bitlockerInfoTitle => 'ಬಿಟ್‌ಲಾಕರ್ ಪತ್ತೆಯಾಗಿದೆ';

  @override
  String get bitlockerInfoDescription =>
      'ಒಂದು ಅಥವಾ ಹೆಚ್ಚಿನ ವಿಭಾಗಗಳನ್ನು ಬಿಟ್‌ಲಾಕರ್‌ನೊಂದಿಗೆ ಎನ್‌ಕ್ರಿಪ್ಟ್ ಮಾಡಲಾಗಿದೆ.';

  @override
  String get bitlockerInfoDisable =>
      'ವಿಂಡೋಸ್ ಜೊತೆಗೆ ಸ್ಥಾಪಿಸಲು, ವಿಂಡೋಸ್‌ನಲ್ಲಿ ಬಿಟ್‌ಲಾಕರ್ ಅನ್ನು ನಿಷ್ಕ್ರಿಯಗೊಳಿಸಿ.';

  @override
  String get bitlockerInfoRecovery =>
      'ಅನುಸ್ಥಾಪನೆಯ ನಂತರ ಬೂಟ್‌ನಲ್ಲಿ ವಿಂಡೋಸ್ ಮರುಪ್ರಾಪ್ತಿ ಕೀಗಳನ್ನು ವಿನಂತಿಸಬಹುದು.';

  @override
  String bitlockerInfoInstructions(String url) {
    return 'ಸೂಚನೆಗಳಿಗಾಗಿ, <a href=\"$url\">BitLocker ಮಾರ್ಗದರ್ಶಿ</a> ಅನ್ನು ಭೇಟಿ ಮಾಡಿ.';
  }

  @override
  String get bitlockerWarningTitle =>
      'ಬಿಟ್‌ಲಾಕರ್ ಮರುಪ್ರಾಪ್ತಿ ಕೀಗಳಿಲ್ಲದೆ ನಿಮ್ಮ ಎಲ್ಲಾ ಡೇಟಾವನ್ನು ನೀವು ಕಳೆದುಕೊಳ್ಳಬಹುದು';

  @override
  String get restartComputer => 'ಕಂಪ್ಯೂಟರ್ ಅನ್ನು ಮರುಪ್ರಾರಂಭಿಸಿ';

  @override
  String get restartComputerTitle => 'ಕಂಪ್ಯೂಟರ್ ಅನ್ನು ಮರುಪ್ರಾರಂಭಿಸುವುದೇ?';

  @override
  String get restartInstaller => 'Restart installer';

  @override
  String get restartIntoWindows => 'ವಿಂಡೋಸ್‌ಗೆ ಮರುಪ್ರಾರಂಭಿಸಿ';

  @override
  String get restartIntoWindowsTitle => 'ವಿಂಡೋಸ್‌ಗೆ ಮರುಪ್ರಾರಂಭಿಸುವುದೇ?';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return 'ನಿಮ್ಮ ಕಂಪ್ಯೂಟರ್ ಅನ್ನು ಮರುಪ್ರಾರಂಭಿಸಲು ನೀವು ಖಚಿತವಾಗಿ ಬಯಸುವಿರಾ? $DISTRO ಅನ್ನು ಸ್ಥಾಪಿಸುವುದನ್ನು ಪೂರ್ಣಗೊಳಿಸಲು ನೀವು ನಂತರ $DISTRO ಸ್ಥಾಪನೆಯನ್ನು ಮರುಪ್ರಾರಂಭಿಸಬೇಕಾಗುತ್ತದೆ.';
  }

  @override
  String installationSlidesTitle(String RELEASE) {
    return '$RELEASE ಗೆ ಸುಸ್ವಾಗತ';
  }

  @override
  String get installationSlidesAvailable => 'ಲಭ್ಯವಿದೆ:';

  @override
  String get installationSlidesIncluded => 'ಒಳಗೊಂಡಿದೆ:';

  @override
  String get installationSlidesWelcomeTitle =>
      'ವೇಗವಾದ, ಉಚಿತ ಮತ್ತು ಹೊಸ ವೈಶಿಷ್ಟ್ಯಗಳ ಪೂರ್ಣ';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return '$DISTRO ನ ಇತ್ತೀಚಿನ ಆವೃತ್ತಿಯು ಕಂಪ್ಯೂಟಿಂಗ್ ಅನ್ನು ಎಂದಿಗಿಂತಲೂ ಸುಲಭಗೊಳಿಸುತ್ತದೆ.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'ನೀವು ಡೆವಲಪರ್, ರಚನೆಕಾರ, ಗೇಮರ್ ಅಥವಾ ನಿರ್ವಾಹಕರಾಗಿರಲಿ, ನಿಮ್ಮ ಉತ್ಪಾದಕತೆಯನ್ನು ಸುಧಾರಿಸಲು ಮತ್ತು $RELEASE ನಲ್ಲಿ ನಿಮ್ಮ ಅನುಭವವನ್ನು ಹೆಚ್ಚಿಸಲು ಹೊಸ ಪರಿಕರಗಳನ್ನು ನೀವು ಕಾಣಬಹುದು.';
  }

  @override
  String get installationSlidesSoftwareTitle =>
      'ನಿಮಗೆ ಅಗತ್ಯವಿರುವ ಎಲ್ಲಾ ಅಪ್ಲಿಕೇಶನ್‌ಗಳು';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'ಸ್ನ್ಯಾಪ್ ಸ್ಟೋರ್ ಮತ್ತು $DISTRO ಆರ್ಕೈವ್ ಎರಡರಿಂದಲೂ ಸಾವಿರಾರು ಅಪ್ಲಿಕೇಶನ್‌ಗಳನ್ನು ಒಳಗೊಂಡಂತೆ ಉಬುಂಟು ಸಾಫ್ಟ್‌ವೇರ್‌ನಲ್ಲಿ ನಿಮ್ಮ ಎಲ್ಲಾ ಅಪ್ಲಿಕೇಶನ್‌ಗಳನ್ನು ಸ್ಥಾಪಿಸಿ, ನಿರ್ವಹಿಸಿ ಮತ್ತು ನವೀಕರಿಸಿ.';
  }

  @override
  String get installationSlidesDevelopmentTitle =>
      'ಅತ್ಯುತ್ತಮ ತೆರೆದ ಮೂಲದೊಂದಿಗೆ ಅಭಿವೃದ್ಧಿಪಡಿಸಿ';

  @override
  String installationSlidesDevelopmentBody(String DISTRO, Object OS) {
    return 'ಈ ಕಂಪ್ಯೂಟರ್ ಪ್ರಸ್ತುತ \$$OS ಅನ್ನು ಹೊಂದಿದೆ. ನೀವು ಏನು ಮಾಡಲು ಬಯಸುತ್ತೀರಿ?ಅಪ್ಲಿಕೇಶನ್ ಅಥವಾ ವೆಬ್ ಅಭಿವೃದ್ಧಿ, ಡೇಟಾ ಸೈನ್ಸ್ ಮತ್ತು AI/ML ಹಾಗೂ devops ಮತ್ತು ಆಡಳಿತಕ್ಕಾಗಿ $DISTRO ಆದರ್ಶ ಕಾರ್ಯಸ್ಥಳವಾಗಿದೆ. ಪ್ರತಿ $DISTRO ಬಿಡುಗಡೆಯು ಇತ್ತೀಚಿನ ಟೂಲ್‌ಚೇನ್‌ಗಳನ್ನು ಒಳಗೊಂಡಿರುತ್ತದೆ ಮತ್ತು ಎಲ್ಲಾ ಪ್ರಮುಖ IDE ಗಳನ್ನು ಬೆಂಬಲಿಸುತ್ತದೆ.';
  }

  @override
  String get installationSlidesCreativityTitle =>
      'ನಿಮ್ಮ ಸೃಜನಶೀಲತೆಯನ್ನು ಹೆಚ್ಚಿಸಿ';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return 'ನೀವು ಆನಿಮೇಟರ್, ಡಿಸೈನರ್, ವೀಡಿಯೊ ರಚನೆಕಾರರು ಅಥವಾ ಗೇಮ್ ಡೆವಲಪರ್ ಆಗಿದ್ದರೆ ಓಪನ್ ಸೋರ್ಸ್ ಮತ್ತು ಇಂಡಸ್ಟ್ರಿ ಸ್ಟ್ಯಾಂಡರ್ಡ್ ಸಾಫ್ಟ್‌ವೇರ್ ಮತ್ತು ಅಪ್ಲಿಕೇಶನ್‌ಗಳಿಗೆ ಬೆಂಬಲದೊಂದಿಗೆ ನಿಮ್ಮ ವರ್ಕ್‌ಫ್ಲೋಗಳನ್ನು $DISTRO ಗೆ ತರಲು ಸುಲಭವಾಗಿದೆ.';
  }

  @override
  String get installationSlidesGamingTitle => 'ಗೇಮಿಂಗ್‌ಗೆ ಅದ್ಭುತವಾಗಿದೆ';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return 'ಕಾರ್ಯಕ್ಷಮತೆ ಮತ್ತು ಹೊಂದಾಣಿಕೆಯನ್ನು ಸುಧಾರಿಸಲು $DISTRO ಇತ್ತೀಚಿನ NVIDIA ಮತ್ತು Mesa ಡ್ರೈವರ್‌ಗಳನ್ನು ಬೆಂಬಲಿಸುತ್ತದೆ. ಯಾವುದೇ ಹೆಚ್ಚುವರಿ ಕಾನ್ಫಿಗರೇಶನ್ ಇಲ್ಲದ ಸ್ಟೀಮ್‌ನಂತಹ ಅಪ್ಲಿಕೇಶನ್‌ಗಳ ಮೂಲಕ $DISTRO ನಲ್ಲಿ ಸಾವಿರಾರು ವಿಂಡೋಸ್ ಶೀರ್ಷಿಕೆಗಳು ಉತ್ತಮವಾಗಿ ಪ್ಲೇ ಆಗುತ್ತವೆ.';
  }

  @override
  String get installationSlidesSecurityTitle => 'ಖಾಸಗಿ ಮತ್ತು ಸುರಕ್ಷಿತ';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return 'ಆನ್‌ಲೈನ್‌ನಲ್ಲಿ ಖಾಸಗಿಯಾಗಿ ಮತ್ತು ಸುರಕ್ಷಿತವಾಗಿರಲು ನಿಮಗೆ ಅಗತ್ಯವಿರುವ ಎಲ್ಲಾ ಪರಿಕರಗಳನ್ನು $DISTRO ಒದಗಿಸುತ್ತದೆ. ಅಂತರ್ನಿರ್ಮಿತ ಫೈರ್‌ವಾಲ್ ಮತ್ತು VPN ಬೆಂಬಲ ಮತ್ತು ನಿಮ್ಮ ಡೇಟಾದ ಸಂಪೂರ್ಣ ನಿಯಂತ್ರಣವನ್ನು ನೀವು ಖಚಿತಪಡಿಸಿಕೊಳ್ಳಲು ಗೌಪ್ಯತೆ-ಕೇಂದ್ರಿತ ಅಪ್ಲಿಕೇಶನ್‌ಗಳ ಹೋಸ್ಟ್‌ನೊಂದಿಗೆ.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return 'ಎಲ್ಲಾ $DISTRO LTS ಬಿಡುಗಡೆಗಳು ಐದು ವರ್ಷಗಳ ಭದ್ರತಾ ಪ್ಯಾಚಿಂಗ್‌ನೊಂದಿಗೆ ಬರುತ್ತವೆ, ಉಬುಂಟು ಪ್ರೊ ಚಂದಾದಾರಿಕೆಯೊಂದಿಗೆ ಹತ್ತು ವರ್ಷಗಳವರೆಗೆ ವಿಸ್ತರಿಸುತ್ತವೆ.';
  }

  @override
  String get installationSlidesProductivityTitle =>
      'ನಿಮ್ಮ ಉತ್ಪಾದಕತೆಯನ್ನು ಹೆಚ್ಚಿಸಿ';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return '$DISTRO ಡೆಸ್ಕ್‌ಟಾಪ್ LibreOffice ಅನ್ನು ಒಳಗೊಂಡಿದೆ, ಡಾಕ್ಯುಮೆಂಟ್‌ಗಳು, ಸ್ಪ್ರೆಡ್‌ಶೀಟ್‌ಗಳು ಮತ್ತು ಪ್ರಸ್ತುತಿಗಳಿಗಾಗಿ Microsoft Office ಹೊಂದಾಣಿಕೆಯ ಮುಕ್ತ ಮೂಲ ಅಪ್ಲಿಕೇಶನ್‌ಗಳ ಸೂಟ್. ಜನಪ್ರಿಯ ಸಹಯೋಗ ಸಾಧನಗಳು ಸಹ ಲಭ್ಯವಿದೆ.';
  }

  @override
  String get installationSlidesAccessibilityTitle => 'ಎಲ್ಲರಿಗೂ ಪ್ರವೇಶ';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return '$DISTRO ತತ್ವಶಾಸ್ತ್ರದ ಹೃದಯಭಾಗದಲ್ಲಿ ಕಂಪ್ಯೂಟಿಂಗ್ ಪ್ರತಿಯೊಬ್ಬರಿಗೂ ಆಗಿದೆ ಎಂಬ ನಂಬಿಕೆಯಾಗಿದೆ. ಸುಧಾರಿತ ಪ್ರವೇಶಿಸುವಿಕೆ ಪರಿಕರಗಳು ಮತ್ತು ಭಾಷೆ, ಬಣ್ಣಗಳು ಮತ್ತು ಪಠ್ಯ ಗಾತ್ರವನ್ನು ಬದಲಾಯಿಸುವ ಆಯ್ಕೆಗಳೊಂದಿಗೆ, $DISTRO ಕಂಪ್ಯೂಟಿಂಗ್ ಅನ್ನು ಸುಲಭಗೊಳಿಸುತ್ತದೆ - ನೀವು ಯಾರೇ ಮತ್ತು ಎಲ್ಲಿದ್ದರೂ.';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'ಓರ್ಕಾ ಸ್ಕ್ರೀನ್ ರೀಡರ್';

  @override
  String get installationSlidesAccessibilityLanguages => 'ಭಾಷಾ ಬೆಂಬಲ';

  @override
  String get installationSlidesSupportTitle => 'ಸಹಾಯ ಮತ್ತು ಬೆಂಬಲ';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return 'ಅಧಿಕೃತ $DISTRO ದಸ್ತಾವೇಜನ್ನು ಆನ್‌ಲೈನ್‌ನಲ್ಲಿ ಮತ್ತು ಡಾಕ್‌ನಲ್ಲಿರುವ ಸಹಾಯ ಐಕಾನ್ ಮೂಲಕ ಲಭ್ಯವಿದೆ.';
  }

  @override
  String get installationSlidesSupportCommunity =>
      'Ask Ubuntu ಹಲವಾರು ಪ್ರಶ್ನೆಗಳು ಮತ್ತು ಪ್ರತಿಕ್ರಿಯೆಗಳನ್ನು ಒಳಗೊಂಡಿದೆ ಮತ್ತು ಉಬುಂಟು ಡಿಸ್ಕೋರ್ಸ್ ಹೊಸ ಮತ್ತು ಅನುಭವಿ ಬಳಕೆದಾರರಿಗೆ ಮಾರ್ಗದರ್ಶಿಗಳು ಮತ್ತು ಚರ್ಚೆಗಳನ್ನು ಒದಗಿಸುತ್ತದೆ.';

  @override
  String get installationSlidesSupportEnterprise =>
      'ಎಂಟರ್‌ಪ್ರೈಸ್ ಬಳಕೆದಾರರಿಗೆ ಕೆನೊನಿಕಲ್ ವಾಣಿಜ್ಯ ಬೆಂಬಲವನ್ನು ಒದಗಿಸುತ್ತದೆ ಮತ್ತು ಕೆಲಸದ ಸ್ಥಳದಲ್ಲಿ ಸುರಕ್ಷಿತವಾಗಿ ಉಬುಂಟು ಅನ್ನು ಆನ್‌ಬೋರ್ಡ್ ಮಾಡಲು ಮತ್ತು ನಿರ್ವಹಿಸಲು ಸುಲಭವಾಗುತ್ತದೆ.';

  @override
  String get installationSlidesSupportResources => 'ಸಹಾಯಕ ಸಂಪನ್ಮೂಲಗಳು:';

  @override
  String get installationSlidesSupportDocumentation => 'ಅಧಿಕೃತ ದಸ್ತಾವೇಜನ್ನು';

  @override
  String get installationSlidesSupportUbuntuPro =>
      'ಉಬುಂಟು ಪ್ರೊನೊಂದಿಗೆ ಎಂಟರ್‌ಪ್ರೈಸ್-ಗ್ರೇಡ್ 24/7 ಬೆಂಬಲ';

  @override
  String get nextSlideSemanticLabel => 'ಮುಂದಿನ ಸ್ಲೈಡ್';

  @override
  String get previousSlideSemanticLabel => 'ಹಿಂದಿನ ಸ್ಲೈಡ್';

  @override
  String get playSlideshowSemanticLabel => 'ಸ್ಲೈಡ್‌ಶೋ ಪ್ಲೇ ಮಾಡಿ';

  @override
  String get pauseSlideshowSemanticLabel => 'ಸ್ಲೈಡ್‌ಶೋ ವಿರಾಮಗೊಳಿಸಿ';

  @override
  String get toggleLogsSemanticLabel => 'ಇನ್‌ಸ್ಟಾಲ್ ಲಾಗ್‌ಗಳನ್ನು ಟಾಗಲ್ ಮಾಡಿ';

  @override
  String get copyingFiles => 'ಫೈಲ್‌ಗಳನ್ನು ನಕಲಿಸಲಾಗುತ್ತಿದೆ…';

  @override
  String get installingSystem =>
      'ಅನುಸ್ಥಾಪನೆಯು ಹೆಚ್ಚು ಸಮಯ ತೆಗೆದುಕೊಳ್ಳಬಹುದು.ಸಿಸ್ಟಮ್ ಅನ್ನು ಸ್ಥಾಪಿಸಲಾಗುತ್ತಿದೆ…';

  @override
  String get configuringSystem => 'ವ್ಯವಸ್ಥೆಯನ್ನು ಹೊಂದಿಸಲಾಗುತ್ತಿದೆ…';

  @override
  String get installationFailed => 'ಅನುಸ್ಥಾಪನೆಯು ವಿಫಲವಾಗಿದೆ';

  @override
  String get notEnoughDiskSpaceTitle => 'ಸಾಕಷ್ಟು ಡಿಸ್ಕ್ ಸ್ಥಳವಿಲ್ಲ';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return '$DISTRO ಅನ್ನು ಸ್ಥಾಪಿಸಲು ಸಾಕಷ್ಟು ಡಿಸ್ಕ್ ಸ್ಥಳವಿಲ್ಲ';
  }

  @override
  String notEnoughDiskSpaceBody(String DISTRO) {
    return 'ಆಯ್ಕೆಮಾಡಿದ ಡಿಸ್ಕ್ $DISTRO ಅನ್ನು ಸ್ಥಾಪಿಸಲು ಸಾಕಷ್ಟು ಡಿಸ್ಕ್ ಸ್ಥಳವನ್ನು ಹೊಂದಿಲ್ಲ. ಜಾಗವನ್ನು ಲಭ್ಯವಾಗುವಂತೆ ಮಾಡಲು ಅನುಸ್ಥಾಪಕವನ್ನು ತ್ಯಜಿಸಿ ಅಥವಾ ಇನ್ನೊಂದು ಡಿಸ್ಕ್ ಅನ್ನು ಆಯ್ಕೆ ಮಾಡಿ.';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'ಲಭ್ಯವಿದೆ:';

  @override
  String get notEnoughDiskSpaceRequired => 'ಅಗತ್ಯವಿದೆ:';

  @override
  String get refreshPageTitle => 'ನವೀಕರಣ ಲಭ್ಯವಿದೆ';

  @override
  String get refreshHeader => 'ಸ್ಥಾಪಕಕ್ಕೆ ನವೀಕರಣ ಲಭ್ಯವಿದೆ';

  @override
  String get refreshUpdateNow => 'ಈಗ ನವೀಕರಿಸಿ';

  @override
  String get refreshInfo =>
      'ಸುಧಾರಿತ ವಿಶ್ವಾಸಾರ್ಹತೆ ಮತ್ತು ಹೆಚ್ಚಿನ ವೈಶಿಷ್ಟ್ಯಗಳಿಗಾಗಿ ಇತ್ತೀಚಿನ ಆವೃತ್ತಿಗೆ ನವೀಕರಿಸಿ.';

  @override
  String get refreshReady => 'ನವೀಕರಣ ಸಿದ್ಧವಾಗಿದೆ';

  @override
  String refreshCurrent(String snap, String version) {
    return 'ಪ್ರಸ್ತುತ $snap ಆವೃತ್ತಿಯು $version ಆಗಿದೆ.';
  }

  @override
  String refreshInstall(String version) {
    return 'ಆವೃತ್ತಿ $version ಗೆ ನವೀಕರಿಸಿ';
  }

  @override
  String refreshUpToDate(String version) {
    return 'ಪ್ರಸ್ತುತ ಆವೃತ್ತಿ $version ಅಪ್-ಟು-ಡೇಟ್ ಆಗಿದೆ.';
  }

  @override
  String refreshUpdating(String snap) {
    return '$snap ಅನ್ನು ನವೀಕರಿಸಲಾಗುತ್ತಿದೆ...';
  }

  @override
  String get refreshRestart =>
      'ದಯವಿಟ್ಟು ಸ್ಥಾಪಕವನ್ನು ಮುಚ್ಚಿ ಮತ್ತು ಮುಂದುವರೆಯಲು ಮರುಪ್ರಾರಂಭಿಸಿ';

  @override
  String get refreshCloseLabel => 'ಅನುಸ್ಥಾಪಕವನ್ನು ಮುಚ್ಚಿ';

  @override
  String refreshSnapPrerequisites(String snap) {
    return '$snap ಪೂರ್ವಾಪೇಕ್ಷಿತಗಳನ್ನು ಖಚಿತಪಡಿಸಿಕೊಳ್ಳಲಾಗುತ್ತಿದೆ...';
  }

  @override
  String refreshSnapRefresh(String snap) {
    return 'ರಿಫ್ರೆಶ್ ಆಗುತ್ತಿದೆ $snap...';
  }

  @override
  String refreshSnapCheckRerefresh(String snap) {
    return '$snap ಮರು-ರಿಫ್ರೆಶ್ ಅನ್ನು ಪರಿಶೀಲಿಸಲಾಗುತ್ತಿದೆ...';
  }

  @override
  String refreshSnapPrepare(String snap) {
    return '$snap ಸಿದ್ಧಪಡಿಸಲಾಗುತ್ತಿದೆ...';
  }

  @override
  String refreshSnapDownload(String snap) {
    return 'ಡೌನ್‌ಲೋಡ್ ಮಾಡಲಾಗುತ್ತಿದೆ $snap...';
  }

  @override
  String refreshSnapValidate(String snap) {
    return 'ಮೌಲ್ಯೀಕರಿಸಲಾಗುತ್ತಿದೆ $snap...';
  }

  @override
  String refreshSnapMount(String snap) {
    return 'ಆರೋಹಿಸಲಾಗುತ್ತಿದೆ $snap...';
  }

  @override
  String refreshSnapStopServices(String snap) {
    return '$snap ಸೇವೆಗಳನ್ನು ನಿಲ್ಲಿಸಲಾಗುತ್ತಿದೆ...';
  }

  @override
  String refreshSnapRemoveAliases(String snap) {
    return '$snap ಅಲಿಯಾಸ್‌ಗಳನ್ನು ತೆಗೆದುಹಾಕಲಾಗುತ್ತಿದೆ...';
  }

  @override
  String refreshSnapUnlink(String snap) {
    return 'ಅನ್‌ಲಿಂಕ್ ಮಾಡಲಾಗುತ್ತಿದೆ $snap...';
  }

  @override
  String refreshSnapUpdateAssets(String snap) {
    return '$snap ಸ್ವತ್ತುಗಳನ್ನು ನವೀಕರಿಸಲಾಗುತ್ತಿದೆ...';
  }

  @override
  String refreshSnapUpdateKernelCommandLine(String snap) {
    return '$snap ಕರ್ನಲ್ ಕಮಾಂಡ್ ಲೈನ್ ಅನ್ನು ನವೀಕರಿಸಲಾಗುತ್ತಿದೆ...';
  }

  @override
  String refreshSnapCopyData(String snap) {
    return '$snap ಡೇಟಾವನ್ನು ನಕಲಿಸಲಾಗುತ್ತಿದೆ...';
  }

  @override
  String refreshSnapSetupProfiles(String snap) {
    return '$snap ಭದ್ರತಾ ಪ್ರೊಫೈಲ್‌ಗಳನ್ನು ಹೊಂದಿಸಲಾಗುತ್ತಿದೆ...';
  }

  @override
  String refreshSnapLink(String snap) {
    return 'ಲಿಂಕ್ ಮಾಡಲಾಗುತ್ತಿದೆ $snap...';
  }

  @override
  String refreshSnapAutoConnect(String snap) {
    return '$snap ಪ್ಲಗ್‌ಗಳು ಮತ್ತು ಸ್ಲಾಟ್‌ಗಳನ್ನು ಸಂಪರ್ಕಿಸಲಾಗುತ್ತಿದೆ...';
  }

  @override
  String refreshSnapSetAutoAliases(String snap) {
    return 'ಸ್ವಯಂಚಾಲಿತ $snap ಅಲಿಯಾಸ್‌ಗಳನ್ನು ಹೊಂದಿಸಲಾಗುತ್ತಿದೆ...';
  }

  @override
  String refreshSnapSetupAliases(String snap) {
    return '$snap ಅಲಿಯಾಸ್‌ಗಳನ್ನು ಹೊಂದಿಸಲಾಗುತ್ತಿದೆ...';
  }

  @override
  String refreshSnapStartServices(String snap) {
    return '$snap ಸೇವೆಗಳನ್ನು ಪ್ರಾರಂಭಿಸಲಾಗುತ್ತಿದೆ...';
  }

  @override
  String refreshSnapCleanup(String snap) {
    return '$snap ಅನ್ನು ಸ್ವಚ್ಛಗೊಳಿಸಲಾಗುತ್ತಿದೆ...';
  }

  @override
  String get recoveryKeyTitle => 'ರಿಕವರಿ ಕೀ';

  @override
  String get recoveryKeyTitleBadgeLabel => 'ಪ್ರಮುಖ';

  @override
  String get recoveryKeyHeader => 'ನಿಮ್ಮ ಮರುಪ್ರಾಪ್ತಿ ಕೀಯನ್ನು ಉಳಿಸಿ';

  @override
  String get recoveryKeyInfoHeader =>
      'ಮರುಪ್ರಾಪ್ತಿ ಕೀ ಇಲ್ಲದೆಯೇ ನಿಮ್ಮ ಎಲ್ಲಾ ಡೇಟಾವನ್ನು ನೀವು ಕಳೆದುಕೊಳ್ಳಬಹುದು';

  @override
  String get recoveryKeyTextFieldLabel => 'ರಿಕವರಿ ಕೀ';

  @override
  String get recoveryKeyStorageAdvice =>
      'ಪ್ರಾರಂಭದ ಸಮಯದಲ್ಲಿ ಡೀಕ್ರಿಪ್ಶನ್ ವಿಫಲವಾದಲ್ಲಿ ನೀವು ಈ ಮರುಪ್ರಾಪ್ತಿ ಕೀಲಿಯನ್ನು ಒದಗಿಸಬೇಕಾಗುತ್ತದೆ. ಕೀ ಇಲ್ಲದೆ, ನಿಮ್ಮ ಎಲ್ಲಾ ಡೇಟಾಗೆ ನೀವು ಪ್ರವೇಶವನ್ನು ಕಳೆದುಕೊಳ್ಳುತ್ತೀರಿ. ಪಾಸ್‌ವರ್ಡ್ ನಿರ್ವಾಹಕದಂತಹ ಸುರಕ್ಷಿತ ಸ್ಥಳದಲ್ಲಿ ಅದನ್ನು ಉಳಿಸಿ.';

  @override
  String get recoveryKeyConfirmation =>
      'ನಾನು ನನ್ನ ಮರುಪ್ರಾಪ್ತಿ ಕೀಲಿಯನ್ನು ಸುರಕ್ಷಿತವಾಗಿ ಎಲ್ಲೋ ಉಳಿಸಿದ್ದೇನೆ';

  @override
  String get recoveryKeyLinkLabel => 'ಇನ್ನಷ್ಟು ತಿಳಿಯಿರಿ';

  @override
  String get recoveryKeySaveToFileLabel => 'ಫೈಲ್‌ಗೆ ಉಳಿಸಿ';

  @override
  String get recoveryKeyShowQrCodeLabel => 'QR ಕೋಡ್ ತೋರಿಸಿ';

  @override
  String recoveryKeyQrDialogTitle(String DISTRO) {
    return '$DISTRO ಡೆಸ್ಕ್‌ಟಾಪ್ - ರಿಕವರಿ ಕೀ';
  }

  @override
  String get recoveryKeyQrDialogBody =>
      'ಮರುಪ್ರಾಪ್ತಿ ಕೀಲಿಯನ್ನು ನಕಲಿಸಲು QR ಕೋಡ್ ಅನ್ನು ಸ್ಕ್ಯಾನ್ ಮಾಡಿ ಮತ್ತು ಪಾಸ್‌ವರ್ಡ್ ನಿರ್ವಾಹಕದಂತಹ ಸುರಕ್ಷಿತ ಸ್ಥಳದಲ್ಲಿ ಅದನ್ನು ಉಳಿಸಿ. ನಂತರದ ಬಳಕೆಗಾಗಿ ನೀವು ಫೋಟೋವನ್ನು ಸಹ ತೆಗೆದುಕೊಳ್ಳಬಹುದು.';

  @override
  String get recoveryKeyClipboardNotifiaction => 'ಕ್ಲಿಪ್‌ಬೋರ್ಡ್‌ಗೆ ನಕಲಿಸಲಾಗಿದೆ';

  @override
  String get recoveryKeyExceptionFileSystemTitle =>
      'ಮರುಪ್ರಾಪ್ತಿ ಕೀ ಫೈಲ್ ಅನ್ನು ಉಳಿಸಲಾಗಿಲ್ಲ';

  @override
  String get recoveryKeyExceptionDisallowedPathTitle =>
      'ಮರುಪ್ರಾಪ್ತಿ ಕೀ ಫೈಲ್ ಅನ್ನು ತಾತ್ಕಾಲಿಕ ಸ್ಥಳದಲ್ಲಿ ಉಳಿಸಲಾಗುವುದಿಲ್ಲ';

  @override
  String get recoveryKeyExceptionUnknownTitle => 'ಅಜ್ಞಾತ ದೋಷ';

  @override
  String get recoveryKeyExceptionFileSystemBody =>
      'ಆ ಫೋಲ್ಡರ್‌ಗೆ ಬರೆಯಲು ನೀವು ಅನುಮತಿಯನ್ನು ಹೊಂದಿಲ್ಲ. ಬೇರೆ ಸ್ಥಳವನ್ನು ಪ್ರಯತ್ನಿಸಿ ಅಥವಾ ಇನ್ನೊಂದು ವಿಧಾನವನ್ನು ಬಳಸಿ.';

  @override
  String get recoveryKeyExceptionDisallowedPathBody =>
      'ತೆಗೆಯಬಹುದಾದ ಡ್ರೈವ್‌ನಂತಹ ಬೇರೆ ಸ್ಥಳವನ್ನು ಪ್ರಯತ್ನಿಸಿ ಅಥವಾ ಇನ್ನೊಂದು ವಿಧಾನವನ್ನು ಬಳಸಿ.';

  @override
  String get recoveryKeyFilePickerTitle => 'ಮರುಪ್ರಾಪ್ತಿ ಕೀ ಫೈಲ್ ಅನ್ನು ಉಳಿಸಿ';

  @override
  String get recoveryKeyFilePickerFilter => 'ಪಠ್ಯ ಫೈಲ್ಗಳು';

  @override
  String landscapeMagicAttachInstructions(String url) {
    return 'QR ಕೋಡ್ ಅನ್ನು ಸ್ಕ್ಯಾನ್ ಮಾಡಿ ಅಥವಾ ಕೆಳಗಿನ ಕೋಡ್ ಅನ್ನು <a href=\"https://$url\">$url</a> ನಲ್ಲಿ ನಮೂದಿಸಿ';
  }

  @override
  String get landscapePageTitle => 'ಸ್ವಯಂಚಾಲಿತ ಅನುಸ್ಥಾಪನೆ';

  @override
  String get landscapeHeader => 'ಲ್ಯಾಂಡ್‌ಸ್ಕೇಪ್‌ಗೆ ಲಾಗ್ ಇನ್ ಮಾಡಿ';

  @override
  String get landscapeDomainHeader => 'ಲ್ಯಾಂಡ್‌ಸ್ಕೇಪ್ ಡೊಮೇನ್ ನಮೂದಿಸಿ (FQDN)';

  @override
  String get landscapeDomainHintText => 'ಲ್ಯಾಂಡ್‌ಸ್ಕೇಪ್ ಡೊಮೇನ್ (FQDN)';

  @override
  String get landscapeDomainInstructions =>
      'ಲಾಗ್ ಇನ್ ಮಾಡಲು ಮತ್ತು ಸ್ವಯಂಇನ್‌ಸ್ಟಾಲ್ ಫೈಲ್ ಅನ್ನು ಪಡೆದುಕೊಳ್ಳಲು ನಿಮ್ಮ ಸಂಸ್ಥೆಯ ಲ್ಯಾಂಡ್‌ಸ್ಕೇಪ್ ಡೊಮೇನ್ ಅನ್ನು ಒದಗಿಸಿ. ನಿಮ್ಮ IT ಬೆಂಬಲದಿಂದ ನೀವು FQDN ಅನ್ನು ಪಡೆಯಬಹುದು.';

  @override
  String get landscapeDomainTextField => 'ಲ್ಯಾಂಡ್‌ಸ್ಕೇಪ್ ಡೊಮೇನ್ (FQDN)';

  @override
  String get next => 'ಮುಂದೆ';

  @override
  String get landscapeDomainInvalidDomainWarning =>
      'ಅಮಾನ್ಯ ಡೊಮೇನ್, ದಯವಿಟ್ಟು ನಿಮ್ಮ IT ಬೆಂಬಲವನ್ನು ಪರಿಶೀಲಿಸಿ ಅಥವಾ ಸಂಪರ್ಕಿಸಿ';

  @override
  String get landscapeDomainNoInternetTitleWarning =>
      'ಮುಂದುವರಿಸಲು ಇಂಟರ್ನೆಟ್‌ಗೆ ಸಂಪರ್ಕಪಡಿಸಿ';

  @override
  String get landscapeDomainNoInternetDescriptionWarning =>
      'ಲ್ಯಾಂಡ್‌ಸ್ಕೇಪ್‌ನಿಂದ ಸ್ವಯಂಇನ್‌ಸ್ಟಾಲ್ ಫೈಲ್ ಅನ್ನು ಪಡೆಯಲು ಇಂಟರ್ನೆಟ್ ಅಗತ್ಯವಿದೆ';

  @override
  String get landscapeCodeExpiredWarning =>
      'ಕೋಡ್ ಅವಧಿ ಮೀರಿದೆ, ದಯವಿಟ್ಟು ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ';

  @override
  String get landscapeLoginFailedWarning =>
      'ಲಾಗಿನ್ ವಿಫಲವಾಗಿದೆ, ದಯವಿಟ್ಟು ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ';

  @override
  String get landscapeErrorPageTitle =>
      'ನಿಮ್ಮ ಖಾತೆಗೆ ಸ್ವಯಂಚಾಲಿತ ಸ್ಥಾಪನೆ ಲಭ್ಯವಿಲ್ಲ';

  @override
  String get landscapeErrorPageBody =>
      'ನಿಮ್ಮ IT ಬೆಂಬಲವನ್ನು ಸಂಪರ್ಕಿಸಿ ಅಥವಾ ಬೇರೆ ಅನುಸ್ಥಾಪನ ಆಯ್ಕೆಯನ್ನು ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String landscapeErrorPageCode(String code) {
    return 'ದೋಷ ಕೋಡ್: $code';
  }

  @override
  String get landscapeConfirmPageSuccessInfoTitle =>
      'ನಿಮ್ಮ ಸಂಸ್ಥೆಯು ಒದಗಿಸಿದ ಸಂರಚನೆಯೊಂದಿಗೆ ಉಬುಂಟು ಸ್ಥಾಪಿಸುತ್ತದೆ';

  @override
  String get landscapeConfirmPageSuccessInfoContent =>
      'ಕೆಳಗಿನ ಲ್ಯಾಂಡ್‌ಸ್ಕೇಪ್‌ನಿಂದ ಆಮದು ಮಾಡಲಾದ ಸ್ವಯಂಇನ್‌ಸ್ಟಾಲ್ ಫೈಲ್ ಅನ್ನು ನೀವು ಪರಿಶೀಲಿಸಬಹುದು.';

  @override
  String get successIconSemanticLabel => 'ಯಶಸ್ಸು';

  @override
  String get errorIconSemanticLabel => 'ದೋಷ';

  @override
  String get closeIconSemanticLabel => 'ಮುಚ್ಚಿ';

  @override
  String get maximizeIconSemanticLabel => 'ಗರಿಷ್ಠಗೊಳಿಸು';

  @override
  String get minimizeIconSemanticLabel => 'ಕಡಿಮೆಗೊಳಿಸು';

  @override
  String get tpmActionPageTitle =>
      'ಹಾರ್ಡ್‌ವೇರ್-ಬೆಂಬಲಿತ ಎನ್‌ಕ್ರಿಪ್ಶನ್ ಅನ್ನು ಸಕ್ರಿಯಗೊಳಿಸಲಾಗಲಿಲ್ಲ';

  @override
  String get tpmActionBadgeLabel => 'ಕ್ರಮ ಅಗತ್ಯವಿದೆ';

  @override
  String get tpmActionDetailsLabel => 'ತಾಂತ್ರಿಕ ವಿವರಗಳು';

  @override
  String get tpmActionConfirmLabel => 'ದೃಢೀಕರಿಸಿ';

  @override
  String tpmActionSolutionLabel(int n, String text) {
    return 'ಪರಿಹಾರ $n: $text';
  }

  @override
  String tpmActionSingleSolutionLabel(String text) {
    return 'Solution: $text';
  }

  @override
  String get tpmActionDocumentationLinkLabel => 'ದಸ್ತಾವೇಜನ್ನು ಲಿಂಕ್ ಮಾಡಿ';

  @override
  String get tpmActionErrorSupportLabel =>
      'ಕೆಳಗಿನ ಪರಿಹಾರಗಳನ್ನು ಪ್ರಯತ್ನಿಸಿ, IT ಬೆಂಬಲವನ್ನು ಸಂಪರ್ಕಿಸಿ ಅಥವಾ ಬೇರೆ ಎನ್‌ಕ್ರಿಪ್ಶನ್ ವಿಧಾನವನ್ನು ಆಯ್ಕೆಮಾಡಿ.';

  @override
  String get tpmActionErrorSupportSingleLabel =>
      'Try the solution below, contact IT support, or choose a different encryption method.';

  @override
  String get tpmActionErrorSupportNoActionLabel =>
      'IT ಬೆಂಬಲವನ್ನು ಸಂಪರ್ಕಿಸಿ ಅಥವಾ ಬೇರೆ ಎನ್‌ಕ್ರಿಪ್ಶನ್ ವಿಧಾನವನ್ನು ಆಯ್ಕೆಮಾಡಿ.';

  @override
  String get tpmActionErrorKindInternal => 'ಆಂತರಿಕ';

  @override
  String get tpmActionErrorKindShutdownRequired => 'ಸ್ಥಗಿತಗೊಳಿಸುವ ಅಗತ್ಯವಿದೆ';

  @override
  String get tpmActionErrorKindRebootRequired => 'ರೀಬೂಟ್ ಅಗತ್ಯವಿದೆ';

  @override
  String get tpmActionErrorKindUnexpectedAction => 'ಅನಿರೀಕ್ಷಿತ ಕ್ರಿಯೆ';

  @override
  String get tpmActionErrorKindMissingArgument => 'ತಪ್ಪಿದ ವಾದ';

  @override
  String get tpmActionErrorKindInvalidArgument => 'ಅಮಾನ್ಯವಾದ ವಾದ';

  @override
  String get tpmActionErrorKindActionFailed => 'ಕ್ರಿಯೆ ವಿಫಲವಾಗಿದೆ';

  @override
  String get tpmActionErrorKindRunningInVm => 'VM ನಲ್ಲಿ ರನ್ ಆಗುತ್ತಿದೆ';

  @override
  String get tpmActionErrorKindSystemNotEfi => 'ಸಿಸ್ಟಮ್ EFI ಅಲ್ಲ';

  @override
  String get tpmActionErrorKindEfiVariableAccess => 'EFI ವೇರಿಯಬಲ್ ಪ್ರವೇಶ';

  @override
  String get tpmActionErrorKindNoSuitableTpm2Device =>
      'ಸೂಕ್ತವಾದ TPM2 ಸಾಧನವಿಲ್ಲ';

  @override
  String get tpmActionErrorKindTpmDeviceDisabled =>
      'TPM ಸಾಧನವನ್ನು ನಿಷ್ಕ್ರಿಯಗೊಳಿಸಲಾಗಿದೆ';

  @override
  String get tpmActionErrorKindTpmHierarchiesOwned => 'TPM ಶ್ರೇಣಿಗಳ ಮಾಲೀಕತ್ವ';

  @override
  String get tpmActionErrorKindTpmDeviceLockoutLockedOut =>
      'TPM ಸಾಧನ ಲಾಕ್‌ಔಟ್ ಲಾಕ್ ಔಟ್ ಆಗಿದೆ';

  @override
  String get tpmActionErrorKindInsufficientTpmStorage =>
      'ಸಾಕಷ್ಟು TPM ಸಂಗ್ರಹಣೆ ಇಲ್ಲ';

  @override
  String get tpmActionErrorKindUnsupportedPlatform =>
      'ಬೆಂಬಲಿತವಲ್ಲದ ಪ್ಲಾಟ್‌ಫಾರ್ಮ್';

  @override
  String get tpmActionErrorKindUefiDebuggingEnabled =>
      'UEFI ಡೀಬಗ್ ಮಾಡುವುದನ್ನು ಸಕ್ರಿಯಗೊಳಿಸಲಾಗಿದೆ';

  @override
  String get tpmActionErrorKindInsufficientDmaProtection =>
      'ಸಾಕಷ್ಟಿಲ್ಲದ DMA ರಕ್ಷಣೆ';

  @override
  String get tpmActionErrorKindNoKernelIommu => 'ಕರ್ನಲ್ IOMMU ಇಲ್ಲ';

  @override
  String get tpmActionErrorKindHostSecurity => 'ಹೋಸ್ಟ್ ಸೆಕ್ಯುರಿಟಿ';

  @override
  String get tpmActionErrorKindSysPrepApplicationsPresent =>
      'Sys ಪ್ರೆಪ್ ಅಪ್ಲಿಕೇಶನ್‌ಗಳು ಪ್ರಸ್ತುತ';

  @override
  String get tpmActionErrorKindAbsolutePresent => 'ಸಂಪೂರ್ಣ ಪ್ರಸ್ತುತ';

  @override
  String get tpmActionErrorKindInvalidSecureBootMode =>
      'ಅಮಾನ್ಯ SecureBoot ಮೋಡ್';

  @override
  String get tpmActionErrorKindWeakSecureBootAlgorithmDetected =>
      'ದುರ್ಬಲ SecureBoot ಅಲ್ಗಾರಿದಮ್ ಪತ್ತೆಯಾಗಿದೆ';

  @override
  String get tpmActionErrorKindPreOsSecureBootAuthByEnrolledDigests =>
      'This computer is using a manual allowlist to verify software at startup.';

  @override
  String get tpmActionErrorKindAddonDriversPresent =>
      'Addon ಡ್ರೈವರ್‌ಗಳು ಪ್ರಸ್ತುತ';

  @override
  String get tpmActionErrorKindGenericTpm =>
      'There is an issue with this computer\'s TPM.';

  @override
  String get tpmActionErrorKindGenericFirmware =>
      'There is an issue with this computer\'s firmware.';

  @override
  String get tpmActionFixActionReboot => 'ಮರುಪ್ರಾರಂಭಿಸಿ';

  @override
  String get tpmActionFixActionShutdown => 'ಪವರ್ ಆಫ್';

  @override
  String get tpmActionFixActionRebootToFwSettings =>
      'ಫರ್ಮ್‌ವೇರ್ ಸೆಟ್ಟಿಂಗ್‌ಗಳಿಗೆ ಮರುಪ್ರಾರಂಭಿಸಿ';

  @override
  String get tpmActionFixActionRebootToFwSettingsInstructions =>
      'If firmware settings do not load automatically, restart and press the settings key repeatedly during startup (commonly F2, F10 or Delete).';

  @override
  String get tpmActionFixActionRebootToFwSettingsInsufficientDmaProtection =>
      'DMA ರಕ್ಷಣೆಯನ್ನು ಹಸ್ತಚಾಲಿತವಾಗಿ ಸಕ್ರಿಯಗೊಳಿಸಿ';

  @override
  String get tpmActionFixActionRebootToFwSettingsInsufficientTpmStorage =>
      'TPM ಅನ್ನು ಹಸ್ತಚಾಲಿತವಾಗಿ ತೆರವುಗೊಳಿಸಿ';

  @override
  String get tpmActionFixActionRebootToFwSettingsInvalidSecureBootMode =>
      'ಸುರಕ್ಷಿತ ಬೂಟ್ ಅನ್ನು ಹಸ್ತಚಾಲಿತವಾಗಿ ಸಕ್ರಿಯಗೊಳಿಸಿ';

  @override
  String get tpmActionFixActionRebootToFwSettingsNoKernelIommu =>
      'DMA ರಕ್ಷಣೆಯನ್ನು ಹಸ್ತಚಾಲಿತವಾಗಿ ಸಕ್ರಿಯಗೊಳಿಸಿ';

  @override
  String get tpmActionFixActionRebootToFwSettingsNoSuitablePcrBank =>
      'PCR ಬ್ಯಾಂಕ್‌ಗಳನ್ನು ಹಸ್ತಚಾಲಿತವಾಗಿ ಸಕ್ರಿಯಗೊಳಿಸಿ';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmDeviceDisabled =>
      'TPM ಅನ್ನು ಹಸ್ತಚಾಲಿತವಾಗಿ ಸಕ್ರಿಯಗೊಳಿಸಿ';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmDeviceLockoutLockedOut =>
      'TPM ಅನ್ನು ಹಸ್ತಚಾಲಿತವಾಗಿ ತೆರವುಗೊಳಿಸಿ';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmHierarchiesOwned =>
      'TPM ಅನ್ನು ಹಸ್ತಚಾಲಿತವಾಗಿ ತೆರವುಗೊಳಿಸಿ';

  @override
  String get tpmActionFixActionRebootToFwSettingsAbsolutePresent =>
      'Disable Absolute Persistence Module manually';

  @override
  String get tpmActionFixActionContactOem => 'OEM ಅನ್ನು ಸಂಪರ್ಕಿಸಿ';

  @override
  String get tpmActionFixActionContactOsVendor => 'OS ಮಾರಾಟಗಾರರನ್ನು ಸಂಪರ್ಕಿಸಿ';

  @override
  String get tpmActionFixActionEnableTpmViaFirmware =>
      'ಫರ್ಮ್‌ವೇರ್ ಮೂಲಕ TPM ಅನ್ನು ಸಕ್ರಿಯಗೊಳಿಸಿ';

  @override
  String get tpmActionFixActionEnableAndClearTpmViaFirmware =>
      'ಫರ್ಮ್‌ವೇರ್ ಮೂಲಕ TPM ಅನ್ನು ಸಕ್ರಿಯಗೊಳಿಸಿ ಮತ್ತು ತೆರವುಗೊಳಿಸಿ';

  @override
  String get tpmActionFixActionClearTpmViaFirmware =>
      'ಫರ್ಮ್‌ವೇರ್ ಮೂಲಕ TPM ಅನ್ನು ತೆರವುಗೊಳಿಸಿ';

  @override
  String get tpmActionFixActionClearTpm => 'TPM ಅನ್ನು ತೆರವುಗೊಳಿಸಿ';

  @override
  String get tpmActionFixActionProceed => 'ನಿರ್ಲಕ್ಷಿಸಿ';

  @override
  String get tpmActionFixActionRebootDescription =>
      'Restart the computer to complete previous actions.';

  @override
  String get tpmActionFixActionRebootTpmDeviceFailureDescription =>
      'Restarting the computer may fix the issue.';

  @override
  String get tpmActionFixActionShutdownDescription =>
      'Power off the computer to complete previous actions.';

  @override
  String get tpmActionFixActionRebootToFwSettingsDescription =>
      'You can do this in your computer\'s firmware settings.';

  @override
  String get tpmActionFixActionRebootToFwSettingsWithDocsDescription =>
      'You might be able to do this in your computer\'s firmware settings. Check the documentation of the CPU vendor for guidance.';

  @override
  String get tpmActionFixActionRebootToFwSettingsInvalidSecureBootModeHint =>
      'Check secure boot mode is set to \"deployed\".';

  @override
  String get tpmActionFixActionRebootToFwSettingsNoKernelIommuHint =>
      'This feature might be referred to as \"Virtualization Technology\", \"VT-d\" or \"AMD-Vi\".';

  @override
  String get tpmActionFixActionProceedDescription =>
      'Ignoring this issue might result in a less secure installation.';

  @override
  String get tpmActionRestartLabel => 'ಮರುಪ್ರಾರಂಭಿಸಿ';

  @override
  String get tpmActionRestartAndEnableTpmLabel =>
      'TPM ಅನ್ನು ಮರುಪ್ರಾರಂಭಿಸಿ ಮತ್ತು ಸಕ್ರಿಯಗೊಳಿಸಿ';

  @override
  String get tpmActionRestartAndClearTpmLabel =>
      'TPM ಅನ್ನು ಮರುಪ್ರಾರಂಭಿಸಿ ಮತ್ತು ತೆರವುಗೊಳಿಸಿ';

  @override
  String get tpmActionIgnoreAndContinueLabel => 'ನಿರ್ಲಕ್ಷಿಸಿ ಮತ್ತು ಮುಂದುವರಿಸಿ';

  @override
  String get tpmActionFixActionClearTpmWarningTitle =>
      'TPM ಅನ್ನು ತೆರವುಗೊಳಿಸುವುದು ಎಲ್ಲಾ ಎನ್‌ಕ್ರಿಪ್ಶನ್ ಕೀಗಳನ್ನು ಅಳಿಸುತ್ತದೆ';

  @override
  String get tpmActionFixActionClearTpmWarningBody =>
      'ನೀವು ಮರುಪ್ರಾಪ್ತಿ ಕೀಗಳನ್ನು ಹೊಂದಿಲ್ಲದ ಎನ್‌ಕ್ರಿಪ್ಟ್ ಮಾಡಿದ ಡ್ರೈವ್‌ಗಳಲ್ಲಿನ ಎಲ್ಲಾ ಡೇಟಾಗೆ ನೀವು ಪ್ರವೇಶವನ್ನು ಕಳೆದುಕೊಳ್ಳುತ್ತೀರಿ. ಇದು ದೃಢೀಕರಣ ಮತ್ತು ಪ್ರಮಾಣಪತ್ರಗಳಂತಹ TPM ಅನ್ನು ಅವಲಂಬಿಸಿರುವ ಇತರ ವೈಶಿಷ್ಟ್ಯಗಳನ್ನು ಸಹ ಮುರಿಯುತ್ತದೆ.';

  @override
  String get tpmActionFixActionClearTpmConfirmationLabel =>
      'TPM ಅನ್ನು ತೆರವುಗೊಳಿಸುವುದರ ಪರಿಣಾಮಗಳನ್ನು ನಾನು ಅರ್ಥಮಾಡಿಕೊಂಡಿದ್ದೇನೆ';

  @override
  String get tpmActionFixActionCaveatConfirm =>
      'You might be asked to confirm this action on restart.';

  @override
  String get tpmActionFixActionCaveatRetry =>
      'Then you will need to start the installation again.';

  @override
  String get tpmActionErrorTitle => 'ಈ ಪರಿಹಾರವು ವಿಫಲವಾಗಿದೆ';

  @override
  String get tpmActionErrorDescription =>
      'ಬೇರೆ ಪರಿಹಾರವನ್ನು ಪ್ರಯತ್ನಿಸಿ ಅಥವಾ IT ಬೆಂಬಲವನ್ನು ಸಂಪರ್ಕಿಸಿ';

  @override
  String get manualPartitioningWarningBody =>
      'Try something else. You may also <a href=\"\">send an error report</a>.';
}
