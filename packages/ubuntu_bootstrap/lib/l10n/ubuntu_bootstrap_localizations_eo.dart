import 'ubuntu_bootstrap_localizations.dart';

/// The translations for Esperanto (`eo`).
class UbuntuBootstrapLocalizationsEo extends UbuntuBootstrapLocalizations {
  UbuntuBootstrapLocalizationsEo([String locale = 'eo']) : super(locale);

  @override
  String get appTitle => 'Instalilo de Ubuntu Desktop';

  @override
  String windowTitle(String RELEASE) {
    return 'Instali $RELEASE';
  }

  @override
  String get autoinstallTitle => 'Installation type';

  @override
  String autoinstallHeader(String DISTRO) {
    return 'How would you like to install $DISTRO?';
  }

  @override
  String get autoinstallInstructions => 'Enter the autoinstall.yaml URL.';

  @override
  String get autoinstallInteractiveOption => 'Interactive installation';

  @override
  String get autoinstallInteractiveDescription => 'For users who want to be guided step by step through the installation.';

  @override
  String get autoinstallAutomatedOption => 'Automated installation';

  @override
  String get autoinstallAutomatedDescription => 'For advanced users who have an autoinstall.yaml for consistent and repeatable system setups.';

  @override
  String get changeButtonText => 'Ŝanĝi';

  @override
  String get quitButtonText => 'Ĉesi instaladon';

  @override
  String loadingPageTitle(String DISTRO) {
    return 'Bonvenon al $DISTRO';
  }

  @override
  String loadingHeader(String DISTRO) {
    return 'Preparante $DISTRO…';
  }

  @override
  String tryOrInstallTitle(String DISTRO) {
    return 'Provi aŭ instali $DISTRO';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return 'What do you want to do with $DISTRO?';
  }

  @override
  String get tryOrInstallRepairOption => 'Ripari instalaĵon';

  @override
  String get tryOrInstallRepairDescription => 'Riparado reinstalos ĉiujn instalitajn programojn sen modifi dokumentojn aŭ agordojn.';

  @override
  String tryOption(String RELEASE) {
    return 'Provi $RELEASE';
  }

  @override
  String tryDescription(String RELEASE) {
    return 'Vi povas provi $RELEASE sen iel ajn ŝanĝi vian komputilon.';
  }

  @override
  String installOption(String RELEASE) {
    return 'Instali $RELEASE';
  }

  @override
  String installDescription(String RELEASE) {
    return 'Instali $RELEASE apud (aŭ anstataŭ) via aktuala mastruma sistemo. Tio ne daŭros tro longe.';
  }

  @override
  String tryOrInstallReleaseNotesLabel(String url) {
    return 'Vi eble volas legi la <a href=\"$url\">liverajn notojn</a>.';
  }

  @override
  String get rstTitle => 'Rapid-Konserveja Tekniko (RST) estas ŝaltita';

  @override
  String get rstHeader => 'Malŝaltu RST por daŭrigi';

  @override
  String rstDescription(String DISTRO) {
    return 'Ĉi tiu komputilo uzas Intel RST (Rapid-Konservejan Teknikon). Vi devas malŝalti RST en Windows antaŭ ol instali Ubuntu.';
  }

  @override
  String rstInstructions(String url) {
    return 'Por instrukcioj, skanu la QR-kodon per alia aparato, aŭ vizitu la jenon: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'Agordi Sekuran Praŝargon';

  @override
  String get configureSecureBootDescription => 'Vi elektis instali triapartiajn zorgilojn. Tio postulas malŝalti Sekuran Praŝargon.\nPor tio, vi devas elekti sekurigan ŝlosilon nun kaj tajpu ĝin, kiam la sistemo restartas.';

  @override
  String get configureSecureBootOption => 'Agordi Sekuran Praŝargon';

  @override
  String get chooseSecurityKey => 'Elektu sekurigan ŝlosilon';

  @override
  String get confirmSecurityKey => 'Konfirmu la sekurigan ŝlosilon';

  @override
  String get dontInstallDriverSoftwareNow => 'Ne instali zorgilojn nun';

  @override
  String get dontInstallDriverSoftwareNowDescription => 'Vi povas instali ilin poste per Programaroj kaj Ĝisdatigoj.';

  @override
  String get configureSecureBootSecurityKeyRequired => 'Sekuriga ŝlosilo bezoniĝas';

  @override
  String get secureBootSecurityKeysDontMatch => 'La sekurigaj ŝlosiloj ne kongruas';

  @override
  String get showSecurityKey => 'Montri sekurecŝlosilon';

  @override
  String get hideSecurityKey => 'Hide';

  @override
  String get updatesOtherSoftwarePageTitle => 'Programoj kaj ĝisdatigoj';

  @override
  String get updatesOtherSoftwarePageDescription => 'Kiajn programojn vi volas instali por komenci?';

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
  String get fullInstallationTitle => 'Plena instalo';

  @override
  String get fullInstallationSubtitle => 'Senrete uzebla kolekto da laborprogramoj, utilaĵoj, TTT-legilo kaj ludoj.';

  @override
  String get minimalInstallationTitle => 'Implicita instalo';

  @override
  String get minimalInstallationSubtitle => 'Nur la esencaĵoj: TTT-legilo kaj bazaj ilaĵoj.';

  @override
  String get otherOptions => 'Aliaj opcioj';

  @override
  String get installThirdPartyTitle => 'Instali triapartiajn programojn por grafiko kaj sendrataj retaj aparatoj, kune kun kromajn videaj dosierformoj';

  @override
  String get installThirdPartySubtitle => 'Tiuj programoj estas disponeblaj laŭ permesiloj inkluzivitaj en siaj dokumentaroj. Kelkaj el ili estas neliberaj.';

  @override
  String get installDriversTitle => 'Instali triapartiajn programojn por grafiko kaj sendrataj retaj aparatoj';

  @override
  String get installDriversSubtitle => 'Tiuj programoj estas disponeblaj laŭ permesiloj inkluzivitaj en siaj dokumentaroj. Ili estas neliberaj.';

  @override
  String get installCodecsTitle => 'Elŝuti kaj instali programojn por kromaj videaj dosierformoj';

  @override
  String get installCodecsSubtitle => 'Tiuj programoj estas disponeblaj laŭ permesiloj inkluzivitaj en siaj dokumentaroj. Kelkaj el ili estas neliberaj.';

  @override
  String onBatteryWarning(String color) {
    return '<font color=\"$color\">Averto:</font> La komputilo ne estas konektita al energifonto.';
  }

  @override
  String get offlineWarning => 'Vi estas aktuale ne konektita al Interreto';

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
  String get installationTypeTitle => 'Speco de instalado';

  @override
  String installationTypeHeader(String DISTRO) {
    return 'How do you want to install $DISTRO?';
  }

  @override
  String installationTypeOSDetected(String os) {
    return 'Ĉi tiu komputilo aktuale portas instalaĵon de $os. Kion vi volas?';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return 'Ĉi tiu komputilo aktuale portas instalaĵojn de $os1 kaj $os2. Kion vi volas?';
  }

  @override
  String get installationTypeMultiOSDetected => 'Ĉi tiu komputilo aktuale portas instalaĵojn de pluraj mastrumaj sistemoj. Kion vi volas?';

  @override
  String get installationTypeNoOSDetected => 'Ĉi tiu komputilo aktuale portas neniun troveblan instalaĵon de mastruma sistemo. Kion vi volas?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'Forviŝi la diskon kaj instali $DISTRO';
  }

  @override
  String get installationTypeEraseInfo => 'Start from scratch on your selected disk.';

  @override
  String get installationTypeAdvancedLabel => 'Altnivelaj trajtoj…';

  @override
  String get installationTypeAdvancedTitle => 'Altnivelaj trajtoj';

  @override
  String get installationTypeExperimental => 'Experimental';

  @override
  String get installationTypeNone => 'Nenio';

  @override
  String get installationTypeNoneSelected => 'Nenio elektita';

  @override
  String get installationTypeLVM => 'Use LVM';

  @override
  String get installationTypeLVMSelected => 'LVM elektita';

  @override
  String get installationTypeLVMEncryption => 'Use LVM and encryption';

  @override
  String get installationTypeLVMEncryptionSelected => 'LVM kaj ĉifrado elektitaj';

  @override
  String get installationTypeEncryptInfo => 'Vi elektos sekurigan ŝlosilon dum la sekva paŝo.';

  @override
  String get installationTypeZFS => 'EKSPERIMENTE: Forviŝi la diskon kaj uzi la dosiersistemon ZFS';

  @override
  String get installationTypeZFSEncryption => 'Erase disk and use ZFS with encryption';

  @override
  String get installationTypeZFSSelected => 'ZFS elektita';

  @override
  String get installationTypeZFSEncryptionSelected => 'ZFS and encryption selected';

  @override
  String get installationTypeTPM => 'EKSPERIMENTE: Ŝalti aparato-bazan plendiskan ĉifradon';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return 'This is an experimental feature. It may not work with your hardware of future $DISTRO releases. <a href=\"$url\">Read about TPM encryption</a> before your choose this option.';
  }

  @override
  String get installationTypeTPMSelected => 'Aparato-baza ĉifrado elektiĝis';

  @override
  String installationTypeReinstall(String os) {
    return 'Forviŝi $os kaj reinstali';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">Avertio:</font> Tio forviŝos ĉiujn programojn de $os, dokumentojn, fotojn, muzikon kaj ĉiajn aliajn dosierojn.';
  }

  @override
  String installationTypeAlongside(String product, String os) {
    return 'Instali $product apud $os';
  }

  @override
  String installationTypeAlongsideDual(String product, String os1, String os2) {
    return 'Instali $product apud $os1 kaj $os2';
  }

  @override
  String installationTypeAlongsideMulti(String product) {
    return 'Instali $product apud ili';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return 'Instali $product apud aliaj subdiskoj';
  }

  @override
  String get installationTypeAlongsideInfo => 'Dokumentoj, muziko kaj aliaj personaj dosieroj estas konservotaj. Vi povos elekti tiun mastruman sistemon, kiun vi volas, kiam la komputilo startas.';

  @override
  String get installationTypeManual => 'Neaŭtomata dispartigo';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'Vi povas mem krei subdiskojn aŭ ŝanĝi iliajn grandojn, aŭ elekti plurajn subdiskojn por $DISTRO';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'Forviŝi la diskon kaj instali $DISTRO';
  }

  @override
  String get selectGuidedStorageInfo => 'Start from scratch on your selected disk.';

  @override
  String get selectGuidedStorageDropdownLabel => 'Elektu diskon:';

  @override
  String get selectGuidedStorageInfoLabel => 'La tuta disko estas uzota:';

  @override
  String get selectGuidedStorageInstallNow => 'Ekinstali';

  @override
  String get installAlongsideSpaceDivider => 'Asignu diskospacon ŝovante la jenan dividilon:';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return '$num etaj subdiskoj estas kaŝitaj; uzu la <a href=\"$url\">altnivelan subdiskilon</a> por agordi tiujn';
  }

  @override
  String get installAlongsideResizePartition => 'Ŝanĝi grandon de subdisko';

  @override
  String get installAlongsideAllocateSpace => 'Asigni spacon';

  @override
  String get installAlongsideFiles => 'Dosieroj';

  @override
  String get installAlongsidePartition => 'Subdisko:';

  @override
  String get installAlongsideSize => 'Grando:';

  @override
  String get installAlongsideAvailable => 'Disponebla:';

  @override
  String get allocateDiskSpace => 'Neaŭtomata dispartigo';

  @override
  String get allocateDiskSpaceInvalidMountPointSlash => 'Surmetingo devas komenciĝi per «/»';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace => 'Surmetingo devas ne enhavi spaceton';

  @override
  String get diskHeadersDevice => 'Aparato';

  @override
  String get diskHeadersType => 'Speco';

  @override
  String get diskHeadersMountPoint => 'Surmetingo';

  @override
  String get diskHeadersSize => 'Grando';

  @override
  String get diskHeadersUsed => 'Uzata';

  @override
  String get diskHeadersSystem => 'Sistemo';

  @override
  String get diskHeadersFormat => 'Strukturo';

  @override
  String get freeDiskSpace => 'Disponebla spaco';

  @override
  String get newPartitionTable => 'Nova subdiskotabelo';

  @override
  String get newPartitionTableConfirmationTitle => 'Nova malplena subdisko';

  @override
  String get newPartitionTableConfirmationMessage => 'Kreado de nova subdiskotabelo sur la tuta aparato forviŝos ĉiujn ekzistantajn subdiskojn. Vi povos laŭvole malfari ĉi tiun operacion poste.';

  @override
  String get tooManyPrimaryPartitions => 'Tro da unuagradaj subdiskoj';

  @override
  String get partitionLimitReached => 'Limo atingiĝis';

  @override
  String get bootLoaderDevice => 'Aparato, sur kiun instaliĝos la praŝargilo';

  @override
  String get partitionCreateTitle => 'Krei subdiskon';

  @override
  String get partitionEditTitle => 'Modifi subdiskon';

  @override
  String get partitionSizeLabel => 'Grando:';

  @override
  String get partitionTypeLabel => 'Speco de nova subdisko:';

  @override
  String get partitionTypePrimary => 'Unuagrada';

  @override
  String get partitionTypeLogical => 'Logika';

  @override
  String get partitionLocationLabel => 'Loko de nova subdisko:';

  @override
  String get partitionLocationBeginning => 'Komenco de ĉi tiu spaco';

  @override
  String get partitionLocationEnd => 'Fino de ĉi tiu spaco';

  @override
  String get partitionFormatLabel => 'Uzata kiel:';

  @override
  String get partitionFormatNone => 'Lasi nestrukturita';

  @override
  String partitionFormatKeep(String format) {
    return 'Lasi nestrukturita kiel $format';
  }

  @override
  String get partitionErase => 'Restrukturi la subdiskon';

  @override
  String get partitionMountPointLabel => 'Surmetingo:';

  @override
  String get confirmPageTitle => 'Preta por instalado';

  @override
  String get confirmHeader => 'Se vi daŭrigos, la ĉi-subaj ŝanĝoj estos skribitaj sur la diskojn. Vi povos permane fari pliajn ŝanĝojn.';

  @override
  String get confirmDiskEncryptionLVM => 'LUKS (LVM)';

  @override
  String get confirmDiskEncryptionZFS => 'LUKS (ZFS)';

  @override
  String get confirmDiskEncryptionTPM => 'TPM';

  @override
  String get confirmDiskEncryptionNone => 'None';

  @override
  String get confirmDevicesTitle => 'Aparatoj';

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
  String get confirmPartitionsTitle => 'Subdiskoj';

  @override
  String get confirmPartitionTables => 'La subdiskotabeloj de la jenaj aparatoj estas ŝanĝotaj:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmPartitionChanges => 'La jenaj ŝanĝoj pri subdiskoj estas efektivigotaj:';

  @override
  String confirmPartitionResize(String sysname, String oldsize, String newsize) {
    return 'ŝanĝi la grandon de la subdisko <b>$sysname</b> de <b>$oldsize</b> al <b>$newsize</b>';
  }

  @override
  String confirmPartitionFormatMount(String sysname, String format, String mount) {
    return 'la subdisko <b>$sysname</b> strukturota laŭ <b>$format</b> kaj uzota por <b>$mount</b>';
  }

  @override
  String confirmPartitionFormat(String sysname, String format) {
    return 'la subdisko <b>$sysname</b> strukturota laŭ <b>$format</b>';
  }

  @override
  String confirmPartitionMount(String sysname, String mount) {
    return 'la subdisko <b>$sysname</b> uzota por <b>$mount</b>';
  }

  @override
  String confirmPartitionCreate(String sysname) {
    return 'krei la subdiskon <b>$sysname</b>';
  }

  @override
  String get confirmProprietarySoftwareCodecs => 'Codecs';

  @override
  String get confirmProprietarySoftwareCodecsDrivers => 'Codecs & drivers';

  @override
  String get confirmProprietarySoftwareDrivers => 'Drivers';

  @override
  String get confirmInstallButton => 'Instali';

  @override
  String get installationCompleteTitle => 'Instalado finiĝis';

  @override
  String readyToUse(String system) {
    return '**$system** estas instalita kaj preta por uzo';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system** has been copied to the disk';
  }

  @override
  String restartInto(String system) {
    return 'Restartigi al $system';
  }

  @override
  String restartWarning(String RELEASE) {
    return 'Vi povas daŭre elprovi $RELEASE, sed kiam la komputilo restartos, forĵetiĝos ĉiuj ŝanĝoj farotaj de vi kaj dokumentoj konservotaj de vi.';
  }

  @override
  String get rebootToConfigureWarning => 'You have to restart the computer to continue the installation process.';

  @override
  String get shutdown => 'Malŝalti';

  @override
  String get restartNow => 'Restartigi nun';

  @override
  String get continueTesting => 'Daŭre elprovi';

  @override
  String get bitlockerTitle => 'BitLocker estas ŝaltita';

  @override
  String get bitlockerHeader => 'Malŝaltu BitLocker por daŭrigi';

  @override
  String bitlockerDescription(String option) {
    return 'Ĉi tiun komputilon ĉifras Windows BitLocker.\nLiberigu diskospacon per Windows, aŭ elektu «$option» por daŭrigi.';
  }

  @override
  String bitlockerInstructions(String url) {
    return 'Por instrukcioj, skanu la QR-kodon per alia aparato, aŭ vizitu la jenon: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get restartIntoWindows => 'Restartigi al Windows';

  @override
  String get restartIntoWindowsTitle => 'Ĉu restartigi al Windows?';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return 'Ĉu vi certas, ke vi volas restartigi vian komputilon? Vi devos rekomenci la instaladon de $DISTRO poste por fini instali $DISTRO.';
  }

  @override
  String installationSlidesTitle(String RELEASE) {
    return 'Bonvenon al $RELEASE';
  }

  @override
  String get installationSlidesAvailable => 'Instaleblaj:';

  @override
  String get installationSlidesIncluded => 'Inkluzivitaj:';

  @override
  String get installationSlidesWelcomeTitle => 'Rapida, senpaga, plena de novaj funkcioj';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return 'La nova versio de $DISTRO igas komputadon pli facila ol iam ajn.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'Ĉu vi programas, kreas, ludas aŭ administras? Vi trovos novajn rimedojn por plibonigi viajn produktivecon kaj sperton en $RELEASE.';
  }

  @override
  String get installationSlidesSoftwareTitle => 'Ĉiom da programoj, kiom vi bezonas';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'Instalu, administru kaj ĝisdatigu ĉiujn viajn programojn per Ubuntu-Programvendejo, inkluzive de miloj da programoj en la Snap-Vendejo kaj en la arkivoj de $DISTRO.';
  }

  @override
  String get installationSlidesDevelopmentTitle => 'Programu helpate de malfermitaj kodoj';

  @override
  String installationSlidesDevelopmentBody(String DISTRO) {
    return '$DISTRO estas la ideala laborstacio por verkado de poŝaparataj kaj Interretaj programoj, datenscienco, artefarita intelekto, maŝina lernado, evoluoperacioj kaj servila administrado. Ĉiu versio de $DISTRO inkluzivas la plej novajn ilĉenojn kaj subtenas ĉiujn precipajn programadmediojn.';
  }

  @override
  String get installationSlidesCreativityTitle => 'Pliigu vian povon krei';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return 'Se vi estas movbildisto, dezajnisto, videoverkisto aŭ ludprogramisto, estas facile alporti viajn laborfluojn al $DISTRO uzante malfermitkodajn kaj industrie normajn programojn.';
  }

  @override
  String get installationSlidesGamingTitle => 'Bonega por videoludoj';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return '$DISTRO subtenas la plej novajn zorgilojn de NVIDIA kaj Mesa por plibonigi rendimenton kaj kongruecon. Miloj da videoludoj por Windows ludiĝas bonege sur $DISTRO per Steam kaj aliaj programoj sen kroma agordado.';
  }

  @override
  String get installationSlidesSecurityTitle => 'Privata kaj sekura';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return '$DISTRO provizas ĉiujn ilojn, kiujn vi bezonas por resti privata kaj sekura Interrete. Per subtenataj fajroŝirmilo kaj virtuala privata reto kaj amaso da privatigaj programoj, vi povas certigi, ke vi plene regas viajn datenojn.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return 'Ĉiu Longdaŭre Subtenata (LTS) versio de $DISTRO provizas kvin jarojn da sekurigaj flikoj; abono de Ubuntu Pro plilongigas tion al dek jaroj.';
  }

  @override
  String get installationSlidesProductivityTitle => 'Produktiviĝu';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return '$DISTRO inkluzivas LibreOffice, malfermitkodan oficejan programaron kongruan kun Microsoft Office por verki dokumentojn, kalkultabelojn kaj prezentaĵojn. Popularaj kunlaboriloj ankaŭ estas haveblaj.';
  }

  @override
  String get installationSlidesAccessibilityTitle => 'Uzebla por ĉiuj';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return 'Ĉe la koro de la filozofio de $DISTRO estas la kredo, ke komputado estu por ĉiuj. Per altnivelaj alirebligiloj kaj la kapablo ŝanĝi lingvon, kolorojn kaj tekstograndon, $DISTRO faciligas komputadon – por ĉiuj ajn, ĉie ajn.';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'Ekranlegilo Orca';

  @override
  String get installationSlidesAccessibilityLanguages => 'Lingvosubteno';

  @override
  String get installationSlidesSupportTitle => 'Helpo kaj subteno';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return 'La oficiala dokumentaro de $DISTRO estas havebla Interrete kaj per la Helpo-piktogramo en la doko.';
  }

  @override
  String get installationSlidesSupportCommunity => 'Ĉe Ask Ubuntu troviĝas gamo da demandoj kaj respondoj, kaj ĉe Ubuntu Discourse estas gvidiloj kaj diskutejoj por kaj novaj kaj spertaj uzantoj.';

  @override
  String get installationSlidesSupportEnterprise => 'Al entreprenoj, Canonical ofertas komercan subtenon por facile enkonduki kaj sekure administri Ubuntu.';

  @override
  String get installationSlidesSupportResources => 'Utilaj rimedoj:';

  @override
  String get installationSlidesSupportDocumentation => 'Oficiala dokumentaro';

  @override
  String get installationSlidesSupportUbuntuPro => 'Entreprene taŭga subteno ĉiutage ĉiuhore per Ubuntu Pro';

  @override
  String get copyingFiles => 'Kopiante dosierojn…';

  @override
  String get installingSystem => 'Instalante la sistemon…';

  @override
  String get configuringSystem => 'Agordante la sistemon…';

  @override
  String get installationFailed => 'Instalado fiaskis';

  @override
  String get notEnoughDiskSpaceTitle => 'Ne sufiĉas spaco';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return 'Ne sufiĉas diska spaco por instali $DISTRO';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'Disponebla:';

  @override
  String get notEnoughDiskSpaceRequired => 'Bezonata:';

  @override
  String get refreshPageTitle => 'Ĝisdatigo estas havebla';

  @override
  String refreshCurrent(String snap, String version) {
    return 'La aktuala versio de $snap estas $version.';
  }

  @override
  String refreshInstall(String version) {
    return 'Ĝisdatigi al versio $version';
  }

  @override
  String refreshUpToDate(String version) {
    return 'La aktuala versio $version estas la plej nova.';
  }

  @override
  String refreshUpdating(String snap) {
    return 'Ĝisdatigante $snap…';
  }

  @override
  String get refreshRestart => 'Bonvolu relanĉi la instalilon.';

  @override
  String refreshSnapPrerequisites(String snap) {
    return 'Certigante necesaĵojn por $snap…';
  }

  @override
  String refreshSnapRefresh(String snap) {
    return 'Refreŝigante $snap…';
  }

  @override
  String refreshSnapCheckRerefresh(String snap) {
    return 'Kontrolante, ĉu $snap refreŝiĝu…';
  }

  @override
  String refreshSnapPrepare(String snap) {
    return 'Pretigante $snap…';
  }

  @override
  String refreshSnapDownload(String snap) {
    return 'Elŝutante $snap…';
  }

  @override
  String refreshSnapValidate(String snap) {
    return 'Validigante $snap…';
  }

  @override
  String refreshSnapMount(String snap) {
    return 'Muntante $snap…';
  }

  @override
  String refreshSnapStopServices(String snap) {
    return 'Haltigante servojn de $snap…';
  }

  @override
  String refreshSnapRemoveAliases(String snap) {
    return 'Forviŝante alinomojn de $snap…';
  }

  @override
  String refreshSnapUnlink(String snap) {
    return 'Malligante $snap…';
  }

  @override
  String refreshSnapUpdateAssets(String snap) {
    return 'Ĝisdatigante havaĵojn de $snap…';
  }

  @override
  String refreshSnapUpdateKernelCommandLine(String snap) {
    return 'Ĝisdatigante la kernan komandlinion de $snap…';
  }

  @override
  String refreshSnapCopyData(String snap) {
    return 'Kopiante datenojn pri $snap…';
  }

  @override
  String refreshSnapSetupProfiles(String snap) {
    return 'Agordante sekurecajn profilojn de $snap…';
  }

  @override
  String refreshSnapLink(String snap) {
    return 'Ligante $snap…';
  }

  @override
  String refreshSnapAutoConnect(String snap) {
    return 'Konektante ŝtopilojn kaj ŝtopilingojn de $snap…';
  }

  @override
  String refreshSnapSetAutoAliases(String snap) {
    return 'Agordante aŭtomatajn alinomojn de $snap…';
  }

  @override
  String refreshSnapSetupAliases(String snap) {
    return 'Agordante alinomojn de $snap…';
  }

  @override
  String refreshSnapStartServices(String snap) {
    return 'Lanĉante servojn de $snap…';
  }

  @override
  String refreshSnapCleanup(String snap) {
    return 'Viŝante $snap…';
  }

  @override
  String get recoveryKeyTitle => 'Ŝlosilo por aparato-baza ĉifrado';

  @override
  String get recoveryKeyCommand => 'Post instalo, vi povas legi vian restaŭran ŝlosilon per la jena komando:';

  @override
  String recoveryKeyWarning(String color) {
    return '<font color=\"$color\">Averto:</font> Se vi perdos ĉi tiun sekurigan ŝlosilon, vi perdos ĉiom da datenoj. Skribu vian ŝlosilon kaj konservu ĝin en sekura alia loko, se tio necesas.';
  }

  @override
  String get validate => 'Validate';
}
