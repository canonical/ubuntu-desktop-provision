import 'ubuntu_bootstrap_localizations.dart';

// ignore_for_file: type=lint

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
  String get autoinstallDirectTitle => 'Aŭtomata instalado';

  @override
  String get autoinstallDirectHeader => 'Enporti dosieron de aŭtomata instalado';

  @override
  String get autoinstallDirectUrlLabel => 'Vi povas tajpi la retadreson de dosiero de aŭtomata instalado:';

  @override
  String get autoinstallDirectFileLabel => 'Aŭ elekti lokan dosieron:';

  @override
  String get autoinstallDirectFileButtonLabel => 'Elekti dosieron…';

  @override
  String get autoinstallDirectFileClearButtonLabel => 'Forviŝi dosieron';

  @override
  String get autoinstallDirectFilePickerTitle => 'Elekti dosieron';

  @override
  String get autoinstallDirectFilePickerFilterLabel => 'YAML-dosieroj';

  @override
  String get autoinstallDirectImportButtonLabel => 'Enporti';

  @override
  String get autoinstallDirectErrorNetworkTitle => 'Ne povas atingi dosieron de aŭtomata instalado';

  @override
  String get autoinstallDirectErrorNetworkBody => 'Kontrolu, ĉu la retadreso estas ĝusta, aŭ testu vian Interretan konekton, aŭ reprovu poste.';

  @override
  String get autoinstallDirectErrorInvalidUrlTitle => 'Nevalida retadreso';

  @override
  String get autoinstallDirectErrorInvalidUrlBody => 'Kontrolu, ĉu la retadreso estas ĝusta, aŭ elektu lokan dosieron.';

  @override
  String get autoinstallDirectErrorInvalidContentTitle => 'Nevalida dosiero por aŭtomata instalado';

  @override
  String get autoinstallDirectErrorInvalidContentBody => 'Kontrolu la dosieron, aŭ elektu alian.';

  @override
  String get autoinstallDirectErrorFileSystemTitle => 'Ne povas legi dosieron por aŭtomata instalado';

  @override
  String get autoinstallDirectErrorFileSystemBody => 'Kontrolu la permesojn, aŭ provizu alian dosieron.';

  @override
  String get autoinstallDirectErrorUnkownTitle => 'Nekonata eraro';

  @override
  String get autoinstallTitle => 'Speco de instalado';

  @override
  String autoinstallHeader(String DISTRO) {
    return 'Kiel instali $DISTRO?';
  }

  @override
  String get autoinstallInstructions => 'Tajpu la retadreson aŭ lokan dosierindikon de la dosiero «autoinstall.yaml»:';

  @override
  String get autoinstallInteractiveOption => 'Interaga instalado';

  @override
  String get autoinstallInteractiveDescription => 'Por tiuj uzantoj, kiuj volas esti gvidataj paŝon post paŝo tra la instalado.';

  @override
  String get autoinstallDirectOption => 'Aŭtomatigita per dosiero de aŭtomata instalado';

  @override
  String get autoinstallDirectDescription => 'Por tiuj spertuloj, kiuj havas dosieron autoinstall.yaml por kohera kaj ripetebla sistemo-starigo.';

  @override
  String get autoinstallLandscapeOption => 'Automated with Landscape';

  @override
  String get autoinstallLandscapeDescription => 'For users in organisations that provide an autoinstall file via Landscape.';

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
  String get warningLabel => 'Averto:';

  @override
  String tryOrInstallTitle(String DISTRO) {
    return 'Provi aŭ instali $DISTRO';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return 'Kion fari per $DISTRO?';
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
  String get rstTitle => 'Rapid-Konserveja Tekniko (RST) troviĝis';

  @override
  String get rstHeader => 'Malŝaltu RST por daŭrigi';

  @override
  String get rstDisable => 'Your computer uses Intel RST (Rapid Storage Technology). You can disable RST either in:';

  @override
  String get rstDisableWindows => 'Windows, if you are using a dual boot setup with Windows';

  @override
  String get rstDisableBios => 'The BIOS settings';

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
  String get hideSecurityKey => 'Kaŝi';

  @override
  String get updatesOtherSoftwarePageTitle => 'Programoj kaj ĝisdatigoj';

  @override
  String get updatesOtherSoftwarePageDescription => 'Kiajn programojn vi volas instali por komenci?';

  @override
  String get codecsAndDriversPageTitle => 'Optimumigi vian komputilon';

  @override
  String get codecsAndDriversPageDescription => 'Ĉu instali rekomendatajn neliberajn programojn?';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return 'Apriore, je $DISTRO mankas neliberaj programoj. Instalado de kromaj programoj eble plibonigos la rendimenton de via komputilo.';
  }

  @override
  String get codecsAndDriversNvidiaNote => 'Vidkarto de Nvidia troviĝis';

  @override
  String get codecsAndDriversNvidiaBody => 'Por la optimuma rendimento de vidkartoj de Nvidia, estas rekomendate instali kromajn zorgilojn.';

  @override
  String get fullInstallationTitle => 'Plena instalo';

  @override
  String get fullInstallationSubtitle => 'Senrete uzebla kolekto da laborprogramoj, utilaĵoj kaj TTT-legilo.';

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
  String get installDriversSubtitle => 'Inkluzive de sed ne limigita al zorgiloj de Nvidia';

  @override
  String get installCodecsTitle => 'Elŝuti kaj instali programojn por kromaj videaj dosierformoj';

  @override
  String get installCodecsSubtitle => 'Inkluzive de sed ne limigita al .mp3, .mp4, .mov ktp.';

  @override
  String get batteryWarning => 'Ĉi tiu komputilo ne estas konektita al energifonto.';

  @override
  String get offlineWarning => 'Vi estas aktuale ne konektita al Interreto';

  @override
  String get choosePassphraseTitle => 'Diska pasfrazo';

  @override
  String get choosePassphraseHeader => 'Krei pasfrazon';

  @override
  String get choosePassphraseBody => 'Vi devas havi pasfrazon por ĉifri viajn dosierojn. Vi devos tajpi vian pasfrazon ĉiujn fojojn, kiam via komputilo startos.';

  @override
  String get choosePassphraseHint => 'Elektu pasfrazon';

  @override
  String get choosePassphraseConfirmHint => 'Konfirmu la pasfrazon';

  @override
  String get choosePassphraseRequired => 'Pasfrazo necesas';

  @override
  String get choosePassphraseMismatch => 'La pasfrazoj ne kongruas';

  @override
  String get choosePassphraseInfoHeader => 'Certigu, ke vi konservas vian pasfrazon';

  @override
  String get choosePassphraseInfoBody => 'Se vi forgesos vian pasfrazon, vi perdos ĉiom da viaj datenoj.';

  @override
  String get chooseOptionalPassphraseHeader => 'Create a passphrase (optional)';

  @override
  String get chooseOptionalPassphraseBody => 'A passphrase can help protect your data even if your hardware gets compromised. You will need to enter the passphrase every time you turn on your computer. You will not be able to remove it later';

  @override
  String get chooseOptionalPassphraseInfoHeader => 'Store your passphrase and recovery key somewhere safe';

  @override
  String get chooseOptionalPassphraseInfoBody => 'If you lose your passphrase, you will lose all your data. The passphrase does not replace the recovery key or your user password.';

  @override
  String get createPassphrase => 'Krei pasfrazon';

  @override
  String get confirmPassphrase => 'Konfirmi pasfrazon';

  @override
  String get installationTypeTitle => 'Agordado de disko';

  @override
  String installationTypeHeader(String DISTRO) {
    return 'Kiel instali $DISTRO?';
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
  String get installationTypeEraseInfo => 'Ĉiuj datenoj kaj subdiskoj sur la disko estas forviŝotaj, inkluzive de mastrumaj sistemoj.';

  @override
  String get installationTypeAdvancedLabel => 'Funkcioj por spertuloj…';

  @override
  String get installationTypeAdvancedTitle => 'Funkcioj por spertuloj';

  @override
  String get installationTypeExperimental => 'Eksperimenta';

  @override
  String get installationTypeNone => 'Nenio';

  @override
  String get installationTypeNoneSelected => 'Nenio elektita';

  @override
  String get installationTypeLVM => 'Uzi LVM';

  @override
  String get installationTypeLVMSelected => 'LVM elektita';

  @override
  String get installationTypeLVMEncryption => 'Uzi LVM kaj ĉifradon';

  @override
  String get installationTypeLVMEncryptionSelected => 'LVM kaj ĉifrado elektitaj';

  @override
  String get installationTypeEncryptInfo => 'Vi elektos sekurigan ŝlosilon dum la sekva paŝo.';

  @override
  String get installationTypeZFS => 'EKSPERIMENTE: Forviŝi la diskon kaj uzi la dosiersistemon ZFS';

  @override
  String get installationTypeZFSEncryption => 'Forviŝi la diskon kaj uzi ZFS kun ĉifrado';

  @override
  String get installationTypeZFSSelected => 'ZFS elektita';

  @override
  String get installationTypeZFSEncryptionSelected => 'ZFS kaj ĉifrado elektitaj';

  @override
  String get installationTypeTPM => 'EKSPERIMENTE: Ŝalti aparato-bazan plendiskan ĉifradon';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return 'Jen eksperimenta funkcio, kiu eble ne funkcios kun via komputilo aŭ estontaj versioj de $DISTRO. <a href=\"$url\">Legu pri TPM-ĉifrado</a> antaŭ ol vi elektas ĉi tiun opcion.';
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
    return 'Instali $product apud ekzistantaj mastrumaj sistemoj';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return 'Instali $product apud aliaj subdiskoj';
  }

  @override
  String installationTypeAlongsideInfo(String product) {
    return 'Elektu la subdiskon, kies grando estas ŝanĝota, kreonte spacon por $product. Vi povos elekti tiun mastruman sistemon, kiun vi volas, kiam la komputilo startas.';
  }

  @override
  String installationTypeEraseAndInstall(String os, String product) {
    return 'Forviŝi $os kaj instali $product';
  }

  @override
  String installationTypeEraseAndInstallInfo(String os) {
    return 'Ĉiuj dosieroj kaj datenoj en la ekzistanta instalo de $os estas nemalfareble forviŝotaj.';
  }

  @override
  String get installationTypeManual => 'Neaŭtomata instalado';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'Por tiuj spertaj uzantoj, kiuj volas agordi siajn diskojn.';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'Forviŝi la diskon kaj instali $DISTRO';
  }

  @override
  String get selectGuidedStorageInfo => 'Komencu denule forviŝinte vian elektitan diskon.';

  @override
  String get selectGuidedStorageDriveDropdownLabel => 'Elektu diskon:';

  @override
  String get selectGuidedStoragePartitionDropdownLabel => 'Elektu subdiskon:';

  @override
  String get selectGuidedStorageInfoLabel => 'La tuta disko estas uzota:';

  @override
  String get selectGuidedStorageInstallNow => 'Ekinstali';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return 'Elektu la lokon, kien $DISTRO estas instalota';
  }

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
  String allocateDiskSpaceInvalidMountPointFormat(Object format, Object mountpoint) {
    return '$format ne estas taŭga dosiersistemo por $mountpoint';
  }

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
  String get confirmHeader => 'Reviziu viajn elektojn';

  @override
  String get confirmDiskEncryptionLVM => 'LUKS (LVM)';

  @override
  String get confirmDiskEncryptionZFS => 'LUKS (ZFS)';

  @override
  String get confirmDiskEncryptionTPM => 'TPM';

  @override
  String get confirmDiskEncryptionNone => 'Nenio';

  @override
  String get confirmDevicesTitle => 'Aparatoj';

  @override
  String get confirmEntryApplications => 'Programoj';

  @override
  String get confirmEntryDiskSetup => 'Agordado de disko';

  @override
  String get confirmEntryDiskEncryption => 'Diska ĉifrado';

  @override
  String get confirmEntryInstallationDisk => 'Instala disko';

  @override
  String get confirmEntryProprietarySoftware => 'Neliberaj programoj';

  @override
  String get confirmSectionGeneralTitle => 'Ĝenerala';

  @override
  String get confirmSectionSecurityAndMoreTitle => 'Sekureco kaj pli';

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
  String get confirmProprietarySoftwareCodecs => 'Aŭdvidaj kodiloj';

  @override
  String get confirmProprietarySoftwareCodecsDrivers => 'Aŭdvidaj kodiloj kaj zorgiloj';

  @override
  String get confirmProprietarySoftwareDrivers => 'Zorgiloj';

  @override
  String get confirmInstallButton => 'Instali';

  @override
  String get installationCompleteTitle => 'Instalado finiĝis';

  @override
  String readyToUse(String system) {
    return '$system estas instalita kaj preta por uzo';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system** estas kopiita sur la diskon';
  }

  @override
  String restartInto(String system) {
    return 'Restartigi al $system';
  }

  @override
  String get restartWarningBody => 'Restartigu por kompletigi la instalon, aŭ daŭrigu la provadon.\nAjnaj ŝanĝoj faritaj de vi ne estos konservitaj.';

  @override
  String get rebootToConfigureWarning => 'Vi devas restartigi la komputilon por daŭrigi la instaladon.';

  @override
  String get shutdown => 'Malŝalti';

  @override
  String get restartNow => 'Restartigi nun';

  @override
  String get continueTesting => 'Daŭre elprovi';

  @override
  String get bitlockerInfoTitle => 'BitLocker detected';

  @override
  String get bitlockerInfoDescription => 'One or more partitions are encrypted with BitLocker.';

  @override
  String get bitlockerInfoDisable => 'To install alongside Windows, disable BitLocker in Windows.';

  @override
  String get bitlockerInfoRecovery => 'Windows may request recovery keys on boot after installation.';

  @override
  String bitlockerInfoInstructions(String url) {
    return 'For instructions, visit the <a href=\"$url\">BitLocker guide</a>.';
  }

  @override
  String get bitlockerWarningTitle => 'You may lose all your data without BitLocker recovery keys';

  @override
  String get restartComputer => 'Restart computer';

  @override
  String get restartComputerTitle => 'Restart computer?';

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
  String get notEnoughDiskSpaceTitle => 'Ne sufiĉas diska spaco';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return 'Ne sufiĉas diska spaco por instali $DISTRO';
  }

  @override
  String notEnoughDiskSpaceBody(String DISTRO) {
    return 'La elektita disko ne havas sufiĉon da diska spaco por instali $DISTRO. Forlasu la instalilon por provizi pli da spaco, aŭ elektu alian diskon.';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'Disponebla:';

  @override
  String get notEnoughDiskSpaceRequired => 'Bezonata:';

  @override
  String get refreshPageTitle => 'Ĝisdatigo estas havebla';

  @override
  String get refreshHeader => 'Ĝisdatigo pretas por la instalilo';

  @override
  String get refreshUpdateNow => 'Ĝisdatigi nun';

  @override
  String get refreshInfo => 'Ĝisdatigu al la plej nova versio por pliaj fidindeco kaj funkcioj.';

  @override
  String get refreshReady => 'Ĝisdatigo pretas';

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
  String get refreshRestart => 'Por daŭrigi, bonvolu fermi kaj relanĉi la instalilon';

  @override
  String get refreshCloseLabel => 'Fermi instalilon';

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
  String get recoveryKeyHeader => 'Get a recovery key';

  @override
  String get recoveryKeyInfoHeader => 'You may lose all your data without a recovery key';

  @override
  String recoveryKeyInfoBody(String distro) {
    return 'Get a recovery key as soon as you first log into $distro and store it somewhere safe.';
  }

  @override
  String get recoveryKeyCommand => 'Post instalo, vi povas legi vian restaŭran ŝlosilon per la jena komando:';

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
