import 'ubuntu_bootstrap_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malayalam (`ml`).
class UbuntuBootstrapLocalizationsMl extends UbuntuBootstrapLocalizations {
  UbuntuBootstrapLocalizationsMl([String locale = 'ml']) : super(locale);

  @override
  String get appTitle => 'ഉബുണ്ടു ഡെസ്ക്ടോപ്പ് ഇൻസ്റ്റാളർ';

  @override
  String windowTitle(String RELEASE) {
    return '$RELEASE ഇൻസ്റ്റാൾ ചെയ്യുക';
  }

  @override
  String get autoinstallDirectTitle => 'Automated installation';

  @override
  String get autoinstallDirectHeader => 'Import autoinstall file';

  @override
  String get autoinstallDirectUrlLabel => 'You can enter the URL of an autoinstall file:';

  @override
  String get autoinstallDirectFileLabel => 'Or select a local file:';

  @override
  String get autoinstallDirectFileButtonLabel => 'Select file...';

  @override
  String get autoinstallDirectFileClearButtonLabel => 'Clear file';

  @override
  String get autoinstallDirectFilePickerTitle => 'Choose file';

  @override
  String get autoinstallDirectFilePickerFilterLabel => 'YAML files';

  @override
  String get autoinstallDirectImportButtonLabel => 'Import';

  @override
  String get autoinstallDirectErrorNetworkTitle => 'Autoinstall file is not reachable';

  @override
  String get autoinstallDirectErrorNetworkBody => 'Check the URL is correct, test your internet connection, or try later.';

  @override
  String get autoinstallDirectErrorInvalidUrlTitle => 'Invalid URL';

  @override
  String get autoinstallDirectErrorInvalidUrlBody => 'Check the URL is correct or select a local file.';

  @override
  String get autoinstallDirectErrorInvalidContentTitle => 'Invalid autoinstall file';

  @override
  String get autoinstallDirectErrorInvalidContentBody => 'Check the file or provide a different one.';

  @override
  String get autoinstallDirectErrorFileSystemTitle => 'Autoinstall file is not readable';

  @override
  String get autoinstallDirectErrorFileSystemBody => 'Check your permissions or provide a different file.';

  @override
  String get autoinstallDirectErrorUnkownTitle => 'Unknown error';

  @override
  String get autoinstallTitle => 'Type of installation';

  @override
  String autoinstallHeader(String DISTRO) {
    return 'How would you like to install $DISTRO?';
  }

  @override
  String get autoinstallInstructions => 'Enter the autoinstall.yaml URL or local file path:';

  @override
  String get autoinstallInteractiveOption => 'Interactive installation';

  @override
  String get autoinstallInteractiveDescription => 'For users who want to be guided step by step through the installation.';

  @override
  String get autoinstallDirectOption => 'Automated with autoinstall file';

  @override
  String get autoinstallDirectDescription => 'For advanced users who have an autoinstall.yaml for consistent and repeatable system setups.';

  @override
  String get autoinstallLandscapeOption => 'Automated with Landscape';

  @override
  String get autoinstallLandscapeDescription => 'For users in organisations that provide an autoinstall file via Landscape.';

  @override
  String get changeButtonText => 'മാറ്റുക';

  @override
  String get quitButtonText => 'Quit installation';

  @override
  String loadingPageTitle(String DISTRO) {
    return 'Welcome to $DISTRO';
  }

  @override
  String loadingHeader(String DISTRO) {
    return 'Preparing $DISTRO…';
  }

  @override
  String get warningLabel => 'Warning:';

  @override
  String tryOrInstallTitle(String DISTRO) {
    return 'ഉപയോഗിച്ച് നോക്കുക അല്ലെങ്കിൽ ഇൻസ്റ്റാൾ ചെയ്യുക';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return 'What do you want to do with $DISTRO?';
  }

  @override
  String get tryOrInstallRepairOption => 'ഇൻസ്റ്റാളേഷൻ നന്നാക്കുക';

  @override
  String get tryOrInstallRepairDescription => 'റിപ്പയർ ചെയ്യുന്നത് ഡോക്യുമെന്റുകളോ ക്രമീകരണങ്ങളോ സ്പർശിക്കാതെ ഇൻസ്റ്റാൾ ചെയ്ത എല്ലാ സോഫ്റ്റ്വെയറുകളും വീണ്ടും ഇൻസ്റ്റാൾ ചെയ്യും.';

  @override
  String tryOption(String RELEASE) {
    return '$RELEASE ഉപയോഗിച്ച് നോക്കുക';
  }

  @override
  String tryDescription(String RELEASE) {
    return 'നിങ്ങളുടെ കമ്പ്യൂട്ടറിൽ മാറ്റങ്ങളൊന്നും വരുത്താതെ തന്നെ നിങ്ങൾക്ക് $RELEASE പരീക്ഷിക്കാവുന്നതാണ്.';
  }

  @override
  String installOption(String RELEASE) {
    return '$RELEASE ഇൻസ്റ്റാൾ ചെയ്യുക';
  }

  @override
  String installDescription(String RELEASE) {
    return 'നിങ്ങളുടെ നിലവിലെ ഓപ്പറേറ്റിംഗ് സിസ്റ്റത്തിനൊപ്പം (അല്ലെങ്കിൽ പകരം) $RELEASE ഇൻസ്റ്റാൾ ചെയ്യുക. ഇത് അധിക സമയം എടുക്കാൻ പാടില്ലാത്തതാണ്.';
  }

  @override
  String tryOrInstallReleaseNotesLabel(String url) {
    return 'നിങ്ങൾ <a href=\"$url\">റിലീസ് കുറിപ്പുകൾ</a> വായിക്കാൻ ആഗ്രഹിച്ചേക്കാം.';
  }

  @override
  String get rstTitle => 'RST ഓഫ് ചെയ്യുക';

  @override
  String get rstHeader => 'Turn off RST to continue';

  @override
  String rstDescription(String DISTRO) {
    return 'ഈ കമ്പ്യൂട്ടർ ഇന്റൽ ആർഎസ്ടി (റാപ്പിഡ് സ്റ്റോറേജ് ടെക്നോളജി) ഉപയോഗിക്കുന്നു. ഉബുണ്ടു ഇൻസ്റ്റാൾ ചെയ്യുന്നതിന് മുമ്പ് നിങ്ങൾ വിൻഡോസിൽ ആർഎസ്ടി ഓഫ് ചെയ്യേണ്ടതുണ്ട്.';
  }

  @override
  String rstInstructions(String url) {
    return 'നിർദ്ദേശങ്ങൾക്കായി, ഒരു ഫോണിലോ മറ്റ് ഉപകരണത്തിലോ ഈ പേജ് തുറക്കുക: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'സെക്യൂർ ബൂട്ട് ക്രമീകരിക്കുക';

  @override
  String get configureSecureBootDescription => 'നിങ്ങൾ മൂന്നാം-കക്ഷി ഡ്രൈവർ സോഫ്റ്റ്‌വെയർ ഇൻസ്റ്റാൾ ചെയ്യാൻ തിരഞ്ഞെടുത്തു. ഇതിന് സെക്യൂർ ബൂട്ട് ഓഫാക്കേണ്ടതുണ്ട്.\nഇത് ചെയ്യുന്നതിന്, നിങ്ങൾ ഇപ്പോൾ ഒരു സുരക്ഷാ കീ തിരഞ്ഞെടുക്കേണ്ടതുണ്ട്, കൂടാതെ സിസ്റ്റം പുനരാരംഭിക്കുമ്പോൾ അത് നൽകുകയും ചെയ്യേണ്ടതുമുണ്ട്.';

  @override
  String get configureSecureBootOption => 'സെക്യൂർ ബൂട്ട് ക്രമീകരിക്കുക';

  @override
  String get chooseSecurityKey => 'ഒരു സുരക്ഷാ കീ തിരഞ്ഞെടുക്കുക';

  @override
  String get confirmSecurityKey => 'സുരക്ഷാ കീ സ്ഥിരീകരിക്കുക';

  @override
  String get dontInstallDriverSoftwareNow => 'ഇപ്പോൾ ഡ്രൈവർ സോഫ്റ്റ്‌വെയർ ഇൻസ്റ്റാൾ ചെയ്യരുത്';

  @override
  String get dontInstallDriverSoftwareNowDescription => 'സോഫ്റ്റ്‌വെയർ & അപ്ഡേറ്റസിൽ നിന്ന് പിനീട് ഇൻസ്റ്റാൾ ചെയ്യാവുന്നതാണ്.';

  @override
  String get configureSecureBootSecurityKeyRequired => 'സുരക്ഷാ കീ ആവശ്യമാണ്';

  @override
  String get secureBootSecurityKeysDontMatch => 'സുരക്ഷാ കീകൾ പൊരുത്തപ്പെടുന്നില്ല';

  @override
  String get showSecurityKey => 'Show';

  @override
  String get hideSecurityKey => 'Hide';

  @override
  String get updatesOtherSoftwarePageTitle => 'അപ്ഡേറ്റുകളും മറ്റ് സോഫ്റ്റ്വെയറുകളും';

  @override
  String get updatesOtherSoftwarePageDescription => 'ആരംഭിക്കുന്നതിന് ഏതൊക്കെ ആപ്പുകളാണ് നിങ്ങൾ ഇൻസ്റ്റാൾ ചെയ്യാൻ ആഗ്രഹിക്കുന്നത്?';

  @override
  String get codecsAndDriversPageTitle => 'Optimise your computer';

  @override
  String get codecsAndDriversPageDescription => 'Install recommended proprietary software?';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return '$DISTRO ships with no proprietary software by default. Installing additional software may improve your computer\'s performance.';
  }

  @override
  String get codecsAndDriversNvidiaNote => 'NVIDIA graphics card detected';

  @override
  String get codecsAndDriversNvidiaBody => 'For the best performance of NVIDIA graphic cards, installing additional drivers is strongly recommended.';

  @override
  String get fullInstallationTitle => 'Extended selection';

  @override
  String get fullInstallationSubtitle => 'An offline-friendly selection of office tools, utilities and web browser.';

  @override
  String get minimalInstallationTitle => 'Default selection';

  @override
  String get minimalInstallationSubtitle => 'Just the essentials, web browser and basic utilities.';

  @override
  String get otherOptions => 'മറ്റ് തിരഞ്ഞെടുപ്പുകൾ';

  @override
  String get installThirdPartyTitle => 'ഗ്രാഫിക്‌സിനും വൈഫൈ ഹാർഡ്‌വെയറിനുമായി മൂന്നാം-കക്ഷി സോഫ്‌റ്റ്‌വെയറും അധിക മീഡിയ ഫോർമാറ്റുകളും ഇൻസ്റ്റാൾ ചെയ്യുക';

  @override
  String get installThirdPartySubtitle => 'ഈ സോഫ്റ്റ്‌വെയർ അതിന്റെ ഡോക്യുമെന്റേഷനിൽ ഉൾപ്പെടുത്തിയിട്ടുള്ള ലൈസൻസ് നിബന്ധനകൾക്ക് വിധേയമാണ്. ചിലത് ഉടമസ്ഥതയിലുള്ളതാണ്.';

  @override
  String get installDriversTitle => 'Install third-party software for graphics and Wi-Fi hardware';

  @override
  String get installDriversSubtitle => 'Including but not limited to NVIDIA drivers and similar';

  @override
  String get installCodecsTitle => 'Download and install support for additional media formats';

  @override
  String get installCodecsSubtitle => 'Including but not limited to MP3, MP4, MOV and similar';

  @override
  String get batteryWarning => 'The computer is not plugged in to a power source.';

  @override
  String get offlineWarning => 'You are currently offline';

  @override
  String get choosePassphraseTitle => 'Disk passphrase';

  @override
  String get choosePassphraseHeader => 'Create a passphrase';

  @override
  String get choosePassphraseBody => 'You need a passphrase to encrypt your files. You will be prompted for your passphrase every time you turn on your computer.';

  @override
  String get choosePassphraseHint => 'Choose a passphrase';

  @override
  String get choosePassphraseConfirmHint => 'Confirm the passphrase';

  @override
  String get choosePassphraseRequired => 'A passphrase is required';

  @override
  String get choosePassphraseMismatch => 'The passphrases do not match';

  @override
  String get choosePassphraseInfoHeader => 'Make sure you save your passphrase';

  @override
  String get choosePassphraseInfoBody => 'If you lose your passphrase, you will lose all of your data.';

  @override
  String get createPassphrase => 'Create a passphrase';

  @override
  String get confirmPassphrase => 'Confirm the passphrase';

  @override
  String get installationTypeTitle => 'ഇൻസ്റ്റാളേഷന്റെ തരം';

  @override
  String installationTypeHeader(String DISTRO) {
    return 'How do you want to install $DISTRO?';
  }

  @override
  String installationTypeOSDetected(String os) {
    return 'ഈ കമ്പ്യൂട്ടറിൽ നിലവിൽ $os ഉണ്ട്. നിങ്ങൾ എന്താണ് ചെയ്യാൻ ആഗ്രഹിക്കുന്നത്?';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return 'This computer currently has $os1 and $os2 on it. What would you like to do?';
  }

  @override
  String get installationTypeMultiOSDetected => 'This computer currently has multiple operating systems on it. What would you like to do?';

  @override
  String get installationTypeNoOSDetected => 'ഈ കമ്പ്യൂട്ടറിന് നിലവിൽ കണ്ടെത്തിയ ഓപ്പറേറ്റിംഗ് സിസ്റ്റങ്ങളൊന്നുമില്ല. നിങ്ങൾ എന്താണ് ചെയ്യാൻ ആഗ്രഹിക്കുന്നത്?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'ഡിസ്ക് മായ്ച്ച് $DISTRO ഇൻസ്റ്റാൾ ചെയ്യുക';
  }

  @override
  String get installationTypeEraseInfo => 'All data and partitions on the disk will be erased, including operating systems.';

  @override
  String get installationTypeAdvancedLabel => 'വിപുലമായ സവിശേഷതകൾ…';

  @override
  String get installationTypeAdvancedTitle => 'വിപുലമായ സവിശേഷതകൾ';

  @override
  String get installationTypeExperimental => 'Experimental';

  @override
  String get installationTypeNone => 'ഒന്നുമില്ല';

  @override
  String get installationTypeNoneSelected => 'ഒന്നും തിരഞ്ഞെടുത്തിട്ടില്ല';

  @override
  String get installationTypeLVM => 'Use LVM';

  @override
  String get installationTypeLVMSelected => 'LVM തിരഞ്ഞെടുത്തു';

  @override
  String get installationTypeLVMEncryption => 'Use LVM and encryption';

  @override
  String get installationTypeLVMEncryptionSelected => 'LVM and encryption selected';

  @override
  String get installationTypeEncryptInfo => 'അടുത്ത ഘട്ടത്തിൽ നിങ്ങൾ ഒരു സുരക്ഷാ കീ തിരഞ്ഞെടുക്കും.';

  @override
  String get installationTypeZFS => 'പരീക്ഷണാത്മകം: ഡിസ്ക് മായ്ച്ച് ZFS ഉപയോഗിക്കുക';

  @override
  String get installationTypeZFSEncryption => 'Erase disk and use ZFS with encryption';

  @override
  String get installationTypeZFSSelected => 'ZFS തിരഞ്ഞെടുത്തു';

  @override
  String get installationTypeZFSEncryptionSelected => 'ZFS and encryption selected';

  @override
  String get installationTypeTPM => 'Enable hardware-backed full disk encryption';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return 'This is an experimental feature. It may not work with your hardware or future $DISTRO releases. <a href=\"$url\">Read about TPM encryption</a> before you choose this option.';
  }

  @override
  String get installationTypeTPMSelected => 'TPM selected';

  @override
  String installationTypeReinstall(String os) {
    return '$os മായ്ച്ച് വീണ്ടും ഇൻസ്റ്റാൾ ചെയ്യുക';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">മുന്നറിയിപ്പ്:</font> ഇത് നിങ്ങളുടെ എല്ലാ $os പ്രോഗ്രാമുകളും ഡോക്യുമെന്റുകളും ഫോട്ടോകളും സംഗീതവും മറ്റേതെങ്കിലും ഫയലുകളും ഇല്ലാതാക്കും.';
  }

  @override
  String installationTypeAlongside(String product, String os) {
    return '$os എന്നതിനൊപ്പം $product ഇൻസ്റ്റാൾ ചെയ്യുക';
  }

  @override
  String installationTypeAlongsideDual(String product, String os1, String os2) {
    return 'Install $product alongside $os1 and $os2';
  }

  @override
  String installationTypeAlongsideMulti(String product) {
    return 'Install $product alongside existing operating systems';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return 'Install $product alongside other partitions';
  }

  @override
  String installationTypeAlongsideInfo(String product) {
    return 'പ്രമാണങ്ങളും സംഗീതവും മറ്റ് സ്വകാര്യ ഫയലുകളും സൂക്ഷിക്കും. ഓരോ തവണ കമ്പ്യൂട്ടർ ഓണാകുമ്പോഴും ഏത് ഓപ്പറേറ്റിംഗ് സിസ്റ്റം വേണമെന്ന് നിങ്ങൾക്ക് തിരഞ്ഞെടുക്കാം.';
  }

  @override
  String installationTypeEraseAndInstall(String os, String product) {
    return 'Erase $os and install $product';
  }

  @override
  String installationTypeEraseAndInstallInfo(String os) {
    return 'All files and data from the existing $os installation will be permanently deleted.';
  }

  @override
  String get installationTypeManual => 'വേറെ എന്തെങ്കിലും';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'നിങ്ങൾക്ക് സ്വയം പാർട്ടീഷനുകൾ സൃഷ്ടിക്കുകയോ വലുപ്പം മാറ്റുകയോ ചെയ്യാം, അല്ലെങ്കിൽ $DISTRO-നായി ഒന്നിലധികം പാർട്ടീഷനുകൾ തിരഞ്ഞെടുക്കാം';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'ഡിസ്ക് മായ്ച്ച് $DISTRO ഇൻസ്റ്റാൾ ചെയ്യുക';
  }

  @override
  String get selectGuidedStorageInfo => 'Start from scratch on your selected disk.';

  @override
  String get selectGuidedStorageDriveDropdownLabel => 'Select drive:';

  @override
  String get selectGuidedStoragePartitionDropdownLabel => 'Select partition:';

  @override
  String get selectGuidedStorageInfoLabel => 'മുഴുവൻ ഡിസ്കും ഉപയോഗിക്കും:';

  @override
  String get selectGuidedStorageInstallNow => 'ഇപ്പോൾ ഇൻസ്റ്റാൾ ചെയ്യുക';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return 'Choose where to install $DISTRO';
  }

  @override
  String get installAlongsideSpaceDivider => 'Allocate drive space by dragging the divider below:';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return '$num smaller partitions are hidden, use the <a href=\"$url\">advanced partitioning tool</a> for more control';
  }

  @override
  String get installAlongsideResizePartition => 'Resize partition';

  @override
  String get installAlongsideAllocateSpace => 'Allocate space';

  @override
  String get installAlongsideFiles => 'Files';

  @override
  String get installAlongsidePartition => 'Partition:';

  @override
  String get installAlongsideSize => 'Size:';

  @override
  String get installAlongsideAvailable => 'Available:';

  @override
  String get allocateDiskSpace => 'ഡിസ്ക് സ്പേസ് നിയോഗിക്കുക';

  @override
  String get allocateDiskSpaceInvalidMountPointSlash => 'Mount points must start with \"/\"';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace => 'Mount points cannot contain spaces';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(Object format, Object mountpoint) {
    return '$format is not a supported filesystem for $mountpoint';
  }

  @override
  String get diskHeadersDevice => 'ഉപകരണം';

  @override
  String get diskHeadersType => 'തരം';

  @override
  String get diskHeadersMountPoint => 'മൗണ്ട് പോയിന്റ്';

  @override
  String get diskHeadersSize => 'വലിപ്പം';

  @override
  String get diskHeadersUsed => 'ഉപയോഗിച്ചു';

  @override
  String get diskHeadersSystem => 'സിസ്റ്റം';

  @override
  String get diskHeadersFormat => 'ഫോർമാറ്റ്';

  @override
  String get freeDiskSpace => 'ഒഴിഞ്ഞ ഇടം';

  @override
  String get newPartitionTable => 'പുതിയ പാർട്ടീഷൻ ടേബിൾ';

  @override
  String get newPartitionTableConfirmationTitle => 'ഈ ഉപകരണത്തിൽ ഒരു പുതിയ ശൂന്യമായ പാർട്ടീഷൻ ടേബിൾ സൃഷ്ടിക്കണോ?';

  @override
  String get newPartitionTableConfirmationMessage => 'പാർട്ടീഷൻ ചെയ്യാൻ നിങ്ങൾ ഒരു മുഴുവൻ ഉപകരണവും തിരഞ്ഞെടുത്തിരിക്കുന്നു. നിങ്ങൾ ഉപകരണത്തിൽ ഒരു പുതിയ പാർട്ടീഷൻ ടേബിൾ തയ്യാറാക്കുന്നത് തുടരുകയാണെങ്കിൽ, നിലവിലുള്ള എല്ലാ പാർട്ടീഷനുകളും നീക്കം ചെയ്യപ്പെടും.\n\nനിങ്ങൾക്ക് വേണമെങ്കിൽ ഈ പ്രവർത്തനം പിന്നീട് പഴയപടിയാക്കാനാകുമെന്ന കാര്യം ശ്രദ്ധിക്കുക.';

  @override
  String get tooManyPrimaryPartitions => 'Too many primary partitions';

  @override
  String get partitionLimitReached => 'Limit reached';

  @override
  String get bootLoaderDevice => 'ബൂട്ട് ലോഡർ ഇൻസ്റ്റലേഷനുള്ള ഉപകരണം';

  @override
  String get partitionCreateTitle => 'പാർട്ടീഷൻ ഉണ്ടാക്കുക';

  @override
  String get partitionEditTitle => 'പാർട്ടീഷൻ എഡിറ്റ് ചെയ്യുക';

  @override
  String get partitionSizeLabel => 'വലിപ്പം:';

  @override
  String get partitionTypeLabel => 'പുതിയ പാർട്ടീഷന്റെ തരം:';

  @override
  String get partitionTypePrimary => 'പ്രാഥമികം';

  @override
  String get partitionTypeLogical => 'ലോജിക്കൽ';

  @override
  String get partitionLocationLabel => 'പുതിയ പാർട്ടീഷനുള്ള സ്ഥലം:';

  @override
  String get partitionLocationBeginning => 'ഈ ഇടത്തിന്റെ തുടക്കം';

  @override
  String get partitionLocationEnd => 'ഈ ഇടത്തിന്റെ അവസാനം';

  @override
  String get partitionFormatLabel => 'ഇതായി ഉപയോഗിക്കുന്നു:';

  @override
  String get partitionFormatNone => 'Leave unformatted';

  @override
  String partitionFormatKeep(String format) {
    return 'Leave formatted as $format';
  }

  @override
  String get partitionErase => 'പാർട്ടീഷൻ ഫോർമാറ്റ് ചെയ്യുക';

  @override
  String get partitionMountPointLabel => 'മൗണ്ട് പോയിന്റ്:';

  @override
  String get confirmPageTitle => 'ഡിസ്കിൽ മാറ്റങ്ങൾ എഴുതുക';

  @override
  String get confirmHeader => 'നിങ്ങൾ തുടരുകയാണെങ്കിൽ, ചുവടെ ലിസ്റ്റുചെയ്തിരിക്കുന്ന മാറ്റങ്ങൾ ഡിസ്കുകളിലേക്ക് എഴുതപ്പെടും. നിങ്ങൾക്ക് സ്വമേധയാ കൂടുതൽ മാറ്റങ്ങൾ വരുത്താൻ കഴിയും.';

  @override
  String get confirmDiskEncryptionLVM => 'LUKS (LVM)';

  @override
  String get confirmDiskEncryptionZFS => 'LUKS (ZFS)';

  @override
  String get confirmDiskEncryptionTPM => 'TPM';

  @override
  String get confirmDiskEncryptionNone => 'None';

  @override
  String get confirmDevicesTitle => 'Devices';

  @override
  String get confirmEntryApplications => 'Applications';

  @override
  String get confirmEntryDiskSetup => 'Disk setup';

  @override
  String get confirmEntryDiskEncryption => 'Disk encryption';

  @override
  String get confirmEntryInstallationDisk => 'Installation disk';

  @override
  String get confirmEntryProprietarySoftware => 'Proprietary software';

  @override
  String get confirmSectionGeneralTitle => 'General';

  @override
  String get confirmSectionSecurityAndMoreTitle => 'Security & more';

  @override
  String get confirmPartitionsTitle => 'Partitions';

  @override
  String get confirmPartitionTables => 'ഇനിപ്പറയുന്ന ഉപകരണങ്ങളുടെ പാർട്ടീഷൻ ടേബിളുകൾ മാറ്റി:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmPartitionChanges => 'ഇനിപ്പറയുന്ന പാർട്ടീഷനുകൾ ഫോർമാറ്റ് ചെയ്യാൻ പോകുന്നു:';

  @override
  String confirmPartitionResize(String sysname, String oldsize, String newsize) {
    return 'partition <b>$sysname</b> resized from <b>$oldsize</b> to <b>$newsize</b>';
  }

  @override
  String confirmPartitionFormatMount(String sysname, String format, String mount) {
    return 'partition <b>$sysname</b> formatted as <b>$format</b> used for <b>$mount</b>';
  }

  @override
  String confirmPartitionFormat(String sysname, String format) {
    return 'partition <b>$sysname</b> formatted as <b>$format</b>';
  }

  @override
  String confirmPartitionMount(String sysname, String mount) {
    return 'partition <b>$sysname</b> used for <b>$mount</b>';
  }

  @override
  String confirmPartitionCreate(String sysname) {
    return 'partition <b>$sysname</b> created';
  }

  @override
  String get confirmProprietarySoftwareCodecs => 'Codecs';

  @override
  String get confirmProprietarySoftwareCodecsDrivers => 'Codecs & drivers';

  @override
  String get confirmProprietarySoftwareDrivers => 'Drivers';

  @override
  String get confirmInstallButton => 'ഇൻസ്റ്റാളുചെയ്യൽ ആരംഭിക്കുക';

  @override
  String get installationCompleteTitle => 'ഇൻസ്റ്റലേഷൻ പൂർത്തിയായി';

  @override
  String readyToUse(String system) {
    return '$system ഇൻസ്റ്റാൾ ചെയ്‌ത് ഉപയോഗിക്കാൻ തയ്യാറാണ്.';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system** has been copied to the disk';
  }

  @override
  String restartInto(String system) {
    return '$system-ലേക്ക് റീസ്റ്റാർട്ട് ചെയ്യുക';
  }

  @override
  String get restartWarningBody => 'Restart to complete the installation or continue testing.\nAny changes you make will not be saved.';

  @override
  String get rebootToConfigureWarning => 'You have to restart the computer to continue the installation process.';

  @override
  String get shutdown => 'ഷട്ട് ഡൗൺ';

  @override
  String get restartNow => 'Restart now';

  @override
  String get continueTesting => 'Continue testing';

  @override
  String get bitlockerTitle => 'BitLocker ഓഫാക്കുക';

  @override
  String get bitlockerHeader => 'Turn off BitLocker to continue';

  @override
  String bitlockerDescription(String option) {
    return 'ഈ കമ്പ്യൂട്ടർ Windows BitLocker എൻക്രിപ്ഷൻ ഉപയോഗിക്കുന്നു.\nഉബുണ്ടു ഇൻസ്റ്റാൾ ചെയ്യുന്നതിന് മുമ്പ് നിങ്ങൾ വിൻഡോസിൽ ബിറ്റ്‌ലോക്കർ ഓഫ് ചെയ്യേണ്ടതുണ്ട്.';
  }

  @override
  String bitlockerInstructions(String url) {
    return 'നിർദ്ദേശങ്ങൾക്കായി, ഒരു ഫോണിലോ മറ്റ് ഉപകരണത്തിലോ ഈ പേജ് തുറക്കുക: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get restartIntoWindows => 'വിന്ഡോസിലേക്ക് പുനരാരംഭിക്കുക';

  @override
  String get restartIntoWindowsTitle => 'Restart into Windows?';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return 'Are you sure you want to restart your computer? You will need to restart the $DISTRO installation later to finish installing $DISTRO.';
  }

  @override
  String installationSlidesTitle(String RELEASE) {
    return 'Welcome to $RELEASE';
  }

  @override
  String get installationSlidesAvailable => 'Available:';

  @override
  String get installationSlidesIncluded => 'Included:';

  @override
  String get installationSlidesWelcomeTitle => 'Fast, free and full of new features';

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
  String get installationSlidesDevelopmentTitle => 'Develop with the best of open source';

  @override
  String installationSlidesDevelopmentBody(String DISTRO) {
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
  String get installationSlidesSecurityTitle => 'Private and secure';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return '$DISTRO provides all of the tools you need to stay private and secure online. With built in firewall and VPN support and a host of privacy-centric applications to ensure you are in full control of your data.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return 'All $DISTRO LTS releases come with five years of security patching included, extending to ten years with an Ubuntu Pro subscription.';
  }

  @override
  String get installationSlidesProductivityTitle => 'Power up your productivity';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return '$DISTRO Desktop includes LibreOffice, a suite of Microsoft Office compatible open source applications for documents, spreadsheets and presentations. Popular collaboration tools are also available.';
  }

  @override
  String get installationSlidesAccessibilityTitle => 'Access for everyone';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return 'At the heart of the $DISTRO philosophy is the belief that computing is for everyone. With advanced accessibility tools and options to change language, colours and text size, $DISTRO makes computing easy - whoever and wherever you are.';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'Orca Screen Reader';

  @override
  String get installationSlidesAccessibilityLanguages => 'Language support';

  @override
  String get installationSlidesSupportTitle => 'Help and support';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return 'The official $DISTRO documentation is available both online and via the Help icon in the dock.';
  }

  @override
  String get installationSlidesSupportCommunity => 'Ask Ubuntu covers a range of questions and responses and the Ubuntu Discourse provides guides and discussions for new and experienced users.';

  @override
  String get installationSlidesSupportEnterprise => 'For enterprise users Canonical provides commercial support to make it easy to onboard and manage Ubuntu securely in the workplace.';

  @override
  String get installationSlidesSupportResources => 'Helpful resources:';

  @override
  String get installationSlidesSupportDocumentation => 'Official documentation';

  @override
  String get installationSlidesSupportUbuntuPro => 'Enterprise-grade 24/7 support with Ubuntu Pro';

  @override
  String get copyingFiles => 'Copying files…';

  @override
  String get installingSystem => 'Installing the system…';

  @override
  String get configuringSystem => 'Setting up the system…';

  @override
  String get installationFailed => 'Installation failed';

  @override
  String get notEnoughDiskSpaceTitle => 'Not enough disk space';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return 'Not enough disk space to install $DISTRO';
  }

  @override
  String notEnoughDiskSpaceBody(String DISTRO) {
    return 'The selected disk does not have enough disk space to install $DISTRO. Quit the installer to make space available or select another disk.';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'Available:';

  @override
  String get notEnoughDiskSpaceRequired => 'Required:';

  @override
  String get refreshPageTitle => 'Update available';

  @override
  String get refreshHeader => 'An update is available for the installer';

  @override
  String get refreshUpdateNow => 'Update now';

  @override
  String get refreshInfo => 'Update to the latest version for improved reliability and more features.';

  @override
  String get refreshReady => 'Update ready';

  @override
  String refreshCurrent(String snap, String version) {
    return 'The current $snap version is $version.';
  }

  @override
  String refreshInstall(String version) {
    return 'Update to version $version';
  }

  @override
  String refreshUpToDate(String version) {
    return 'The current version $version is up-to-date.';
  }

  @override
  String refreshUpdating(String snap) {
    return 'Updating $snap...';
  }

  @override
  String get refreshRestart => 'Please close the installer and relaunch to continue';

  @override
  String get refreshCloseLabel => 'Close installer';

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
    return 'Preparing $snap...';
  }

  @override
  String refreshSnapDownload(String snap) {
    return 'Downloading $snap...';
  }

  @override
  String refreshSnapValidate(String snap) {
    return 'Validating $snap...';
  }

  @override
  String refreshSnapMount(String snap) {
    return 'Mounting $snap...';
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
    return 'Copying $snap data...';
  }

  @override
  String refreshSnapSetupProfiles(String snap) {
    return 'Setting up $snap security profiles...';
  }

  @override
  String refreshSnapLink(String snap) {
    return 'Linking $snap...';
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
    return 'Cleaning up $snap...';
  }

  @override
  String get recoveryKeyTitle => 'TPM recovery key';

  @override
  String get recoveryKeyCommand => 'You can access your recovery key after installation with the following command:';

  @override
  String recoveryKeyWarning(String color) {
    return '<font color=\"$color\">Warning:</font> If you lose this security key, all data will be lost. If you need to, write down your key and keep it in a safe place elsewhere.';
  }

  @override
  String landscapeMagicAttachInstructions(Object url) {
    return 'Scan the QR code or enter the code below at <a href=\"https://$url\">$url</a>';
  }

  @override
  String get landscapePageTitle => 'Automated installation';

  @override
  String get landscapeHeader => 'Log in to Landscape';

  @override
  String get landscapeDomainHeader => 'Enter Landscape domain (FQDN)';

  @override
  String get landscapeDomainInstructions => 'Provide your organization\'s Landscape domain to log in and fetch an autoinstall file. You can get the FQDN from your IT support.';

  @override
  String get landscapeDomainTextField => 'Landscape domain (FQDN)';

  @override
  String get next => 'Next';

  @override
  String get landscapeDomainInvalidDomainWarning => 'Invalid domain, please check or contact your IT support';

  @override
  String get landscapeDomainNoInternetTitleWarning => 'Connect to the internet to continue';

  @override
  String get landscapeDomainNoInternetDescriptionWarning => 'Internet is needed to fetch the autoinstall file from Landscape';

  @override
  String get landscapeCodeExpiredWarning => 'Code expired, please try again';

  @override
  String get landscapeLoginFailedWarning => 'Login failed, please try again';
}
