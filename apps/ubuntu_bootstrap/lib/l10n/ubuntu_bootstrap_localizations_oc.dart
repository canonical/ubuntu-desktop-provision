// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_bootstrap_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Occitan (`oc`).
class UbuntuBootstrapLocalizationsOc extends UbuntuBootstrapLocalizations {
  UbuntuBootstrapLocalizationsOc([String locale = 'oc']) : super(locale);

  @override
  String get appTitle => 'Programa d’installacion del burèu Ubuntu';

  @override
  String windowTitle(String RELEASE) {
    return 'Installar $RELEASE';
  }

  @override
  String get autoinstallDirectTitle => 'Installacion automatica';

  @override
  String get autoinstallDirectHeader => 'Importar fichièr autoinstall';

  @override
  String get autoinstallDirectUrlLabel =>
      'Podètz picar l’URL d’un fichièr autoinstall :';

  @override
  String get autoinstallDirectFileLabel => 'O seleccionatz un fichièr local :';

  @override
  String get autoinstallDirectFileButtonLabel => 'Seleccionar un fichièr...';

  @override
  String get autoinstallDirectFileClearButtonLabel => 'Escafar lo fichièr';

  @override
  String get autoinstallDirectFilePickerTitle => 'Causissètz un fichièr';

  @override
  String get autoinstallDirectFilePickerFilterLabel => 'fichièrs YAML';

  @override
  String get autoinstallDirectImportButtonLabel => 'Importar';

  @override
  String get autoinstallDirectErrorNetworkTitle =>
      'Fichièr autoinstall non accessible';

  @override
  String get autoinstallDirectErrorNetworkBody =>
      'Verificatz que l\'URL es corrècta, provatz la connexion Internet, o ensajatz mai tard.';

  @override
  String get autoinstallDirectErrorInvalidUrlTitle => 'URL invalida';

  @override
  String get autoinstallDirectErrorInvalidUrlBody =>
      'Verificatz que l\'URL es corrècta o seleccionatz un fichièr local.';

  @override
  String get autoinstallDirectErrorInvalidContentTitle =>
      'Fichièr autoinstall invalid';

  @override
  String get autoinstallDirectErrorInvalidContentBody =>
      'Verificatz lo fichièr o fornissètz-ne un autre.';

  @override
  String get autoinstallDirectErrorFileSystemTitle =>
      'Fichièr autoinstall illegible';

  @override
  String get autoinstallDirectErrorFileSystemBody =>
      'Verificatz las permissions o fornissètz un fichièr diferent.';

  @override
  String get autoinstallDirectErrorUnkownTitle => 'Error desconeguda';

  @override
  String get autoinstallTitle => 'Tipe d’installacion';

  @override
  String autoinstallHeader(String DISTRO) {
    return 'Cossí volriatz installar $DISTRO ?';
  }

  @override
  String get autoinstallInstructions =>
      'Picatz l’URL de autoinstall.yaml o l’emplaçament del fichièr local :';

  @override
  String get autoinstallInteractiveOption => 'Installacion interactiva';

  @override
  String get autoinstallInteractiveDescription =>
      'Pels utilizaires que vòlon una guida estapa per tapa pendent l\'installacion.';

  @override
  String get autoinstallDirectOption => 'Automatizat amb fichièr autoinstall';

  @override
  String get autoinstallDirectDescription =>
      'Pels utilizaires avançats qu’an un autoinstall.yaml per de configuracions de sistèma coerentas e reproductiblas.';

  @override
  String get autoinstallLandscapeOption => 'Aitomatizat ambé Landscape';

  @override
  String get autoinstallLandscapeDescription =>
      'Pels utilizaires d’organizacions que fornisson un fichièr autoinstal via Landscape.';

  @override
  String get changeButtonText => 'Modificar';

  @override
  String get quitButtonText => 'Quitar l’installacion';

  @override
  String loadingPageTitle(String DISTRO) {
    return 'La benvenguda a $DISTRO';
  }

  @override
  String loadingHeader(String DISTRO) {
    return 'Preparacion de $DISTRO…';
  }

  @override
  String get warningLabel => 'Avertiment :';

  @override
  String tryOrInstallTitle(String DISTRO) {
    return 'Ensajar o installar $DISTRO';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return 'De qué volètz far amb $DISTRO ?';
  }

  @override
  String get tryOrInstallRepairOption => 'Reparar l’installacion';

  @override
  String get tryOrInstallRepairDescription =>
      'La reparacion tornarà installar totes los logicials installats en servant los documents e los paramètres.';

  @override
  String tryOption(String RELEASE) {
    return 'Ensajar $RELEASE';
  }

  @override
  String tryDescription(String RELEASE) {
    return 'Podètz ensajar $RELEASE sens aplicar cap de modificacion a vòstre ordenador.';
  }

  @override
  String installOption(String RELEASE) {
    return 'Installar $RELEASE';
  }

  @override
  String installDescription(String RELEASE) {
    return 'Installar $RELEASE a costat (o a la plaça) de vòstre sistèma operatiu actual. Aquò deuriá pas trigar.';
  }

  @override
  String tryOrInstallReleaseNotesLabel(String url) {
    return 'Podètz tanben legir las <a href=\"$url\">nòtas de version</a>.';
  }

  @override
  String get rstTitle => 'RST es activat';

  @override
  String get rstHeader =>
      'Devètz desactivar lo RST per contunhar l’installacion';

  @override
  String get rstDisable =>
      'Vòstre ordenador utiliza Intel RST (Rapid Storage Technology). Podètz desactivar RST dins :';

  @override
  String get rstDisableWindows =>
      'Windows, s’utilizatz una configuracion mantun sistèma operatiu amb Windows';

  @override
  String get rstDisableBios => 'Los paramètres del BIOS';

  @override
  String rstInstructions(String url) {
    return 'Per las consignas, numerizatz aqueste còdi QR sus un autre aparelh o consultatz : <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'Configurar l’amorçatge segur';

  @override
  String get configureSecureBootDescription =>
      'Avètz causit d’installar de pilòts tèrces. Aquò requerís la desactivacion de l’amorçatge segur.\nPer aquò far, devètz causir una clau de seguretat ara, e la picar quand lo sistèma avia.';

  @override
  String get configureSecureBootOption => 'Configurar l’amorçatge segur';

  @override
  String get chooseSecurityKey => 'Causir una clau de seguretat';

  @override
  String get confirmSecurityKey => 'Confirmat la clau de seguretat';

  @override
  String get dontInstallDriverSoftwareNow =>
      'Installar pas lo logicial pilòt pel moment';

  @override
  String get dontInstallDriverSoftwareNowDescription =>
      'Lo podètz installar mai tard de Logicials e Mesas a jorn estant.';

  @override
  String get configureSecureBootSecurityKeyRequired =>
      'La clau de seguretat es requerida';

  @override
  String get secureBootSecurityKeysDontMatch =>
      'Las claus de seguretat correspondon pas';

  @override
  String get showSecurityKey => 'Mostrar la clau de seguretat';

  @override
  String get hideSecurityKey => 'Amagar';

  @override
  String get updatesOtherSoftwarePageTitle => 'Aplicacions e mesas a jorn';

  @override
  String get updatesOtherSoftwarePageDescription =>
      'Quinas aplicacions volètz installar per començar ?';

  @override
  String get codecsAndDriversPageTitle => 'Optimizatz vòstre ordenador';

  @override
  String get codecsAndDriversPageDescription =>
      'Installar los logicials proprietaris recomandats ?';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return '$DISTRO es fornit sens logicial proprietaris per defaut. L’installacion de logicials suplementaris pòt melhorar la performança de l’ordenador.';
  }

  @override
  String get codecsAndDriversNvidiaNote => 'Carta grafica NVIDIA detectada';

  @override
  String get codecsAndDriversNvidiaBody =>
      'Per de melhoras performanças de las cartas graficas NVIDIA, l’installacion de pilòts addicionals es recomandada.';

  @override
  String get fullInstallationTitle => 'Installacion complèta';

  @override
  String get fullInstallationSubtitle =>
      'Una seleccion d’aisinas de burotica, utilitaris, navegador web e jòcs fòra connexion.';

  @override
  String get minimalInstallationTitle => 'Installacion per defaut';

  @override
  String get minimalInstallationSubtitle =>
      'Sonque çò essencial, lo navegador web e los utilitaris basics.';

  @override
  String get otherOptions => 'Autras opcions';

  @override
  String get installThirdPartyTitle =>
      'Installar de logicials tèrces pel material grafic e Wi-Fi e dels formats de mèdia suplementaris';

  @override
  String get installThirdPartySubtitle =>
      'Aqueste logicial es somés a de tèrmes de licéncia incluses dins sa documentacion. Certans son proprietaris.';

  @override
  String get installDriversTitle =>
      'Installar de logicials tèrces pel material grafic e Wi-Fi';

  @override
  String get installDriversSubtitle =>
      'Aquestes pilòts son someses a de licéncias que son inclusas dins lor documentacion. Son proprietaris.';

  @override
  String get installCodecsTitle =>
      'Telecargar e installar la presa en carga addicionala pels formats multimèdia';

  @override
  String get installCodecsSubtitle =>
      'Inclutz sens se limitar als MP3, MP4, MOV e similars.';

  @override
  String get batteryWarning =>
      'L’ordenador es pas branca a una font d’alimentacion.';

  @override
  String get offlineWarning => 'Sètz fòra linha';

  @override
  String get choosePassphraseHeader => 'Crear un senhal';

  @override
  String get choosePassphraseBody =>
      'Avètz besonh d\'una frasa secrèta per chifrar vòstres fichièrs. Vos serà demandada vòstra frasa secrèta cada còp qu\'aviatz vòstre ordenador.';

  @override
  String get choosePassphraseInfoHeader =>
      'Gardatz vòstra frasa secrèta en luòc segur';

  @override
  String get choosePassphraseInfoBody =>
      'Se perdètz vòstra frasa secrèta, perdretz totas vòstras donadas.';

  @override
  String get chooseOptionalPassphraseInfoHeader =>
      'Gardatz vòstra frasa secrèta e clau de recuperacion en luòc segur';

  @override
  String get chooseOptionalPassphraseInfoBody =>
      'Se perdètz la frasa secrèta, perdretz totas las donadas. La frasa secrèta remplaçarà pas la clau de recuperacion o lo senhal utilizaire.';

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
  String get installationTypeTitle => 'Tipe d’installacion';

  @override
  String installationTypeHeader(String DISTRO) {
    return 'Cossí volètz installar $DISTRO ?';
  }

  @override
  String installationTypeOSDetected(String os) {
    return 'Aqueste ordenador possedís actualament $os. De qué volètz far ?';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return 'Aqueste ordenador a $os1 e $os2 d’installats. De qué volètz far ?';
  }

  @override
  String get installationTypeMultiOSDetected =>
      'Aqueste ordenador es installat amb mantun sistèma operatiu. De qué volètz far ?';

  @override
  String get installationTypeNoOSDetected =>
      'Aqueste ordenador possedís pas cap de sistèma operatiu detectat actualament. De qué volètz far ?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'Escafar lo disc e installar $DISTRO';
  }

  @override
  String get installationTypeEraseInfo =>
      'Totas las donadas sul disc seràn espotidas, tanben los sistèmas operatius.';

  @override
  String get installationTypeAdvancedLabel =>
      'Mostrar las opcions avançadas...';

  @override
  String get installationTypeAdvancedTitle =>
      'Chiframent e sistèma de fichièrs';

  @override
  String get installationTypeExperimental => 'Experimental';

  @override
  String get installationTypeNone => 'Cap de chiframent';

  @override
  String get installationTypeNoneInfo =>
      'Sistèma de fichièrs estandard sens chiframent.';

  @override
  String get installationTypeNoneSelected => 'Cap pas seleccionat';

  @override
  String get installationTypeLVM => 'Utilizar LVM sens chiframent';

  @override
  String get installationTypeLVMSelected => 'LVM seleccionat';

  @override
  String get installationTypeLVMEncryption => 'Chifrar amb frasa secrèta';

  @override
  String get installationTypeLVMEncryptionInfo =>
      'Deuretz picar una frasa secrèta cada còp qu\'alucatz l\'ordenador. Emplega lo chiframent LUKS amb LVM.';

  @override
  String get installationTypeLVMEncryptionSelected =>
      'LVM e chiframent seleccionats';

  @override
  String get installationTypeEncryptInfo =>
      'Causiretz una clau de seguretat a l’etapa seguenta.';

  @override
  String get installationTypeZFS => 'Utilizar ZFS sens chiframent';

  @override
  String get installationTypeZFSEncryption =>
      'Chifrar amb una frasa secrèta en utilizant ZFS';

  @override
  String get installationTypeZFSEncryptionInfo =>
      'Chiframent natiu amb ZDS. Deuretz picar un senhal cada còp qu’alucaretz l’ordenador.';

  @override
  String get installationTypeZFSSelected => 'ZFS seleccionat';

  @override
  String get installationTypeZFSEncryptionSelected =>
      'ZFS e chiframent seleccionats';

  @override
  String get installationTypeTPM => 'Utilizar lo chiframent material';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return '<a href=\"$url\">Assabentatz-vos tocant lo chiframent TPM</a> abans de causir aquesta opcion. Aquò pòt foncionar pas amb vòstre material o futuras versions de $DISTRO.';
  }

  @override
  String get installationTypeTPMSelected => 'TPM seleccionat';

  @override
  String installationTypeReinstall(String os) {
    return 'Escafar $os e reinstallar';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">Avertiment :</font> aquò suprimirà totes vòstres programas $os, documents, fòtos e autres fichièrs.';
  }

  @override
  String installationTypeAlongside(String product, String os) {
    return 'Installar $product al costat de $os';
  }

  @override
  String installationTypeAlongsideDual(String product, String os1, String os2) {
    return 'Installar $product a costat de $os1 e $os2';
  }

  @override
  String installationTypeAlongsideMulti(String product) {
    return 'Installar $product a costat dels sistèmas operatius existissents';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return 'Installar $product a costat de las autras particions';
  }

  @override
  String installationTypeAlongsideInfo(String product) {
    return 'Seleccionatz una particion de redimensionar e creatz l’espaci per $product. Podètz causir quin sistèma operatiu volètz cada que l’ordenador s’aluca.';
  }

  @override
  String installationTypeEraseAndInstall(String os, String product) {
    return 'Suprimir $os e installar $product';
  }

  @override
  String installationTypeEraseAndInstallInfo(String os) {
    return 'Totes los fichièrs e donadas de l’installacion existenta de $os seràn suprimits per totjorn.';
  }

  @override
  String get installationTypeManual => 'Particionament manual';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'Podètz crear o retalhar las particions vos meteis, o causir mantuna particion per $DISTRO';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'Escafar lo disc e installar $DISTRO';
  }

  @override
  String get selectGuidedStorageInfo =>
      'Començatz a partir de zèro sul disc seleccionat.';

  @override
  String get selectGuidedStorageDriveDropdownLabel => 'Seleccionatz le disc :';

  @override
  String get selectGuidedStoragePartitionDropdownLabel =>
      'Seleccionatz la particion :';

  @override
  String get selectGuidedStorageInfoLabel => 'Lo disc entièr serà utilizat :';

  @override
  String get selectGuidedStorageInstallNow => 'Installar ara';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return 'Causissètz ont installar $DISTRO';
  }

  @override
  String get installAlongsideSpaceDivider =>
      'Alogatz l’espaci disc en desplaçant lo separador çai-jos :';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return '$num particions mai pichonas son rescondudas, utilizatz <a href=\"$url\">l’aisinas de particionament avançat</a> per mai de contròla';
  }

  @override
  String get installAlongsideResizePartition => 'Redimensionar la particion';

  @override
  String get installAlongsideAllocateSpace => 'Alogar l’espaci';

  @override
  String get installAlongsideFiles => 'Fichièrs';

  @override
  String get installAlongsidePartition => 'Particion :';

  @override
  String get installAlongsideSize => 'Talha :';

  @override
  String get installAlongsideAvailable => 'Disponible :';

  @override
  String get allocateDiskSpace => 'Particionament manual';

  @override
  String get allocateDiskSpaceInvalidMountPointSlash =>
      'Los ponches de montatge devon començar per « / »';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace =>
      'Los ponches de montatge pòdon pas conténer cap d’espaci';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(
      String mountpoint, String format) {
    return '$format es pas un sistèma de fichièrs compatible amb $mountpoint';
  }

  @override
  String get diskHeadersDevice => 'Disc';

  @override
  String get diskHeadersType => 'Tipe';

  @override
  String get diskHeadersMountPoint => 'Ponch de montatge';

  @override
  String get diskHeadersSize => 'Talha';

  @override
  String get diskHeadersUsed => 'Utilizat';

  @override
  String get diskHeadersSystem => 'Sistèma';

  @override
  String get diskHeadersFormat => 'Formatar';

  @override
  String get freeDiskSpace => 'Espaci liure';

  @override
  String get newPartitionTable => 'Taula de particion novèla';

  @override
  String get newPartitionTableConfirmationTitle => 'Particion novèla voida';

  @override
  String get newPartitionTableConfirmationMessage =>
      'La creacion d’una taula de particions novèla sus un periferic entièr suprimirà totas sas particions actualas. Poiretz anullar aquesta operacion mai tard s\'o volètz.';

  @override
  String get tooManyPrimaryPartitions => 'Tròp de particions primàrias';

  @override
  String get partitionLimitReached => 'Limit atenh';

  @override
  String get bootLoaderDevice =>
      'Periferic per l’installacion del gestionari d’aviada';

  @override
  String get partitionCreateTitle => 'Crear una particion';

  @override
  String get partitionEditTitle => 'Modificar una particion';

  @override
  String get partitionSizeLabel => 'Talha :';

  @override
  String get partitionTypeLabel => 'Tipe per la particion novèla :';

  @override
  String get partitionTypePrimary => 'Primària';

  @override
  String get partitionTypeLogical => 'Logicala';

  @override
  String get partitionLocationLabel => 'Emplaçament de la particion novèla :';

  @override
  String get partitionLocationBeginning => 'Debuta d’aqueste espaci';

  @override
  String get partitionLocationEnd => 'Fin d’aqueste espaci';

  @override
  String get partitionFormatLabel => 'Utilizada coma :';

  @override
  String get partitionFormatNone => 'utilizar pas la particion';

  @override
  String partitionFormatKeep(String format) {
    return 'Gardar lo formatatge en $format';
  }

  @override
  String get partitionErase => 'Formatar la particion';

  @override
  String get partitionMountPointLabel => 'Ponch de montatge :';

  @override
  String get confirmPageTitle => 'Lèst per installacion';

  @override
  String get confirmHeader =>
      'Se contunhatz, las modificacions çai-jos seràn escrichas suls disques. Poiretz realizar de cambiaments mai tard a la man.';

  @override
  String get confirmDiskEncryptionLVM => 'LUKS (LVM)';

  @override
  String get confirmDiskEncryptionZFS => 'LUKS (ZFS)';

  @override
  String get confirmDiskEncryptionTPM => 'TPM';

  @override
  String get confirmDiskEncryptionNone => 'Cap';

  @override
  String get confirmDevicesTitle => 'Periferics';

  @override
  String get confirmEntryApplications => 'Aplicacions';

  @override
  String get confirmEntryDiskSetup => 'Tipe d’installacion';

  @override
  String get confirmEntryDiskEncryption => 'Chiframent del disc';

  @override
  String get confirmEntryInstallationDisk => 'Disc d’installacion';

  @override
  String get confirmEntryProprietarySoftware => 'Logicial proprietari';

  @override
  String get confirmSectionGeneralTitle => 'General';

  @override
  String get confirmSectionSecurityAndMoreTitle => 'Seguretat e mai';

  @override
  String get confirmPartitionsTitle => 'Particions';

  @override
  String get confirmPartitionTables =>
      'Las taulas de particions dels periferics seguents seràn modificadas :';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmProprietarySoftwareCodecs => 'Codècs';

  @override
  String get confirmProprietarySoftwareCodecsDrivers => 'Codècs e pilòts';

  @override
  String get confirmProprietarySoftwareDrivers => 'Pilòts';

  @override
  String get confirmInstallButton => 'Installar';

  @override
  String get confirmTableErased => 'Espotida';

  @override
  String get confirmTableUnchanged => 'Non modificada';

  @override
  String confirmTableResized(String oldsize, String newsize) {
    return 'Redimensionada de $oldsize cap a $newsize';
  }

  @override
  String confirmTableCreatedFormattedMounted(String format, String mountpoint) {
    return 'Creada e formatada en $format utilizada per $mountpoint';
  }

  @override
  String confirmTableFormattedMounted(String format, String mountpoint) {
    return 'Formatada en $format utilizada per $mountpoint';
  }

  @override
  String confirmTableMounted(String mountpoint) {
    return 'Utilizada per $mountpoint';
  }

  @override
  String confirmTableFormatted(String format) {
    return 'Formatada en $format';
  }

  @override
  String get installationCompleteTitle => 'Installacion acabada';

  @override
  String readyToUse(String system) {
    return '$system es installat e prèst a utilizar';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system** copiat sul disc';
  }

  @override
  String restartInto(String system) {
    return 'Reaviar jos $system';
  }

  @override
  String get restartWarningBody =>
      'Tornatz aviar per acabar l\'installacion o contunhatz d’ensajar.\nTotas las modificacions que faretz seràn pas enregistradas.';

  @override
  String get rebootToConfigureWarning =>
      'Devètz reaviar l’ordenador per contunhar lo processús d’installacion.';

  @override
  String get shutdown => 'Atudar';

  @override
  String get restartNow => 'Reaviar ara';

  @override
  String get continueTesting => 'Contunhar d’ensajar';

  @override
  String get bitlockerInfoTitle => 'BitLocker detectat';

  @override
  String get bitlockerInfoDescription =>
      'Una o mai d\'una particion son chifrada amb BitLocker.';

  @override
  String get bitlockerInfoDisable =>
      'Per installar a costat de Windows, desactivatz BitLocker dins Windows.';

  @override
  String get bitlockerInfoRecovery =>
      'Windows poiriá demandar de claus de recuperacion a l’aviada aprèp l’installacion.';

  @override
  String bitlockerInfoInstructions(String url) {
    return 'Per las consignas, consultatz <a href=\"$url\">la guida BitLocker</a>.';
  }

  @override
  String get bitlockerWarningTitle =>
      'Riscatz de pèrdre totas vòstras donadas sens las claus de recuperacion BitLocker';

  @override
  String get restartComputer => 'Reaviar l\'ordenador';

  @override
  String get restartComputerTitle => 'Reaviar l\'ordenador ?';

  @override
  String get restartIntoWindows => 'Reaviar jos Windows';

  @override
  String get restartIntoWindowsTitle => 'Reaviar jos Windows ?';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return 'Volètz vertadièrament reaviar l’ordenador ? Deuretz relançar lo processús d’installacion de $DISTRO mai tard per terminar l’installacion de $DISTRO.';
  }

  @override
  String installationSlidesTitle(String RELEASE) {
    return 'La benvenguda a $RELEASE';
  }

  @override
  String get installationSlidesAvailable => 'Disponible :';

  @override
  String get installationSlidesIncluded => 'Inclús :';

  @override
  String get installationSlidesWelcomeTitle =>
      'Rapid, gratuit e plen de foncionalitats novèlas';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return 'La darrièra version de $DISTRO fa venir l’informatica mai simpla que jamai.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'Que siatz un desvolopaire, creator, jogaire o administrator, traparetz d’aisinas novèlas per melhorar vòstra productivitat e experiéncia sus $RELEASE.';
  }

  @override
  String get installationSlidesSoftwareTitle =>
      'Totas las aplicacions qu’avètz mestièr';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'Installatz, gerissètz e metatz a jorn vòstras aplicacions dins Ubuntu Software, incluses milierats d’aplicacions venent de Snap Store e dels archius $DISTRO.';
  }

  @override
  String get installationSlidesDevelopmentTitle =>
      'Desvolopatz amb çò melhor del monde liure';

  @override
  String installationSlidesDevelopmentBody(String DISTRO) {
    return '$DISTRO es un pòst de trabalh ideal pel desvolopament de logicials o web, las sciéncias de las donadas, l’intelligéncia artificiala e l’aprentissatge automatic, mas tanben pel devops e l’administracion. Totas las versions de $DISTRO incluson las darrièras cadenas d’aisinas e prenon en carga totes los principals environaments de desvolopament integrats.';
  }

  @override
  String get installationSlidesCreativityTitle =>
      'Melhoratz vòstra creativitat';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return 'Se sètz animator, designer, cineasta o desvolopaire de jòcs, es facil de passar vòstre pòst de trabalh cap a $DISTRO gràcia a la compatibilitat de logicials e aplicacions liuras e dels estandards de l’industria.';
  }

  @override
  String get installationSlidesGamingTitle => 'Extra pels jòcs';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return '$DISTRO pren en carga los darrièrs pilòts NVIDIA e Mesa per melhorar las performanças e la compatibilitat. Milierats de jòcs per Windows foncionan coma cal sus $DISTRO via d’aplicacions coma Steam amb cap de configuracion suplementària.';
  }

  @override
  String get installationSlidesSecurityTitle => 'Privat e securizat';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return '$DISTRO provesís totas las aisinas qu’avètz mestièr per demorar privat e segur en linha. Amb un parafuòc e la presa en carga VPN integrats e una seria d’aplicacions pensadas per la confidencialitat avètz tot lo contraròtle de vòstras donadas.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return 'Totas las versions de $DISTRO LTS son fornidas amb cinc ans de patches de seguretat, fins a detz ans amb un abonament Ubuntu Pro.';
  }

  @override
  String get installationSlidesProductivityTitle =>
      'Aumentatz vòstra productivitat';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return '$DISTRO Desktop inclutz LibreOffice, una seguida burotica liura compatibla amb Microsoft Office pels documents, fuèlhs de calcul e las presentacion. D’espleches de collaboracion populars son tanben disponibles.';
  }

  @override
  String get installationSlidesAccessibilityTitle => 'Accès per totes';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return 'Al còs de la filosofia de $DISTRO se tròba la conviccion que l’informatica deu èsser accessibla a totes. En prepausant d’aisinas d’accessibilitat avançadas e d’opcions per cambiar de lenga, de tèma de colors, de talha de polissas, $DISTRO vos fa venir l’informatica facila, qual que siatz e ont que siatz.';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'Lector d’ecran Orca';

  @override
  String get installationSlidesAccessibilityLanguages =>
      'Presa en carga lingüistica';

  @override
  String get installationSlidesSupportTitle => 'Ajuda e assisténcia';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return 'La documentacion oficiala de $DISTRO es disponibla tant en linha coma via l’icòna Ajuda al dock.';
  }

  @override
  String get installationSlidesSupportCommunity =>
      'Ask Ubuntu cobrís una larga plaja de questions e responsas e lo Discourse d’Ubuntu provesís de guidas e de discussions pels nòuvenguts e los utilizaires experimentats.';

  @override
  String get installationSlidesSupportEnterprise =>
      'Per las entrepresas Canonical fornís una assisténcia comerciala per facilitar l’integracion e la gestion d’Ubuntu en tota seguretat al lòc de trabalh.';

  @override
  String get installationSlidesSupportResources => 'Ressorsas utilas :';

  @override
  String get installationSlidesSupportDocumentation => 'Documentacion oficiala';

  @override
  String get installationSlidesSupportUbuntuPro =>
      'Assisténcia professionala disponibla 24h de 24h e 7 jorns de 7 amb Ubuntu Pro';

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
  String get copyingFiles => 'Còpia dels fichièrs…';

  @override
  String get installingSystem => 'Installacion del sistèma…';

  @override
  String get configuringSystem => 'Configuracion del sistèma…';

  @override
  String get installationFailed => 'Fracàs de l’installacion';

  @override
  String get notEnoughDiskSpaceTitle => 'Pas pro d’espaci disc';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return 'Pas pro d’espaci per installar $DISTRO';
  }

  @override
  String notEnoughDiskSpaceBody(String DISTRO) {
    return 'Lo disc seleccionat pas pro d’espaci disc per installar $DISTRO. Quitatz l’installador per liberar d’espaci o seleccionatz-ne un autre.';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'Disponible :';

  @override
  String get notEnoughDiskSpaceRequired => 'Requesit :';

  @override
  String get refreshPageTitle => 'Mesa a jorn disponible';

  @override
  String get refreshHeader => 'Una mesa a jorn es disponibla per l’installador';

  @override
  String get refreshUpdateNow => 'Actualizar ara';

  @override
  String get refreshInfo =>
      'Metètz a jorn cap a la darrièra version per una fisabilitat melhorada e mai de foncionalitats.';

  @override
  String get refreshReady => 'Mesa a jorn prèsta';

  @override
  String refreshCurrent(String snap, String version) {
    return 'La version actuala de $snap es $version.';
  }

  @override
  String refreshInstall(String version) {
    return 'Metre a jorn cap a la version $version';
  }

  @override
  String refreshUpToDate(String version) {
    return 'La version actuala $version es actualizada.';
  }

  @override
  String refreshUpdating(String snap) {
    return 'Actualizacion de $snap...';
  }

  @override
  String get refreshRestart => 'Mercés de reaviar l’installador.';

  @override
  String get refreshCloseLabel => 'Tampar l’installador';

  @override
  String refreshSnapPrerequisites(String snap) {
    return 'Verificacion dels prerequesits de $snap...';
  }

  @override
  String refreshSnapRefresh(String snap) {
    return 'Actualizacion de $snap...';
  }

  @override
  String refreshSnapCheckRerefresh(String snap) {
    return 'Verificacion de mesa a jorn de $snap...';
  }

  @override
  String refreshSnapPrepare(String snap) {
    return 'Preparacion de $snap...';
  }

  @override
  String refreshSnapDownload(String snap) {
    return 'Telecargament de $snap...';
  }

  @override
  String refreshSnapValidate(String snap) {
    return 'Validacion de $snap...';
  }

  @override
  String refreshSnapMount(String snap) {
    return 'Montatge de $snap...';
  }

  @override
  String refreshSnapStopServices(String snap) {
    return 'Arrèst dels servicis $snap...';
  }

  @override
  String refreshSnapRemoveAliases(String snap) {
    return 'Supression dels àlias de $snap...';
  }

  @override
  String refreshSnapUnlink(String snap) {
    return 'Desligament $snap...';
  }

  @override
  String refreshSnapUpdateAssets(String snap) {
    return 'Actualizacion dels items $snap...';
  }

  @override
  String refreshSnapUpdateKernelCommandLine(String snap) {
    return 'Actualizacion de la linha de comanda del nuclèu $snap...';
  }

  @override
  String refreshSnapCopyData(String snap) {
    return 'Còpia de las donadas $snap...';
  }

  @override
  String refreshSnapSetupProfiles(String snap) {
    return 'Parametratge dels perfils de seguretat de $snap...';
  }

  @override
  String refreshSnapLink(String snap) {
    return 'Ligament de $snap...';
  }

  @override
  String refreshSnapAutoConnect(String snap) {
    return 'Connexions a las fichas e fendas de $snap...';
  }

  @override
  String refreshSnapSetAutoAliases(String snap) {
    return 'Parametratge automatic dels àlias de $snap...';
  }

  @override
  String refreshSnapSetupAliases(String snap) {
    return 'Parametratge dels àlias de $snap...';
  }

  @override
  String refreshSnapStartServices(String snap) {
    return 'Lançament dels servicis $snap...';
  }

  @override
  String refreshSnapCleanup(String snap) {
    return 'Netejatge de $snap...';
  }

  @override
  String get recoveryKeyTitle => 'Clau de recuperacion del TPM';

  @override
  String get recoveryKeyTitleBadgeLabel => 'Important';

  @override
  String get recoveryKeyHeader => 'Obténer una clau de recuperacion';

  @override
  String get recoveryKeyInfoHeader =>
      'Poiriatz pèrdre totas vòstras donadas sens una clau de recuperacion';

  @override
  String get recoveryKeyTextFieldLabel => 'Recovery key';

  @override
  String get recoveryKeyStorageAdvice =>
      'Gardatz la clau de recuperacion en luòc segur. Utilizatz-la per deschifrar lo disc en cas de cambiament de sistèma. Per exemple, vos poiriá far mestièr se modificatz los compausants de l’ordenador o actualizatz lo micrologicial.';

  @override
  String get recoveryKeyConfirmation =>
      'Compreni que pòdi pèrdre totas mas donadas s\'ai pas de clau de recuperacion';

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
    return 'Numerizatz lo còdi QR o picatz lo còdi çai jos <a href=\"https://$url\">$url</a>';
  }

  @override
  String get landscapePageTitle => 'Installacion automatizada';

  @override
  String get landscapeHeader => 'Accedir a Landscape';

  @override
  String get landscapeDomainHeader => 'Picatz lo domeni Landscape (FQDN)';

  @override
  String get landscapeDomainHintText => 'Domeni Landscape (FQDN)';

  @override
  String get landscapeDomainInstructions =>
      'Fornissètz lo domeni Landscape de vòstra organizacion per vos i connectar e recuperar lo fichièr autoinstall. Podètz obténer lo FQDN al prèp de vòstra assisténcia informatica.';

  @override
  String get landscapeDomainTextField => 'Domeni Landscape (FQDN)';

  @override
  String get next => 'Seguent';

  @override
  String get landscapeDomainInvalidDomainWarning =>
      'Domeni invalid, volgatz verificar o contactar l\'assisténcia informatica';

  @override
  String get landscapeDomainNoInternetTitleWarning =>
      'Connectatz-vos a Internet per contunhar';

  @override
  String get landscapeDomainNoInternetDescriptionWarning =>
      'Internet es necessari per recuperar lo fichièr de Landscape';

  @override
  String get landscapeCodeExpiredWarning =>
      'Còdi expirat, volgatz tornar ensajar';

  @override
  String get landscapeLoginFailedWarning =>
      'Fracàs de la connexion, volgatz tornar ensajar';

  @override
  String get landscapeErrorPageTitle =>
      'Installacion automatica indisponibla per vòstre compte';

  @override
  String get landscapeErrorPageBody =>
      'Contactatz vòstra assisténcia informatica p ensajatz una opcion d\'installacion diferenta.';

  @override
  String landscapeErrorPageCode(String code) {
    return 'Còdi d\'error : $code';
  }

  @override
  String get landscapeConfirmPageSuccessInfoTitle =>
      'Ubuntu s\'installarà amb la configuracion provesida per vòstra organizacion';

  @override
  String get landscapeConfirmPageSuccessInfoContent =>
      'Podètz repassar lo fichièr d\'autoinstall importat de Landscape çai jos.';

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
