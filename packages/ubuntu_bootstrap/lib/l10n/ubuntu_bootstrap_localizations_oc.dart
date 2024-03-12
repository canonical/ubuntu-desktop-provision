import 'ubuntu_bootstrap_localizations.dart';

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
  String get autoinstallTitle => 'Automated installation';

  @override
  String get autoinstallHeader => 'Do you want to perform an automated installation?';

  @override
  String get autoinstallInstructions => 'Enter the autoinstall.yaml URL.';

  @override
  String get autoinstallInteractiveOption => 'Proceed with interactive installation';

  @override
  String get autoinstallInteractiveDescription => 'Continue filling in the installation options manually.';

  @override
  String get autoinstallAutomatedOption => 'Import an autoinstall.yaml';

  @override
  String get autoinstallAutomatedDescription => 'For advanced users who have an autoinstall.yaml for consistent and repeatable system setups.';

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
  String tryOrInstallTitle(String DISTRO) {
    return 'Ensajar o installar $DISTRO';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return 'What do you want to do with $DISTRO?';
  }

  @override
  String get tryOrInstallRepairOption => 'Reparar l’installacion';

  @override
  String get tryOrInstallRepairDescription => 'La reparacion tornarà installar totes los logicials installats en servant los documents e los paramètres.';

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
  String get rstHeader => 'Desactivatz lo RST per contunhar';

  @override
  String rstDescription(String DISTRO) {
    return 'Aqueste ordenador utiliza la tecnologia RST (Rapid Storage Technology) d’Intel. Cal desactivar RST jos Windows abans d’installar Ubuntu.';
  }

  @override
  String rstInstructions(String url) {
    return 'Per las consignas, numerizatz aqueste còdi QR sus un autre aparelh o consultatz : <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'Configurar l’amorçatge segur';

  @override
  String get configureSecureBootDescription => 'Avètz causit d’installar de pilòts tèrces. Aquò requerís la desactivacion de l’amorçatge segur.\nPer aquò far, devètz causir una clau de seguretat ara, e la picar quand lo sistèma avia.';

  @override
  String get configureSecureBootOption => 'Configurar l’amorçatge segur';

  @override
  String get chooseSecurityKey => 'Causir una clau de seguretat';

  @override
  String get confirmSecurityKey => 'Confirmat la clau de seguretat';

  @override
  String get dontInstallDriverSoftwareNow => 'Installar pas lo logicial pilòt pel moment';

  @override
  String get dontInstallDriverSoftwareNowDescription => 'Lo podètz installar mai tard de Logicials e Mesas a jorn estant.';

  @override
  String get configureSecureBootSecurityKeyRequired => 'La clau de seguretat es requerida';

  @override
  String get secureBootSecurityKeysDontMatch => 'Las claus de seguretat correspondon pas';

  @override
  String get showSecurityKey => 'Mostrar la clau de seguretat';

  @override
  String get hideSecurityKey => 'Hide';

  @override
  String get updatesOtherSoftwarePageTitle => 'Aplicacions e mesas a jorn';

  @override
  String get updatesOtherSoftwarePageDescription => 'Quinas aplicacions volètz installar per començar ?';

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
  String get fullInstallationTitle => 'Installacion complèta';

  @override
  String get fullInstallationSubtitle => 'Una seleccion d’aisinas de burotica, utilitaris, navegador web e jòcs fòra connexion.';

  @override
  String get minimalInstallationTitle => 'Installacion per defaut';

  @override
  String get minimalInstallationSubtitle => 'Sonque çò essencials, lo navegador web e los utilitaris basics.';

  @override
  String get otherOptions => 'Autras opcions';

  @override
  String get installThirdPartyTitle => 'Installar de logicials tèrces pel material grafic e Wi-Fi e dels formats de mèdia suplementaris';

  @override
  String get installThirdPartySubtitle => 'Aqueste logicial es somés a de tèrmes de licéncia incluses dins sa documentacion. Certans son proprietaris.';

  @override
  String get installDriversTitle => 'Installar de logicials tèrces pel material grafic e Wi-Fi';

  @override
  String get installDriversSubtitle => 'Aquestes pilòts son someses a de licéncias que son inclusas dins lor documentacion. Son proprietaris.';

  @override
  String get installCodecsTitle => 'Telecargar e installar la presa en carga addicionala pels formats multimèdia';

  @override
  String get installCodecsSubtitle => 'Aqueste logicial es somés a de tèrmes de licéncia incluses dins sa documentacion. Certans son proprietaris.';

  @override
  String onBatteryWarning(String color) {
    return '<font color=\"$color\">Avertiment :</font> l’ordenador es pas brancat a una font d’alimentacion.';
  }

  @override
  String get offlineWarning => 'Sètz fòra linha';

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
  String get installationTypeTitle => 'Tipe d’installacion';

  @override
  String installationTypeHeader(String DISTRO) {
    return 'How do you want to install $DISTRO?';
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
  String get installationTypeMultiOSDetected => 'Aqueste ordenador es installat amb mantun sistèma operatiu. De qué volètz far ?';

  @override
  String get installationTypeNoOSDetected => 'Aqueste ordenador possedís pas cap de sistèma operatiu detectat actualament. De qué volètz far ?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'Escafar lo disc e installar $DISTRO';
  }

  @override
  String get installationTypeEraseInfo => 'Start from scratch on your selected disk.';

  @override
  String get installationTypeAdvancedLabel => 'Foncionalitats avançadas...';

  @override
  String get installationTypeAdvancedTitle => 'Foncionalitats avançadas';

  @override
  String get installationTypeExperimental => 'Experimental';

  @override
  String get installationTypeNone => 'Cap';

  @override
  String get installationTypeNoneSelected => 'Cap pas seleccionat';

  @override
  String get installationTypeLVM => 'Use LVM';

  @override
  String get installationTypeLVMSelected => 'LVM seleccionat';

  @override
  String get installationTypeLVMEncryption => 'Use LVM and encryption';

  @override
  String get installationTypeLVMEncryptionSelected => 'LVM e chiframent seleccionats';

  @override
  String get installationTypeEncryptInfo => 'Causiretz una clau de seguretat a l’etapa seguenta.';

  @override
  String get installationTypeZFS => 'EXPERIMENTAL : escafar lo disc e utilizar ZFS';

  @override
  String get installationTypeZFSEncryption => 'Erase disk and use ZFS with encryption';

  @override
  String get installationTypeZFSSelected => 'ZFS seleccionat';

  @override
  String get installationTypeZFSEncryptionSelected => 'ZFS and encryption selected';

  @override
  String get installationTypeTPM => 'EXPERIMENTAL : activar lo chiframent material del disc complèt';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return 'This is an experimental feature. It may not work with your hardware of future $DISTRO releases. <a href=\"$url\">Read about TPM encryption</a> before your choose this option.';
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
    return 'Installar $product a lor costat';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return 'Installar $product a costat de las autras particions';
  }

  @override
  String get installationTypeAlongsideInfo => 'Los documents, la musica e los autres fichièrs personals seràn gardats. Podètz causir quin sistèma operatiu volètz cada que l’ordenador s’aluca.';

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
  String get selectGuidedStorageInfo => 'Start from scratch on your selected disk.';

  @override
  String get selectGuidedStorageDropdownLabel => 'Seleccionatz lo disc :';

  @override
  String get selectGuidedStorageInfoLabel => 'Lo disc entièr serà utilizat :';

  @override
  String get selectGuidedStorageInstallNow => 'Installar ara';

  @override
  String get installAlongsideSpaceDivider => 'Alogatz l’espaci disc en desplaçant lo separador çai-jos :';

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
  String get allocateDiskSpaceInvalidMountPointSlash => 'Los ponches de montatge devon començar per « / »';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace => 'Los ponches de montatge pòdon pas conténer cap d’espaci';

  @override
  String get diskHeadersDevice => 'Disc';

  @override
  String get diskHeadersType => 'Tipe';

  @override
  String get diskHeadersMountPoint => 'Punt de montatge';

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
  String get newPartitionTableConfirmationMessage => 'La creacion d’una taula de particions novèla sus un periferic entièr suprimirà totas sas particions actualas. Poiretz anullar aquesta operacion mai tard s\'o volètz.';

  @override
  String get tooManyPrimaryPartitions => 'Tròp de particions primàrias';

  @override
  String get partitionLimitReached => 'Limit atenh';

  @override
  String get bootLoaderDevice => 'Periferic per l’installacion del gestionari d’aviada';

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
  String get partitionMountPointLabel => 'Punt de montatge :';

  @override
  String get confirmPageTitle => 'Lèst per installacion';

  @override
  String get confirmHeader => 'Se contunhatz, las modificacions çai-jos seràn escritas suls disques. Poiretz realizar de cambiaments mai tard a la man.';

  @override
  String get confirmDevicesTitle => 'Periferics';

  @override
  String get confirmPartitionsTitle => 'Particions';

  @override
  String get confirmPartitionTables => 'Las taulas de particions dels periferics seguents seràn modificadas :';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmPartitionChanges => 'Las modificacions seguenta seràn aplicadas a las particions :';

  @override
  String confirmPartitionResize(String sysname, String oldsize, String newsize) {
    return 'la particion <b>$sysname</b> redimensionada de <b>$oldsize</b> a <b>$newsize</b>';
  }

  @override
  String confirmPartitionFormatMount(String sysname, String format, String mount) {
    return 'la particion <b>$sysname</b> formatada en <b>$format</b> utilizada per <b>$mount</b>';
  }

  @override
  String confirmPartitionFormat(String sysname, String format) {
    return 'la particion <b>$sysname</b> formatada en <b>$format</b>';
  }

  @override
  String confirmPartitionMount(String sysname, String mount) {
    return 'la particion <b>$sysname</b> utilizada per <b>$mount</b>';
  }

  @override
  String confirmPartitionCreate(String sysname) {
    return 'particion <b>$sysname</b> creada';
  }

  @override
  String get confirmInstallButton => 'Installar';

  @override
  String get installationCompleteTitle => 'Installacion acabada';

  @override
  String readyToUse(String system) {
    return '**$system** es installat e prèst a utilizar';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system** has been copied to the disk';
  }

  @override
  String restartInto(String system) {
    return 'Reaviar jos $system';
  }

  @override
  String restartWarning(String RELEASE) {
    return 'Podètz téner d’ensajar $RELEASE ara, mas fins que reavietz l’ordenador, tota modificacion o document que creatz serà pas servat.';
  }

  @override
  String get rebootToConfigureWarning => 'You have to restart the computer to continue the installation process.';

  @override
  String get shutdown => 'Atudar';

  @override
  String get restartNow => 'Reaviar ara';

  @override
  String get continueTesting => 'Contunhar d’ensajar';

  @override
  String get bitlockerTitle => 'BitLocker es activat';

  @override
  String get bitlockerHeader => 'Desactivatz BitLocker per contunhar';

  @override
  String bitlockerDescription(String option) {
    return 'Aqueste ordenador utiliza lo chiframent de Windows BitLocker.\nVos cal utilizar Windows per crear un espaci liure o causir « $option » per contunhar.';
  }

  @override
  String bitlockerInstructions(String url) {
    return 'Per las consignas, numerizatz aqueste còdi QR d’un autre aparelh estant o consultatz : <a href=\"https://$url\">$url</a>';
  }

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
  String get installationSlidesWelcomeTitle => 'Rapid, gratuit e plen de foncionalitats novèlas';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return 'La darrièra version de $DISTRO fa venir l’informatica mai simpla que jamai.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'Que siatz un desvolopaire, creator, jogaire o administrator, traparetz d’aisinas novèlas per melhorar vòstra productivitat e experiéncia sus $RELEASE.';
  }

  @override
  String get installationSlidesSoftwareTitle => 'Totas las aplicacions que vos fan mestièr';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'Installatz, gerissètz e metatz a jorn vòstras aplicacions dins Ubuntu Software, incluses milierats d’aplicacions venent de Snap Store e dels archius $DISTRO.';
  }

  @override
  String get installationSlidesDevelopmentTitle => 'Desvolopatz amb çò melhor del monde liure';

  @override
  String installationSlidesDevelopmentBody(String DISTRO) {
    return '$DISTRO es un pòst de trabalh ideal pel desvolopament de logicials o web, las sciéncias de las donadas, l’intelligéncia artificiala e l’aprentissatge automatic, mas tanben pel devops e l’administracion. Totas las versions de $DISTRO incluson las darrièras cadenas d’aisinas e prenon en carga totes los principals environaments de desvolopament integrats.';
  }

  @override
  String get installationSlidesCreativityTitle => 'Melhoratz vòstra creativitat';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return 'Se sètz animator, designer, cineasta o desvolopaire de jòcs, es facil de passar vòstre pòst de trabalh cap a $DISTRO gràcia a la compatibilitat de logicials e aplicacions liuras e dels estandards de l’industria.';
  }

  @override
  String get installationSlidesGamingTitle => 'Extra pels jòcs';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return '$DISTRO pren en carga los darrièra pilòts NVIDIA e Mesa per melhorar las performanças e la compatibilitat. Milierats de jòcs per Windows foncionan coma cal sus $DISTRO via d’aplicacions coma Steam amb cap de configuracion suplementària.';
  }

  @override
  String get installationSlidesSecurityTitle => 'Privat e securizat';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return '$DISTRO provesís totas las aisinas que vos fa mestièr per demorar privat e segur en linha. Amb un parafuòc e la presa en carga VPN integrats e una seria d’aplicacions pensadas per la confidencialitat avètz tot lo contraròtle de vòstras donadas.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return 'Totas las versions de $DISTRO LTS son fornidas amb cinc ans de patches de seguretat, fins a detz ans amb un abonament Ubuntu Pro.';
  }

  @override
  String get installationSlidesProductivityTitle => 'Aumentatz vòstra productivitat';

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
  String get installationSlidesAccessibilityLanguages => 'Presa en carga lingüistica';

  @override
  String get installationSlidesSupportTitle => 'Ajuda e assisténcia';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return 'La documentacion oficiala de $DISTRO es disponibla tant en linha coma via l’icòna Ajuda al dock.';
  }

  @override
  String get installationSlidesSupportCommunity => 'Ask Ubuntu cobrís una larga plaja de questions e responsas e lo Discourse d’Ubuntu provesís de guidas e de discussions pels nòuvenguts e los utilizaires experimentats.';

  @override
  String get installationSlidesSupportEnterprise => 'Per las entrepresas Canonical fornís una assisténcia comerciala per facilitar l’integracion e la gestion d’Ubuntu en tota seguretat al lòc de trabalh.';

  @override
  String get installationSlidesSupportResources => 'Ressorsas utilas :';

  @override
  String get installationSlidesSupportDocumentation => 'Documentacion oficiala';

  @override
  String get installationSlidesSupportUbuntuPro => 'Assisténcia professionala disponibla 24h de 24h e 7 jorns de 7 amb Ubuntu Pro';

  @override
  String get copyingFiles => 'Còpia dels fichièrs…';

  @override
  String get installingSystem => 'Installacion del sistèma…';

  @override
  String get configuringSystem => 'Configuracion del sistèma…';

  @override
  String get installationFailed => 'Fracàs de l’installacion';

  @override
  String get notEnoughDiskSpaceTitle => 'Pas pro d’espaci';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return 'Pas pro d’espaci per installar $DISTRO';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'Disponible :';

  @override
  String get notEnoughDiskSpaceRequired => 'Requesit :';

  @override
  String get refreshPageTitle => 'Mesa a jorn disponible';

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
  String refreshSnapPrerequisites(String snap) {
    return 'Ensuring $snap prerequisites...';
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
    return 'Còpia de las donadas $snap...';
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
