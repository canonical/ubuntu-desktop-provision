import 'ubuntu_bootstrap_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lithuanian (`lt`).
class UbuntuBootstrapLocalizationsLt extends UbuntuBootstrapLocalizations {
  UbuntuBootstrapLocalizationsLt([String locale = 'lt']) : super(locale);

  @override
  String get appTitle => 'Ubuntu darbalaukio diegimo programa';

  @override
  String windowTitle(String RELEASE) {
    return 'Įdiegti $RELEASE';
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
  String get autoinstallDirectErrorNetworkBody => 'Please check the URL is correct, check your internet connection, or try later.';

  @override
  String get autoinstallDirectErrorInvalidUrlTitle => 'Invalid URL';

  @override
  String get autoinstallDirectErrorInvalidUrlBody => 'Please check the URL is correct or select a local file.';

  @override
  String get autoinstallDirectErrorInvalidContentTitle => 'Invalid autoinstall file';

  @override
  String get autoinstallDirectErrorInvalidContentBody => 'Please check or provide a different file.';

  @override
  String get autoinstallDirectErrorFileSystemTitle => 'Autoinstall file is not readable';

  @override
  String get autoinstallDirectErrorFileSystemBody => 'Please check your permissions or provide a different file.';

  @override
  String get autoinstallDirectErrorUnkownTitle => 'Unknown error';

  @override
  String get autoinstallTitle => 'Įdiegimo tipas';

  @override
  String autoinstallHeader(String DISTRO) {
    return 'How would you like to install $DISTRO?';
  }

  @override
  String get autoinstallInstructions => 'Enter the autoinstall.yaml URL or local file path:';

  @override
  String get autoinstallInteractiveOption => 'Interaktyvus įdiegimas';

  @override
  String get autoinstallInteractiveDescription => 'For users who want to be guided step by step through the installation.';

  @override
  String get autoinstallDirectOption => 'Automated with autoinstall file';

  @override
  String get autoinstallDirectDescription => 'For advanced users who have an autoinstall.yaml for consistent and repeatable system setups.';

  @override
  String get changeButtonText => 'Keisti';

  @override
  String get quitButtonText => 'Baigti diegimą';

  @override
  String loadingPageTitle(String DISTRO) {
    return 'Jus sveikina $DISTRO';
  }

  @override
  String loadingHeader(String DISTRO) {
    return 'Ruošiama $DISTRO…';
  }

  @override
  String get warningLabel => 'Įspėjimas:';

  @override
  String tryOrInstallTitle(String DISTRO) {
    return 'Išbandykite arba įsidiekite $DISTRO';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return 'What do you want to do with $DISTRO?';
  }

  @override
  String get tryOrInstallRepairOption => 'Taisyti diegimą';

  @override
  String get tryOrInstallRepairDescription => 'Taisymas iš naujo įdiegs visą įdiegtą programinę įrangą nepaveikdamas dokumentų ar nustatymų.';

  @override
  String tryOption(String RELEASE) {
    return 'Išbandyti $RELEASE';
  }

  @override
  String tryDescription(String RELEASE) {
    return 'Galite išbandyti $RELEASE neatlikdami kompiuteryje jokių pakeitimų.';
  }

  @override
  String installOption(String RELEASE) {
    return 'Įdiegti $RELEASE';
  }

  @override
  String installDescription(String RELEASE) {
    return 'Įsidiekite $RELEASE šalia savo dabartinės operacinės sistemoje arba vietoje jos. Tai neturėtų ilgai užtrukti.';
  }

  @override
  String tryOrInstallReleaseNotesLabel(String url) {
    return 'Galite pageidauti perskaityti <a href=\"$url\">laidos informaciją</a>.';
  }

  @override
  String get rstTitle => 'RST yra įjungta';

  @override
  String get rstHeader => 'Norėdami tęsti, išjunkite RST';

  @override
  String rstDescription(String DISTRO) {
    return 'Šis kompiuteris naudoja Intel RST (Rapid Storage Technology). Prieš įdiegdami Ubuntu, turite „Windows“ sistemoje išjungti RST.';
  }

  @override
  String rstInstructions(String url) {
    return 'Norėdami skaityti instrukcijas, nuskenuokite kitu įrenginiu QR kodą arba apsilankykite adresu: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'Konfigūruoti saugųjį paleidimą';

  @override
  String get configureSecureBootDescription => 'Pasirinkote įdiegti trečiųjų šalių tvarkyklės programinę įrangą. Tai reikalauja, kad būtų išjungtas saugusis paleidimashis.\nNorėdami tai atlikti, dabar turite pasirinkti saugumo raktą, o kai sistema bus paleista iš naujo, turėsite jį įvesti.';

  @override
  String get configureSecureBootOption => 'Konfigūruoti saugųjį paleidimą';

  @override
  String get chooseSecurityKey => 'Pasirinkite saugumo raktą';

  @override
  String get confirmSecurityKey => 'Patvirtinkite saugumo raktą';

  @override
  String get dontInstallDriverSoftwareNow => 'Kol kas neįdiegti tvarkyklės programinės įrangos';

  @override
  String get dontInstallDriverSoftwareNowDescription => 'Vėliau galėsite ją įdiegti, atvėrę Programinę įrangą ir atnaujinimus.';

  @override
  String get configureSecureBootSecurityKeyRequired => 'Reikia nurodyti saugumo raktą';

  @override
  String get secureBootSecurityKeysDontMatch => 'Saugumo raktai nesutampa';

  @override
  String get showSecurityKey => 'Rodyti saugumo raktą';

  @override
  String get hideSecurityKey => 'Slėpti';

  @override
  String get updatesOtherSoftwarePageTitle => 'Programos ir atnaujinimai';

  @override
  String get updatesOtherSoftwarePageDescription => 'Kokias programas pradžiai norėtumėte įdiegti?';

  @override
  String get codecsAndDriversPageTitle => 'Optimise your computer';

  @override
  String get codecsAndDriversPageDescription => 'Įdiegti rekomenduojamą nuosavybinę programinę įrangą?';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return '$DISTRO ships with no proprietary software by default. Installing additional software may improve your computer\'s performance.';
  }

  @override
  String get codecsAndDriversNvidiaNote => 'Aptikta „NVIDIA“ grafikos plokštė';

  @override
  String get codecsAndDriversNvidiaBody => 'Geriausiam „NVIDIA“ grafikos plokštės našumui pasiekti, yra primygtinai rekomenduojama įdiegti papildomas tvarkykles.';

  @override
  String get fullInstallationTitle => 'Extended selection';

  @override
  String get fullInstallationSubtitle => 'An offline-friendly selection of office tools, utilities and web browser.';

  @override
  String get minimalInstallationTitle => 'Default selection';

  @override
  String get minimalInstallationSubtitle => 'Just the essentials, web browser and basic utilities.';

  @override
  String get otherOptions => 'Kitos parinktys';

  @override
  String get installThirdPartyTitle => 'Įdiegti trečiųjų šalių programinę įrangą, skirtą grafikos ir belaidžio (Wi-Fi) ryšio aparatinei įrangai, o taip pat papildomus medijos formatus';

  @override
  String get installThirdPartySubtitle => 'Šiai programinei įrangai taikomos licencijos sąlygos, kurias rasite jos dokumentacijoje. Kai kuri programinė įranga yra nuosavybinė.';

  @override
  String get installDriversTitle => 'Įdiegti trečiųjų šalių programinę įrangą, skirtą grafikos ir belaidžio ryšio (Wi-Fi) aparatinei įrangai';

  @override
  String get installDriversSubtitle => 'Šios tvarkyklės yra platinamos pagal licencijas, nurodytas jų dokumentacijoje. Tvarkyklės yra nuosavybinės.';

  @override
  String get installCodecsTitle => 'Atsisiųsti ir įdiegti papildomų medijos formatų palaikymą';

  @override
  String get installCodecsSubtitle => 'Ši programinė įranga yra platinama pagal licencijas, nurodytas jos dokumentacijoje. Kai kuri programinė įranga yra nuosavybinė.';

  @override
  String get batteryWarning => 'The computer is not plugged in to a power source.';

  @override
  String get offlineWarning => 'Šiuo metu nesate prisijungę prie interneto';

  @override
  String get choosePassphraseTitle => 'Disko slaptafrazė';

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
  String get installationTypeTitle => 'Įdiegimo tipas';

  @override
  String installationTypeHeader(String DISTRO) {
    return 'How do you want to install $DISTRO?';
  }

  @override
  String installationTypeOSDetected(String os) {
    return 'Šiuo metu šiame kompiuteryje yra įdiegta $os. Ką norėtumėte daryti?';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return 'Šiuo metu šiame kompiuteryje yra įdiegtos $os1 ir $os2. Ką norėtumėte daryti?';
  }

  @override
  String get installationTypeMultiOSDetected => 'Šiuo metu šiame kompiuteryje yra įdiegtos kelios operacinės sistemos. Ką norėtumėte daryti?';

  @override
  String get installationTypeNoOSDetected => 'Šiuo metu šiame kompiuteryje nėra įdiegtų operacinių sistemų. Ką norėtumėte daryti?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'Ištrinti duomenis diske ir įdiegti $DISTRO';
  }

  @override
  String get installationTypeEraseInfo => 'All data and partitions on the disk will be erased, including operating systems.';

  @override
  String get installationTypeAdvancedLabel => 'Išplėstinės ypatybės...';

  @override
  String get installationTypeAdvancedTitle => 'Išplėstinės ypatybės';

  @override
  String get installationTypeExperimental => 'Experimental';

  @override
  String get installationTypeNone => 'Nėra';

  @override
  String get installationTypeNoneSelected => 'Nieko nepasirinkta';

  @override
  String get installationTypeLVM => 'Use LVM';

  @override
  String get installationTypeLVMSelected => 'LVM pasirinkta';

  @override
  String get installationTypeLVMEncryption => 'Use LVM and encryption';

  @override
  String get installationTypeLVMEncryptionSelected => 'Pasirinkta LVM ir šifravimas';

  @override
  String get installationTypeEncryptInfo => 'Kitame žingsnyje pasirinksite saugumo raktą.';

  @override
  String get installationTypeZFS => 'EKSPERIMENTINIS: Ištrinti diską ir naudoti ZFS';

  @override
  String get installationTypeZFSEncryption => 'Erase disk and use ZFS with encryption';

  @override
  String get installationTypeZFSSelected => 'ZFS pasirinkta';

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
    return 'Ištrinti $os ir įdiegti iš naujo';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">Įspėjimas:</font> Tai ištrins visas $os programas, dokumentus, nuotraukas, muziką ir visus kitus failus.';
  }

  @override
  String installationTypeAlongside(String product, String os) {
    return 'Įdiegti $product šalia $os';
  }

  @override
  String installationTypeAlongsideDual(String product, String os1, String os2) {
    return 'Įdiegti $product šalia $os1 ir $os2';
  }

  @override
  String installationTypeAlongsideMulti(String product) {
    return 'Įdiegti $product šalia jų';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return 'Įdiegti $product šalia kitų skirsnių';
  }

  @override
  String installationTypeAlongsideInfo(String product) {
    return 'Dokumentai, muzika ir kiti asmeniniai failai bus išsaugoti. Kas kartą įjungę kompiuterį, galėsite pasirinkti, kurią operacinę sistemą paleisti.';
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
  String get installationTypeManual => 'Rankinis skaidymas';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'Galite dalinti laikmenas į skirsnius, keisti skirsnių dydį arba pasirinkti kelis skirsnius $DISTRO įdiegimui';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'Ištrinti diską ir įdiegti $DISTRO';
  }

  @override
  String get selectGuidedStorageInfo => 'Start from scratch on your selected disk.';

  @override
  String get selectGuidedStorageDriveDropdownLabel => 'Select drive:';

  @override
  String get selectGuidedStoragePartitionDropdownLabel => 'Select partition:';

  @override
  String get selectGuidedStorageInfoLabel => 'Bus naudojamas visas diskas:';

  @override
  String get selectGuidedStorageInstallNow => 'Įdiegti dabar';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return 'Choose where to install $DISTRO';
  }

  @override
  String get installAlongsideSpaceDivider => 'Paskirstykite vietą diske, tempdami žemiau esantį dalytuvą:';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return '$num mažesni skirsniai yra paslėpti. Norėdami daugiau galimybių, naudokite <a href=\"$url\">išplėstinį skaidymo įrankį</a>';
  }

  @override
  String get installAlongsideResizePartition => 'Keisti skirsnio dydį';

  @override
  String get installAlongsideAllocateSpace => 'Paskirstyti vietą';

  @override
  String get installAlongsideFiles => 'Failai';

  @override
  String get installAlongsidePartition => 'Skirsnis:';

  @override
  String get installAlongsideSize => 'Dydis:';

  @override
  String get installAlongsideAvailable => 'Prieinama:';

  @override
  String get allocateDiskSpace => 'Rankinis skaidymas';

  @override
  String get allocateDiskSpaceInvalidMountPointSlash => 'Mount points must start with \"/\"';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace => 'Prijungimo vietos negali turėti tarpų';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(Object format, Object mountpoint) {
    return '$format is not a supported filesystem for $mountpoint';
  }

  @override
  String get diskHeadersDevice => 'Įrenginys';

  @override
  String get diskHeadersType => 'Tipas';

  @override
  String get diskHeadersMountPoint => 'Prijungimo vieta';

  @override
  String get diskHeadersSize => 'Dydis';

  @override
  String get diskHeadersUsed => 'Panaudotas';

  @override
  String get diskHeadersSystem => 'Sistema';

  @override
  String get diskHeadersFormat => 'Formatuoti';

  @override
  String get freeDiskSpace => 'Laisva vieta';

  @override
  String get newPartitionTable => 'Nauja skirsnių lentelė';

  @override
  String get newPartitionTableConfirmationTitle => 'Naujas tuščias skirsnis';

  @override
  String get newPartitionTableConfirmationMessage => 'Sukūrus naują skirsnių lentelę visame įrenginyje, bus pašalinti visi jo dabartiniai skirsniai. Kol kas šią operaciją galima atšaukti, jei reikės.';

  @override
  String get tooManyPrimaryPartitions => 'Per daug pirminių skirsnių';

  @override
  String get partitionLimitReached => 'Pasiekta riba';

  @override
  String get bootLoaderDevice => 'Įrenginys, skirtas pradinio įkėliklio diegimui';

  @override
  String get partitionCreateTitle => 'Kurti skirsnį';

  @override
  String get partitionEditTitle => 'Keisti skirsnį';

  @override
  String get partitionSizeLabel => 'Dydis:';

  @override
  String get partitionTypeLabel => 'Naujo skirsnio tipas:';

  @override
  String get partitionTypePrimary => 'Pirminis';

  @override
  String get partitionTypeLogical => 'Loginis';

  @override
  String get partitionLocationLabel => 'Naujo skirsnio vieta:';

  @override
  String get partitionLocationBeginning => 'Šios vietos pradžia';

  @override
  String get partitionLocationEnd => 'Šios vietos pabaiga';

  @override
  String get partitionFormatLabel => 'Naudojamas kaip:';

  @override
  String get partitionFormatNone => 'Palikti neformatuotą';

  @override
  String partitionFormatKeep(String format) {
    return 'Leave formatted as $format';
  }

  @override
  String get partitionErase => 'Formatuoti skirsnį';

  @override
  String get partitionMountPointLabel => 'Prijungimo vieta:';

  @override
  String get confirmPageTitle => 'Pasiruošę įdiegti';

  @override
  String get confirmHeader => 'Jei tęsite, žemiau išvardyti pakeitimai bus įrašyti į diskus. Tolimesnius pakeitimus galėsite atlikti rankiniu būdu.';

  @override
  String get confirmDiskEncryptionLVM => 'LUKS (LVM)';

  @override
  String get confirmDiskEncryptionZFS => 'LUKS (ZFS)';

  @override
  String get confirmDiskEncryptionTPM => 'TPM';

  @override
  String get confirmDiskEncryptionNone => 'None';

  @override
  String get confirmDevicesTitle => 'Įrenginiai';

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
  String get confirmPartitionsTitle => 'Skirsniai';

  @override
  String get confirmPartitionTables => 'Šių įrenginių skirsnių lentelėms yra atlikti pakeitimai:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmPartitionChanges => 'Bus pritaikyti šie skirsnių pakeitimai:';

  @override
  String confirmPartitionResize(String sysname, String oldsize, String newsize) {
    return 'skirsnio <b>$sysname</b> dydis pakeistas iš <b>$oldsize</b> į <b>$newsize</b>';
  }

  @override
  String confirmPartitionFormatMount(String sysname, String format, String mount) {
    return 'skirsnis <b>$sysname</b> formatuotas kaip <b>$format</b> ir naudojamas kaip <b>$mount</b>';
  }

  @override
  String confirmPartitionFormat(String sysname, String format) {
    return 'skirsnis <b>$sysname</b> formatuotas kaip <b>$format</b>';
  }

  @override
  String confirmPartitionMount(String sysname, String mount) {
    return 'skirsnis <b>$sysname</b> naudojamas kaip <b>$mount</b>';
  }

  @override
  String confirmPartitionCreate(String sysname) {
    return 'sukurtas skirsnis <b>$sysname</b>';
  }

  @override
  String get confirmProprietarySoftwareCodecs => 'Codecs';

  @override
  String get confirmProprietarySoftwareCodecsDrivers => 'Codecs & drivers';

  @override
  String get confirmProprietarySoftwareDrivers => 'Drivers';

  @override
  String get confirmInstallButton => 'Įdiegti';

  @override
  String get installationCompleteTitle => 'Įdiegimas baigtas';

  @override
  String readyToUse(String system) {
    return '$system įdiegta ir paruošta naudoti';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system** has been copied to the disk';
  }

  @override
  String restartInto(String system) {
    return 'Paleisti iš naujo į $system';
  }

  @override
  String get restartWarningBody => 'Restart to complete the installation or continue testing.\nAny changes you make will not be saved.';

  @override
  String get rebootToConfigureWarning => 'You have to restart the computer to continue the installation process.';

  @override
  String get shutdown => 'Išjungti';

  @override
  String get restartNow => 'Paleisti iš naujo dabar';

  @override
  String get continueTesting => 'Tęsti sistemos bandymą';

  @override
  String get bitlockerTitle => '„BitLocker“ yra įjungta';

  @override
  String get bitlockerHeader => 'Norėdami tęsti, išjunkite „BitLocker“';

  @override
  String bitlockerDescription(String option) {
    return 'Šis kompiuteris naudoja „Windows BitLocker“ šifravimą.\nNorėdami tęsti, turite pasinaudoti „Windows“ ir sukurti laisvą vietą arba pasirinkti variantą \'$option\'.';
  }

  @override
  String bitlockerInstructions(String url) {
    return 'Norėdami skaityti instrukcijas, nuskenuokite kitu įrenginiu QR kodą arba apsilankykite adresu: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get restartIntoWindows => 'Paleisti iš naujo į „Windows“';

  @override
  String get restartIntoWindowsTitle => 'Paleisti iš naujo į „Windows“ sistemą?';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return 'Ar tikrai norite paleisti kompiuterį iš naujo? Vėliau jums teks pradėti $DISTRO diegimą iš naujo, kad užbaigtumėte diegti $DISTRO.';
  }

  @override
  String installationSlidesTitle(String RELEASE) {
    return 'Jus sveikina $RELEASE';
  }

  @override
  String get installationSlidesAvailable => 'Prieinama:';

  @override
  String get installationSlidesIncluded => 'Įtraukta:';

  @override
  String get installationSlidesWelcomeTitle => 'Greita, nemokama ir pilna naujų ypatybių';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return 'Naujausia $DISTRO versija paverčia naudojimąsi kompiuteriu neįtikėtinai lengvu.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'Nepaisant to, ar esate plėtotojas, kūrėjas, žaidimų megėjas ar administratorius, atrasite naujus įrankius, kurie pagerins produktyvumą ir jūsų patyrimą su $RELEASE.';
  }

  @override
  String get installationSlidesSoftwareTitle => 'Visos reikiamos programos';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'Diekite, tvarkykite ir atnaujinkite visas savo programas naudodamiesi „Ubuntu Software“, įskaitant tūkstančius programų iš tiek „Snap Store“, tiek $DISTRO archyvo.';
  }

  @override
  String get installationSlidesDevelopmentTitle => 'Plėtokite naudodami geriausią, ką siūlo atvirasis kodas';

  @override
  String installationSlidesDevelopmentBody(String DISTRO) {
    return '$DISTRO yra tobula kompiuterizuota darbo vieta, skirta programų ar saityno plėtojimui, duomenų mokslui bei dirbtinio intelekto/kompiuterio mokymosi vystymui, o taip pat plėtojimo operacijoms ir administravimui. Kiekvienoje $DISTRO laidoje yra naujausios įrankių grandinės ir yra palaikomos visos pagrindinės integruotosios plėtojimo aplinkos.';
  }

  @override
  String get installationSlidesCreativityTitle => 'Vystykite savo kūrybingumą';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return 'Jei esate animatorius, dizaineris, vaizdo įrašų kūrėjas ar žaidimų plėtotojas, be vargo perkelsite savo darbo eigą į $DISTRO, kuri palaiko atvirojo kodo ir pramoninių standartų programinę įrangą bei programas.';
  }

  @override
  String get installationSlidesGamingTitle => 'Puikiai tinka žaidimams';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return '$DISTRO palaiko naujausias „NVIDIA“ ir „Mesa“ tvarkykles, kad pagerintų našumą ir suderinamumą. Tūkstančiai „Windows“ žaidimų pavadinimų, tokių programų kaip „Steam“ dėka, be jokios papildomos konfigūracijos gali būti paleisti $DISTRO.';
  }

  @override
  String get installationSlidesSecurityTitle => 'Privati ir saugi';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return '$DISTRO teikia visus reikiamus įrankius, kad privačiai naudotumėtės internetu ir išliktumėte saugūs. Dėka užkardos ir VPN palaikymo bei daugelio į privatumą orientuotų programų, yra užtikrinama, kad niekas kitas, o tik jūs galėtumėte pilnai valdyti savo duomenis.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return 'Visoms $DISTRO LTS laidoms 5 metų laikotarpyje yra teikiamos saugumo spragų pataisos. Šį laikotarpį „Ubuntu Pro“ prenumeratos dėka galima pratęsti iki 10 metų.';
  }

  @override
  String get installationSlidesProductivityTitle => 'Padidinkite savo produktyvumą';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return 'Į $DISTRO darbalaukį įeina LibreOffice, raštinės programų rinkinys, suderinamas su „Microsoft Office“. Jį sudaro programos, skirtos kurti dokumentus, skaičiuokles bei pateiktis. Taip pat yra prieinami populiarūs bendradarbiavimo įrankiai.';
  }

  @override
  String get installationSlidesAccessibilityTitle => 'Prieinama visiems';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return '$DISTRO filosofijos gelmėje yra įsitikinimas, jog naudojimasis kompiuteriu yra prieinamas kiekvienam. Dėka išplėstinių prieinamumo įrankių ir parametrų, skirtų keisti kalbą, spalvas bei teksto dydį, $DISTRO paverčia naudojimąsi kompiuteriu lengvu – nepaisant to, kur esate ar kas bebūtumėte.';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'Orca ekrano skaityklė';

  @override
  String get installationSlidesAccessibilityLanguages => 'Kalbos palaikymas';

  @override
  String get installationSlidesSupportTitle => 'Pagalba ir palaikymas';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return 'Oficiali $DISTRO dokumentacija yra prieinama tiek internete, tiek spustelėjus ant žinyno piktogramos doke.';
  }

  @override
  String get installationSlidesSupportCommunity => '„Ask Ubuntu“ apima didelį klausimų ir atsakymų spektrą, o „Ubuntu Discourse“ teikia žinyną bei patarimus tiek naujiems, tiek pažengusiems naudotojams.';

  @override
  String get installationSlidesSupportEnterprise => 'Naudotojams iš įmonių Canonical teikia komercinį palaikymą, padėdama darbo vietoje lengvai pritaikyti ir saugiai valdyti Ubuntu.';

  @override
  String get installationSlidesSupportResources => 'Naudingi ištekliai:';

  @override
  String get installationSlidesSupportDocumentation => 'Oficiali dokumentacija';

  @override
  String get installationSlidesSupportUbuntuPro => 'Naudotojų iš įmonių palaikymas 24/7 naudojant „Ubuntu Pro“';

  @override
  String get copyingFiles => 'Kopijuojami failai…';

  @override
  String get installingSystem => 'Įdiegiama sistema…';

  @override
  String get configuringSystem => 'Nustatoma sistema…';

  @override
  String get installationFailed => 'Nepavyko įdiegti';

  @override
  String get notEnoughDiskSpaceTitle => 'Trūksta vietos';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return 'Nepakanka vietos diske, kad būtų įdiegta $DISTRO';
  }

  @override
  String notEnoughDiskSpaceBody(String DISTRO) {
    return 'The selected disk does not have enough disk space to install $DISTRO. Quit the installer to make space available or select another disk.';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'Prieinama:';

  @override
  String get notEnoughDiskSpaceRequired => 'Reikia:';

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
    return '<font color=\"$color\">Įspėjimas:</font> Jei prarasite šį saugumo raktą, visi duomenys bus prarasti. Rekomenduojame užsirašyti šį raktą ir laikyti jį saugioje vietoje atokiai nuo šio kompiuterio.';
  }
}
