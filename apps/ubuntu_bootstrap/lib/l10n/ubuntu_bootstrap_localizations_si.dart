import 'ubuntu_bootstrap_localizations.dart';

// ignore_for_file: type=lint

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
  String get autoinstallTitle => 'ස්ථාපන වර්ගය';

  @override
  String autoinstallHeader(String DISTRO) {
    return 'ඔබ $DISTRO ස්ථාපනයට කැමති කෙසේද?';
  }

  @override
  String get autoinstallInstructions => 'ස්වයංස්ථාපනය.yaml හි ඒ.ස.නි. හෝ ස්ථානීය ගොනුවේ පෙත ලියන්න:';

  @override
  String get autoinstallInteractiveOption => 'අන්‍යෝන්‍ය ස්ථාපනය';

  @override
  String get autoinstallInteractiveDescription => 'ස්ථාපනයේ දී පියවරෙන් පියවර මඟ පෙන්වීම සඳහා කැමති පරිශ්‍රීලකයින්ට.';

  @override
  String get autoinstallDirectOption => 'Automated with autoinstall file';

  @override
  String get autoinstallDirectDescription => 'For advanced users who have an autoinstall.yaml for consistent and repeatable system setups.';

  @override
  String get autoinstallLandscapeOption => 'Automated with Landscape';

  @override
  String get autoinstallLandscapeDescription => 'For users in organisations that provide an autoinstall file via Landscape.';

  @override
  String get changeButtonText => 'වෙනස් කරන්න';

  @override
  String get quitButtonText => 'ස්ථාපනයෙන් ඉවතට';

  @override
  String loadingPageTitle(String DISTRO) {
    return '$DISTRO වෙත පිළිගනිමු';
  }

  @override
  String loadingHeader(String DISTRO) {
    return '$DISTRO සූදානම් වෙමින්…';
  }

  @override
  String get warningLabel => 'අවවාදයයි:';

  @override
  String tryOrInstallTitle(String DISTRO) {
    return 'බලන්න හෝ ස්ථාපනය කරන්න';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return '$DISTRO සඳහා විකල්පයක් තෝරන්න';
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
  String get rstHeader => 'ඉදිරියට යාමට RST අක්‍රිය කරන්න';

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
  String get hideSecurityKey => 'සඟවන්න';

  @override
  String get updatesOtherSoftwarePageTitle => 'යෙදුම්';

  @override
  String get updatesOtherSoftwarePageDescription => 'ස්ථාපනයට කැමති යෙදුම් මොනවාද?';

  @override
  String get codecsAndDriversPageTitle => 'පරිගණකය ප්‍රශස්ත කරන්න';

  @override
  String get codecsAndDriversPageDescription => 'නිර්දේශිත ස්වාම්‍ය මෘදුකාංග ස්ථාපනය කරන්නද?';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return 'පෙරනිමි පරිදි ස්වාම්‍ය මෘදුකාංග රහිතව $DISTRO නිකුත් කරයි. අතිරේක මෘදුකාංග ස්ථාපනයෙන් ඔබගේ පරිගණකයේ කාර්ය සාධනය ඉහළ නංවාලීමට හැකිය.';
  }

  @override
  String get codecsAndDriversNvidiaNote => 'NVIDIA චිත්‍රක පතක් අනාවරණය විය';

  @override
  String get codecsAndDriversNvidiaBody => 'NVIDIA චිත්‍රක පත් වල හොඳම කාර්ය සාධනය සඳහා අතිරේක ධාවක ස්ථාපනයට තරයේ නිර්දේශ කෙරේ.';

  @override
  String get fullInstallationTitle => 'විස්තීරණ තේරීම';

  @override
  String get fullInstallationSubtitle => 'කාර්යාල මෙවලම්, උපයෝග සහ අතිරික්සුවක් සහිත මාර්ග අපගත හිතකාමී තේරීමකි.';

  @override
  String get minimalInstallationTitle => 'පෙරනිමි තේරීම';

  @override
  String get minimalInstallationSubtitle => 'අත්‍යවශ්‍ය අතිරික්සුව සහ මූලික උපයෝග පමණි.';

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
  String get batteryWarning => 'පරිගණකය විදුලි බලයට සම්බන්ධ කර නැත.';

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
  String get choosePassphraseInfoHeader => 'Store your passphrase somewhere safe';

  @override
  String get choosePassphraseInfoBody => 'If you lose your passphrase, you will lose all your data.';

  @override
  String get chooseOptionalPassphraseHeader => 'Create a passphrase (optional)';

  @override
  String get chooseOptionalPassphraseBody => 'A passphrase can help protect your data even if your hardware gets compromised. You will need to enter the passphrase every time you turn on your computer. You will not be able to remove it later';

  @override
  String get chooseOptionalPassphraseInfoHeader => 'Store your passphrase and recovery key somewhere safe';

  @override
  String get chooseOptionalPassphraseInfoBody => 'If you lose your passphrase, you will lose all your data. The passphrase does not replace the recovery key or your user password.';

  @override
  String get createPassphrase => 'Create a passphrase';

  @override
  String get confirmPassphrase => 'Confirm the passphrase';

  @override
  String get installationTypeTitle => 'තැටිය පිහිටුවීම';

  @override
  String installationTypeHeader(String DISTRO) {
    return 'ඔබ $DISTRO ස්ථාපනයට කැමති කෙසේද?';
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
    return 'තැටිය මකා $DISTRO ස්ථාපනය කරන්න';
  }

  @override
  String get installationTypeEraseInfo => 'ඔබගේ තැටියේ මුල සිට අරඹන්න.';

  @override
  String get installationTypeAdvancedLabel => 'වැඩිදුර විශේෂාංග...';

  @override
  String get installationTypeAdvancedTitle => 'වැඩිදුර විශේෂාංග';

  @override
  String get installationTypeExperimental => 'පරීක්‍ෂාත්මක';

  @override
  String get installationTypeNone => 'කිසිවක් නැත';

  @override
  String get installationTypeNoneSelected => 'තේරීමක් නැත';

  @override
  String get installationTypeLVM => 'LVM භාවිතා කරන්න';

  @override
  String get installationTypeLVMSelected => 'LVM තෝරා ඇත';

  @override
  String get installationTypeLVMEncryption => 'LVM හා සංකේතනය භාවිතා කරන්න';

  @override
  String get installationTypeLVMEncryptionSelected => 'LVM හා සංකේතනය තෝරා ඇත';

  @override
  String get installationTypeEncryptInfo => 'ඔබ ඊළඟ පියවරේදී ආරක්‍ෂණ යතුරක් තෝරා ගනු ඇත.';

  @override
  String get installationTypeZFS => 'පරීක්‍ෂාත්මක: තැටිය මකා ZFS භාවිතා කරන්න';

  @override
  String get installationTypeZFSEncryption => 'තැටිය මකා ZFS සමඟ සංකේතනය භාවිතා කරන්න';

  @override
  String get installationTypeZFSSelected => 'ZFS තෝරා ඇත';

  @override
  String get installationTypeZFSEncryptionSelected => 'ZFS හා සංකේතනය තෝරා ඇත';

  @override
  String get installationTypeTPM => 'දෘඪාංග පිටුබල පූර්ණ තැටි සංකේතනය සබල කරන්න';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return 'This is an experimental feature. It may not work with your hardware or future $DISTRO releases. <a href=\"$url\">Read about TPM encryption</a> before you choose this option.';
  }

  @override
  String get installationTypeTPMSelected => 'TPM තෝරා ඇත';

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
    return 'අනෙක් පංගු වලට පසකින් $product ස්ථාපනය කරන්න';
  }

  @override
  String installationTypeAlongsideInfo(String product) {
    return 'ලේඛන, ගීත සහ අනෙකුත් පෞද්. ගොනු රඳවා ගැනෙයි. පරිගණකය ආරම්භ වන සැමවිට අවශ්‍ය මෙහෙයුම් පද්ධතිය තේරීමට හැකිය.';
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
  String get installationTypeManual => 'අතින් ස්ථාපනය';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'තැටි(ය) අභිරුචිකරණයට වුවමනා ප්‍රගත පරිශ්‍රීලකයින්ට.';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'තැටිය මකා $DISTRO ස්ථාපනය කරන්න';
  }

  @override
  String get selectGuidedStorageInfo => 'ඔබගේ තැටියේ මුල සිට අරඹන්න.';

  @override
  String get selectGuidedStorageDriveDropdownLabel => 'Select drive:';

  @override
  String get selectGuidedStoragePartitionDropdownLabel => 'පංගුව තෝරන්න:';

  @override
  String get selectGuidedStorageInfoLabel => 'සමස්ත තැටිය භාවිතා වනු ඇත:';

  @override
  String get selectGuidedStorageInstallNow => 'ස්ථාපනය කරන්න';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return '$DISTRO ස්ථාපනය කළ යුතු තැන තෝරන්න';
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
  String get allocateDiskSpace => 'අතින් පංගුකරණය';

  @override
  String get allocateDiskSpaceInvalidMountPointSlash => 'Mount points must start with \"/\"';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace => 'Mount points cannot contain spaces';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(Object format, Object mountpoint) {
    return '$format is not a supported filesystem for $mountpoint';
  }

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
  String get newPartitionTableConfirmationTitle => 'නව හිස් පංගුවක්';

  @override
  String get newPartitionTableConfirmationMessage => 'සමස්ත උපාංගයට නව පංගු වගුවක් සෑදීමේ දී වත්මන් සියළුම පංගු ඉවත් කෙරෙනු ඇත. මෙම මෙහෙයුම අප්‍රතිවර්ත්‍යයි.';

  @override
  String get tooManyPrimaryPartitions => 'ප්‍රාථමික පංගු බොහෝය';

  @override
  String get partitionLimitReached => 'සීමාවට ළඟා විය';

  @override
  String get bootLoaderDevice => 'ඇරඹුම්කාරකය ස්ථාපනය සඳහා උපාංගය';

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
    return '$format ලෙස පවිත්‍රව තබන්න';
  }

  @override
  String get partitionErase => 'පංගුව පවිත්‍ර කරන්න';

  @override
  String get partitionMountPointLabel => 'සවිවන ස්ථානය:';

  @override
  String get confirmPageTitle => 'වෙනස්කම් තැටියට ලියන්න';

  @override
  String get confirmHeader => 'ඔබගේ තේරීම් සමාලෝචනය කරන්න';

  @override
  String get confirmDiskEncryptionLVM => 'LUKS (LVM)';

  @override
  String get confirmDiskEncryptionZFS => 'LUKS (ZFS)';

  @override
  String get confirmDiskEncryptionTPM => 'TPM';

  @override
  String get confirmDiskEncryptionNone => 'කිසිවක් නැත';

  @override
  String get confirmDevicesTitle => 'උපාංග';

  @override
  String get confirmEntryApplications => 'යෙදුම්';

  @override
  String get confirmEntryDiskSetup => 'තැටිය පිහිටුවීම';

  @override
  String get confirmEntryDiskEncryption => 'තැටිය සංකේතනය';

  @override
  String get confirmEntryInstallationDisk => 'ස්ථාපන තැටිය';

  @override
  String get confirmEntryProprietarySoftware => 'ස්වාම්‍ය මෘදුකාංග';

  @override
  String get confirmSectionGeneralTitle => 'ප්‍රධාන';

  @override
  String get confirmSectionSecurityAndMoreTitle => 'ආරක්‍ෂාව හා වෙනත්';

  @override
  String get confirmPartitionsTitle => 'පංගු';

  @override
  String get confirmPartitionTables => 'පහත උපාංග වල පංගු වගු වෙනස් වේ:';

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
  String get confirmProprietarySoftwareDrivers => 'ධාවක';

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
  String get restartWarningBody => 'ස්ථාපනය නිමාවට යළි අරඹන්න හෝ දිගටම අත්හදා බලන්න.\nඔබගේ කිසිදු වෙනස්කමක් සුරැකෙන්නේ නැත.';

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
  String get bitlockerHeader => 'ඉදිරියට යාමට බිට්ලොකර් අක්‍රිය කරන්න';

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
  String get restartIntoWindowsTitle => 'වින්ඩෝස් වෙත යළි අරඹන්න ද?';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return 'Are you sure you want to restart your computer? You will need to restart the $DISTRO installation later to finish installing $DISTRO.';
  }

  @override
  String installationSlidesTitle(String RELEASE) {
    return '$RELEASE වෙත පිළිගනිමු';
  }

  @override
  String get installationSlidesAvailable => 'තිබේ:';

  @override
  String get installationSlidesIncluded => 'Included:';

  @override
  String get installationSlidesWelcomeTitle => 'වේගවත්, නොමිලේ සහ බොහෝ නවීන විශේෂාංග';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return 'නවතම $DISTRO අනුවාදය අන් කවරදාටත් වඩා පරිගණක භාවිතය පහසු කරයි.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'Whether you\'re a developer, creator, gamer or administrator you\'ll find new tools to improve your productivity and enhance your experience in $RELEASE.';
  }

  @override
  String get installationSlidesSoftwareTitle => 'ඔබට වුවමනා සියලුම මෘදුකාංග';

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
  String get installationSlidesAccessibilityOrca => 'ඔර්කා තිර කියවනය';

  @override
  String get installationSlidesAccessibilityLanguages => 'භාෂා සහාය';

  @override
  String get installationSlidesSupportTitle => 'උදව් හා සහාය';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return 'The official $DISTRO documentation is available both online and via the Help icon in the dock.';
  }

  @override
  String get installationSlidesSupportCommunity => 'Ask Ubuntu covers a range of questions and responses and the Ubuntu Discourse provides guides and discussions for new and experienced users.';

  @override
  String get installationSlidesSupportEnterprise => 'For enterprise users Canonical provides commercial support to make it easy to onboard and manage Ubuntu securely in the workplace.';

  @override
  String get installationSlidesSupportResources => 'ප්‍රයෝජනවත් සම්පත්:';

  @override
  String get installationSlidesSupportDocumentation => 'නිල ප්‍රලේඛනය';

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
  String get notEnoughDiskSpaceTitle => 'තැටියේ ඉඩ මදියි';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return 'Not enough disk space to install $DISTRO';
  }

  @override
  String notEnoughDiskSpaceBody(String DISTRO) {
    return 'The selected disk does not have enough disk space to install $DISTRO. Quit the installer to make space available or select another disk.';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'තිබේ:';

  @override
  String get notEnoughDiskSpaceRequired => 'වුවමනාය:';

  @override
  String get refreshPageTitle => 'යාවත්කාල තිබේ';

  @override
  String get refreshHeader => 'ස්ථාපකය සඳහා යාවත්කාලයක් තිබේ';

  @override
  String get refreshUpdateNow => 'යාවත්කාල කරන්න';

  @override
  String get refreshInfo => 'Update to the latest version for improved reliability and more features.';

  @override
  String get refreshReady => 'යාවත්කාලය සූදානම්';

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
    return '$snap යාවත්කාල වෙමින්...';
  }

  @override
  String get refreshRestart => 'Please close the installer and relaunch to continue';

  @override
  String get refreshCloseLabel => 'ස්ථාපකය වසන්න';

  @override
  String refreshSnapPrerequisites(String snap) {
    return 'Ensuring $snap prerequisites...';
  }

  @override
  String refreshSnapRefresh(String snap) {
    return '$snap නැවුම් වෙමින්...';
  }

  @override
  String refreshSnapCheckRerefresh(String snap) {
    return 'Checking $snap re-refresh...';
  }

  @override
  String refreshSnapPrepare(String snap) {
    return '$snap සූදානම් වෙමින්...';
  }

  @override
  String refreshSnapDownload(String snap) {
    return '$snap බාගැනෙමින්...';
  }

  @override
  String refreshSnapValidate(String snap) {
    return '$snap වලංගු වෙමින්...';
  }

  @override
  String refreshSnapMount(String snap) {
    return 'Mounting $snap...';
  }

  @override
  String refreshSnapStopServices(String snap) {
    return '$snap සේවා නවත්වමින්...';
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
    return '$snap දත්ත පිටපත් වෙමින්...';
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
    return '$snap සේවා අරඹමින්...';
  }

  @override
  String refreshSnapCleanup(String snap) {
    return '$snap ශුද්ධ කරමින්...';
  }

  @override
  String get recoveryKeyTitle => 'TPM ප්‍රතිසාධන කේතය';

  @override
  String get recoveryKeyHeader => 'Get a recovery key';

  @override
  String get recoveryKeyInfoHeader => 'You may lose all your data without a recovery key';

  @override
  String recoveryKeyInfoBody(String distro) {
    return 'Get a recovery key as soon as you first log into $distro and store it somewhere safe.';
  }

  @override
  String get recoveryKeyCommand => 'To get a recovery key, complete the installation, restart your computer, and run this command in the terminal:';

  @override
  String get recoveryKeyStorageAdvice => 'Store the recovery key somewhere safe. Use it to decrypt the disk in case of certain system changes. For example, you may need it if you change the components in your computer or update firmware.';

  @override
  String get recoveryKeyConfirmation => 'I understand I may lose all my data if I don\'t have a recovery key';

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
