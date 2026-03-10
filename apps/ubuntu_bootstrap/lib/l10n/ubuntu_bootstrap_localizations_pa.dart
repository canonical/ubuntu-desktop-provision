// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_bootstrap_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Panjabi Punjabi (`pa`).
class UbuntuBootstrapLocalizationsPa extends UbuntuBootstrapLocalizations {
  UbuntuBootstrapLocalizationsPa([String locale = 'pa']) : super(locale);

  @override
  String get appTitle => 'ਉਬੰਤੂ ਡੈਸਕਟਾਪ ਇੰਸਟਾਲਰ';

  @override
  String windowTitle(String RELEASE) {
    return '$RELEASE ਇੰਸਟਾਲ ਕਰੋ';
  }

  @override
  String get autoinstallDirectTitle => 'ਆਪਣੇ-ਆਪ ਇੰਸਟਾਲੇਸ਼ਨ';

  @override
  String get autoinstallDirectHeader => 'Import autoinstall file';

  @override
  String get autoinstallDirectUrlLabel =>
      'You can enter the URL of an autoinstall file:';

  @override
  String get autoinstallDirectFileLabel => 'Or select a local file:';

  @override
  String get autoinstallDirectFileButtonLabel => '...ਫ਼ਾਇਲ ਨੂੰ ਚੁਣੋ';

  @override
  String get autoinstallDirectFileClearButtonLabel => 'ਫ਼ਾਇਲ ਨੂੰ ਮਿਟਾਓ';

  @override
  String get autoinstallDirectFilePickerTitle => 'ਫ਼ਾਇਲ ਨੂੰ ਚੁਣੋ';

  @override
  String get autoinstallDirectFilePickerFilterLabel => 'YAML ਫਾਇਲਾਂ';

  @override
  String get autoinstallDirectImportButtonLabel => 'ਇੰਪੋਰਟ';

  @override
  String get autoinstallDirectErrorNetworkTitle =>
      'Autoinstall file is not reachable';

  @override
  String get autoinstallDirectErrorNetworkBody =>
      'Check the URL is correct, test your internet connection, or try later.';

  @override
  String get autoinstallDirectErrorInvalidUrlTitle => 'Invalid URL';

  @override
  String get autoinstallDirectErrorInvalidUrlBody =>
      'Check the URL is correct or select a local file.';

  @override
  String get autoinstallDirectErrorInvalidContentTitle =>
      'Invalid autoinstall file';

  @override
  String get autoinstallDirectErrorInvalidContentBody =>
      'Check the file or provide a different one.';

  @override
  String get autoinstallDirectErrorFileSystemTitle =>
      'Autoinstall file is not readable';

  @override
  String get autoinstallDirectErrorFileSystemBody =>
      'Check your permissions or provide a different file.';

  @override
  String get autoinstallDirectErrorUnkownTitle => 'ਅਣਪਛਾਤੀ ਗਲਤੀ';

  @override
  String get autoinstallTitle => 'ਇੰਸਟਾਲੇਸ਼ਨ ਦੀ ਕਿਸਮ';

  @override
  String autoinstallHeader(String DISTRO) {
    return 'ਕੀ ਤੁਸੀਂ $DISTRO ਨੂੰ ਇੰਸਟਾਲ ਕਰਨਾ ਚਾਹੁੰਦੇ ਹੋ?';
  }

  @override
  String get autoinstallInstructions =>
      'Enter the autoinstall.yaml URL or local file path:';

  @override
  String get autoinstallInteractiveOption => 'Interactive installation';

  @override
  String get autoinstallInteractiveDescription =>
      'For users who want to be guided step by step through the installation.';

  @override
  String get autoinstallDirectOption => 'Automated with autoinstall file';

  @override
  String get autoinstallDirectDescription =>
      'For advanced users who have an autoinstall.yaml for consistent and repeatable system setups.';

  @override
  String get autoinstallLandscapeOption => 'Automated with Landscape';

  @override
  String get autoinstallLandscapeDescription =>
      'For users in organizations that provide an autoinstall file via Landscape.';

  @override
  String get autoinstallErrorMessage =>
      'A command in the autoinstall file failed to run during installation.';

  @override
  String get autoinstallErrorInstructions =>
      'You will need to restart the installation. Check the autoinstall file, choose a different installation type, or contact your IT support.';

  @override
  String get changeButtonText => 'ਬਦਲੋ';

  @override
  String get quitButtonText => 'ਇੰਸਟਾਲੇਸ਼ਨ ਨੂੰ ਛੱਡੋ';

  @override
  String loadingPageTitle(String DISTRO) {
    return '$DISTRO ਵਲੋਂ ਜੀ ਆਇਆਂ ਨੂੰ';
  }

  @override
  String loadingHeader(String DISTRO) {
    return '$DISTRO ਨੂੰ ਤਿਆਰ ਕੀਤਾ ਜਾ ਰਿਹਾ ਹੈ…';
  }

  @override
  String get warningLabel => 'ਸਾਵਧਾਨ:';

  @override
  String tryOrInstallTitle(String DISTRO) {
    return '$DISTRO ਨੂੰ ਅਜ਼ਮਾਓ ਜਾਂ ਇੰਸਟਾਲ ਕਰੋ';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return '$DISTRO ਨਾਲ ਤੁਸੀਂ ਕੀ ਕਰਨਾ ਚਾਹੁੰਦੇ ਹੋ?';
  }

  @override
  String get tryOrInstallRepairOption => 'ਇੰਸਟਾਲੇਸ਼ਨ ਦੀ ਰਿਪੇਅਰ ਕਰੋ';

  @override
  String get tryOrInstallRepairDescription =>
      'ਰਿਪੇਅਰ ਕਰਨ ਨਾਲ ਦਸਤਾਵੇਜ਼ਾਂ ਜਾਂ ਸੈਟਿੰਗਾਂ ਨੂੰ ਬਦਲੇ ਬਗ਼ੈਰ ਪਹਿਲਾਂ ਹੀ ਇੰਸਟਾਲ ਹੋਏ ਸਾਫਟਵੇਅਰਾਂ ਨੂੰ ਮੁੜ-ਇੰਸਟਾਲ ਕੀਤਾ ਜਾਵੇਗਾ।';

  @override
  String tryOption(String RELEASE) {
    return '$RELEASEਦੀ ਕੋਸ਼ਿਸ਼ ਕਰੋ';
  }

  @override
  String tryDescription(String RELEASE) {
    return 'You can try $RELEASE without making any changes to your computer.';
  }

  @override
  String installOption(String RELEASE) {
    return '$RELEASE ਨੂੰ ਇੰਸਟਾਲ ਕਰੋ';
  }

  @override
  String installDescription(String RELEASE) {
    return 'Install $RELEASE alongside (or instead of) your current operating system. This shouldn\'t take too long.';
  }

  @override
  String tryOrInstallReleaseNotesLabel(String url) {
    return 'ਤੁਸੀਂ <a href=\"$url\">ਰੀਲਿਜ਼ ਨੋਟਿਸ</a> ਪੜ੍ਹਨਾ ਚਾਹੋਗੇ।';
  }

  @override
  String get rstTitle => 'RST ਖੋਜਿਆ';

  @override
  String get rstHeader =>
      'ਇੰਸਟਾਲੇਸ਼ਨ ਜਾਰੀ ਰੱਖਣ ਲਈ ਤੁਹਾਨੂੰ RST ਨੂੰ ਅਸਮਰੱਥ ਕਰਨਾ ਪਵੇਗਾ';

  @override
  String get rstDisable =>
      'Your computer uses Intel RST (Rapid Storage Technology). You can disable RST either in:';

  @override
  String get rstDisableWindows =>
      'Windows, ਜੇ ਤੁਸੀਂ Windows ਨਾਲ ਡੁਅਲ ਬੂਟ ਸੈਟਅੱਪ ਵਰਤ ਰਹੇ ਹੋ';

  @override
  String get rstDisableBios => 'BIOS ਸੈਟਿੰਘਾਂ';

  @override
  String rstInstructions(String url) {
    return 'ਹਦਾਇਤਾਂ ਲਈ ਹੋਰ ਡਿਵਾਈਸ ਉੱਤੇ QR ਕੋਡ ਨੂੰ ਸਕੈਨ ਕਰੋ ਜਾਂ ਖੋਲ੍ਹੋ:  <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'ਸਕਿਉਰ ਬੂਟ ਦੀ ਸੰਰਚਨਾ';

  @override
  String get configureSecureBootDescription =>
      'You\'ve chosen to install third-party driver software. This requires turning off Secure Boot.\nTo do this, you need to choose a security key now, and enter it when the system restarts.';

  @override
  String get configureSecureBootOption => 'ਸਕਿਉਰ ਬੂਟ ਦੀ ਸੰਰਚਨਾ';

  @override
  String get chooseSecurityKey => 'ਸੁਰੱਖਿਆ ਕੁੰਜੀ ਨੂੰ ਚੁਣੋ';

  @override
  String get confirmSecurityKey => 'ਸੁਰੱਖਿਆ ਕੁੰਜੀ ਨੂੰ ਤਸਦੀਕ ਕਰੋ';

  @override
  String get dontInstallDriverSoftwareNow =>
      'ਹੁਣੇ ਡਰਾਇਵਰ ਸਾਫਟੇਅਰ ਨੂੰ ਇੰਸਟਾਲ ਨਾ ਕਰੋ';

  @override
  String get dontInstallDriverSoftwareNowDescription =>
      'ਤੁਸੀਂ ਇਸ ਨੂੰ ਸਾਫਟਵੇਅਰ ਅਤੇ ਅੱਪਡੇਟਾਂ ਵਿੱਚੋਂ ਬਾਅਦ ਵਿੱਚ ਇੰਸਟਾਲ ਕਰ ਸਕਦੇ ਹੋ।';

  @override
  String get configureSecureBootSecurityKeyRequired =>
      'ਸੁਰੱਖਿਆ ਕੁੰਜੀ ਚਾਹੀਦੀ ਹੈ';

  @override
  String get secureBootSecurityKeysDontMatch =>
      'ਸੁਰੱਖਿਆ ਕੁੰਜੀਆਂ ਮਿਲਦੀਆਂ ਨਹੀਂ ਹਨ';

  @override
  String get showSecurityKey => 'ਵੇਖਾਓ';

  @override
  String get hideSecurityKey => 'ਓਹਲੇ';

  @override
  String get updatesOtherSoftwarePageTitle => 'ਐਪਲੀਕੇਸ਼ਨਾਂ';

  @override
  String get updatesOtherSoftwarePageDescription =>
      'What apps would you like to install to start with?';

  @override
  String get codecsAndDriversPageTitle => 'ਆਪਣੇ ਕੰਪਿਊਟਰ ਨੂੰ ਅਨੁਕੂਲ ਬਣਾਓ';

  @override
  String get codecsAndDriversPageDescription =>
      'Install recommended proprietary software?';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return '$DISTRO ships with no proprietary software by default. Installing additional software may improve your computer\'s performance.';
  }

  @override
  String get codecsAndDriversNvidiaNote => 'NVIDIA ਗਰਾਫਿਕਸ ਕਾਰਡ ਖੋਜਿਆ ਗਿਆ ਹੈ';

  @override
  String get codecsAndDriversNvidiaBody =>
      'For the best performance of NVIDIA graphic cards, installing additional drivers is strongly recommended.';

  @override
  String get fullInstallationTitle => 'Extended selection';

  @override
  String get fullInstallationSubtitle =>
      'An offline-friendly selection of office tools, utilities and web browser.';

  @override
  String get minimalInstallationTitle => 'ਮੂਲ ਚੋਣ';

  @override
  String get minimalInstallationSubtitle =>
      'ਸਿਰਫ਼ ਲਾਜ਼ਮੀ, ਵੈੱਬ ਬਰਾਊਜ਼ਰ ਅਤੇ ਮੁੱਢਲੀਆਂ ਸਹੂਲਤਾਂ ਹੀ।';

  @override
  String get otherOptions => 'ਹੋਰ ਚੋਣਾਂ';

  @override
  String get installThirdPartyTitle =>
      'Install third-party software for graphics and Wi-Fi hardware, as well as additional media formats';

  @override
  String get installThirdPartySubtitle =>
      'This software is subject to license terms included with its documentation. Some are proprietary.';

  @override
  String get installDriversTitle =>
      'Install third-party software for graphics and Wi-Fi hardware';

  @override
  String get installDriversSubtitle =>
      'Including but not limited to NVIDIA drivers and similar';

  @override
  String get installCodecsTitle =>
      'Download and install support for additional media formats';

  @override
  String get installCodecsSubtitle =>
      'Including but not limited to MP3, MP4, MOV and similar';

  @override
  String get batteryWarning => 'ਕੰਪਿਊਟਰ ਪਾਵਰ ਸਰੋਤ ਨਾਲ ਕਨੈਕਟ ਨਹੀਂ ਹੈ।';

  @override
  String get offlineWarning => 'ਤੁਸੀਂ ਇਸ ਵੇਲੇ ਆਫਲਾਈਨ ਹੋ';

  @override
  String get choosePassphraseHeader => 'ਵਾਕ ਬਣਾਓ';

  @override
  String get choosePassphraseBody =>
      'You will need to enter your passphrase every time you turn on your computer. This passphrase is different from your user password.';

  @override
  String get choosePassphraseInfoHeader => 'ਆਪਣੇ ਵਾਕ ਨੂੰ ਸੰਭਾਲਣਾ ਯਾਦ ਰੱਖੋ';

  @override
  String get choosePassphraseInfoBody =>
      'ਜੇ ਤੁਸੀਂ ਇਸ ਨੂੰ ਭੁੱਲ ਗਏ ਤਾਂ ਤੁਹਾਡਾ ਸਾਰਾ ਡਾਟਾ ਗੁੰਮ ਜਾਏਗਾ।';

  @override
  String get chooseOptionalPassphraseInfoHeader =>
      'Store your passphrase and recovery key somewhere safe';

  @override
  String get chooseOptionalPassphraseInfoBody =>
      'If you lose your passphrase, you will lose all your data. The passphrase does not replace the recovery key or your user password.';

  @override
  String get passphrasePageTitle => 'ਇੰਕ੍ਰਿਪਸ਼ਨ';

  @override
  String get passphrasePageHeaderPassphrase => 'Set an encryption passphrase';

  @override
  String get passphrasePageHeaderPin => 'Set an encryption PIN';

  @override
  String get passphrasePageBodyPassphrase =>
      'You will need to enter your passphrase every time you turn on your computer. This passphrase is different from your user password. You will be able to change it later, but not disable it. If you forget your passphrase, you can regain access to the disk by using the recovery key.';

  @override
  String get passphrasePageBodyPin =>
      'You will need to enter your PIN every time you turn on your computer. This PIN is different from your user password. You will be able to change it later, but not disable it. If you forget your PIN, you can regain access to the disk by using the recovery key.';

  @override
  String get passphrasePageChoosePassphraseHint => 'Passphrase';

  @override
  String get passphrasePageConfirmPassphraseHint => 'ਵਾਕ ਦੀ ਤਸਦੀਕ';

  @override
  String get passphrasePageRequiredPassphrase => 'ਵਾਕ ਚਾਹੀਦਾ ਹੈ';

  @override
  String get passphrasePageMismatchPassphrase => 'ਵਾਕ ਮਿਲਦੇ ਨਹੀਂ ਹਨ';

  @override
  String get passphrasePageChoosePinHint => 'ਪਿੰਨ';

  @override
  String get passphrasePageConfirmPinHint => 'ਪਿੰਨ ਦੀ ਤਸਦੀਕ';

  @override
  String get passphrasePageRequiredPin => 'ਪਿੰਨ ਚਾਹੀਦਾ ਹੈ';

  @override
  String get passphrasePageMismatchPin => 'ਪਿੰਨ ਮਿਲਦੇ ਨਹੀਂ ਹਨ';

  @override
  String get passphraseTypePassphraseTileTitle => 'ਵਾਕ ਚਾਹੀਦਾ ਹੈ';

  @override
  String get passphraseTypePassphraseTileSubTitle =>
      'Most secure. You will need to enter a longer passphrase every time you turn on your computer.';

  @override
  String get passphraseTypePinTileTitle => 'ਪਿੰਨ ਚਾਹੀਦਾ ਹੈ';

  @override
  String get passphraseTypePinTileSubTitle =>
      'More secure. You will need to enter a numeric PIN every time you turn on your computer.';

  @override
  String get passphraseTypeNoneTileTitle => 'ਡਿਸਕ ਨੂੰ ਆਪਣੇ-ਆਪ ਅਣ-ਲਾਕ ਕਰੋ';

  @override
  String get passphraseTypePageHeader => 'ਵਧੀਕ ਸੁਰੱਖਿਆ';

  @override
  String get passphraseTypePageBody =>
      'By default, the computer’s Trusted Platform Module (TPM) will unlock the disk during startup. You also have options to further protect your data.';

  @override
  String get passphrasePagePassphraseEntropyBelowMin =>
      'Weak passphrase, make it longer or more complex';

  @override
  String get passphrasePagePassphraseEntropyBelowOptimal =>
      'Fair passphrase, make it longer or more complex for better security';

  @override
  String get passphrasePagePassphraseEntropyOptimal => 'ਮਜ਼ਬੂਤ ਵਾਕ';

  @override
  String get passphrasePagePinEntropyBelowMin =>
      'Weak PIN, make it longer or less predictable';

  @override
  String get passphrasePagePinEntropyBelowOptimal =>
      'Fair PIN, make it longer or less predictable for better security';

  @override
  String get passphrasePagePinEntropyOptimal => 'PIN is long enough';

  @override
  String get installationTypeTitle => 'ਡਿਸਕ ਸੈਟਅੱਪ';

  @override
  String installationTypeHeader(String DISTRO) {
    return 'ਤੁਸੀਂ $DISTRO ਨੂੰ ਕਿਵੇਂ ਇੰਸਟਾਲ ਕਰਨਾ ਚਾਹੁੰਦੇ ਹੋ?';
  }

  @override
  String installationTypeOSDetected(String os) {
    return 'ਇਸ ਕੰਪਿਊਟਰ ਉੱਤੇ ਇਸ ਵੇਲੇ $os ਹੈ। ਤੁਸੀਂ ਕੀ ਕਰਨਾ ਚਾਹੁੰਦੇ ਹੋ?';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return 'This computer currently has $os1 and $os2 on it. What would you like to do?';
  }

  @override
  String get installationTypeMultiOSDetected =>
      'This computer currently has multiple operating systems on it. What would you like to do?';

  @override
  String get installationTypeNoOSDetected =>
      'This computer currently has no detected operating systems. What would you like to do?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'ਡਿਸਕ ਨੂੰ ਮਿਟਾਓ ਅਤੇ $DISTRO ਨੂੰ ਇੰਸਟਾਲ ਕਰੋ';
  }

  @override
  String get installationTypeEraseInfo =>
      'All data and partitions on the disk will be erased, including operating systems.';

  @override
  String get installationTypeAdvancedLabel => 'ਤਕਨੀਕੀ ਚੋਣਾਂ';

  @override
  String get installationTypeAdvancedTitle => 'ਇੰਕ੍ਰਿਪਸ਼ਨ ਅਤੇ ਫ਼ਾਇਲ ਸਿਸਟਮ';

  @override
  String get installationTypeExperimental => 'ਤਜਰਬੇ-ਅਧੀਨ';

  @override
  String get installationTypeNone => 'ਕੋਈ ਇੰਕ੍ਰਿਪਸ਼ਨ ਨਹੀਂ';

  @override
  String get installationTypeNoneInfo =>
      'ਬਿਨਾਂ ਇੰਕ੍ਰਿਪਸ਼ਨ ਦੇ ਮਿਆਰੀ ਫ਼ਾਇਲ ਸਿਸਟਮ ਹੈ।';

  @override
  String get installationTypeNoneSelected => 'ਕੋਈ ਨਹੀ ਚੁਣਿਆ';

  @override
  String get installationTypeLVM => 'ਬਿਨਾਂ ਇੰਕ੍ਰਿਪਸ਼ਨ ਦੇ LVM';

  @override
  String get installationTypeLVMSelected => 'LVM ਚੁਣਿਆ';

  @override
  String get installationTypeLVMEncryption => 'ਵਾਕ ਨਾਲ ਇੰਕ੍ਰਿਪਟ ਕਰੋ';

  @override
  String installationTypeLVMEncryptionInfoResolute(String advancedHint) {
    return 'You will need to enter a passphrase every time you turn on your computer. $advancedHint';
  }

  @override
  String get installationTypeLVMEncryptionInfo2 =>
      'This uses LVM with LUKS encryption.';

  @override
  String get installationTypeLVMEncryptionSelected =>
      'LVM ਅਤੇ ਇੰਕ੍ਰਿਪਸ਼ਨ ਨੂੰ ਚੁਣਿਆ';

  @override
  String get installationTypeEncryptInfo =>
      'You will choose a security key in the next step.';

  @override
  String get installationTypeZFS => 'ਬਿਨਾਂ ਇੰਕ੍ਰਿਪਸ਼ਨ ZFS ਨੂੰ ਵਰਤੋਂ';

  @override
  String get installationTypeZFSEncryption =>
      'Encrypt with a passphrase using ZFS';

  @override
  String get installationTypeZFSEncryptionInfo =>
      'Native encryption with ZFS. You will need to enter a passphrase every time you turn on your computer.';

  @override
  String get installationTypeZFSSelected => 'ZFS ਨੂੰ ਚੁਣਿਆ';

  @override
  String get installationTypeZFSEncryptionSelected =>
      'ZFS ਅਤੇ ਇੰਕ੍ਰਿਪਸ਼ਨ ਨੂੰ ਚੁਣਿਆ';

  @override
  String get installationTypeTPM => 'Use hardware-backed encryption';

  @override
  String get installationTypeTPMInfoResolute =>
      'The disk will unlock automatically during startup.';

  @override
  String get installationTypeTPMInfoUnavailable =>
      'Not available on this computer.';

  @override
  String get installationTypeTPMSelected => 'TPM ਚੁਣਿਆ';

  @override
  String installationTypeReinstall(String os) {
    return '$os ਨੂੰ ਮਿਟਾਓ ਅਤੇ ਮੁੜ-ਇੰਸਟਾਲ ਕਰੋ';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">ਸਾਵਧਾਨ:</font> ਇਸ ਨਾਲ ਤੁਹਾਡੇ $os ਪਰੋਗਰਾਮਾਂ, ਦਸਤਾਵੇਜ਼ਾਂ, ਫੋਟੋ, ਸੰਗੀਤ ਅਤੇ ਹੋਰ ਫ਼ਾਇਲਾਂ ਨੂੰ ਹਟਾਇਆ ਜਾਵੇਘਾ।';
  }

  @override
  String installationTypeAlongside(String product, String os) {
    return '$os ਨਾਲ $product ਨੂੰ ਇੰਸਟਾਲ ਕਰੋ';
  }

  @override
  String installationTypeAlongsideDual(String product, String os1, String os2) {
    return '$product ਨੂੰ $os1 ਅਤੇ $os2 ਦੇ ਨਾਲ ਇੰਸਟਾਲ ਕਰੋ';
  }

  @override
  String installationTypeAlongsideMulti(String product) {
    return '$product ਨੂੰ ਮੌਜੂਦ ਓਪਰੇਟਿੰਗ ਸਿਸਟਮ ਦੇ ਨਾਲ ਇੰਸਟਾਲ ਕਰੋ';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return 'Install $product alongside other partitions';
  }

  @override
  String installationTypeAlongsideInfo(String product) {
    return 'Select a partition to resize and create space for $product. You can choose your operating system during boot.';
  }

  @override
  String installationTypeEraseAndInstall(String os, String product) {
    return '$os ਨੂੰ ਮਿਟਾਓ ਅਤੇ $product ਨੂੰ ਇੰਸਟਾਲ ਕਰੋ';
  }

  @override
  String installationTypeEraseAndInstallInfo(String os) {
    return 'All files and data from the existing $os installation will be permanently deleted.';
  }

  @override
  String get installationTypeManual => 'ਖੁਦ ਇੰਸਟਾਲ ਕਰੋ';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'For advanced users seeking customized disk setups.';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'ਡਿਸਕ ਨੂੰ ਮਿਟਾਓ ਅਤੇ $DISTRO ਨੂੰ ਇੰਸਟਾਲ ਕਰੋ';
  }

  @override
  String get selectGuidedStorageInfo =>
      'Start from scratch on your selected disk.';

  @override
  String get selectGuidedStorageDriveDropdownLabel => 'ਡਰਾਇਵ ਨੂੰ ਚੁਣੋ:';

  @override
  String get selectGuidedStoragePartitionDropdownLabel => 'ਪਾਰਟੀਸ਼ਨ ਨੂੰ ਚੁਣੋ:';

  @override
  String get selectGuidedStorageInfoLabel => 'ਪੂਰੀ ਡਿਸਕ ਨੂੰ ਵਰਤਿਆ ਜਾਵੇਗਾ:';

  @override
  String get selectGuidedStorageInstallNow => 'ਹੁਣੇ ਇੰਸਟਾਲ ਕਰੋ';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return 'ਚੁਣੋ ਕਿ $DISTRO ਨੂੰ ਕਿੱਥੇ ਇੰਸਟਾਲ ਕਰਨਾ ਹੈ';
  }

  @override
  String get installAlongsideSpaceDivider =>
      'Allocate drive space by dragging the divider below:';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return '$num smaller partitions are hidden, use the <a href=\"$url\">advanced partitioning tool</a> for more control';
  }

  @override
  String get installAlongsideResizePartition => 'ਪਾਰਟੀਸ਼ਨ ਦੇ ਆਕਾਰ ਨੂੰ ਬਦਲੋ';

  @override
  String get installAlongsideAllocateSpace => 'ਥਾਂ ਦਿਓ';

  @override
  String get installAlongsideFiles => 'ਫ਼ਾਇਲਾਂ';

  @override
  String get installAlongsidePartition => 'ਪਾਰਟੀਸ਼ਨ:';

  @override
  String get installAlongsideSize => 'ਆਕਾਰ:';

  @override
  String get installAlongsideAvailable => 'ਮੌਜੂਦ:';

  @override
  String get allocateDiskSpace => 'ਖੁਦ ਪਾਰਟੀਸ਼ਨ ਬਣਾਓ';

  @override
  String get allocateDiskSpaceInvalidMountPointSlash =>
      'Mount points must start with \"/\"';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace =>
      'Mount points cannot contain spaces';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(
      String mountpoint, String format) {
    return '$format is not a supported filesystem for $mountpoint';
  }

  @override
  String get diskHeadersDevice => 'ਡਿਵਾਈਸ';

  @override
  String get diskHeadersType => 'ਕਿਸਮ';

  @override
  String get diskHeadersMountPoint => 'ਮਾਊਂਟ ਪੁਆਇੰਟ';

  @override
  String get diskHeadersSize => 'ਆਕਾਰ';

  @override
  String get diskHeadersUsed => 'ਵਰਤੀ';

  @override
  String get diskHeadersSystem => 'ਸਿਸਟਮ';

  @override
  String get diskHeadersFormat => 'ਫਾਰਮੈਟ';

  @override
  String get freeDiskSpace => 'ਖਾਲੀ ਥਾਂ';

  @override
  String get newPartitionTable => 'ਨਵਾਂ ਪਾਰਟੀਸ਼ਨ ਟੇਬਲ';

  @override
  String get newPartitionTableConfirmationTitle => 'ਨਵਾਂ ਖਾਲੀ ਪਾਰਟੀਸ਼ਨ';

  @override
  String get newPartitionTableConfirmationMessage =>
      'Creating a new partition table on an entire device will remove all of its current partitions. This operation can be undone if needed.';

  @override
  String get tooManyPrimaryPartitions => 'Too many primary partitions';

  @override
  String get partitionLimitReached => 'Limit reached';

  @override
  String get bootLoaderDevice => 'Device for boot loader installation';

  @override
  String get partitionCreateTitle => 'ਪਾਰਟੀਸ਼ਨ ਬਣਾਓ';

  @override
  String get partitionEditTitle => 'ਪਾਰਟੀਸ਼ਨ ਨੂੰ ਸੋਧੋ';

  @override
  String get partitionSizeLabel => 'ਆਕਾਰ:';

  @override
  String get partitionTypeLabel => 'ਨਵੇਂ ਪਾਰਟੀਸ਼ਨ ਲਈ ਕਿਸਮ:';

  @override
  String get partitionTypePrimary => 'ਪ੍ਰਾਇਮਰੀ';

  @override
  String get partitionTypeLogical => 'ਲਾਜ਼ੀਕਲ';

  @override
  String get partitionLocationLabel => 'ਨਵੇਂ ਪਾਰਟੀਸ਼ਨ ਲਈ ਟਿਕਾਣਾ:';

  @override
  String get partitionLocationBeginning => 'ਇਸ ਥਾਂ ਦੀ ਸ਼ੁਰੂਆਤ';

  @override
  String get partitionLocationEnd => 'ਇਸ ਥਾਂ ਦਾ ਅੰਤ';

  @override
  String get partitionFormatLabel => 'ਇਸ ਵਜੋਂ ਵਰਤੋਂ:';

  @override
  String get partitionFormatNone => 'ਬਿਨਾਂ ਫਾਰਮੈਟ ਦੇ ਛੱਡੋ';

  @override
  String partitionFormatKeep(String format) {
    return 'Leave formatted as $format';
  }

  @override
  String get partitionErase => 'ਪਾਰਟੀਸ਼ਨ ਨੂੰ ਫਾਰਮੈਟ ਕਰੋ';

  @override
  String get partitionMountPointLabel => 'ਮਾਊਂਟ ਪੁਆਇੰਟ:';

  @override
  String get confirmPageTitle => 'ਇੰਸਟਾਲ ਕਰਨ ਲਈ ਤਿਆਰ';

  @override
  String get confirmHeader => 'ਆਪਣੀਆਂ ਚੋਣਾਂ ਦੀ ਪੜਤਾਲ ਕਰੋ';

  @override
  String get confirmDiskEncryptionLVM => 'LUKS (LVM)';

  @override
  String get confirmDiskEncryptionZFS => 'LUKS (ZFS)';

  @override
  String get confirmDiskEncryptionTPM => 'TPM';

  @override
  String get confirmDiskEncryptionNone => 'ਕੋਈ ਨਹੀਂ';

  @override
  String get confirmDevicesTitle => 'ਡਿਵਾਈਸ';

  @override
  String get confirmEntryApplications => 'ਐਪਲੀਕੇਸ਼ਨਾਂ';

  @override
  String get confirmEntryDiskSetup => 'ਇੰਸਟਾਲੇਸ਼ਨ ਦੀ ਕਿਸਮ';

  @override
  String get confirmEntryDiskEncryption => 'ਡਿਸਕ ਇੰਕ੍ਰਿਪਸ਼ਨ';

  @override
  String get confirmEntryInstallationDisk => 'ਇੰਸਟਾਲੇਸ਼ਨ ਡਿਸਕ';

  @override
  String get confirmEntryProprietarySoftware => 'ਪ੍ਰੋਪਰੇਟਰੀ ਸਾਫਟਵੇਅਰ';

  @override
  String get confirmSectionGeneralTitle => 'ਆਮ';

  @override
  String get confirmSectionSecurityAndMoreTitle => 'ਸੁਰੱਖਿਆ ਅਤੇ ਹੋਰ';

  @override
  String get confirmPartitionsTitle => 'ਪਾਰਟੀਸ਼ਨ';

  @override
  String get confirmPartitionTables =>
      'The partition tables of the following devices are changed:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmProprietarySoftwareCodecs => 'Codecs';

  @override
  String get confirmProprietarySoftwareCodecsDrivers => 'Codecs ਅਤੇ ਡਰਾਇਵਰ';

  @override
  String get confirmProprietarySoftwareDrivers => 'ਡਰਾਇਵਰ';

  @override
  String get confirmInstallButton => 'ਇੰਸਟਾਲ';

  @override
  String get confirmTableErased => 'ਮਿਟਾਏ';

  @override
  String get confirmTableUnchanged => 'ਬਿਨਾਂ ਤਬਦੀਲੀ';

  @override
  String confirmTableResized(String oldsize, String newsize) {
    return 'Resized from $oldsize to $newsize';
  }

  @override
  String confirmTableCreatedFormattedMounted(String format, String mountpoint) {
    return 'Created and formatted as $format used for $mountpoint';
  }

  @override
  String confirmTableFormattedMounted(String format, String mountpoint) {
    return 'Formatted as $format used for $mountpoint';
  }

  @override
  String confirmTableMounted(String mountpoint) {
    return '$mountpoint ਲਈ ਵਰਤਿਆ';
  }

  @override
  String confirmTableFormatted(String format) {
    return '$format ਵਜੋਂ ਫਾਰਮੈਟ ਕੀਤਾ';
  }

  @override
  String get installationCompleteTitle => 'ਇੰਸਟਾਲੇਸ਼ਨ ਪੂਰੀ ਹੋਈ';

  @override
  String readyToUse(String system) {
    return '$system ਨੂੰ ਇੰਸਟਾਲ ਕੀਤਾ ਗਿਆ ਹੈ ਅਤੇ ਵਰਤਣ ਲਈ ਤਿਆਰ ਹੈ';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system** has been copied to the disk';
  }

  @override
  String restartInto(String system) {
    return '$system ਲਈ ਮੁੜ-ਚਾਲੂ ਕਰੋ';
  }

  @override
  String get restartWarningBody =>
      'Restart to complete the installation or continue testing.\nAny changes you make will not be saved.';

  @override
  String get rebootToConfigureWarning =>
      'You have to restart the computer to continue the installation process.';

  @override
  String get shutdown => 'ਬੰਦ ਕਰੋ';

  @override
  String get restartNow => 'ਹੁਣੇ ਮੁੜ-ਚਾਲੂ ਕਰੋ';

  @override
  String get continueTesting => 'ਟੈਸਟ ਕਰਨਾ ਜਾਰੀ ਰੱਖੋ';

  @override
  String get bitlockerInfoTitle => 'BitLocker detected';

  @override
  String get bitlockerInfoDescription =>
      'One or more partitions are encrypted with BitLocker.';

  @override
  String get bitlockerInfoDisable =>
      'To install alongside Windows, disable BitLocker in Windows.';

  @override
  String get bitlockerInfoRecovery =>
      'Windows may request recovery keys on boot after installation.';

  @override
  String bitlockerInfoInstructions(String url) {
    return 'For instructions, visit the <a href=\"$url\">BitLocker guide</a>.';
  }

  @override
  String get bitlockerWarningTitle =>
      'You may lose all your data without BitLocker recovery keys';

  @override
  String get restartComputer => 'ਕੰਪਿਊਟਰ ਨੂੰ ਮੁੜ-ਚਾਲੂ ਕਰੋ';

  @override
  String get restartComputerTitle => 'ਕੰਪਿਊਟਰ ਨੂੰ ਮੁੜ-ਚਾਲੂ ਕਰਨਾ ਹੈ?';

  @override
  String get restartInstaller => 'Restart installer';

  @override
  String get restartIntoWindows => 'Windows ਲਈ ਮੁੜ-ਚਾਲੂ ਕਰੋ';

  @override
  String get restartIntoWindowsTitle => 'Windows ਲਈ ਮੁੜ-ਚਾਲੂ ਕਰਨਾ ਹੈ?';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return 'Are you sure you want to restart your computer? You will need to restart the $DISTRO installation later to finish installing $DISTRO.';
  }

  @override
  String installationSlidesTitle(String RELEASE) {
    return '$RELEASE ਵਲੋਂ ਜੀ ਆਇਆਂ ਨੂੰ';
  }

  @override
  String get installationSlidesAvailable => 'ਮੌਜੂਦ:';

  @override
  String get installationSlidesIncluded => 'ਸ਼ਾਮਲ ਹੈ:';

  @override
  String get installationSlidesWelcomeTitle =>
      'ਤੇਜ਼, ਮੁਫ਼ਤ ਅਤੇ ਪੂਰੇ ਫ਼ੀਚਰਾਂ ਨਾਲ ਭਰਪੂਰ';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return 'The latest version of $DISTRO makes computing easier than ever.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'Whether you\'re a developer, creator, gamer or administrator you\'ll find new tools to improve your productivity and enhance your experience in $RELEASE.';
  }

  @override
  String get installationSlidesSoftwareTitle => 'All the applications you need';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'Install, manage and update all your apps in Ubuntu Software, including thousands of applications from both the Snap Store and $DISTRO archive.';
  }

  @override
  String get installationSlidesDevelopmentTitle =>
      'Develop with the best of open source';

  @override
  String installationSlidesDevelopmentBody(String DISTRO, Object OS) {
    return '$DISTRO is the ideal workstation for app or web development, data science and AI/ML as well as devops and administration. Every $DISTRO release includes the latest toolchains and supports all major IDEs.';
  }

  @override
  String get installationSlidesCreativityTitle => 'Enhance your creativity';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return 'If you\'re an animator, designer, video creator or game developer it\'s easy to bring your workflows to $DISTRO with support for open source and industry standard software and applications.';
  }

  @override
  String get installationSlidesGamingTitle => 'Great for gaming';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return '$DISTRO supports the latest NVIDIA and Mesa drivers to improve performance and compatibility. Thousands of Windows titles play great on $DISTRO via applications like Steam with no additional configuration.';
  }

  @override
  String get installationSlidesSecurityTitle => 'ਪ੍ਰਾਈਵੇਟ ਅਤੇ ਸੁਰੱਖਿਅਤ';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return '$DISTRO provides all of the tools you need to stay private and secure online. With built in firewall and VPN support and a host of privacy-centric applications to ensure you are in full control of your data.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return 'All $DISTRO LTS releases come with five years of security patching included, extending to ten years with an Ubuntu Pro subscription.';
  }

  @override
  String get installationSlidesProductivityTitle =>
      'Power up your productivity';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return '$DISTRO Desktop includes LibreOffice, a suite of Microsoft Office compatible open source applications for documents, spreadsheets and presentations. Popular collaboration tools are also available.';
  }

  @override
  String get installationSlidesAccessibilityTitle => 'ਹਰੇਕ ਦੀ ਪਹੁੰਚ ਵਿੱਚ';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return 'At the heart of the $DISTRO philosophy is the belief that computing is for everyone. With advanced accessibility tools and options to change language, colours and text size, $DISTRO makes computing easy - whoever and wherever you are.';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'Orca screen reader';

  @override
  String get installationSlidesAccessibilityLanguages => 'ਭਾਸ਼ਾ ਸਹਿਯੋਗ';

  @override
  String get installationSlidesSupportTitle => 'ਮਦਦ ਅਤੇ ਸਹਿਯੋਗ';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return 'The official $DISTRO documentation is available both online and via the Help icon in the dock.';
  }

  @override
  String get installationSlidesSupportCommunity =>
      'Ask Ubuntu covers a range of questions and responses and the Ubuntu Discourse provides guides and discussions for new and experienced users.';

  @override
  String get installationSlidesSupportEnterprise =>
      'For enterprise users Canonical provides commercial support to make it easy to onboard and manage Ubuntu securely in the workplace.';

  @override
  String get installationSlidesSupportResources => 'ਮਦਦਗਾਰ ਸਰੋਤ:';

  @override
  String get installationSlidesSupportDocumentation => 'Official documentation';

  @override
  String get installationSlidesSupportUbuntuPro =>
      'Enterprise-grade 24/7 support with Ubuntu Pro';

  @override
  String get nextSlideSemanticLabel => 'ਅਗਲੀ ਸਲਾਈਡ';

  @override
  String get previousSlideSemanticLabel => 'ਪਿਛਲੀ ਸਲਾਈਡ';

  @override
  String get playSlideshowSemanticLabel => 'ਸਲਾਈਡ-ਸ਼ੋ ਨੂੰ ਚਲਾਓ';

  @override
  String get pauseSlideshowSemanticLabel => 'Pause slideshow';

  @override
  String get toggleLogsSemanticLabel => 'Toggle install logs';

  @override
  String get copyingFiles => 'ਫ਼ਾਇਲਾਂ ਨੂੰ ਕਾਪੀ ਕੀਤਾ ਜਾ ਰਿਹਾ ਹੈ…';

  @override
  String get installingSystem => 'ਸਿਸਟਮ ਨੂੰ ਇੰਸਟਾਲ ਕੀਤਾ ਜਾ ਰਿਹਾ ਹੈ…';

  @override
  String get configuringSystem => 'ਸਿਸਟਮ ਨੂੰ ਸੈਟਅੱਪ ਕੀਤਾ ਜਾ ਰਿਹਾ ਹੈ…';

  @override
  String get installationFailed => 'ਇੰਸਟਾਲੇਸ਼ਨ ਫੇਲ੍ਹ ਹੋਈ';

  @override
  String get notEnoughDiskSpaceTitle => 'ਲੋੜੀਦੀ ਡਿਸਕ ਥਾਂ ਨਹੀਂ ਹੈ';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return '$DISTRO ਨੂੰ ਇੰਸਟਾਲ ਕਰਨ ਲਈ ਲੋੜੀਦੀ ਡਿਸਕ ਥਾਂ ਨਹੀਂ ਹੈ';
  }

  @override
  String notEnoughDiskSpaceBody(String DISTRO) {
    return 'The selected disk does not have enough disk space to install $DISTRO. Quit the installer to make space available or select another disk.';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'ਮੌਜੂਦ:';

  @override
  String get notEnoughDiskSpaceRequired => 'ਚਾਹੀਦੀ:';

  @override
  String get refreshPageTitle => 'ਅੱਪਡੇਟ ਮੌਜੂਦ ਹੈ';

  @override
  String get refreshHeader => 'ਇੰਸਟਾਲਰ ਲਈ ਅੱਪਡੇਟ ਮੌਜੂਦ ਹੈ';

  @override
  String get refreshUpdateNow => 'ਹੁਣੇ ਅੱਪਡੇਟ ਕਰੋ';

  @override
  String get refreshInfo =>
      'Update to the latest version for improved reliability and more features.';

  @override
  String get refreshReady => 'ਅੱਪਡੇਟ ਤਿਆਰ ਹੈ';

  @override
  String refreshCurrent(String snap, String version) {
    return 'ਮੌਜੂਦਾ $snap ਵਰਜ਼ਨ $version ਹੈ।';
  }

  @override
  String refreshInstall(String version) {
    return 'ਵਰਜ਼ਨ $version ਲਈ ਅੱਪਡੇਟ ਕਰੋ';
  }

  @override
  String refreshUpToDate(String version) {
    return 'The current version $version is up-to-date.';
  }

  @override
  String refreshUpdating(String snap) {
    return '$snap ਨੂੰ ਅੱਪਡੇਟ ਕੀਤਾ ਜਾ ਰਿਹਾ ਹੈ…';
  }

  @override
  String get refreshRestart => 'ਜਾਰੀ ਰੱਖਣ ਵਾਸਤੇ ਇੰਸਟਾਲਰ ਨੂੰ ਬੰਦ ਕਰਕੇ ਫੇਰ ਚਲਾਓ';

  @override
  String get refreshCloseLabel => 'ਇੰਸਟਾਲਰ ਨੂੰ ਬੰਦ ਕਰੋ';

  @override
  String refreshSnapPrerequisites(String snap) {
    return 'Ensuring $snap prerequisites...';
  }

  @override
  String refreshSnapRefresh(String snap) {
    return 'Refreshing $snap...';
  }

  @override
  String refreshSnapCheckRerefresh(String snap) {
    return 'Checking $snap re-refresh...';
  }

  @override
  String refreshSnapPrepare(String snap) {
    return '$snap ਨੂੰ ਤਿਆਰ ਕੀਤਾ ਜਾ ਰਿਹਾ ਹੈ…';
  }

  @override
  String refreshSnapDownload(String snap) {
    return '$snap ਨੂੰ ਡਾਊਨਲੋਡ ਕੀਤਾ ਜਾ ਰਿਹਾ ਹੈ…';
  }

  @override
  String refreshSnapValidate(String snap) {
    return 'Validating $snap...';
  }

  @override
  String refreshSnapMount(String snap) {
    return '$snap ਨੂੰ ਮਾਊਂਟ ਕੀਤਾ ਜਾ ਰਿਹਾ ਹੈ…';
  }

  @override
  String refreshSnapStopServices(String snap) {
    return 'Stopping $snap services...';
  }

  @override
  String refreshSnapRemoveAliases(String snap) {
    return 'Removing $snap aliases...';
  }

  @override
  String refreshSnapUnlink(String snap) {
    return 'Unlinking $snap...';
  }

  @override
  String refreshSnapUpdateAssets(String snap) {
    return 'Updating $snap assets...';
  }

  @override
  String refreshSnapUpdateKernelCommandLine(String snap) {
    return 'Updating $snap kernel command line...';
  }

  @override
  String refreshSnapCopyData(String snap) {
    return '$snap ਡਾਟੇ ਨੂੰ ਕਾਪੀ ਕੀਤਾ ਜਾ ਰਿਹਾ ਹੈ…';
  }

  @override
  String refreshSnapSetupProfiles(String snap) {
    return 'Setting up $snap security profiles...';
  }

  @override
  String refreshSnapLink(String snap) {
    return '$snap ਨੂੰ ਲਿੰਕ ਕੀਤਾ ਜਾ ਰਿਹਾ ਹੈ…';
  }

  @override
  String refreshSnapAutoConnect(String snap) {
    return 'Connecting $snap plugs and slots...';
  }

  @override
  String refreshSnapSetAutoAliases(String snap) {
    return 'Setting automatic $snap aliases...';
  }

  @override
  String refreshSnapSetupAliases(String snap) {
    return 'Setting up $snap aliases...';
  }

  @override
  String refreshSnapStartServices(String snap) {
    return 'Starting $snap services...';
  }

  @override
  String refreshSnapCleanup(String snap) {
    return '$snap ਨੂੰ ਮਿਟਾਇਆ ਜਾ ਰਿਹਾ ਹੈ…';
  }

  @override
  String get recoveryKeyTitle => 'ਰਿਕਵਰੀ ਕੁੰਜੀ';

  @override
  String get recoveryKeyTitleBadgeLabel => 'ਖਾਸ';

  @override
  String get recoveryKeyHeader => 'ਆਪਣੀ ਰਿਕਵਰੀ ਕੁੰਜੀ ਨੂੰ ਸੰਭਾਲੋ';

  @override
  String get recoveryKeyInfoHeader =>
      'You may lose all your data without a recovery key';

  @override
  String get recoveryKeyTextFieldLabel => 'ਰਿਕਵਰੀ ਕੁੰਜੀ';

  @override
  String get recoveryKeyStorageAdvice =>
      'You will need to provide this recovery key if decryption fails during startup. Without the key, you will lose access to all your data. Save it somewhere safe, such as a password manager.';

  @override
  String get recoveryKeyConfirmation =>
      'I saved my recovery key somewhere safe';

  @override
  String get recoveryKeyLinkLabel => 'ਹੋਰ ਜਾਣੋ';

  @override
  String get recoveryKeySaveToFileLabel => 'ਫ਼ਾਇਲ ਵਿੱਚ ਸੰਭਾਲੋ';

  @override
  String get recoveryKeyShowQrCodeLabel => 'QR ਕੋਡ ਨੂੰ ਵੇਖਾਓ';

  @override
  String recoveryKeyQrDialogTitle(String DISTRO) {
    return '$DISTRO ਡੈਸਕਟਾਪ - ਰਿਕਵਰੀ ਕੁੰਜੀ';
  }

  @override
  String get recoveryKeyQrDialogBody =>
      'Scan the QR code to copy the recovery key and save it somewhere safe, such as a password manager. You can also take a photo for later use.';

  @override
  String get recoveryKeyClipboardNotifiaction => 'ਕਲਿੱਪਬੋਰਡ ਵਿੱਚ ਕਾਪੀ ਕੀਤਾ';

  @override
  String get recoveryKeyExceptionFileSystemTitle =>
      'Recovery key file not saved';

  @override
  String get recoveryKeyExceptionDisallowedPathTitle =>
      'Recovery key file cannot be saved in a temporary location';

  @override
  String get recoveryKeyExceptionUnknownTitle => 'ਅਣਪਛਾਤੀ ਗਲਤੀ';

  @override
  String get recoveryKeyExceptionFileSystemBody =>
      'You do not have permission to write to that folder. Try a different location or use another method.';

  @override
  String get recoveryKeyExceptionDisallowedPathBody =>
      'Try a different location, such as a removable drive, or use another method.';

  @override
  String get recoveryKeyFilePickerTitle => 'Save recovery key file';

  @override
  String get recoveryKeyFilePickerFilter => 'ਲਿਖਤ ਫ਼ਾਇਲਾਂ';

  @override
  String landscapeMagicAttachInstructions(String url) {
    return 'Scan the QR code or enter the code below at <a href=\"https://$url\">$url</a>';
  }

  @override
  String get landscapePageTitle => 'Automated installation';

  @override
  String get landscapeHeader => 'Log in to Landscape';

  @override
  String get landscapeDomainHeader => 'Enter Landscape domain (FQDN)';

  @override
  String get landscapeDomainHintText => 'Landscape domain (FQDN)';

  @override
  String get landscapeDomainInstructions =>
      'Provide your organization\'s Landscape domain to log in and fetch an autoinstall file. You can get the FQDN from your IT support.';

  @override
  String get landscapeDomainTextField => 'Landscape domain (FQDN)';

  @override
  String get next => 'ਅੱਗੇ';

  @override
  String get landscapeDomainInvalidDomainWarning =>
      'Invalid domain, please check or contact your IT support';

  @override
  String get landscapeDomainNoInternetTitleWarning =>
      'ਜਾਰੀ ਰੱਖਣ ਲਈ ਇੰਟਰਨੈੱਟ ਨਾਲ ਕਨੈਕਟ ਕਰੋ';

  @override
  String get landscapeDomainNoInternetDescriptionWarning =>
      'Internet is needed to fetch the autoinstall file from Landscape';

  @override
  String get landscapeCodeExpiredWarning => 'Code expired, please try again';

  @override
  String get landscapeLoginFailedWarning => 'Login failed, please try again';

  @override
  String get landscapeErrorPageTitle =>
      'Automated install is not available for your account';

  @override
  String get landscapeErrorPageBody =>
      'Contact your IT support or try a different installation option.';

  @override
  String landscapeErrorPageCode(String code) {
    return 'Error code: $code';
  }

  @override
  String get landscapeConfirmPageSuccessInfoTitle =>
      'Ubuntu will install with the configuration provided by your organization';

  @override
  String get landscapeConfirmPageSuccessInfoContent =>
      'You can review the autoinstall file imported from Landscape below.';

  @override
  String get successIconSemanticLabel => 'ਸਫ਼ਲ';

  @override
  String get errorIconSemanticLabel => 'ਗਲਤੀ';

  @override
  String get closeIconSemanticLabel => 'ਬੰਦ ਕਰੋ';

  @override
  String get maximizeIconSemanticLabel => 'ਵੱਧ ਤੋਂ ਵੱਧ';

  @override
  String get minimizeIconSemanticLabel => 'ਘੱਟੋ-ਘੱਟ';

  @override
  String get tpmActionPageTitle =>
      'Hardware-backed encryption could not be enabled';

  @override
  String get tpmActionBadgeLabel => 'ਕਾਰਵਾਈ ਚਾਹੀਦੀ ਹੈ';

  @override
  String get tpmActionDetailsLabel => 'ਤਕਨੀਕੀ ਡਾਟਾ';

  @override
  String get tpmActionConfirmLabel => 'ਤਸਦੀਕ';

  @override
  String tpmActionSolutionLabel(int n, String text) {
    return 'Solution $n: $text';
  }

  @override
  String tpmActionSingleSolutionLabel(String text) {
    return 'Solution: $text';
  }

  @override
  String get tpmActionDocumentationLinkLabel =>
      'Learn more about hardware-backed encryption';

  @override
  String get tpmActionErrorSupportLabel =>
      'Try the solutions below, contact IT support, or choose a different encryption method.';

  @override
  String get tpmActionErrorSupportSingleLabel =>
      'Try the solution below, contact IT support, or choose a different encryption method.';

  @override
  String get tpmActionErrorSupportNoActionLabel =>
      'Contact IT support, or choose a different encryption method.';

  @override
  String get tpmActionErrorKindInternal => 'Internal error.';

  @override
  String get tpmActionErrorKindShutdownRequired => 'ਬੰਦ ਕਰਨ ਦੀ ਲੋੜ ਹੈ';

  @override
  String get tpmActionErrorKindRebootRequired => 'ਮੁੜ-ਚਾਲੂ ਕਰਨ ਦੀ ਲੋੜ ਹੈ';

  @override
  String get tpmActionErrorKindUnexpectedAction => 'Unexpected action.';

  @override
  String get tpmActionErrorKindMissingArgument => 'Missing argument.';

  @override
  String get tpmActionErrorKindInvalidArgument => 'Invalid argument.';

  @override
  String get tpmActionErrorKindActionFailed => 'Action failed.';

  @override
  String get tpmActionErrorKindRunningInVm =>
      'The current environment is a virtual machine.';

  @override
  String get tpmActionErrorKindSystemNotEfi =>
      'This computer is using older firmware (legacy BIOS) that is not compatible with this encryption method.';

  @override
  String get tpmActionErrorKindEfiVariableAccess =>
      'There is an issue with this computer\'s firmware.';

  @override
  String get tpmActionErrorKindNoSuitableTpm2Device =>
      'This computer does not have the required security hardware (TPM 2.0) for this encryption method.';

  @override
  String get tpmActionErrorKindTpmDeviceDisabled =>
      'This computer\'s TPM is disabled.';

  @override
  String get tpmActionErrorKindTpmHierarchiesOwned =>
      'This computer\'s TPM is already in use by another system or application.';

  @override
  String get tpmActionErrorKindTpmDeviceLockoutLockedOut =>
      'This computer\'s TPM is currently locked.';

  @override
  String get tpmActionErrorKindInsufficientTpmStorage =>
      'This computer\'s TPM does not have enough storage available.';

  @override
  String get tpmActionErrorKindUnsupportedPlatform =>
      'This computer is not compatible with hardware-backed encryption.';

  @override
  String get tpmActionErrorKindUefiDebuggingEnabled =>
      'UEFI debugging is enabled.';

  @override
  String get tpmActionErrorKindInsufficientDmaProtection =>
      'This computer is missing a required security feature (DMA protection).';

  @override
  String get tpmActionErrorKindNoKernelIommu =>
      'This computer is missing a required security feature (IOMMU).';

  @override
  String get tpmActionErrorKindHostSecurity =>
      'There is an issue with this computer\'s security configuration.';

  @override
  String get tpmActionErrorKindSysPrepApplicationsPresent =>
      'There is software running at startup that might prevent a secure connection with the computer\'s TPM.';

  @override
  String get tpmActionErrorKindAbsolutePresent =>
      'Absolute Persistence Module is enabled in this computer.';

  @override
  String get tpmActionErrorKindInvalidSecureBootMode =>
      'Secure boot is disabled in this computer or is not set in deployed mode.';

  @override
  String get tpmActionErrorKindWeakSecureBootAlgorithmDetected =>
      'Some of the certificates verifying software in this computer are outdated or use weak protection.';

  @override
  String get tpmActionErrorKindPreOsSecureBootAuthByEnrolledDigests =>
      'This computer is using a manual allowlist to verify software at startup.';

  @override
  String get tpmActionErrorKindAddonDriversPresent =>
      'Add-on drivers are present.';

  @override
  String get tpmActionErrorKindGenericTpm =>
      'There is an issue with this computer\'s TPM.';

  @override
  String get tpmActionErrorKindGenericFirmware =>
      'There is an issue with this computer\'s firmware.';

  @override
  String get tpmActionFixActionReboot => 'Restart';

  @override
  String get tpmActionFixActionShutdown => 'Power off';

  @override
  String get tpmActionFixActionRebootToFwSettings =>
      'Restart to firmware settings';

  @override
  String get tpmActionFixActionRebootToFwSettingsInstructions =>
      'If firmware settings do not load automatically, restart and press the settings key repeatedly during startup (commonly F2, F10 or Delete).';

  @override
  String get tpmActionFixActionRebootToFwSettingsInsufficientDmaProtection =>
      'Enable DMA protection manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsInsufficientTpmStorage =>
      'Clear TPM manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsInvalidSecureBootMode =>
      'Enable secure boot manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsNoKernelIommu =>
      'Enable IOMMU manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsNoSuitablePcrBank =>
      'Enable PCR banks manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmDeviceDisabled =>
      'Enable TPM manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmDeviceLockoutLockedOut =>
      'Clear TPM manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmHierarchiesOwned =>
      'Clear TPM manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsAbsolutePresent =>
      'Disable Absolute Persistence Module manually';

  @override
  String get tpmActionFixActionContactOem => 'Contact OEM';

  @override
  String get tpmActionFixActionContactOsVendor => 'Contact OS vendor';

  @override
  String get tpmActionFixActionEnableTpmViaFirmware => 'Enable TPM on restart';

  @override
  String get tpmActionFixActionEnableAndClearTpmViaFirmware =>
      'Enable and clear TPM on restart';

  @override
  String get tpmActionFixActionClearTpmViaFirmware => 'Clear TPM on restart';

  @override
  String get tpmActionFixActionClearTpm => 'Clear TPM';

  @override
  String get tpmActionFixActionProceed => 'ਅਣਡਿੱਠਾ';

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
  String get tpmActionRestartLabel => 'ਮੁੜ-ਚਾਲੂ';

  @override
  String get tpmActionRestartAndEnableTpmLabel =>
      'ਮੁੜ-ਚਾਲੂ ਕਰੋ ਅਤੇ TPM ਸਮਰੱਥ ਕਰੋ';

  @override
  String get tpmActionRestartAndClearTpmLabel => 'ਮੁੜ-ਚਾਲੂ ਕਰੋ ਅਤੇ TPM ਮਿਟਾਓ';

  @override
  String get tpmActionIgnoreAndContinueLabel => 'ਅਣਡਿੱਠਾ ਕਰਕੇ ਜਾਰੀ ਰੱਖੋ';

  @override
  String get tpmActionFixActionClearTpmWarningTitle =>
      'Clearing the TPM erases all encryption keys';

  @override
  String get tpmActionFixActionClearTpmWarningBody =>
      'You will lose access to all data in encrypted drives for which you do not have recovery keys. It will also break other features that depend on the TPM, such as authentication and certificates.';

  @override
  String get tpmActionFixActionClearTpmConfirmationLabel =>
      'I understand the consequences of clearing the TPM';

  @override
  String get tpmActionFixActionCaveatConfirm =>
      'You might be asked to confirm this action on restart.';

  @override
  String get tpmActionFixActionCaveatRetry =>
      'Then you will need to start the installation again.';

  @override
  String get tpmActionErrorTitle => 'This solution failed';

  @override
  String get tpmActionErrorDescription =>
      'Try a different solution or contact IT support.';

  @override
  String get manualPartitioningWarningBody =>
      'Try something else. You may also <a href=\"\">send an error report</a>.';
}
