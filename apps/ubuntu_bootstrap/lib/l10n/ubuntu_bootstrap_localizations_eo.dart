// ignore: unused_import
import 'package:intl/intl.dart' as intl;
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
  String get autoinstallLandscapeOption => 'Aŭtomatigite per Landscape';

  @override
  String get autoinstallLandscapeDescription => 'Por uzanto en organizaĵo provizanta aŭtomatan instalan dosieron per Landscape.';

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
  String get rstHeader => 'Vi devas malŝalti RST por daŭrigi instaladon';

  @override
  String get rstDisable => 'Via komputilo uzas Intel RST (Rapid-Stokan Teknikon). Vi povas malŝalti RST aŭ en:';

  @override
  String get rstDisableWindows => 'Windows, se vi uzas Windows kun aliaj mastrumaj sistemoj';

  @override
  String get rstDisableBios => 'La agordoj de BIOS';

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
  String get choosePassphraseMismatch => 'La pasfrazoj ne kongruas';

  @override
  String get choosePassphraseInfoHeader => 'Konservu vian pasfrazon ie sekure';

  @override
  String get choosePassphraseInfoBody => 'Se vi forgesos vian pasfrazon, vi perdos ĉiom da viaj datenoj.';

  @override
  String get chooseOptionalPassphraseInfoHeader => 'Konservu vian pasfrazon kaj restaŭran ŝlosilon ie sekure';

  @override
  String get chooseOptionalPassphraseInfoBody => 'Se vi perdos vian pasfrazon, vi perdos ĉiom da viaj datenoj. La pasfrazo ne anstataŭigas la restaŭran ŝlosilon nek la pasvorton de la uzanto.';

  @override
  String get passphrasePageTitle => 'Encryption';

  @override
  String get passphrasePageHeaderPassphrase => 'Create an encryption passphrase';

  @override
  String get passphrasePageHeaderPin => 'Create an encryption PIN';

  @override
  String get passphrasePageBodyPassphrase => 'You will need to enter your passphrase every time you turn on your computer. This passphrase is different from your user password. You will be able to change it later, but not disable it. If you forget your passphrase, you can regain access to your disk by using your recovery key.';

  @override
  String get passphrasePageBodyPin => 'You will need to enter your PIN every time you turn on your computer. This PIN is different from your user password. You will be able to change it later, but not disable it. If you forget your PIN, you can regain access to your disk by using your recovery key.';

  @override
  String get passphrasePageChoosePassphraseHint => 'Choose a passphrase';

  @override
  String get passphrasePageConfirmPassphraseHint => 'Confirm passphrase';

  @override
  String get passphrasePageRequiredPassphrase => 'A passphrase is required';

  @override
  String get passphrasePageMismatchPassphrase => 'The passphrases do not match';

  @override
  String get passphrasePageChoosePinHint => 'Choose a PIN';

  @override
  String get passphrasePageConfirmPinHint => 'Confirm PIN';

  @override
  String get passphrasePageRequiredPin => 'A PIN is required';

  @override
  String get passphrasePageMismatchPin => 'The PINs do not match';

  @override
  String get passphraseTypePassphraseTileTitle => 'Require a passphrase';

  @override
  String get passphraseTypePassphraseTileSubTitle => 'Most secure. You will need to enter a passphrase every time you turn on your computer.';

  @override
  String get passphraseTypePinTileTitle => 'Require a PIN';

  @override
  String get passphraseTypePinTileSubTitle => 'More secure. You will need to enter a numeric PIN every time you turn on your computer.';

  @override
  String get passphraseTypeNoneTileTitle => 'Unlock disk automatically';

  @override
  String get passphraseTypeNoneTileSubTitle => 'Most convenient. Make sure not to enable automatic login for any user.';

  @override
  String get passphraseTypePageHeader => 'Add an encryption PIN or passphrase';

  @override
  String get passphraseTypePageBody => 'By default, your computer’s Trusted Platform Module (TPM) unlocks your disk when you start Ubuntu. However, you can also require a PIN or a passphrase to further protect your data. You will be able to change your PIN or passphrase later, but not disable them.';

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
  String get installationTypeAdvancedLabel => 'Montri funkciojn por spertuloj…';

  @override
  String get installationTypeAdvancedTitle => 'Ĉifrado kaj dosiersistemo';

  @override
  String get installationTypeExperimental => 'Eksperimenta';

  @override
  String get installationTypeNone => 'Sen ĉifrado';

  @override
  String get installationTypeNoneInfo => 'Ordinara dosiersistemo sen ĉifrado.';

  @override
  String get installationTypeNoneSelected => 'Nenio elektita';

  @override
  String get installationTypeLVM => 'Uzi LVM sen ĉifrado';

  @override
  String get installationTypeLVMSelected => 'LVM elektita';

  @override
  String get installationTypeLVMEncryption => 'Ĉifri kun pasfrazo';

  @override
  String get installationTypeLVMEncryptionInfo => 'Vi bezonis tajpi pasfrazon por startigi la komputilon. Tio uzas LUKS-ĉifradon kun LVM.';

  @override
  String get installationTypeLVMEncryptionSelected => 'LVM kaj ĉifrado elektitaj';

  @override
  String get installationTypeEncryptInfo => 'Vi elektos sekurigan ŝlosilon dum la sekva paŝo.';

  @override
  String get installationTypeZFS => 'Uzi ZFS sen ĉifrado';

  @override
  String get installationTypeZFSEncryption => 'Ĉifri kun pasfrazo per ZFS';

  @override
  String get installationTypeZFSEncryptionInfo => 'Ĉifrado indiĝena al ZFS. Vi bezonos tajpi pasfrazon por startigi la komputilon.';

  @override
  String get installationTypeZFSSelected => 'ZFS elektita';

  @override
  String get installationTypeZFSEncryptionSelected => 'ZFS kaj ĉifrado elektitaj';

  @override
  String get installationTypeTPM => 'Uzi aparato-bazan ĉifradon';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return '<a href=\"$url\">Legu pri TPM-ĉifrado</a> antaŭ ol vi elektas ĉi tiun opcion. Tio eble ne funkcios kun via komputilo aŭ estontaj versioj de $DISTRO.';
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
  String allocateDiskSpaceInvalidMountPointFormat(String mountpoint, String format) {
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
  String get confirmEntryDiskSetup => 'Speco de instalo';

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
  String get confirmProprietarySoftwareCodecs => 'Aŭdvidaj kodiloj';

  @override
  String get confirmProprietarySoftwareCodecsDrivers => 'Aŭdvidaj kodiloj kaj zorgiloj';

  @override
  String get confirmProprietarySoftwareDrivers => 'Zorgiloj';

  @override
  String get confirmInstallButton => 'Instali';

  @override
  String get confirmTableErased => 'Forviŝita';

  @override
  String get confirmTableUnchanged => 'Neŝanĝita';

  @override
  String confirmTableResized(String oldsize, String newsize) {
    return 'Grando ŝanĝiĝis de $oldsize al $newsize';
  }

  @override
  String confirmTableCreatedFormattedMounted(String format, String mountpoint) {
    return 'Kreita kaj strukturita kiel $format kaj uzota por $mountpoint';
  }

  @override
  String confirmTableFormattedMounted(String format, String mountpoint) {
    return 'Restrukturita kiel $format uzota por $mountpoint';
  }

  @override
  String confirmTableMounted(String mountpoint) {
    return 'Uzota por $mountpoint';
  }

  @override
  String confirmTableFormatted(String format) {
    return 'Restrukturita kiel $format';
  }

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
  String get bitlockerInfoTitle => 'Troviĝis BitLocker';

  @override
  String get bitlockerInfoDescription => 'Unu aŭ pluraj subdisko(j) estis ĉifrita(j) per BitLocker.';

  @override
  String get bitlockerInfoDisable => 'Por instali apud Windows, malŝaltu BitLocker en Windows.';

  @override
  String get bitlockerInfoRecovery => 'Windows povas peti restaŭrajn ŝlosilojn dum startado post instalo.';

  @override
  String bitlockerInfoInstructions(String url) {
    return 'Por instrukcioj, vizitu <a href=\"$url\">la helpilon pri BitLocker</a>.';
  }

  @override
  String get bitlockerWarningTitle => 'Vi povas perdi ĉiom da datenoj sen restaŭraj ŝlosiloj de BitLocker';

  @override
  String get restartComputer => 'Restartigi komputilon';

  @override
  String get restartComputerTitle => 'Ĉu restartigi komputilon?';

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
  String get recoveryKeyTitleBadgeLabel => 'Important';

  @override
  String get recoveryKeyHeader => 'Akiri restaŭran ŝlosilon';

  @override
  String get recoveryKeyInfoHeader => 'Vi eble perdos ĉiom da viaj datenoj sen restaŭra ŝlosilo';

  @override
  String get recoveryKeyTextFieldLabel => 'Recovery key';

  @override
  String get recoveryKeyStorageAdvice => 'Konservu la restaŭran ŝlosilon ie sekure. Uzu ĝin por malĉifri la diskon por kelkaj sistemaj ŝanĝoj. Ekzemple, oni bezonos ĝin, se oni ŝanĝos la komponantojn de via komputilo aŭ ĝisdatigos la mikroprogramaron.';

  @override
  String get recoveryKeyConfirmation => 'Mi komprenas, ke mi povos perdi ĉiom da miaj datenoj, se mi ne havos restaŭran ŝlosilon';

  @override
  String get recoveryKeyLinkLabel => 'Lerni plu';

  @override
  String get recoveryKeySaveToFileLabel => 'Save to file';

  @override
  String get recoveryKeyShowQrCodeLabel => 'Show QR code';

  @override
  String recoveryKeyQrDialogTitle(String DISTRO) {
    return '$DISTRO Desktop - Recovery key';
  }

  @override
  String get recoveryKeyQrDialogBody => 'Scan the QR code to copy the recovery key and save it somewhere safe, such as a password manager. You can also take a photo for later use.';

  @override
  String get recoveryKeyClipboardNotifiaction => 'Copied to clipboard';

  @override
  String get recoveryKeyExceptionFileSystemTitle => 'Recovery key file not saved';

  @override
  String get recoveryKeyExceptionDisallowedPathTitle => 'Recovery key file cannot be saved in a temporary location';

  @override
  String get recoveryKeyExceptionUnknownTitle => 'Unknown error';

  @override
  String get recoveryKeyExceptionFileSystemBody => 'You do not have permission to write to that folder. Try a different location or use another method.';

  @override
  String get recoveryKeyExceptionDisallowedPathBody => 'Try a different location, such as a removable drive, or use another method.';

  @override
  String get recoveryKeyFilePickerTitle => 'Save recovery key file';

  @override
  String get recoveryKeyFilePickerFilter => 'Text files';

  @override
  String landscapeMagicAttachInstructions(String url) {
    return 'Skanu la QR-kodon aŭ tajpu la ĉi suban kodon ĉe <a href=\"https://$url\">$url</a>';
  }

  @override
  String get landscapePageTitle => 'Aŭtomata instalado';

  @override
  String get landscapeHeader => 'Saluti al Landscape';

  @override
  String get landscapeDomainHeader => 'Tajpu nomregnon de Landscape (plene kvalifikitan nomregnon)';

  @override
  String get landscapeDomainHintText => 'Nomregno Landscape (plene kvalifikita nomregno)';

  @override
  String get landscapeDomainInstructions => 'Provizu la nomregnon Landscape de via organizaĵo por saluti kaj elŝuti aŭtomatan instalan dosieron. La informadika subtena teamo de via organizaĵo povas provizi la plene kvalifikitan nomregnon.';

  @override
  String get landscapeDomainTextField => 'Nomregno Landscape (plene kvalifikita nomregno)';

  @override
  String get next => 'Sekven';

  @override
  String get landscapeDomainInvalidDomainWarning => 'Nevalida nomregno. Bonvolu kontroli aŭ kontakti vian informadikan subtenan teamon';

  @override
  String get landscapeDomainNoInternetTitleWarning => 'Konektu al Interreto por daŭrigi';

  @override
  String get landscapeDomainNoInternetDescriptionWarning => 'Interreto necesas por elŝuti la aŭtomatan instalan dosieron el Landscape';

  @override
  String get landscapeCodeExpiredWarning => 'La kodo eksvalidiĝis; bonvolu reprovi';

  @override
  String get landscapeLoginFailedWarning => 'Salutado malsukcesis; bonvolu reprovi';

  @override
  String get landscapeErrorPageTitle => 'Aŭtomata instalo ne disponiĝas por via konto';

  @override
  String get landscapeErrorPageBody => 'Kontaktu vian teknikan subtenon, aŭ provu alian opcion por instali.';

  @override
  String landscapeErrorPageCode(String code) {
    return 'Erarkodo: $code';
  }

  @override
  String get landscapeConfirmPageSuccessInfoTitle => 'Ubuntu instaliĝos laŭ la agordoj provizitaj de via organizaĵo';

  @override
  String get landscapeConfirmPageSuccessInfoContent => 'Vi povas revizii la aŭtomatan instalan dosieron el Landscape ĉi-sube.';
}
