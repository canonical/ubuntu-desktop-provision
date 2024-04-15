import 'ubuntu_bootstrap_localizations.dart';

/// The translations for Sinhala Sinhalese (`si`).
class UbuntuBootstrapLocalizationsSi extends UbuntuBootstrapLocalizations {
  UbuntuBootstrapLocalizationsSi([String locale = 'si']) : super(locale);

  @override
  String get appTitle => 'උබුන්ටු වැඩතල ස්ථාපකය';

  @override
  String windowTitle(String RELEASE) {
    return '$RELEASE ස්ථාපනය';
  }

  @override
  String get autoinstallTitle => 'Type of installation';

  @override
  String autoinstallHeader(String DISTRO) {
    return 'How would you like to install $DISTRO?';
  }

  @override
  String get autoinstallInstructions => 'Enter the autoinstall.yaml URL:';

  @override
  String get autoinstallInteractiveOption => 'Interactive installation';

  @override
  String get autoinstallInteractiveDescription => 'For users who want to be guided step by step through the installation.';

  @override
  String get autoinstallAutomatedOption => 'Automated installation';

  @override
  String get autoinstallAutomatedDescription => 'For advanced users who have an autoinstall.yaml for consistent and repeatable system setups.';

  @override
  String get changeButtonText => 'වෙනස් කරන්න';

  @override
  String get quitButtonText => 'ස්ථාපනයෙන් ඉවතට';

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
    return 'බලන්න හෝ ස්ථාපනය කරන්න';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return 'What do you want to do with $DISTRO?';
  }

  @override
  String get tryOrInstallRepairOption => 'ස්ථාපනය අලුත්වැඩියාව';

  @override
  String get tryOrInstallRepairDescription => 'ලේඛන හෝ සැකසුම් ස්පර්ශ නොකර ස්ථාපිත සියළුම මෘදුකාංග යළි ස්ථාපනය අළුත්වැඩියාව මගින් සිදුවේ.';

  @override
  String tryOption(String RELEASE) {
    return '$RELEASE අත්හදා බලන්න';
  }

  @override
  String tryDescription(String RELEASE) {
    return 'ඔබගේ පරිගණකයට කිසිදු වෙනසක් නොකර $RELEASE බැලීමට හැකිය.';
  }

  @override
  String installOption(String RELEASE) {
    return '$RELEASE ස්ථාපනය කරන්න';
  }

  @override
  String installDescription(String RELEASE) {
    return 'ඔබගේ වත්මන් මෙහෙයුම් පද්ධතිය සමඟ (හෝ ඒ වෙනුවට) $RELEASE ස්ථාපනය කරන්න. මෙයට එතරම් කාලයක් ගත නොවේ.';
  }

  @override
  String tryOrInstallReleaseNotesLabel(String url) {
    return 'මෙතැනින් <a href=\"$url\">නිකුතු සටහන්</a> කියවීමට හැකිය.';
  }

  @override
  String get rstTitle => 'RST අක්‍රිය කරන්න';

  @override
  String get rstHeader => 'Turn off RST to continue';

  @override
  String rstDescription(String DISTRO) {
    return 'මෙම පරිගණකය ඉන්ටෙල් RST (ශ්‍රීඝ්‍ර ආචයන තාක්‍ෂණය) භාවිතා කරයි. උබුන්ටු ස්ථාපනයට පෙර වින්ඩෝස් හි RST අක්‍රිය කළ යුතුය.';
  }

  @override
  String rstInstructions(String url) {
    return 'උපදෙස් සඳහා, දුරකථනයක හෝ වෙනත් උපාංගයක මෙම පිටුව අරින්න: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'ආරක්‍ෂිත ඇරඹුම හැඩගසන්න';

  @override
  String get configureSecureBootDescription => 'ඔබ තෙවන පාර්ශ්ව ධාවක මෘදුකාංග ස්ථාපනයට තෝරාගෙන ඇත. මේ සඳහා ආරක්‍ෂිත ඇරඹුම අක්‍රිය කළ යුතුය.\nමෙය සිදු කිරීම සඳහා, ඔබ දැන් ආරක්‍ෂණ යතුරක් තෝරාගෙන පද්ධතිය යළි ආරම්භ වන විට එය ඇතුල් කරන්න.';

  @override
  String get configureSecureBootOption => 'ආරක්‍ෂිත ඇරඹුම හැඩගසන්න';

  @override
  String get chooseSecurityKey => 'ආරක්‍ෂණ යතුරක් තෝරන්න';

  @override
  String get confirmSecurityKey => 'ආරක්‍ෂණ යතුර තහවුරු කරන්න';

  @override
  String get dontInstallDriverSoftwareNow => 'දැනට ධාවක මෘදුකාංගය ස්ථාපනය නොකරන්න';

  @override
  String get dontInstallDriverSoftwareNowDescription => 'එය පසුව මෘදුකාංග හා යාවත්කාල හරහා ස්ථාපනය කිරීමට හැකිය.';

  @override
  String get configureSecureBootSecurityKeyRequired => 'ආරක්‍ෂණ යතුර වුවමනාය';

  @override
  String get secureBootSecurityKeysDontMatch => 'ආරක්‍ෂණ යතුරු නොගැළපේ';

  @override
  String get showSecurityKey => 'ආරක්‍ෂණ යතුර පෙන්වන්න';

  @override
  String get hideSecurityKey => 'Hide';

  @override
  String get updatesOtherSoftwarePageTitle => 'යාවත්කාල හා වෙනත් මෘදුකාංග';

  @override
  String get updatesOtherSoftwarePageDescription => 'ස්ථාපනයට කැමති යෙදුම් මොනවාද?';

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
  String get otherOptions => 'වෙනත් විකල්ප';

  @override
  String get installThirdPartyTitle => 'චිත්‍රක හා වයි-ෆයි දෘඪාංග සඳහා තෙවන පාර්ශ්ව මෘදුකාංග මෙන්ම අතිරේක මාධ්‍ය ආකෘති ස්ථාපනය කරන්න';

  @override
  String get installThirdPartySubtitle => 'මෙම මෘදුකාංගය එහි ප්‍රලේඛනයෙහි ඇතුළත් බලපත්‍ර නියම වලට යටත් වේ. ඇතැම් දෑ ස්වාම්‍යයි.';

  @override
  String get installDriversTitle => 'චිත්‍රක හා වයි-ෆයි දෘඪාංග සඳහා තෙවන පාර්ශ්ව මෘදුකාංග ස්ථාපනය කරන්න';

  @override
  String get installDriversSubtitle => 'මෙම ධාවක එහි ප්‍රලේඛනයෙහි ඇතුළත් බලපත්‍ර නියම වලට යටත් වේ. ඒවා ස්වාම්‍යයි.';

  @override
  String get installCodecsTitle => 'අතිරේක මාධ්‍ය ආකෘති සඳහා සහාය බාගෙන ස්ථාපනය කරන්න';

  @override
  String get installCodecsSubtitle => 'මෙම මෘදුකාංගය එහි ප්‍රලේඛනයෙහි ඇතුළත් බලපත්‍ර නියම වලට යටත් වේ. ඇතැම් දෑ ස්වාම්‍යයි.';

  @override
  String get batteryWarning => 'The computer is not plugged in to a power source.';

  @override
  String get offlineWarning => 'ඔබ දැනට මාර්ගඅපගතයි';

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
  String get installationTypeTitle => 'ස්ථාපන වර්ගය';

  @override
  String installationTypeHeader(String DISTRO) {
    return 'How do you want to install $DISTRO?';
  }

  @override
  String installationTypeOSDetected(String os) {
    return 'මෙම පරිගණකයෙහි දැනට $os තිබේ. ඔබ කිරීමට කැමති කුමක්ද?';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return 'මෙම පරිගණකයෙහි දැනට $os1 හා $os2 තිබේ. ඔබ කිරීමට කැමති කුමක්ද?';
  }

  @override
  String get installationTypeMultiOSDetected => 'මෙම පරිගණකයෙහි දැනට මෙහෙයුම් පද්ධති කිහිපයක් තිබේ. ඔබ කිරීමට කැමති කුමක්ද?';

  @override
  String get installationTypeNoOSDetected => 'මෙම පරිගණකයෙහි කිසිදු මෙහෙයුම් පද්ධතියක් අනාවරණය වී නැත. ඔබ කිරීමට කැමති කුමක්ද?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'තැටිය මකාදමා $DISTRO ස්ථාපනය කරන්න';
  }

  @override
  String get installationTypeEraseInfo => 'Start from scratch on your selected disk.';

  @override
  String get installationTypeAdvancedLabel => 'වැඩිදුර විශේෂාංග...';

  @override
  String get installationTypeAdvancedTitle => 'වැඩිදුර විශේෂාංග';

  @override
  String get installationTypeExperimental => 'Experimental';

  @override
  String get installationTypeNone => 'කිසිවක් නැත';

  @override
  String get installationTypeNoneSelected => 'තේරීමක් නැත';

  @override
  String get installationTypeLVM => 'Use LVM';

  @override
  String get installationTypeLVMSelected => 'LVM තෝරා ඇත';

  @override
  String get installationTypeLVMEncryption => 'Use LVM and encryption';

  @override
  String get installationTypeLVMEncryptionSelected => 'LVM හා සංකේතනය තෝරා ඇත';

  @override
  String get installationTypeEncryptInfo => 'ඔබ ඊළඟ පියවරේදී ආරක්‍ෂණ යතුරක් තෝරා ගනු ඇත.';

  @override
  String get installationTypeZFS => 'පරීක්‍ෂාත්මක: තැටිය මකාදමා ZFS භාවිතා කරන්න';

  @override
  String get installationTypeZFSEncryption => 'Erase disk and use ZFS with encryption';

  @override
  String get installationTypeZFSSelected => 'ZFS තෝරා ඇත';

  @override
  String get installationTypeZFSEncryptionSelected => 'ZFS and encryption selected';

  @override
  String get installationTypeTPM => 'Enable hardware-backed full disk encryption';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return 'This is an experimental feature. It may not work with your hardware of future $DISTRO releases. <a href=\"$url\">Read about TPM encryption</a> before your choose this option.';
  }

  @override
  String get installationTypeTPMSelected => 'TPM selected';

  @override
  String installationTypeReinstall(String os) {
    return '$os මකාදමා නැවත ස්ථාපනය කරන්න';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">අවවාදයයි:</font> මෙය ඔබගේ සියළුම $os වැඩසටහන්, ලේඛන, ඡායාරූප, ගීත සහ අනෙකුත් ගොනු මකා දමයි.';
  }

  @override
  String installationTypeAlongside(String product, String os) {
    return '$os සමඟ $product ස්ථාපනය කරන්න';
  }

  @override
  String installationTypeAlongsideDual(String product, String os1, String os2) {
    return '$os1 සහ $os2 සමඟ $product ස්ථාපනය කරන්න';
  }

  @override
  String installationTypeAlongsideMulti(String product) {
    return 'ඒවා සමඟ $product ස්ථාපනය කරන්න';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return 'අන් පංගුවලට පසකින් $product ස්ථාපනය කරන්න';
  }

  @override
  String get installationTypeAlongsideInfo => 'ලේඛන, ගීත සහ අනෙකුත් පෞද්. ගොනු රඳවා ගැනෙයි. පරිගණකය ආරම්භ වන සැමවිට අවශ්‍ය මෙහෙයුම් පද්ධතිය තේරීමට හැකිය.';

  @override
  String get installationTypeManual => 'වෙන යමක්';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'ඔබටම පංගු සෑදීමට හෝ යළි ප්‍රමාණනයට, හෝ $DISTRO සඳහා පංගු කිහිපයක් තේරීමට හැකිය';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'තැටිය මකාදමා $DISTRO ස්ථාපනය කරන්න';
  }

  @override
  String get selectGuidedStorageInfo => 'Start from scratch on your selected disk.';

  @override
  String get selectGuidedStorageDriveDropdownLabel => 'Select drive:';

  @override
  String get selectGuidedStoragePartitionDropdownLabel => 'Select partition:';

  @override
  String get selectGuidedStorageInfoLabel => 'සමස්ත තැටිය භාවිතා වනු ඇත:';

  @override
  String get selectGuidedStorageInstallNow => 'ස්ථාපනය කරන්න';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return 'Choose where to install $DISTRO';
  }

  @override
  String get installAlongsideSpaceDivider => 'පහත වෙන්කුරුව ඇදීමෙන් ධාවකයේ ඉඩ වෙන් කරන්න:';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return 'කුඩා පංගු $num ක් සඟවා ඇත, තවත් පාලනයට <a href=\"$url\">සංකීර්ණ පංගුකරණ මෙවලම</a> යොදා ගන්න';
  }

  @override
  String get installAlongsideResizePartition => 'පංගුව යළි ප්‍රමාණනය';

  @override
  String get installAlongsideAllocateSpace => 'ඉඩ වෙන් කරන්න';

  @override
  String get installAlongsideFiles => 'ගොනු';

  @override
  String get installAlongsidePartition => 'පංගුව:';

  @override
  String get installAlongsideSize => 'ප්‍රමාණය:';

  @override
  String get installAlongsideAvailable => 'තිබේ:';

  @override
  String get allocateDiskSpace => 'තැටියේ ඉඩ වෙන් කරන්න';

  @override
  String get allocateDiskSpaceInvalidMountPointSlash => 'Mount points must start with \"/\"';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace => 'Mount points cannot contain spaces';

  @override
  String get diskHeadersDevice => 'උපාංගය';

  @override
  String get diskHeadersType => 'වර්ගය';

  @override
  String get diskHeadersMountPoint => 'සවිවන ස්ථානය';

  @override
  String get diskHeadersSize => 'ප්‍රමාණය';

  @override
  String get diskHeadersUsed => 'භාවිතයි';

  @override
  String get diskHeadersSystem => 'පද්ධතිය';

  @override
  String get diskHeadersFormat => 'පවිත්‍ර';

  @override
  String get freeDiskSpace => 'නිදහස් ඉඩ';

  @override
  String get newPartitionTable => 'නව පංගු වගුවක්';

  @override
  String get newPartitionTableConfirmationTitle => 'මෙම උපාංගයෙහි නව හිස් පංගු වගුවක් සාදන්නද?';

  @override
  String get newPartitionTableConfirmationMessage => 'ඔබ පංගුකරණයට සමස්ත උපාංගයක් තෝරාගෙන ඇත. ඔබ එහි නව පංගු වගුවක් සෑදීමට ගියහොත්, පවතින සියළුම පංගු ඉවත් කෙරෙනු ඇත.\n\nඔබට අවශ්‍ය නම් මෙම මෙහෙයුම පසුව අහෝසි කිරීමට හැකිය.';

  @override
  String get tooManyPrimaryPartitions => 'ප්‍රාථමික පංගු බොහෝය';

  @override
  String get partitionLimitReached => 'සීමාවට ළඟා විය';

  @override
  String get bootLoaderDevice => 'ඇරඹුම්කාරකය ස්ථාපනයට උපාංගය';

  @override
  String get partitionCreateTitle => 'පංගුව සාදන්න';

  @override
  String get partitionEditTitle => 'පංගුව සංස්කරණය';

  @override
  String get partitionSizeLabel => 'ප්‍රමාණය:';

  @override
  String get partitionTypeLabel => 'නව පංගුව සඳහා වර්ගය:';

  @override
  String get partitionTypePrimary => 'ප්‍රාථමික';

  @override
  String get partitionTypeLogical => 'තාර්කික';

  @override
  String get partitionLocationLabel => 'නව පංගුව සඳහා ස්ථානය:';

  @override
  String get partitionLocationBeginning => 'මෙම ඉඩෙහි ආරම්භය';

  @override
  String get partitionLocationEnd => 'මෙම ඉඩෙහි අවසානය';

  @override
  String get partitionFormatLabel => 'භාවිතය:';

  @override
  String get partitionFormatNone => 'පවිත්‍ර නොකර තබන්න';

  @override
  String partitionFormatKeep(String format) {
    return 'Leave formatted as $format';
  }

  @override
  String get partitionErase => 'පංගුව පවිත්‍ර කරන්න';

  @override
  String get partitionMountPointLabel => 'සවිවන ස්ථානය:';

  @override
  String get confirmPageTitle => 'වෙනස්කම් තැටියට ලියන්න';

  @override
  String get confirmHeader => 'ඔබ ඉදිරියට ගියහොත්, පහත ලැයිස්තුගත වෙනස්කම් තැටියට ලියනු ඇත. ඔබට අතින් තවත් වෙනස්කම් සිදු කිරීමට හැකි වනු ඇත.';

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
  String get confirmPartitionTables => 'පහත උපාංගවල පංගු වගු වෙනස් වේ:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmPartitionChanges => 'පහත පංගු වෙනස්කම් යෙදෙනු ඇත:';

  @override
  String confirmPartitionResize(String sysname, String oldsize, String newsize) {
    return '#$sysname පංගුව $oldsize සිට $newsize දක්වා ප්‍රමාණනය කෙරිණි';
  }

  @override
  String confirmPartitionFormatMount(String sysname, String format, String mount) {
    return '#$sysname පංගුව $mount සඳහා භාවිතයට $format ලෙස පවිත්‍රව ඇත';
  }

  @override
  String confirmPartitionFormat(String sysname, String format) {
    return '#$sysname පංගුව $format ලෙස පවිත්‍රව ඇත';
  }

  @override
  String confirmPartitionMount(String sysname, String mount) {
    return '#$sysname පංගුව $mount සඳහා භාවිතා වේ';
  }

  @override
  String confirmPartitionCreate(String sysname) {
    return '#$sysname පංගුව සෑදිණි';
  }

  @override
  String get confirmProprietarySoftwareCodecs => 'Codecs';

  @override
  String get confirmProprietarySoftwareCodecsDrivers => 'Codecs & drivers';

  @override
  String get confirmProprietarySoftwareDrivers => 'Drivers';

  @override
  String get confirmInstallButton => 'ස්ථාපනය අරඹන්න';

  @override
  String get installationCompleteTitle => 'ස්ථාපනය සම්පූර්ණයි';

  @override
  String readyToUse(String system) {
    return '$system ස්ථාපිත බැවින් භාවිතයට සූදානම්.';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system** has been copied to the disk';
  }

  @override
  String restartInto(String system) {
    return '$system වෙත යළි අරඹන්න';
  }

  @override
  String get restartWarningBody => 'Restart to complete the installation or continue testing.\nAny changes you make will not be saved.';

  @override
  String get rebootToConfigureWarning => 'You have to restart the computer to continue the installation process.';

  @override
  String get shutdown => 'වසා දමන්න';

  @override
  String get restartNow => 'යළි අරඹන්න';

  @override
  String get continueTesting => 'අත්හදා බැලීම දිගටම';

  @override
  String get bitlockerTitle => 'බිට්ලොකර් අක්‍රිය කරන්න';

  @override
  String get bitlockerHeader => 'Turn off BitLocker to continue';

  @override
  String bitlockerDescription(String option) {
    return 'මෙම පරිගණකය වින්ඩෝස් බිට්ලොකර් සංකේතනය භාවිතා කරයි.\nඋබුන්ටු ස්ථාපනයට පෙර ඔබ වින්ඩෝස් හි බිට්ලොකර් අක්‍රිය කළ යුතුය.';
  }

  @override
  String bitlockerInstructions(String url) {
    return 'උපදෙස් සඳහා, දුරකථනයක හෝ වෙනත් උපාංගයක මෙම පිටුව අරින්න: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get restartIntoWindows => 'වින්ඩෝස් වෙත යළි අරඹන්න';

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
  String get copyingFiles => 'ගොනු පිටපත් වෙමින්…';

  @override
  String get installingSystem => 'පද්ධතිය ස්ථාපනය වෙමින්…';

  @override
  String get configuringSystem => 'පද්ධතිය පිහිටුවමින්…';

  @override
  String get installationFailed => 'ස්ථාපනයට අසමත් විය';

  @override
  String get notEnoughDiskSpaceTitle => 'කණගාටුයි';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return 'Not enough disk space to install $DISTRO';
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
  String get validate => 'Validate';
}
