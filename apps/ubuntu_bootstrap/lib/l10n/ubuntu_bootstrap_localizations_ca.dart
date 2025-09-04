// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_bootstrap_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Catalan Valencian (`ca`).
class UbuntuBootstrapLocalizationsCa extends UbuntuBootstrapLocalizations {
  UbuntuBootstrapLocalizationsCa([String locale = 'ca']) : super(locale);

  @override
  String get appTitle => 'Instal·lador de l\'Ubuntu per a l\'escriptori';

  @override
  String windowTitle(String RELEASE) {
    return 'Instal·lació del sistema $RELEASE';
  }

  @override
  String get autoinstallDirectTitle => 'Automated installation';

  @override
  String get autoinstallDirectHeader => 'Import autoinstall file';

  @override
  String get autoinstallDirectUrlLabel =>
      'You can enter the URL of an autoinstall file:';

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
  String get autoinstallDirectErrorUnkownTitle => 'Unknown error';

  @override
  String get autoinstallTitle => 'Type of installation';

  @override
  String autoinstallHeader(String DISTRO) {
    return 'How would you like to install $DISTRO?';
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
  String get changeButtonText => 'Canvia';

  @override
  String get quitButtonText => 'Surt de la instal·lació';

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
    return 'Prova o instal·la';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return 'What do you want to do with $DISTRO?';
  }

  @override
  String get tryOrInstallRepairOption => 'Repara la instal·lació';

  @override
  String get tryOrInstallRepairDescription =>
      'La reparació reinstal·larà tot el programari instal·lat sense tocar els documents ni la configuració.';

  @override
  String tryOption(String RELEASE) {
    return 'Prova el sistema $RELEASE';
  }

  @override
  String tryDescription(String RELEASE) {
    return 'Podeu provar $RELEASE sense fer cap canvi al vostre ordinador.';
  }

  @override
  String installOption(String RELEASE) {
    return 'Instal·la el sistema $RELEASE';
  }

  @override
  String installDescription(String RELEASE) {
    return 'Instal·lar $RELEASE al costat (o en lloc de) del vostre sistema operatiu actual. Això no hauria de trigar massa.';
  }

  @override
  String tryOrInstallReleaseNotesLabel(String url) {
    return 'És possible que vulgueu llegir la <a href=\"$url\"> nota de llançament</a>.';
  }

  @override
  String get rstTitle => 'Desactiva la RST.';

  @override
  String get rstHeader => 'You must disable RST to continue installation';

  @override
  String get rstDisable =>
      'Your computer uses Intel RST (Rapid Storage Technology). You can disable RST either in:';

  @override
  String get rstDisableWindows =>
      'Windows, if you are using a dual boot setup with Windows';

  @override
  String get rstDisableBios => 'The BIOS settings';

  @override
  String rstInstructions(String url) {
    return 'Per a obtenir instruccions, obriu aquesta pàgina en un telèfon o un altre dispositiu: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'Configura l\'arrencada segura';

  @override
  String get configureSecureBootDescription =>
      'Has triat per instal·lar programari de control·ladors de tercers. Això requereix desactivar Arrencada Segura,\nPer fer això, has de escogir una clau de seguretat ara i introduir-la després de reiniciar el sistema.';

  @override
  String get configureSecureBootOption => 'Configurar Arrencada Segura';

  @override
  String get chooseSecurityKey => 'Trieu una clau de seguretat';

  @override
  String get confirmSecurityKey => 'Confirmeu la clau de seguretat';

  @override
  String get dontInstallDriverSoftwareNow =>
      'Don\'t install the driver software for now';

  @override
  String get dontInstallDriverSoftwareNowDescription =>
      'You can install it later from Software & Updates.';

  @override
  String get configureSecureBootSecurityKeyRequired =>
      'Es requereix la clau de seguretat';

  @override
  String get secureBootSecurityKeysDontMatch =>
      'Les claus de seguretat no coincideixen';

  @override
  String get showSecurityKey => 'Show';

  @override
  String get hideSecurityKey => 'Hide';

  @override
  String get updatesOtherSoftwarePageTitle =>
      'Actualitzacions i altre programari';

  @override
  String get updatesOtherSoftwarePageDescription =>
      'Quines aplicacions us agradaria instal·lar per començar?';

  @override
  String get codecsAndDriversPageTitle => 'Optimise your computer';

  @override
  String get codecsAndDriversPageDescription =>
      'Install recommended proprietary software?';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return '$DISTRO ships with no proprietary software by default. Installing additional software may improve your computer\'s performance.';
  }

  @override
  String get codecsAndDriversNvidiaNote => 'NVIDIA graphics card detected';

  @override
  String get codecsAndDriversNvidiaBody =>
      'For the best performance of NVIDIA graphic cards, installing additional drivers is strongly recommended.';

  @override
  String get fullInstallationTitle => 'Extended selection';

  @override
  String get fullInstallationSubtitle =>
      'An offline-friendly selection of office tools, utilities and web browser.';

  @override
  String get minimalInstallationTitle => 'Default selection';

  @override
  String get minimalInstallationSubtitle =>
      'Just the essentials, web browser and basic utilities.';

  @override
  String get otherOptions => 'Altres opcions';

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
  String get batteryWarning =>
      'The computer is not plugged in to a power source.';

  @override
  String get offlineWarning => 'You are currently offline';

  @override
  String get choosePassphraseHeader => 'Create a passphrase';

  @override
  String get choosePassphraseBody =>
      'You will need to enter your passphrase every time you turn on your computer. This passphrase is different from your user password.';

  @override
  String get choosePassphraseInfoHeader => 'Make sure to save your passphrase';

  @override
  String get choosePassphraseInfoBody =>
      'If you lose it, you will lose all your data.';

  @override
  String get chooseOptionalPassphraseInfoHeader =>
      'Store your passphrase and recovery key somewhere safe';

  @override
  String get chooseOptionalPassphraseInfoBody =>
      'If you lose your passphrase, you will lose all your data. The passphrase does not replace the recovery key or your user password.';

  @override
  String get passphrasePageTitle => 'Encryption';

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
  String get passphrasePageConfirmPassphraseHint => 'Confirm passphrase';

  @override
  String get passphrasePageRequiredPassphrase => 'A passphrase is required';

  @override
  String get passphrasePageMismatchPassphrase => 'The passphrases do not match';

  @override
  String get passphrasePageChoosePinHint => 'PIN';

  @override
  String get passphrasePageConfirmPinHint => 'Confirm PIN';

  @override
  String get passphrasePageRequiredPin => 'A PIN is required';

  @override
  String get passphrasePageMismatchPin => 'The PINs do not match';

  @override
  String get passphraseTypePassphraseTileTitle => 'Require a passphrase';

  @override
  String get passphraseTypePassphraseTileSubTitle =>
      'Most secure. You will need to enter a longer passphrase every time you turn on your computer.';

  @override
  String get passphraseTypePinTileTitle => 'Require a PIN';

  @override
  String get passphraseTypePinTileSubTitle =>
      'More secure. You will need to enter a numeric PIN every time you turn on your computer.';

  @override
  String get passphraseTypeNoneTileTitle => 'Unlock disk automatically';

  @override
  String get passphraseTypePageHeader => 'Additional security';

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
  String get passphrasePagePassphraseEntropyOptimal => 'Strong passphrase';

  @override
  String get passphrasePagePinEntropyBelowMin =>
      'Weak PIN, make it longer or less predictable';

  @override
  String get passphrasePagePinEntropyBelowOptimal =>
      'Fair PIN, make it longer or less predictable for better security';

  @override
  String get passphrasePagePinEntropyOptimal => 'PIN is long enough';

  @override
  String get installationTypeTitle => 'Tipus d\'instal·lació';

  @override
  String installationTypeHeader(String DISTRO) {
    return 'How do you want to install $DISTRO?';
  }

  @override
  String installationTypeOSDetected(String os) {
    return 'L’ordinador actualment duu el sistema $os. Què voleu fer?';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return 'L’ordinador actualment duu els sistemes $os1 i $os2. Què voleu fer?';
  }

  @override
  String get installationTypeMultiOSDetected =>
      'Aquest ordinador duu diversos sistemes operatius. Què voleu fer?';

  @override
  String get installationTypeNoOSDetected =>
      'Aquest ordinador no duu cap sistema operatiu que s\'hagi detectat. Què voleu fer?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'Erase disk and install $DISTRO';
  }

  @override
  String get installationTypeEraseInfo =>
      'All data and partitions on the disk will be erased, including operating systems.';

  @override
  String get installationTypeAdvancedLabel => 'Característiques avançades…';

  @override
  String get installationTypeAdvancedTitle => 'Característiques avançades';

  @override
  String get installationTypeExperimental => 'Experimental';

  @override
  String get installationTypeNone => 'Cap';

  @override
  String get installationTypeNoneInfo =>
      'Standard file system without encryption.';

  @override
  String get installationTypeNoneSelected => 'Cap seleccionat';

  @override
  String get installationTypeLVM => 'Use LVM without encryption';

  @override
  String get installationTypeLVMSelected => 'Seleccionat LVM';

  @override
  String get installationTypeLVMEncryption => 'Encrypt with a passphrase';

  @override
  String get installationTypeLVMEncryptionInfo =>
      'You will need to enter a passphrase every time you turn on your computer. This uses LUKS encryption with LVM.';

  @override
  String get installationTypeLVMEncryptionSelected =>
      'LVM and encryption selected';

  @override
  String get installationTypeEncryptInfo =>
      'En el pas següent triareu la clau de seguretat.';

  @override
  String get installationTypeZFS => 'Use ZFS without encryption';

  @override
  String get installationTypeZFSEncryption =>
      'Encrypt with a passphrase using ZFS';

  @override
  String get installationTypeZFSEncryptionInfo =>
      'Native encryption with ZFS. You will need to enter a passphrase every time you turn on your computer.';

  @override
  String get installationTypeZFSSelected => 'Seleccionat ZFS';

  @override
  String get installationTypeZFSEncryptionSelected =>
      'ZFS and encryption selected';

  @override
  String get installationTypeTPM => 'Use hardware-backed encryption';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return '<a href=\"$url\">Read about TPM encryption</a> before you choose this option. This may not work with your hardware or future $DISTRO releases.';
  }

  @override
  String get installationTypeTPMSelected => 'TPM selected';

  @override
  String installationTypeReinstall(String os) {
    return 'Erase $os and reinstall';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">Warning:</font> This will delete all your $os programs, documents, photos, music, and any other files.';
  }

  @override
  String installationTypeAlongside(String product, String os) {
    return 'Install $product alongside $os';
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
    return 'Els documents, la música i la resta de fitxers personals es conservaran. Podreu triar quin sistema operatiu voleu utilitzar cada cop que engegueu l\'ordinador.';
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
  String get installationTypeManual => 'Alguna altra cosa';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'For advanced users seeking customized disk setups.';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'Erase disk and install $DISTRO';
  }

  @override
  String get selectGuidedStorageInfo =>
      'Start from scratch on your selected disk.';

  @override
  String get selectGuidedStorageDriveDropdownLabel => 'Select drive:';

  @override
  String get selectGuidedStoragePartitionDropdownLabel => 'Select partition:';

  @override
  String get selectGuidedStorageInfoLabel => 'S\'utilitzarà el disc sencer:';

  @override
  String get selectGuidedStorageInstallNow => 'Instal·la ara';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return 'Choose where to install $DISTRO';
  }

  @override
  String get installAlongsideSpaceDivider =>
      'Reserveu espai de disc arrossegant el divisor de més avall:';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return '$num smaller partitions are hidden, use the <a href=\"$url\">advanced partitioning tool</a> for more control';
  }

  @override
  String get installAlongsideResizePartition => 'Resize partition';

  @override
  String get installAlongsideAllocateSpace => 'Allocate space';

  @override
  String get installAlongsideFiles => 'Fitxers';

  @override
  String get installAlongsidePartition => 'Partició:';

  @override
  String get installAlongsideSize => 'Mida:';

  @override
  String get installAlongsideAvailable => 'Disponible:';

  @override
  String get allocateDiskSpace => 'Manual partitioning';

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
  String get diskHeadersDevice => 'Dispositiu';

  @override
  String get diskHeadersType => 'Tipus';

  @override
  String get diskHeadersMountPoint => 'Punt de muntatge';

  @override
  String get diskHeadersSize => 'Mida';

  @override
  String get diskHeadersUsed => 'En ús';

  @override
  String get diskHeadersSystem => 'Sistema';

  @override
  String get diskHeadersFormat => 'Format';

  @override
  String get freeDiskSpace => 'Espai lliure';

  @override
  String get newPartitionTable => 'Taula de particions nova';

  @override
  String get newPartitionTableConfirmationTitle => 'New empty partition';

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
  String get partitionCreateTitle => 'Crea una partició';

  @override
  String get partitionEditTitle => 'Edita la partició';

  @override
  String get partitionSizeLabel => 'Mida:';

  @override
  String get partitionTypeLabel => 'Tipus de partició nova:';

  @override
  String get partitionTypePrimary => 'Primària';

  @override
  String get partitionTypeLogical => 'Lògica';

  @override
  String get partitionLocationLabel => 'Ubicació de la partició nova:';

  @override
  String get partitionLocationBeginning => 'Començament d\'aquest espai';

  @override
  String get partitionLocationEnd => 'Final d\'aquest espai';

  @override
  String get partitionFormatLabel => 'Used as:';

  @override
  String get partitionFormatNone => 'Leave unformatted';

  @override
  String partitionFormatKeep(String format) {
    return 'Leave formatted as $format';
  }

  @override
  String get partitionErase => 'Formata la partició';

  @override
  String get partitionMountPointLabel => 'Punt de muntatge:';

  @override
  String get confirmPageTitle => 'Ready to install';

  @override
  String get confirmHeader => 'Review your choices';

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
  String get confirmEntryDiskSetup => 'Type of installation';

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
  String get confirmPartitionTables =>
      'The partition tables of the following devices are changed:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmProprietarySoftwareCodecs => 'Codecs';

  @override
  String get confirmProprietarySoftwareCodecsDrivers => 'Codecs & drivers';

  @override
  String get confirmProprietarySoftwareDrivers => 'Drivers';

  @override
  String get confirmInstallButton => 'Comença a instal·lar';

  @override
  String get confirmTableErased => 'Erased';

  @override
  String get confirmTableUnchanged => 'Unchanged';

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
    return 'Used for $mountpoint';
  }

  @override
  String confirmTableFormatted(String format) {
    return 'Formatted as $format';
  }

  @override
  String get installationCompleteTitle => 'S\'ha completat la instal·lació';

  @override
  String readyToUse(String system) {
    return '$system is installed and ready to use';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system** has been copied to the disk';
  }

  @override
  String restartInto(String system) {
    return 'Restart into $system';
  }

  @override
  String get restartWarningBody =>
      'Restart to complete the installation or continue testing.\nAny changes you make will not be saved.';

  @override
  String get rebootToConfigureWarning =>
      'You have to restart the computer to continue the installation process.';

  @override
  String get shutdown => 'Atura';

  @override
  String get restartNow => 'Restart now';

  @override
  String get continueTesting => 'Continue testing';

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
  String get restartComputer => 'Restart computer';

  @override
  String get restartComputerTitle => 'Restart computer?';

  @override
  String get restartIntoWindows => 'Restart into Windows';

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
  String get installationSlidesWelcomeTitle =>
      'Fast, free and full of new features';

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
  String get installationSlidesProductivityTitle =>
      'Power up your productivity';

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
  String get installationSlidesSupportCommunity =>
      'Ask Ubuntu covers a range of questions and responses and the Ubuntu Discourse provides guides and discussions for new and experienced users.';

  @override
  String get installationSlidesSupportEnterprise =>
      'For enterprise users Canonical provides commercial support to make it easy to onboard and manage Ubuntu securely in the workplace.';

  @override
  String get installationSlidesSupportResources => 'Helpful resources:';

  @override
  String get installationSlidesSupportDocumentation => 'Official documentation';

  @override
  String get installationSlidesSupportUbuntuPro =>
      'Enterprise-grade 24/7 support with Ubuntu Pro';

  @override
  String get nextSlideSemanticLabel => 'Next slide';

  @override
  String get previousSlideSemanticLabel => 'Previous slide';

  @override
  String get playSlideshowSemanticLabel => 'Play slideshow';

  @override
  String get pauseSlideshowSemanticLabel => 'Pause slideshow';

  @override
  String get toggleLogsSemanticLabel => 'Toggle install logs';

  @override
  String get copyingFiles => 'S’estan copiant els fitxers…';

  @override
  String get installingSystem => 'S’està instal·lant el sistema…';

  @override
  String get configuringSystem => 'S’està configurant el sistema…';

  @override
  String get installationFailed => 'Ha fallat la instal·lació';

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
  String get refreshInfo =>
      'Update to the latest version for improved reliability and more features.';

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
  String get refreshRestart =>
      'Please close the installer and relaunch to continue';

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
  String get recoveryKeyTitle => 'Recovery key';

  @override
  String get recoveryKeyTitleBadgeLabel => 'Important';

  @override
  String get recoveryKeyHeader => 'Save your recovery key';

  @override
  String get recoveryKeyInfoHeader =>
      'You may lose all your data without a recovery key';

  @override
  String get recoveryKeyTextFieldLabel => 'Recovery key';

  @override
  String get recoveryKeyStorageAdvice =>
      'You will need to provide this recovery key if decryption fails during startup. Without the key, you will lose access to all your data. Save it somewhere safe, such as a password manager.';

  @override
  String get recoveryKeyConfirmation =>
      'I saved my recovery key somewhere safe';

  @override
  String get recoveryKeyLinkLabel => 'Learn more';

  @override
  String get recoveryKeySaveToFileLabel => 'Save to file';

  @override
  String get recoveryKeyShowQrCodeLabel => 'Show QR code';

  @override
  String recoveryKeyQrDialogTitle(String DISTRO) {
    return '$DISTRO Desktop - Recovery key';
  }

  @override
  String get recoveryKeyQrDialogBody =>
      'Scan the QR code to copy the recovery key and save it somewhere safe, such as a password manager. You can also take a photo for later use.';

  @override
  String get recoveryKeyClipboardNotifiaction => 'Copied to clipboard';

  @override
  String get recoveryKeyExceptionFileSystemTitle =>
      'Recovery key file not saved';

  @override
  String get recoveryKeyExceptionDisallowedPathTitle =>
      'Recovery key file cannot be saved in a temporary location';

  @override
  String get recoveryKeyExceptionUnknownTitle => 'Unknown error';

  @override
  String get recoveryKeyExceptionFileSystemBody =>
      'You do not have permission to write to that folder. Try a different location or use another method.';

  @override
  String get recoveryKeyExceptionDisallowedPathBody =>
      'Try a different location, such as a removable drive, or use another method.';

  @override
  String get recoveryKeyFilePickerTitle => 'Save recovery key file';

  @override
  String get recoveryKeyFilePickerFilter => 'Text files';

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
  String get next => 'Next';

  @override
  String get landscapeDomainInvalidDomainWarning =>
      'Invalid domain, please check or contact your IT support';

  @override
  String get landscapeDomainNoInternetTitleWarning =>
      'Connect to the internet to continue';

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
  String get successIconSemanticLabel => 'Success';

  @override
  String get errorIconSemanticLabel => 'Error';

  @override
  String get closeIconSemanticLabel => 'Close';

  @override
  String get maximizeIconSemanticLabel => 'Maximize';

  @override
  String get minimizeIconSemanticLabel => 'Minimize';
}
