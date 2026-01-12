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
  String get autoinstallDirectTitle => 'Instal·lació automatitzada';

  @override
  String get autoinstallDirectHeader => 'Importa el fitxer autoinstall';

  @override
  String get autoinstallDirectUrlLabel =>
      'Podeu introduir l\'URL d\'un fitxer autoinstall:';

  @override
  String get autoinstallDirectFileLabel => 'O seleccioneu un fitxer local:';

  @override
  String get autoinstallDirectFileButtonLabel => 'Seleccioneu el fitxer...';

  @override
  String get autoinstallDirectFileClearButtonLabel => 'Esborra el fitxer';

  @override
  String get autoinstallDirectFilePickerTitle => 'Trieu el fitxer';

  @override
  String get autoinstallDirectFilePickerFilterLabel => 'Fitxers YAML';

  @override
  String get autoinstallDirectImportButtonLabel => 'Importa';

  @override
  String get autoinstallDirectErrorNetworkTitle =>
      'El fitxer autoinstall no és accessible';

  @override
  String get autoinstallDirectErrorNetworkBody =>
      'Comproveu si l\'URL és correcte, proveu la connexió a Internet, o proveu més tard.';

  @override
  String get autoinstallDirectErrorInvalidUrlTitle => 'URL no vàlida';

  @override
  String get autoinstallDirectErrorInvalidUrlBody =>
      'Comproveu que l\'URL sigui correcta o seleccioneu un fitxer local.';

  @override
  String get autoinstallDirectErrorInvalidContentTitle =>
      'Fitxer autoinstall invàlid';

  @override
  String get autoinstallDirectErrorInvalidContentBody =>
      'Comproveu el fitxer o proveu-ne un altre.';

  @override
  String get autoinstallDirectErrorFileSystemTitle =>
      'No es pot llegir el fitxer autoinstall';

  @override
  String get autoinstallDirectErrorFileSystemBody =>
      'Comproveu els permisos o proporcioneu un fitxer diferent.';

  @override
  String get autoinstallDirectErrorUnkownTitle => 'Error desconegut';

  @override
  String get autoinstallTitle => 'Tipus d\'instal·lació';

  @override
  String autoinstallHeader(String DISTRO) {
    return 'Com us agradaria instal·lar $DISTRO?';
  }

  @override
  String get autoinstallInstructions =>
      'Entreu l\'autoinstall.yaml URL o un camí de fitxer local:';

  @override
  String get autoinstallInteractiveOption => 'Instal·lació Interactiva';

  @override
  String get autoinstallInteractiveDescription =>
      'Per als usuaris que vulguin una guia pas a pas durant la instal·lació.';

  @override
  String get autoinstallDirectOption => 'Automatitzat amb fitxer autoinstall';

  @override
  String get autoinstallDirectDescription =>
      'Per a usuaris avançats que tinguin una autoinstall.yaml per a configuracions de sistema consistents i repetibles.';

  @override
  String get autoinstallLandscapeOption => 'Automatitzat amb el Landscape';

  @override
  String get autoinstallLandscapeDescription =>
      'Per als usuaris en organitzacions que proporcionen un fitxer autoinstall mitjançant Landscape.';

  @override
  String get changeButtonText => 'Canvia';

  @override
  String get quitButtonText => 'Surt de la instal·lació';

  @override
  String loadingPageTitle(String DISTRO) {
    return 'Us donem la benvinguda a $DISTRO';
  }

  @override
  String loadingHeader(String DISTRO) {
    return 'S\'està preparant $DISTRO…';
  }

  @override
  String get warningLabel => 'Advertiment:';

  @override
  String tryOrInstallTitle(String DISTRO) {
    return 'Prova o instal·la $DISTRO';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return 'Què voleu fer amb $DISTRO?';
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
  String get rstTitle => 'S\'ha detectat RST';

  @override
  String get rstHeader => 'Heu de desactivar RST per continuar la instal·lació';

  @override
  String get rstDisable =>
      'El vostre ordinador utilitza Intel RST (tecnologia d\'emmagatzematge ràpid). Podeu desactivar RST o bé a:';

  @override
  String get rstDisableWindows =>
      'Windows, si utilitzeu una configuració d\'arrencada dual amb Windows';

  @override
  String get rstDisableBios => 'La configuració de BIOS';

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
      'No instal·leu el programari del controlador per ara';

  @override
  String get dontInstallDriverSoftwareNowDescription =>
      'El podeu instal·lar més tard des de Programari i Actualitzacions.';

  @override
  String get configureSecureBootSecurityKeyRequired =>
      'Es requereix la clau de seguretat';

  @override
  String get secureBootSecurityKeysDontMatch =>
      'Les claus de seguretat no coincideixen';

  @override
  String get showSecurityKey => 'Mostra';

  @override
  String get hideSecurityKey => 'Amaga';

  @override
  String get updatesOtherSoftwarePageTitle =>
      'Actualitzacions i altre programari';

  @override
  String get updatesOtherSoftwarePageDescription =>
      'Quines aplicacions us agradaria instal·lar per començar?';

  @override
  String get codecsAndDriversPageTitle => 'Optimitzeu el vostre ordinador';

  @override
  String get codecsAndDriversPageDescription =>
      'Voleu instal·lar programari propietari recomanat?';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return '$DISTRO es distribueix sense programari privat per defecte. La instal·lació de programari addicional pot millorar el rendiment del vostre ordinador.';
  }

  @override
  String get codecsAndDriversNvidiaNote =>
      'S\'ha detectat una targeta gràfica NVIDIA';

  @override
  String get codecsAndDriversNvidiaBody =>
      'Per al millor rendiment de les targetes gràfiques NVIDIA és molt recomanable instal·lar controladors addicionals.';

  @override
  String get fullInstallationTitle => 'Selecció ampliada';

  @override
  String get fullInstallationSubtitle =>
      'Una selecció d’eines d’oficina, utilitats i navegador web per a ús fàcil fora de línia.';

  @override
  String get minimalInstallationTitle => 'Selecció predeterminada';

  @override
  String get minimalInstallationSubtitle =>
      'Només els imprescindibles, el navegador web i les utilitats bàsiques.';

  @override
  String get otherOptions => 'Altres opcions';

  @override
  String get installThirdPartyTitle =>
      'Instal·leu programari de tercers per a gràfics i maquinari Wi-Fi, així com formats de mitjans addicionals';

  @override
  String get installThirdPartySubtitle =>
      'Aquest programari està subjecte als terminis de llicència inclosos amb la seva documentació. Alguns són propietaris.';

  @override
  String get installDriversTitle =>
      'Instal·leu el programari de tercers per a gràfics i maquinari Wi-Fi';

  @override
  String get installDriversSubtitle =>
      'Incloent-hi però no limitat a controladors NVIDIA i similars';

  @override
  String get installCodecsTitle =>
      'Descàrrega i instal·lació de suport per a formats de mitjans addicionals';

  @override
  String get installCodecsSubtitle =>
      'Incloent-hi però no limitat a MP3, MP4, MOV i similars';

  @override
  String get batteryWarning =>
      'L\'ordinador no està connectat a una font d\'alimentació.';

  @override
  String get offlineWarning => 'Actualment esteu fora de línia';

  @override
  String get choosePassphraseHeader => 'Crea una contrasenya';

  @override
  String get choosePassphraseBody =>
      'Haureu d\'introduir la vostra contrasenya cada vegada que engegueu l\'ordinador. Aquesta contrasenya és diferent de la vostra contrasenya d\'usuari.';

  @override
  String get choosePassphraseInfoHeader =>
      'Assegureu-vos de guardar la vostra contrasenya';

  @override
  String get choosePassphraseInfoBody =>
      'Si la perdeu, perdreu totes les vostres dades.';

  @override
  String get chooseOptionalPassphraseInfoHeader =>
      'Emmagatzemeu la contrasenya i la clau de recuperació en algun lloc segur';

  @override
  String get chooseOptionalPassphraseInfoBody =>
      'Si perdeu la vostra contrasenya, perdreu totes les vostres dades. La contrasenya no substitueix la clau de recuperació o la contrasenya d\'usuari.';

  @override
  String get passphrasePageTitle => 'Encriptació';

  @override
  String get passphrasePageHeaderPassphrase =>
      'Estableix una contrasenya d\'encriptació';

  @override
  String get passphrasePageHeaderPin => 'Establiu un PIN d\'encriptació';

  @override
  String get passphrasePageBodyPassphrase =>
      'Cada vegada que engegueu l\'ordinador haureu d\'introduir la contrasenya. Aquesta contrasenya és diferent de la vostra contrasenya d\'usuari. Podreu canviar-la més tard, però no desactivar-la. Si us oblideu de la contrasenya, podeu recuperar l\'accés al disc usant la clau de recuperació.';

  @override
  String get passphrasePageBodyPin =>
      'Cal que introduïu el PIN cada vegada que engegueu el vostre ordinador. Aquest PIN és diferent de la vostra contrasenya d\'usuari. Podràs canviar-lo més tard, però no desactivar-lo. Si us oblideu el vostre PIN, podeu recuperar l\'accés al disc mitjançant la clau de recuperació.';

  @override
  String get passphrasePageChoosePassphraseHint => 'Contrasenya';

  @override
  String get passphrasePageConfirmPassphraseHint => 'Confirma la contrasenya';

  @override
  String get passphrasePageRequiredPassphrase => 'Es requereix una contrasenya';

  @override
  String get passphrasePageMismatchPassphrase =>
      'Les contrasenyes no concorden';

  @override
  String get passphrasePageChoosePinHint => 'PIN';

  @override
  String get passphrasePageConfirmPinHint => 'Confirma el PIN';

  @override
  String get passphrasePageRequiredPin => 'Es requereix un PIN';

  @override
  String get passphrasePageMismatchPin => 'Els PIN no concorden';

  @override
  String get passphraseTypePassphraseTileTitle => 'Requereix una contrasenya';

  @override
  String get passphraseTypePassphraseTileSubTitle =>
      'El més segur. Cada vegada que engegueu l’ordinador haureu d’introduir una contrasenya més llarga.';

  @override
  String get passphraseTypePinTileTitle => 'Requereix un PIN';

  @override
  String get passphraseTypePinTileSubTitle =>
      'El més segur. S\'ha d\'introduir un PIN numèric cada vegada que engegueu l\'ordinador.';

  @override
  String get passphraseTypeNoneTileTitle =>
      'Desbloqueja el disc automàticament';

  @override
  String get passphraseTypePageHeader => 'Seguretat addicional';

  @override
  String get passphraseTypePageBody =>
      'Per defecte, el mòdul de plataforma de confiança de l\'ordinador (TPM) desbloquejarà el disc durant l\'arrencada. També teniu opcions per protegir les vostres dades de manera addicional.';

  @override
  String get passphrasePagePassphraseEntropyBelowMin =>
      'Contrasenya feble, feu-la més llarga i més complexa';

  @override
  String get passphrasePagePassphraseEntropyBelowOptimal =>
      'Contrasenya suficient, feu-la més llarga o més complexa per a més seguretat';

  @override
  String get passphrasePagePassphraseEntropyOptimal => 'Contrasenya forta';

  @override
  String get passphrasePagePinEntropyBelowMin =>
      'PIN feble, feu-lo més fort o menys predictible';

  @override
  String get passphrasePagePinEntropyBelowOptimal =>
      'PIN suficient, feu-lo més llarg o menys predictible per a una seguretat millor';

  @override
  String get passphrasePagePinEntropyOptimal => 'EL PIN és suficientment llarg';

  @override
  String get installationTypeTitle => 'Configuració del disc';

  @override
  String installationTypeHeader(String DISTRO) {
    return 'Com voleu instal·lar $DISTRO?';
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
    return 'Esborreu el disc i instal·leu $DISTRO';
  }

  @override
  String get installationTypeEraseInfo =>
      'Totes les dades i particions del disc seran esborrades, incloent-hi els sistemes operatius.';

  @override
  String get installationTypeAdvancedLabel =>
      'Mostra les característiques avançades…';

  @override
  String get installationTypeAdvancedTitle =>
      'Encriptació i sistema de fitxers';

  @override
  String get installationTypeExperimental => 'Experimental';

  @override
  String get installationTypeNone => 'Sense encriptació';

  @override
  String get installationTypeNoneInfo =>
      'Sistema de fitxers estàndard sense encriptació.';

  @override
  String get installationTypeNoneSelected => 'Cap seleccionat';

  @override
  String get installationTypeLVM => 'Useu LVM sense encriptació';

  @override
  String get installationTypeLVMSelected => 'Seleccionat LVM';

  @override
  String get installationTypeLVMEncryption => 'Encripta amb una contrasenya';

  @override
  String get installationTypeLVMEncryptionInfo =>
      'Cada vegada que engegueu l’ordinador haureu d’introduir una contrasenya. Això utilitza l\'encriptació LUKS amb LVM.';

  @override
  String get installationTypeLVMEncryptionSelected =>
      'Seleccionats LVM i encriptació';

  @override
  String get installationTypeEncryptInfo =>
      'En el pas següent triareu la clau de seguretat.';

  @override
  String get installationTypeZFS => 'Usa ZFS sense encriptació';

  @override
  String get installationTypeZFSEncryption =>
      'Encripta amb una contrasenya usant ZFS';

  @override
  String get installationTypeZFSEncryptionInfo =>
      'Encriptació nativa amb ZVS. Cada vegada que engegueu l’ordinador haureu d’introduir una contrasenya.';

  @override
  String get installationTypeZFSSelected => 'Seleccionat ZFS';

  @override
  String get installationTypeZFSEncryptionSelected =>
      'ZFS i encriptació seleccionats';

  @override
  String get installationTypeTPM =>
      'Utilitza l\'encriptació amb suport de maquinari';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return '<a href=\"$url\">Llegiu sobre l\'encriptació TPM</a> abans de triar aquesta opció. Això pot no funcionar amb el vostre maquinari o version futures de $DISTRO.';
  }

  @override
  String get installationTypeTPMSelected => 'TPM seleccionat';

  @override
  String installationTypeReinstall(String os) {
    return 'Esborra $os i reinstal·la';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\"> Atenció:</font> Això eliminarà tots els programes, documents, fotos, música i qualsevol altre fitxer de $os.';
  }

  @override
  String installationTypeAlongside(String product, String os) {
    return 'Instal·leu $product al costat de $os';
  }

  @override
  String installationTypeAlongsideDual(String product, String os1, String os2) {
    return 'Instal·leu $product juntament amb $os1 i $os2';
  }

  @override
  String installationTypeAlongsideMulti(String product) {
    return 'Instal·leu $product al costat dels sistemes operatius existents';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return 'Instal·leu $product al costat d\'altres particions';
  }

  @override
  String installationTypeAlongsideInfo(String product) {
    return 'Seleccioneu una partició per redimensionar i crear espai per a $product. Podeu triar el vostre sistema operatiu durant l\'arrencada.';
  }

  @override
  String installationTypeEraseAndInstall(String os, String product) {
    return 'Esborra $os i instal·la $product';
  }

  @override
  String installationTypeEraseAndInstallInfo(String os) {
    return 'Tots els fitxers i dades de la instal·lació existent de $os seran esborrats permanentment.';
  }

  @override
  String get installationTypeManual => 'Alguna altra cosa';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'Per a usuaris avançats que busquen configuracions de disc personalitzades.';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'Esborra el disc i instal·la \$$DISTRO';
  }

  @override
  String get selectGuidedStorageInfo =>
      'Comença des de zero al disc seleccionat.';

  @override
  String get selectGuidedStorageDriveDropdownLabel => 'Seleccioneu la unitat:';

  @override
  String get selectGuidedStoragePartitionDropdownLabel =>
      'Seleccioneu la partició:';

  @override
  String get selectGuidedStorageInfoLabel => 'S\'utilitzarà el disc sencer:';

  @override
  String get selectGuidedStorageInstallNow => 'Instal·la ara';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return 'Trieu on instal·lar $DISTRO';
  }

  @override
  String get installAlongsideSpaceDivider =>
      'Reserveu espai de disc arrossegant el divisor de més avall:';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return '$num les particions més petites s\'amaguen, utilitzeu l\'eina de particions <a href=\"$url\">avançada</a> per a més control';
  }

  @override
  String get installAlongsideResizePartition => 'Redimensiona la partició';

  @override
  String get installAlongsideAllocateSpace => 'Assigna espai';

  @override
  String get installAlongsideFiles => 'Fitxers';

  @override
  String get installAlongsidePartition => 'Partició:';

  @override
  String get installAlongsideSize => 'Mida:';

  @override
  String get installAlongsideAvailable => 'Disponible:';

  @override
  String get allocateDiskSpace => 'Partició manual';

  @override
  String get allocateDiskSpaceInvalidMountPointSlash =>
      'Els punts de muntatge han de començar amb \"/\"';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace =>
      'Els punts de muntatge no poden contenir espais';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(
      String mountpoint, String format) {
    return '$format no és un sistema de fitxers compatible amb $mountpoint';
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
  String get newPartitionTableConfirmationTitle => 'Nova partició buida';

  @override
  String get newPartitionTableConfirmationMessage =>
      'La creació d\'una nova taula de particions per a un dispositiu complet eliminarà totes les particions actuals. Aquesta operació es pot desfer si és necessari.';

  @override
  String get tooManyPrimaryPartitions => 'Massa particions primàries';

  @override
  String get partitionLimitReached => 'Límit assolit';

  @override
  String get bootLoaderDevice =>
      'Dispositiu per a la instal·lació del carregador d\'arrencada';

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
  String get partitionFormatLabel => 'Usat com:';

  @override
  String get partitionFormatNone => 'Deixa sense formatar';

  @override
  String partitionFormatKeep(String format) {
    return 'Deixa format com $format';
  }

  @override
  String get partitionErase => 'Formata la partició';

  @override
  String get partitionMountPointLabel => 'Punt de muntatge:';

  @override
  String get confirmPageTitle => 'A punt per instal·lar';

  @override
  String get confirmHeader => 'Reviseu les vostres eleccions';

  @override
  String get confirmDiskEncryptionLVM => 'LUKS (LVM)';

  @override
  String get confirmDiskEncryptionZFS => 'LUKS (ZFS)';

  @override
  String get confirmDiskEncryptionTPM => 'TPM';

  @override
  String get confirmDiskEncryptionNone => 'Cap';

  @override
  String get confirmDevicesTitle => 'Dispositius';

  @override
  String get confirmEntryApplications => 'Aplicacions';

  @override
  String get confirmEntryDiskSetup => 'Tipus d\'instal·lació';

  @override
  String get confirmEntryDiskEncryption => 'Encriptació de disc';

  @override
  String get confirmEntryInstallationDisk => 'Disc d\'Instal·lació';

  @override
  String get confirmEntryProprietarySoftware => 'Programari propietari';

  @override
  String get confirmSectionGeneralTitle => 'General';

  @override
  String get confirmSectionSecurityAndMoreTitle => 'Seguretat i més';

  @override
  String get confirmPartitionsTitle => 'Particions';

  @override
  String get confirmPartitionTables =>
      'Les taules de partició dels dispositius següents es canvien:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmProprietarySoftwareCodecs => 'Còdecs';

  @override
  String get confirmProprietarySoftwareCodecsDrivers => 'Còdecs i controladors';

  @override
  String get confirmProprietarySoftwareDrivers => 'Controladors';

  @override
  String get confirmInstallButton => 'Comença a instal·lar';

  @override
  String get confirmTableErased => 'Esborrat';

  @override
  String get confirmTableUnchanged => 'Sense canvis';

  @override
  String confirmTableResized(String oldsize, String newsize) {
    return 'Redimensionat de $oldsize a $newsize';
  }

  @override
  String confirmTableCreatedFormattedMounted(String format, String mountpoint) {
    return 'Creat i formatat com $format utilitzat per a $mountpoint';
  }

  @override
  String confirmTableFormattedMounted(String format, String mountpoint) {
    return 'Formatat com $format utilitzat per a $mountpoint';
  }

  @override
  String confirmTableMounted(String mountpoint) {
    return 'Utilitzat per a $mountpoint';
  }

  @override
  String confirmTableFormatted(String format) {
    return 'Formatat com $format';
  }

  @override
  String get installationCompleteTitle => 'S\'ha completat la instal·lació';

  @override
  String readyToUse(String system) {
    return '$system està instal·lat i a punt per utilitzar';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system** s\'ha copiat al disc';
  }

  @override
  String restartInto(String system) {
    return 'Reinicia a $system';
  }

  @override
  String get restartWarningBody =>
      'Reinicia la instal·lació o continua provant.\nEls canvis que feu no es guardaran.';

  @override
  String get rebootToConfigureWarning =>
      'Heu de reiniciar l\'ordinador per continuar el procés d\'instal·lació.';

  @override
  String get shutdown => 'Atura';

  @override
  String get restartNow => 'Reinicia ara';

  @override
  String get continueTesting => 'Continua la prova';

  @override
  String get bitlockerInfoTitle => 'S\'ha detectat el BitLocker';

  @override
  String get bitlockerInfoDescription =>
      'Una o més particions estan encriptades amb el BitLocker.';

  @override
  String get bitlockerInfoDisable =>
      'Per instal·lar al costat de Windows, desactiveu BitLocker a Windows.';

  @override
  String get bitlockerInfoRecovery =>
      'Windows pot sol·licitar claus de recuperació en l\'arrencada després de la instal·lació.';

  @override
  String bitlockerInfoInstructions(String url) {
    return 'Per obtenir instruccions, visiteu la guia <a href=\"$url\">BitLocker</a>.';
  }

  @override
  String get bitlockerWarningTitle =>
      'Podeu perdre totes les vostres dades sense claus de recuperació de BitLocker';

  @override
  String get restartComputer => 'Reinicia l\'ordinador';

  @override
  String get restartComputerTitle => 'Voleu reiniciar l\'ordinador?';

  @override
  String get restartIntoWindows => 'Reiniciar a WIndows';

  @override
  String get restartIntoWindowsTitle => 'Voleu reiniciar a Windows?';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return 'Segur que voleu reiniciar l\'ordinador? Haureu de reiniciar la instal·lació $DISTRO més tard per finalitzar la instal·lació de $DISTRO.';
  }

  @override
  String installationSlidesTitle(String RELEASE) {
    return 'Us donem la benvinguda a $RELEASE';
  }

  @override
  String get installationSlidesAvailable => 'Disponible:';

  @override
  String get installationSlidesIncluded => 'Inclòs:';

  @override
  String get installationSlidesWelcomeTitle =>
      'Ràpid, gratuït i ple de novetats';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return 'L\'última versió de $DISTRO fa que la informàtica sigui més fàcil que mai.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'Tant si feu desenvolupament, creació, jocs o administració trobareu eines noves per millorar la vostra productivitat i realçar la vostra experiència dins $RELEASE.';
  }

  @override
  String get installationSlidesSoftwareTitle =>
      'Totes les aplicacions que us calen';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'Instal·leu, gestioneu i actualitzeu totes les vostres aplicacions a Programari de l\'Ubuntu, incloent-hi milers d\'aplicacions tant de la Snap Store com dels dipòsits de $DISTRO.';
  }

  @override
  String get installationSlidesDevelopmentTitle =>
      'Desenvolupeu amb el millor de codi obert';

  @override
  String installationSlidesDevelopmentBody(String DISTRO) {
    return '$DISTRO és l\'estació de treball ideal per al desenvolupament d\'aplicacions o web, ciència de dades i AI /ML, així com operacions de desenvolupament i administració. Totes les versions $DISTRO inclouen les últimes cadenes d\'eines i suporten tots els IDE principals.';
  }

  @override
  String get installationSlidesCreativityTitle => 'Potencieu la creativitat';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return 'Si feu animació, disseny, creació de vídeo o desenvolupament de jocs, és fàcil mantenir els vostres fluxos de treball a $DISTRO amb suport per a programari i aplicacions de codi obert amb estàndard industrial.';
  }

  @override
  String get installationSlidesGamingTitle => 'Genial per jugar';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return '$DISTRO suporta els últims controladors NVIDIA i Mesa per millorar el rendiment i la compatibilitat. Milers de títols del Windows es poden jugar perfectament a $DISTRO mitjançant aplicacions com Steam sense cap configuració addicional.';
  }

  @override
  String get installationSlidesSecurityTitle => 'Privat i segur';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return '$DISTRO ofereix totes les eines necessàries per la privacitat i seguretat a Internet. Amb suport incorporat de tallafocs i VPN i un munt d\'aplicacions centrades en la privacitat per assegurar que teniu control ple de les vostres dades.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return 'Tots els llançaments $DISTRO LTS vénen amb cinc anys de pegats de seguretat inclosos, que s\'estén a deu anys amb una subscripció d\'Ubuntu Pro.';
  }

  @override
  String get installationSlidesProductivityTitle =>
      'Incrementeu la vostra productivitat';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return '$DISTRO L\'escriptori inclou LibreOffice, un conjunt d\'aplicacions de codi obert compatibles amb Microsoft Office per a documents, fulls de càlcul i presentacions. També hi ha eines de col·laboració populars.';
  }

  @override
  String get installationSlidesAccessibilityTitle => 'Accés per a tothom';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return 'En el cor de la filosofia $DISTRO hi ha la creença que la informàtica és per a tothom. Amb les eines avançades per a l\'accessibilitat i les opcions per canviar la llengua, l\'esquema de colors i la mida del text, $DISTRO fa que la informàtica sigui fàcil, tant se val qui sigueu i on estigueu.';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'Lector de pantalla Orca';

  @override
  String get installationSlidesAccessibilityLanguages =>
      'Compatibilitat lingüística';

  @override
  String get installationSlidesSupportTitle => 'Ajuda i assistència';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return 'La documentació oficial $DISTRO està disponible tant en línia com a través de la icona Ajuda de l\'acoblador.';
  }

  @override
  String get installationSlidesSupportCommunity =>
      'Ask Ubuntu cobreix una sèrie de preguntes i respostes i l\'Ubuntu Discourse proporciona guies i discussions per a usuaris nous i experimentats.';

  @override
  String get installationSlidesSupportEnterprise =>
      'Per a usuaris corporatius Canonical proveeix suport comercial per facilitar l\'adopció i gestió de l\'Ubuntu al lloc de treball.';

  @override
  String get installationSlidesSupportResources => 'Recursos útils:';

  @override
  String get installationSlidesSupportDocumentation => 'Documentació oficial';

  @override
  String get installationSlidesSupportUbuntuPro =>
      'Suport 24/7 de nivell empresarial amb Ubuntu Pro';

  @override
  String get nextSlideSemanticLabel => 'Diapositiva següent';

  @override
  String get previousSlideSemanticLabel => 'Diapositiva anterior';

  @override
  String get playSlideshowSemanticLabel => 'Presentació de diapositives';

  @override
  String get pauseSlideshowSemanticLabel => 'Pausa la presentació';

  @override
  String get toggleLogsSemanticLabel => 'Commuta els registres d\'instal·lació';

  @override
  String get copyingFiles => 'S’estan copiant els fitxers…';

  @override
  String get installingSystem => 'S’està instal·lant el sistema…';

  @override
  String get configuringSystem => 'S’està configurant el sistema…';

  @override
  String get installationFailed => 'Ha fallat la instal·lació';

  @override
  String get notEnoughDiskSpaceTitle => 'No hi ha prou espai al disc';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return 'No hi ha prou espai de disc per instal·lar $DISTRO';
  }

  @override
  String notEnoughDiskSpaceBody(String DISTRO) {
    return 'El disc seleccionat no té prou espai per instal·lar $DISTRO. Sortiu de l\'instal·lador per fer més espai o seleccioneu un altre disc.';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'Disponible:';

  @override
  String get notEnoughDiskSpaceRequired => 'Requerit:';

  @override
  String get refreshPageTitle => 'Actualització disponible';

  @override
  String get refreshHeader =>
      'Hi ha una actualització disponible per a l\'instal·lador';

  @override
  String get refreshUpdateNow => 'Actualitza ara';

  @override
  String get refreshInfo =>
      'Actualitza a l\'ultima versió per a una fiabilitat millorada i més característiques.';

  @override
  String get refreshReady => 'Actualització a punt';

  @override
  String refreshCurrent(String snap, String version) {
    return 'La versió actual de $snap és $version.';
  }

  @override
  String refreshInstall(String version) {
    return 'Actualització a la versió $version';
  }

  @override
  String refreshUpToDate(String version) {
    return 'La versió actual $version està actualitzada.';
  }

  @override
  String refreshUpdating(String snap) {
    return 'S\'està actualitzant $snap...';
  }

  @override
  String get refreshRestart =>
      'Si us plau, tanqueu l\'instal·lador i rellançeu per continuar';

  @override
  String get refreshCloseLabel => 'Tanca l\'instal·lador';

  @override
  String refreshSnapPrerequisites(String snap) {
    return 'Assegurant els prerequisits de $snap...';
  }

  @override
  String refreshSnapRefresh(String snap) {
    return 'S\'està actualitzant $snap...';
  }

  @override
  String refreshSnapCheckRerefresh(String snap) {
    return 'S\'està comprovant l\'actualització de $snap...';
  }

  @override
  String refreshSnapPrepare(String snap) {
    return 'S\'està preparant $snap...';
  }

  @override
  String refreshSnapDownload(String snap) {
    return 'S\'està descarregant $snap...';
  }

  @override
  String refreshSnapValidate(String snap) {
    return 'S\'està validant $snap...';
  }

  @override
  String refreshSnapMount(String snap) {
    return 'S\'està muntant $snap...';
  }

  @override
  String refreshSnapStopServices(String snap) {
    return 'S\'estan aturant els serveis $snap...';
  }

  @override
  String refreshSnapRemoveAliases(String snap) {
    return 'S\'estan eliminant els àlies de $snap...';
  }

  @override
  String refreshSnapUnlink(String snap) {
    return 'S\'està desvinculant $snap...';
  }

  @override
  String refreshSnapUpdateAssets(String snap) {
    return 'S\'estan actualitzant els recursos de $snap...';
  }

  @override
  String refreshSnapUpdateKernelCommandLine(String snap) {
    return 'S\'està actualitzant la línia d\'ordre del nucli de $snap...';
  }

  @override
  String refreshSnapCopyData(String snap) {
    return 'S\'estan copiant les dades de $snap...';
  }

  @override
  String refreshSnapSetupProfiles(String snap) {
    return 'S\'estan establint els perfils de seguretat de $snap...';
  }

  @override
  String refreshSnapLink(String snap) {
    return 'S\'està enllaçant $snap...';
  }

  @override
  String refreshSnapAutoConnect(String snap) {
    return 'S\'estan connectant les connexions i dispositius de $snap...';
  }

  @override
  String refreshSnapSetAutoAliases(String snap) {
    return 'S\'estan establint els àlies automàtics de $snap...';
  }

  @override
  String refreshSnapSetupAliases(String snap) {
    return 'S\'estan establint els àlies de $snap...';
  }

  @override
  String refreshSnapStartServices(String snap) {
    return 'S\'estan iniciant els serveis de $snap...';
  }

  @override
  String refreshSnapCleanup(String snap) {
    return 'S\'està netejant $snap...';
  }

  @override
  String get recoveryKeyTitle => 'Clau de recuperació';

  @override
  String get recoveryKeyTitleBadgeLabel => 'Important';

  @override
  String get recoveryKeyHeader => 'Deseu la vostra clau de recuperació';

  @override
  String get recoveryKeyInfoHeader =>
      'Podeu perdre totes les vostres dades sense clau de recuperació';

  @override
  String get recoveryKeyTextFieldLabel => 'Clau de recuperació';

  @override
  String get recoveryKeyStorageAdvice =>
      'Us caldrà proporcionar aquesta clau de recuperació si la desencriptació falla durant l\'arrencada. Sense la clau, perdreu l’accés a totes les vostres dades. Deseu-la en un lloc segur, com ara un gestor de contrasenyes.';

  @override
  String get recoveryKeyConfirmation =>
      'He guardat la meva clau de recuperació en algun lloc segur';

  @override
  String get recoveryKeyLinkLabel => 'Més informació';

  @override
  String get recoveryKeySaveToFileLabel => 'Desa a un fitxer';

  @override
  String get recoveryKeyShowQrCodeLabel => 'Mostra el codi QR';

  @override
  String recoveryKeyQrDialogTitle(String DISTRO) {
    return '$DISTRO Escriptori - Clau de recuperació';
  }

  @override
  String get recoveryKeyQrDialogBody =>
      'Escanegeu el codi QR per copiar la clau de recuperació i guardar-la en algun lloc segur, com ara un gestor de contrasenyes. També podeu fer una foto per a un ús futur.';

  @override
  String get recoveryKeyClipboardNotifiaction => 'Copiat al portaretalls';

  @override
  String get recoveryKeyExceptionFileSystemTitle =>
      'No s\'ha desat la clau de recuperació';

  @override
  String get recoveryKeyExceptionDisallowedPathTitle =>
      'El fitxer clau de recuperació no es pot desar en una ubicació temporal';

  @override
  String get recoveryKeyExceptionUnknownTitle => 'Error desconegut';

  @override
  String get recoveryKeyExceptionFileSystemBody =>
      'No teniu permís per escriure a aquesta carpeta. Proveu un lloc diferent o un altre mètode.';

  @override
  String get recoveryKeyExceptionDisallowedPathBody =>
      'Proveu una ubicació diferent, com ara una unitat extraïble o utilitzeu un altre mètode.';

  @override
  String get recoveryKeyFilePickerTitle =>
      'Desa el fitxer de clau de recuperació';

  @override
  String get recoveryKeyFilePickerFilter => 'Fitxers de text';

  @override
  String landscapeMagicAttachInstructions(String url) {
    return 'Escanegeu el codi QR o introduïu el codi següent a <a href=\"https://$url\">$url</a>';
  }

  @override
  String get landscapePageTitle => 'Instal·lació automatitzada';

  @override
  String get landscapeHeader => 'Inicieu sessió a Landscape';

  @override
  String get landscapeDomainHeader => 'Entreu el domini de Landscape (FQDN)';

  @override
  String get landscapeDomainHintText => 'Domini de Landscape (FQDN)';

  @override
  String get landscapeDomainInstructions =>
      'Proporcioneu el domini de Landscape de la vostra organització per iniciar sessió i obtenir un fitxer autoinstall. Podeu obtenir el FQDN del vostre suport informàtic.';

  @override
  String get landscapeDomainTextField => 'Domini de Landscape (FQDN)';

  @override
  String get next => 'Seguent';

  @override
  String get landscapeDomainInvalidDomainWarning =>
      'Domini invàlid, si us plau comproveu-ho o contacteu el vostre suport informàtic';

  @override
  String get landscapeDomainNoInternetTitleWarning =>
      'Connecta\'t a Internet per continuar';

  @override
  String get landscapeDomainNoInternetDescriptionWarning =>
      'Cal Internet per obtenir l\'arxiu autoinstall de Landscape';

  @override
  String get landscapeCodeExpiredWarning => 'Codi caducat, torneu-ho a provar';

  @override
  String get landscapeLoginFailedWarning =>
      'Inici de sessió fallit, si us plau torneu a provar';

  @override
  String get landscapeErrorPageTitle =>
      'La instal·lació automatitzada no està disponible per al vostre compte';

  @override
  String get landscapeErrorPageBody =>
      'Contacteu el vostre suport informàtic o proveu una opció d\'instal·lació diferent.';

  @override
  String landscapeErrorPageCode(String code) {
    return 'Codi d\'error: $code';
  }

  @override
  String get landscapeConfirmPageSuccessInfoTitle =>
      'L\'Ubuntu s\'instal·larà amb la configuració proporcionada per la vostra organització';

  @override
  String get landscapeConfirmPageSuccessInfoContent =>
      'Podeu revisar el fitxer autoinstall importat de Landscape a sota.';

  @override
  String get successIconSemanticLabel => 'Èxit';

  @override
  String get errorIconSemanticLabel => 'Error';

  @override
  String get closeIconSemanticLabel => 'Tanca';

  @override
  String get maximizeIconSemanticLabel => 'Maximitza';

  @override
  String get minimizeIconSemanticLabel => 'Minimitza';

  @override
  String get tpmActionPageTitle =>
      'Hardware-backed encryption could not be enabled';

  @override
  String get tpmActionBadgeLabel => 'Action required';

  @override
  String get tpmActionDetailsLabel => 'Technical details';

  @override
  String get tpmActionConfirmLabel => 'Confirm';

  @override
  String tpmActionSolutionLabel(int n, String text) {
    return 'Solution $n: $text';
  }

  @override
  String get tpmActionDocumentationLinkLabel => 'Link to documentation';

  @override
  String get tpmActionErrorSupportLabel =>
      'Try the solutions below, contact IT support, or choose a different encryption method.';

  @override
  String get tpmActionErrorSupportNoActionLabel =>
      'Contact IT support, or choose a different encryption method.';

  @override
  String get tpmActionErrorKindInternal => 'Internal';

  @override
  String get tpmActionErrorKindShutdownRequired => 'Shutdown Required';

  @override
  String get tpmActionErrorKindRebootRequired => 'Reboot Required';

  @override
  String get tpmActionErrorKindUnexpectedAction => 'Unexpected Action';

  @override
  String get tpmActionErrorKindMissingArgument => 'Missing Argument';

  @override
  String get tpmActionErrorKindInvalidArgument => 'Invalid Argument';

  @override
  String get tpmActionErrorKindActionFailed => 'Action Failed';

  @override
  String get tpmActionErrorKindRunningInVm => 'Running In VM';

  @override
  String get tpmActionErrorKindSystemNotEfi => 'System Not EFI';

  @override
  String get tpmActionErrorKindEfiVariableAccess => 'EFI Variable Access';

  @override
  String get tpmActionErrorKindNoSuitableTpm2Device =>
      'No Suitable TPM2 Device';

  @override
  String get tpmActionErrorKindTpmDeviceFailure => 'TPM Device Failure';

  @override
  String get tpmActionErrorKindTpmDeviceDisabled => 'TPM Device Disabled';

  @override
  String get tpmActionErrorKindTpmHierarchiesOwned => 'TPM Hierarchies Owned';

  @override
  String get tpmActionErrorKindTpmDeviceLockoutLockedOut =>
      'TPM Device Lockout Locked Out';

  @override
  String get tpmActionErrorKindInsufficientTpmStorage =>
      'Insufficient TPM Storage';

  @override
  String get tpmActionErrorKindNoSuitablePcrBank => 'NoSuitable PCR Bank';

  @override
  String get tpmActionErrorKindMeasuredBoot => 'Measured Boot';

  @override
  String get tpmActionErrorKindEmptyPcrBanks => 'Empty PCR Banks';

  @override
  String get tpmActionErrorKindTpmCommandFailed => 'TPM Command Failed';

  @override
  String get tpmActionErrorKindInvalidTpmResponse => 'Invalid TPM Response';

  @override
  String get tpmActionErrorKindTpmCommunication => 'TPM Communication';

  @override
  String get tpmActionErrorKindUnsupportedPlatform => 'Unsupported Platform';

  @override
  String get tpmActionErrorKindUefiDebuggingEnabled => 'UEFI Debugging Enabled';

  @override
  String get tpmActionErrorKindInsufficientDmaProtection =>
      'Insufficient DMA Protection';

  @override
  String get tpmActionErrorKindNoKernelIommu => 'No Kernel IOMMU';

  @override
  String get tpmActionErrorKindTpmStartupLocalityNotProtected =>
      'TPM Startup Locality Not Protected';

  @override
  String get tpmActionErrorKindHostSecurity => 'Host Security';

  @override
  String get tpmActionErrorKindPcrUnusable => 'PCR Unusable';

  @override
  String get tpmActionErrorKindPcrUnsupported => 'PCR Unsupported';

  @override
  String get tpmActionErrorKindVarSuppliedDriversPresent =>
      'Var Supplied Drivers Present';

  @override
  String get tpmActionErrorKindSysPrepApplicationsPresent =>
      'Sys Prep Applications Present';

  @override
  String get tpmActionErrorKindAbsolutePresent => 'Absolute Present';

  @override
  String get tpmActionErrorKindInvalidSecureBootMode =>
      'Invalid SecureBoot Mode';

  @override
  String get tpmActionErrorKindWeakSecureBootAlgorithmDetected =>
      'Weak SecureBoot Algorithm Detected';

  @override
  String get tpmActionErrorKindPreOsDigestVerificationDetected =>
      'Pre Os Digest Verification Detected';

  @override
  String get tpmActionFixActionReboot => 'Restart';

  @override
  String get tpmActionFixActionShutdown => 'Power off';

  @override
  String get tpmActionFixActionRebootToFwSettings =>
      'Restart to firmware settings';

  @override
  String get tpmActionFixActionRebootToFwSettingsInsufficientDmaProtection =>
      'Enable DMA protection manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsInsufficientTpmStorage =>
      'Clear TPM manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsInvalidSecureBootMode =>
      'Enable secure boot manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsNoKernelIommu =>
      'Enable DMA protection manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsNoSuitablePcrBank =>
      'Enable PCR banks manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmDeviceDisabled =>
      'Enable TPM manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmDeviceLockoutLockedOut =>
      'Clear TPM manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmHierarchiesOwned =>
      'Clear TPM manually';

  @override
  String get tpmActionFixActionContactOem => 'Contact OEM';

  @override
  String get tpmActionFixActionContactOsVendor => 'Contact OS Vendor';

  @override
  String get tpmActionFixActionEnableTpmViaFirmware =>
      'Enable TPM Via Firmware';

  @override
  String get tpmActionFixActionEnableAndClearTpmViaFirmware =>
      'Enable And Clear TPM Via Firmware';

  @override
  String get tpmActionFixActionClearTpmViaFirmware => 'Clear TPM Via Firmware';

  @override
  String get tpmActionFixActionClearTpm => 'Clear TPM';

  @override
  String get tpmActionFixActionProceed => 'Ignore';

  @override
  String get tpmActionRestartLabel => 'Restart';

  @override
  String get tpmActionRestartAndEnableTpmLabel => 'Restart and enable TPM';

  @override
  String get tpmActionRestartAndClearTpmLabel => 'Restart and clear TPM';

  @override
  String get tpmActionIgnoreAndContinueLabel => 'Ignore and continue';

  @override
  String get tpmActionFixActionClearTpmWarningTitle =>
      'Clearing the TPM erases all encryption keys';

  @override
  String get tpmActionFixActionClearTpmWarningBody =>
      'You will lose access to all data in encrypted drives for which you do not have recovery keys. It will also break other features that depend on the TPM, such as authentication and certificates.';

  @override
  String get tpmActionFixActionClearTpmConfirmationLabel =>
      'I understand the consequences of clearing the TPM';

  @override
  String get tpmActionErrorTitle => 'This solution failed';

  @override
  String get tpmActionErrorDescription =>
      'Try a different solution or contact IT support';
}
