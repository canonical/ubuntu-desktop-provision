// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_bootstrap_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class UbuntuBootstrapLocalizationsIt extends UbuntuBootstrapLocalizations {
  UbuntuBootstrapLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appTitle => 'Installer di Ubuntu Desktop';

  @override
  String windowTitle(String RELEASE) {
    return 'Installa $RELEASE';
  }

  @override
  String get autoinstallDirectTitle => 'Installazione automatica';

  @override
  String get autoinstallDirectHeader => 'Importa autoinstall file';

  @override
  String get autoinstallDirectUrlLabel =>
      'Puoi inserire l\'URL del file di autoinstall:';

  @override
  String get autoinstallDirectFileLabel => 'O selezione un file locale:';

  @override
  String get autoinstallDirectFileButtonLabel => 'Seleziona file...';

  @override
  String get autoinstallDirectFileClearButtonLabel => 'Pulisci file';

  @override
  String get autoinstallDirectFilePickerTitle => 'Scegli file';

  @override
  String get autoinstallDirectFilePickerFilterLabel => 'File YAML';

  @override
  String get autoinstallDirectImportButtonLabel => 'Importa';

  @override
  String get autoinstallDirectErrorNetworkTitle =>
      'File di autoinstall non è raggiungibile';

  @override
  String get autoinstallDirectErrorNetworkBody =>
      'Controlla se l\'URL è corretto, testa la connessione internet, o riprova più tardi.';

  @override
  String get autoinstallDirectErrorInvalidUrlTitle => 'URL invalido';

  @override
  String get autoinstallDirectErrorInvalidUrlBody =>
      'Controlla se l\'URL è corretto o selezione un file locale.';

  @override
  String get autoinstallDirectErrorInvalidContentTitle =>
      'File di autoinstall invalido';

  @override
  String get autoinstallDirectErrorInvalidContentBody =>
      'Controlla il file o seleziona uno diverso.';

  @override
  String get autoinstallDirectErrorFileSystemTitle =>
      'Il file di autoinstall non è leggibile';

  @override
  String get autoinstallDirectErrorFileSystemBody =>
      'Controlla i permessi o seleziona un file diverso.';

  @override
  String get autoinstallDirectErrorUnkownTitle => 'Errore sconosciuto';

  @override
  String get autoinstallTitle => 'Tipo di installazione';

  @override
  String autoinstallHeader(String DISTRO) {
    return 'Come vorresti installare $DISTRO?';
  }

  @override
  String get autoinstallInstructions =>
      'Inserisci l\'URL di autoinstall.yaml o il percorso di un file locale:';

  @override
  String get autoinstallInteractiveOption => 'Installazione interattiva';

  @override
  String get autoinstallInteractiveDescription =>
      'Per gli utenti che vogliono essere guidati passo passo nell\'installazione.';

  @override
  String get autoinstallDirectOption => 'Automatica con file di autoinstall';

  @override
  String get autoinstallDirectDescription =>
      'Per utenti avanzati che hanno un autoinstall.yaml per installazioni consistenti e riproducibili.';

  @override
  String get autoinstallLandscapeOption => 'Automatico con Landscape';

  @override
  String get autoinstallLandscapeDescription =>
      'Per utenti e organizzazioni che forniscono un file di autoinstall via Landscape.';

  @override
  String get autoinstallErrorMessage =>
      'A command in the autoinstall file failed to run during installation.';

  @override
  String get autoinstallErrorInstructions =>
      'You will need to restart the installation. Check the autoinstall file, choose a different installation type, or contact your IT support.';

  @override
  String get changeButtonText => 'Modifica';

  @override
  String get quitButtonText => 'Esci dall\' installazione';

  @override
  String loadingPageTitle(String DISTRO) {
    return 'Benvenuto su $DISTRO';
  }

  @override
  String loadingHeader(String DISTRO) {
    return 'Preparando $DISTRO…';
  }

  @override
  String get warningLabel => 'Attenzione:';

  @override
  String tryOrInstallTitle(String DISTRO) {
    return 'Prova o installa';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return 'Cosa vuoi fare con $DISTRO?';
  }

  @override
  String get tryOrInstallRepairOption => 'Ripara installazione';

  @override
  String get tryOrInstallRepairDescription =>
      'La riparazione reinstallerá tutti i programmi senza toccare alcun documento o impostazione.';

  @override
  String tryOption(String RELEASE) {
    return 'Prova $RELEASE';
  }

  @override
  String tryDescription(String RELEASE) {
    return 'Puoi provare $RELEASE senza apportare alcuna modifica al tuo computer.';
  }

  @override
  String installOption(String RELEASE) {
    return 'Installa $RELEASE';
  }

  @override
  String installDescription(String RELEASE) {
    return 'Installa $RELEASE accanto (o al posto di) al tuo sistema operativo attuale. Questo non dovrebbe durare molto.';
  }

  @override
  String tryOrInstallReleaseNotesLabel(String url) {
    return 'Forse vorresti leggere le <a href=\"$url\">informazioni di rilascio</a>.';
  }

  @override
  String get rstTitle => 'Disattiva RST';

  @override
  String get rstHeader =>
      'Devi disabilitare RST per continuare l\'installazione';

  @override
  String get rstDisable =>
      'Il computer utilizza Intel RST (Rapid Storage Technology). Puoi disabilitare RST in:';

  @override
  String get rstDisableWindows =>
      'Windows, se stai usando un\'installazione dual boot con Windows';

  @override
  String get rstDisableBios => 'Impostazioni BIOS';

  @override
  String rstInstructions(String url) {
    return 'Per istruzioni, apri questa pagina da un telefono o un altro dispositivo: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'Configura Avvio Sicuro';

  @override
  String get configureSecureBootDescription =>
      'Hai scelto di installare driver software di terze parti. Questo richiede lo spegnimento dell\'Avvio Sicuro.\nPer farlo, devi scegliere una chiave di sicurezza, e digitarla al riavvio del sistema.';

  @override
  String get configureSecureBootOption => 'Configura Avvio Sicuro';

  @override
  String get chooseSecurityKey => 'Scegli una chiave di sicurezza';

  @override
  String get confirmSecurityKey => 'Conferma la chiave di sicurezza';

  @override
  String get dontInstallDriverSoftwareNow =>
      'Non installare il software dei driver per il momento';

  @override
  String get dontInstallDriverSoftwareNowDescription =>
      'Puoi installarlo in seguito da Software e Aggiornamenti.';

  @override
  String get configureSecureBootSecurityKeyRequired =>
      'È richiesta la chiave di sicurezza';

  @override
  String get secureBootSecurityKeysDontMatch =>
      'Le chiavi di sicurezza non corrispondono';

  @override
  String get showSecurityKey => 'Mostra chiave di sicurezza';

  @override
  String get hideSecurityKey => 'Nascondi';

  @override
  String get updatesOtherSoftwarePageTitle => 'Aggiornamenti e altro software';

  @override
  String get updatesOtherSoftwarePageDescription =>
      'Quali applicazioni installare?';

  @override
  String get codecsAndDriversPageTitle => 'Ottimizza il tuo computer';

  @override
  String get codecsAndDriversPageDescription =>
      'Installare il software proprietario raccomandato?';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return '$DISTRO è distribuito senza software proprietario. Installare software aggiuntivo potrebbe migliorare le prestazioni del computer.';
  }

  @override
  String get codecsAndDriversNvidiaNote => 'Rilevata scheda grafica NVIDIA';

  @override
  String get codecsAndDriversNvidiaBody =>
      'Per le migliori prestazioni delle schede grafiche NVIDIA, è fortemente raccomandato installare driver aggiuntivi.';

  @override
  String get fullInstallationTitle => 'Selezione estesa';

  @override
  String get fullInstallationSubtitle =>
      'Una selezione di strumenti di produttività, utilità e web browser funzionanti offline.';

  @override
  String get minimalInstallationTitle => 'Selezione predefinita';

  @override
  String get minimalInstallationSubtitle =>
      'Solo gli essenziali, web browser e utilità di base.';

  @override
  String get otherOptions => 'Altre opzioni';

  @override
  String get installThirdPartyTitle =>
      'Installa software di terze parti per hardware grafico e Wi-Fi, e altri formati multimediali';

  @override
  String get installThirdPartySubtitle =>
      'Questo software è soggetto ai termini di licenza inclusi nella documentazione. Alcuni sono proprietari.';

  @override
  String get installDriversTitle =>
      'Installa software di terze parti per hardware grafico e Wi-Fi';

  @override
  String get installDriversSubtitle =>
      'Inclusi, ma non esclusivamente, driver NVIDIA e simili';

  @override
  String get installCodecsTitle =>
      'Scarica e installa supporto per formati media aggiuntivi';

  @override
  String get installCodecsSubtitle =>
      'Questo software è soggetto ai termini di licenza inclusi nella documentazione. Alcuni sono proprietari.';

  @override
  String get batteryWarning =>
      'Il computer non è collegato a una sorgente di alimentazione.';

  @override
  String get offlineWarning => 'Sei offline';

  @override
  String get choosePassphraseHeader => 'Crea una frase d\'accesso';

  @override
  String get choosePassphraseBody =>
      'Dovrai inserire la frase d\'accesso ogni volta che accendi il computer. Questa frase d\'accesso è diversa dalla password utente.';

  @override
  String get choosePassphraseInfoHeader =>
      'Assicurati di salvare la tua frase d\'accesso';

  @override
  String get choosePassphraseInfoBody =>
      'Se viene persa, perderai tutti i tuoi dati.';

  @override
  String get chooseOptionalPassphraseInfoHeader =>
      'Conserva la tua frase d\'accesso e chiave di recupero in un luogo sicuro';

  @override
  String get chooseOptionalPassphraseInfoBody =>
      'Se perdi la tua frase d\'accesso, perderai tutti i tuoi dai. La frase d\'accesso non sostituisce la chiave di recupero o la tua password utente.';

  @override
  String get passphrasePageTitle => 'Cifratura';

  @override
  String get passphrasePageHeaderPassphrase =>
      'Imposta una frase d\'accesso di cifratura';

  @override
  String get passphrasePageHeaderPin => 'Imposta un PIN di cifratura';

  @override
  String get passphrasePageBodyPassphrase =>
      'Dovrai inserire la tua passphrase ogni volta che accendi il computer. Questa passphrase è diversa dalla password utente. Potrai cambiarla in seguito, ma non disabilitarla. Se dimentichi la passphrase, potrai recuperare l’accesso al disco utilizzando la chiave di ripristino.';

  @override
  String get passphrasePageBodyPin =>
      'Dovrai inserire il tuo PIN ogni volta che accendi il computer. Questo PIN è diverso dalla password dell’utente. Potrai cambiarlo in seguito, ma non disabilitarlo. Se dimentichi il PIN, potrai recuperare l’accesso al disco utilizzando la chiave di ripristino.';

  @override
  String get passphrasePageChoosePassphraseHint => 'Frase d\'accesso';

  @override
  String get passphrasePageConfirmPassphraseHint => 'Conferma frase d\'accesso';

  @override
  String get passphrasePageRequiredPassphrase =>
      'Una frase d\'accesso è obbligatoria';

  @override
  String get passphrasePageMismatchPassphrase =>
      'Le frasi d\'accesso non corrispondono';

  @override
  String get passphrasePageChoosePinHint => 'PIN';

  @override
  String get passphrasePageConfirmPinHint => 'Conferma PIN';

  @override
  String get passphrasePageRequiredPin => 'Un PIN è obbligatorio';

  @override
  String get passphrasePageMismatchPin => 'I PIN non corrispondono';

  @override
  String get passphraseTypePassphraseTileTitle =>
      'Richiedi una frase d\'accesso';

  @override
  String get passphraseTypePassphraseTileSubTitle =>
      'Massima sicurezza. Dovrai inserire una passphrase più lunga ogni volta che accendi il computer.';

  @override
  String get passphraseTypePinTileTitle => 'Richiedi un PIN';

  @override
  String get passphraseTypePinTileSubTitle =>
      'Più sicuro. Dovrai inserire un PIN numerico ogni volta che accendi il computer.';

  @override
  String get passphraseTypeNoneTileTitle => 'Sblocca il disco automaticamente';

  @override
  String get passphraseTypePageHeader => 'Sicurezza aggiuntiva';

  @override
  String get passphraseTypePageBody =>
      'Per impostazione predefinita, il Trusted Platform Module (TPM) del computer sbloccherà il disco all\'avvio. Sono disponibili anche opzioni per proteggere ulteriormente i dati.';

  @override
  String get passphrasePagePassphraseEntropyBelowMin =>
      'Frase segreta debole, rendila più lunga o più complessa';

  @override
  String get passphrasePagePassphraseEntropyBelowOptimal =>
      'Frase segreta sufficiente, rendila più lunga o più complessa per una maggiore sicurezza';

  @override
  String get passphrasePagePassphraseEntropyOptimal =>
      'Frase segreta complessa';

  @override
  String get passphrasePagePinEntropyBelowMin =>
      'PIN poco sicuro, rendilo più lungo o meno prevedibile';

  @override
  String get passphrasePagePinEntropyBelowOptimal =>
      'PIN sufficiente, rendilo più lungo o meno prevedibile per una maggiore sicurezza';

  @override
  String get passphrasePagePinEntropyOptimal => 'Il PIN è abbastanza lungo';

  @override
  String get installationTypeTitle => 'Tipo d\'installazione';

  @override
  String installationTypeHeader(String DISTRO) {
    return 'Come vuoi installare $DISTRO?';
  }

  @override
  String installationTypeOSDetected(String os) {
    return 'Questo computer ha installato $os. Come procedere?';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return 'Questo computer ha installato $os1 e $os2. Come procedere?';
  }

  @override
  String get installationTypeMultiOSDetected =>
      'Questo computer ha installato più di un sistema operativo. Come procedere?';

  @override
  String get installationTypeNoOSDetected =>
      'Non è stato trovato alcun sistema operativo installato su questo computer. Come procedere?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'Cancella il disco e installa $DISTRO';
  }

  @override
  String get installationTypeEraseInfo =>
      'Tutti i dati e partizioni sul disco verranno eliminati, inclusi i sistemi operativi.';

  @override
  String get installationTypeAdvancedLabel => 'Mostra opzioni avanzate…';

  @override
  String get installationTypeAdvancedTitle => 'Cifratura e file system';

  @override
  String get installationTypeExperimental => 'Sperimentale';

  @override
  String get installationTypeNone => 'Nessuna cifratura';

  @override
  String get installationTypeNoneInfo =>
      'File system standard senza cifratura.';

  @override
  String get installationTypeNoneSelected => 'Nessuna selezione';

  @override
  String get installationTypeLVM => 'Usa LVM senza cifratura';

  @override
  String get installationTypeLVMSelected => 'Selezionato LVM';

  @override
  String get installationTypeLVMEncryption => 'Cifra con una frase d\'accesso';

  @override
  String installationTypeLVMEncryptionInfoResolute(String advancedHint) {
    return 'You will need to enter a passphrase every time you turn on your computer. $advancedHint';
  }

  @override
  String get installationTypeLVMEncryptionInfo2 =>
      'This uses LVM with LUKS encryption.';

  @override
  String get installationTypeLVMEncryptionSelected =>
      'LVM e cifratura selezionati';

  @override
  String get installationTypeEncryptInfo =>
      'Sceglierai una chiave di sicurezza nel prossimo passaggio.';

  @override
  String get installationTypeZFS => 'Usa ZFS senza cifratura';

  @override
  String get installationTypeZFSEncryption =>
      'Cifra con una frase d\'accesso usando ZFS';

  @override
  String get installationTypeZFSEncryptionInfo =>
      'Cifratura nativa con ZFS. Dovrai inserire una frase d\'accesso ogni volta che accenderai il computer.';

  @override
  String get installationTypeZFSSelected => 'Selezionato ZFS';

  @override
  String get installationTypeZFSEncryptionSelected =>
      'ZFS e cifratura selezionati';

  @override
  String get installationTypeTPM => 'Usa cifratura con supporto hardware';

  @override
  String get installationTypeTPMInfoResolute =>
      'The disk will unlock automatically during startup.';

  @override
  String get installationTypeTPMInfoUnavailable =>
      'Not available on this computer.';

  @override
  String get installationTypeTPMSelected => 'TPM selezionato';

  @override
  String installationTypeReinstall(String os) {
    return 'Cancella $os e reinstalla';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">Attenzione:</font> verranno cancellati tutti i programmi di $os, documenti, foto, musica e ogni altro file.';
  }

  @override
  String installationTypeAlongside(String product, String os) {
    return 'Installa $product assieme a $os';
  }

  @override
  String installationTypeAlongsideDual(String product, String os1, String os2) {
    return 'Installa $product assieme a $os1 e $os2';
  }

  @override
  String installationTypeAlongsideMulti(String product) {
    return 'Installa $product assieme agli altri sistemi operativi presenti';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return 'Installa $product assieme alle altre partizioni';
  }

  @override
  String installationTypeAlongsideInfo(String product) {
    return 'Seleziona una partizione da ridimensionare e creare spazio per $product. Puoi scegliere il sistema operativo durante l\'avvio.';
  }

  @override
  String installationTypeEraseAndInstall(String os, String product) {
    return 'Elimina $os e installa $product';
  }

  @override
  String installationTypeEraseAndInstallInfo(String os) {
    return 'Tutti i file e dati dall\'installazione di $os presente verranno cancellati definitivamente.';
  }

  @override
  String get installationTypeManual => 'Altro';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'Per utenti avanzati che cercano un\'installazione personalizzata sul disco.';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'Elimina il disco e installa $DISTRO';
  }

  @override
  String get selectGuidedStorageInfo => 'Inizia da capo sul disco selezionato.';

  @override
  String get selectGuidedStorageDriveDropdownLabel => 'Seleziona il disco:';

  @override
  String get selectGuidedStoragePartitionDropdownLabel =>
      'Seleziona la partizione:';

  @override
  String get selectGuidedStorageInfoLabel =>
      'Verrà utilizzato l\'intero disco:';

  @override
  String get selectGuidedStorageInstallNow => 'Installa ora';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return 'Scegli dove installare $DISTRO';
  }

  @override
  String get installAlongsideSpaceDivider =>
      'Suddividere lo spazio sul disco trascinando la barra verticale sottostante:';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return '$num partizioni più piccole sono nascoste, usa <a href=\"$url\">strumento di partizionamento avanzato</a> per maggior controllo';
  }

  @override
  String get installAlongsideResizePartition => 'Ridimensiona partizione';

  @override
  String get installAlongsideAllocateSpace => 'Alloca spazio';

  @override
  String get installAlongsideFiles => 'File';

  @override
  String get installAlongsidePartition => 'Partizione:';

  @override
  String get installAlongsideSize => 'Dimensione:';

  @override
  String get installAlongsideAvailable => 'Disponibile:';

  @override
  String get allocateDiskSpace => 'Partizionamento manuale';

  @override
  String get allocateDiskSpaceInvalidMountPointSlash =>
      'I punti di mount devono iniziare con \"/\"';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace =>
      'I punti di mount non possono contenere spazi';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(
      String mountpoint, String format) {
    return '$format non è un file system supportato per $mountpoint';
  }

  @override
  String get diskHeadersDevice => 'Dispositivo';

  @override
  String get diskHeadersType => 'Tipo';

  @override
  String get diskHeadersMountPoint => 'Punto di mount';

  @override
  String get diskHeadersSize => 'Dimensione';

  @override
  String get diskHeadersUsed => 'In uso';

  @override
  String get diskHeadersSystem => 'Sistema';

  @override
  String get diskHeadersFormat => 'Formato';

  @override
  String get freeDiskSpace => 'Spazio disponibile';

  @override
  String get newPartitionTable => 'Nuova tavola di partizione';

  @override
  String get newPartitionTableConfirmationTitle => 'Nuova partizione vuota';

  @override
  String get newPartitionTableConfirmationMessage =>
      'La creazione di una nuova tabella delle partizioni su un intero dispositivo rimuoverà tutte le partizioni correnti. Questa operazione può essere annullata se necessario.';

  @override
  String get tooManyPrimaryPartitions =>
      'Sono presenti troppe partizioni primarie';

  @override
  String get partitionLimitReached => 'Limite raggiunto';

  @override
  String get bootLoaderDevice =>
      'Dispositivo per l\'installazione del boot loader';

  @override
  String get partitionCreateTitle => 'Crea partizione';

  @override
  String get partitionEditTitle => 'Modifica partizione';

  @override
  String get partitionSizeLabel => 'Dimensione:';

  @override
  String get partitionTypeLabel => 'Tipo della nuova partizione:';

  @override
  String get partitionTypePrimary => 'Primario';

  @override
  String get partitionTypeLogical => 'Logico';

  @override
  String get partitionLocationLabel => 'Posizione per la nuova partizione:';

  @override
  String get partitionLocationBeginning => 'Inizio di questo spazio';

  @override
  String get partitionLocationEnd => 'Fine di questo spazio';

  @override
  String get partitionFormatLabel => 'Usato come:';

  @override
  String get partitionFormatNone => 'Lascia non formattato';

  @override
  String partitionFormatKeep(String format) {
    return 'Lascia formattato come $format';
  }

  @override
  String get partitionErase => 'Formatta la partizione';

  @override
  String get partitionMountPointLabel => 'Punto di mount:';

  @override
  String get confirmPageTitle => 'Pronto per l\'installazione';

  @override
  String get confirmHeader => 'Rivedi le scelte';

  @override
  String get confirmDiskEncryptionLVM => 'LUKS (LVM)';

  @override
  String get confirmDiskEncryptionZFS => 'LUKS (ZFS)';

  @override
  String get confirmDiskEncryptionTPM => 'TPM';

  @override
  String get confirmDiskEncryptionNone => 'Nessuna';

  @override
  String get confirmDevicesTitle => 'Dispositivi';

  @override
  String get confirmEntryApplications => 'Applicazioni';

  @override
  String get confirmEntryDiskSetup => 'Tipo d\'installazione';

  @override
  String get confirmEntryDiskEncryption => 'Cifratura del disco';

  @override
  String get confirmEntryInstallationDisk => 'Disco d\'installazione';

  @override
  String get confirmEntryProprietarySoftware => 'Software proprietario';

  @override
  String get confirmSectionGeneralTitle => 'Generale';

  @override
  String get confirmSectionSecurityAndMoreTitle => 'Sicurezza e altro';

  @override
  String get confirmPartitionsTitle => 'Partizioni';

  @override
  String get confirmPartitionTables =>
      'Le tabelle delle partizioni dei seguenti dispositivi sono state modificate:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmProprietarySoftwareCodecs => 'Codec';

  @override
  String get confirmProprietarySoftwareCodecsDrivers => 'Codec e driver';

  @override
  String get confirmProprietarySoftwareDrivers => 'Driver';

  @override
  String get confirmInstallButton => 'Installa';

  @override
  String get confirmTableErased => 'Eliminato';

  @override
  String get confirmTableUnchanged => 'Non modificato';

  @override
  String confirmTableResized(String oldsize, String newsize) {
    return 'Ridimensionato da $oldsize a $newsize';
  }

  @override
  String confirmTableCreatedFormattedMounted(String format, String mountpoint) {
    return 'Creato e formattato come $format utilizzato per $mountpoint';
  }

  @override
  String confirmTableFormattedMounted(String format, String mountpoint) {
    return 'Formattato come $format utilizzato per $mountpoint';
  }

  @override
  String confirmTableMounted(String mountpoint) {
    return 'Utilizzato per $mountpoint';
  }

  @override
  String confirmTableFormatted(String format) {
    return 'Formattato come $format';
  }

  @override
  String get installationCompleteTitle => 'Installazione completata';

  @override
  String readyToUse(String system) {
    return '$system è installato e pronto per l\'uso';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system** è stato copiato sul disco';
  }

  @override
  String restartInto(String system) {
    return 'Riavvia in $system';
  }

  @override
  String get restartWarningBody =>
      'Riavvia per completare l\'installazione o continua il test.\nLe modifiche apportate non verranno salvate.';

  @override
  String get rebootToConfigureWarning =>
      'Per continuare il processo di installazione è necessario riavviare il computer.';

  @override
  String get shutdown => 'Spegni';

  @override
  String get restartNow => 'Riavvia adesso';

  @override
  String get continueTesting => 'Continua il test';

  @override
  String get bitlockerInfoTitle => 'Rilevato BitLocker';

  @override
  String get bitlockerInfoDescription =>
      'Una o più partizioni sono crittografate con BitLocker.';

  @override
  String get bitlockerInfoDisable =>
      'Per installare insieme a Windows, disabilitare BitLocker in Windows.';

  @override
  String get bitlockerInfoRecovery =>
      'Windows potrebbe richiedere le chiavi di recupero all\'avvio dopo l\'installazione.';

  @override
  String bitlockerInfoInstructions(String url) {
    return 'Per istruzioni, visita la <a href=\"$url\">guida di BitLocker</a>.';
  }

  @override
  String get bitlockerWarningTitle =>
      'Puoi perdere tutti i tuoi dati senza le chiavi di recupero BitLocker';

  @override
  String get restartComputer => 'Riavvia il computer';

  @override
  String get restartComputerTitle => 'Riavviare il computer?';

  @override
  String get restartInstaller => 'Restart installer';

  @override
  String get restartIntoWindows => 'Riavvia verso Windows';

  @override
  String get restartIntoWindowsTitle => 'Riavviare verso Windows?';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return 'Sei sicuro di voler riavviare il tuo computer? Avrai bisogno di riavviare l\'installazione di $DISTRO più tardi per finire di installare $DISTRO.';
  }

  @override
  String installationSlidesTitle(String RELEASE) {
    return 'Benvenuto in $RELEASE';
  }

  @override
  String get installationSlidesAvailable => 'Available:';

  @override
  String get installationSlidesIncluded => 'Included:';

  @override
  String get installationSlidesWelcomeTitle =>
      'Veloce, libero e pieno di nuove caratteristiche';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return 'The latest version of $DISTRO makes computing easier than ever.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'Whether you\'re a developer, creator, gamer or administrator you\'ll find new tools to improve your productivity and enhance your experience in $RELEASE.';
  }

  @override
  String get installationSlidesSoftwareTitle =>
      'Tutte le applicazioni di cui hai bisogno';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'Install, manage and update all your apps in Ubuntu Software, including thousands of applications from both the Snap Store and $DISTRO archive.';
  }

  @override
  String get installationSlidesDevelopmentTitle =>
      'Sviluppa con il meglio dell\'open source';

  @override
  String installationSlidesDevelopmentBody(String DISTRO, Object OS) {
    return '$DISTRO is the ideal workstation for app or web development, data science and AI/ML as well as devops and administration. Every $DISTRO release includes the latest toolchains and supports all major IDEs.';
  }

  @override
  String get installationSlidesCreativityTitle => 'Enhance your creativity';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return 'If you\'re an animator, designer, video creator or game developer it\'s easy to bring your workflows to $DISTRO with support for open source and industry standard software and applications.';
  }

  @override
  String get installationSlidesGamingTitle => 'Fantastica per il gaming';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return '$DISTRO supports the latest NVIDIA and Mesa drivers to improve performance and compatibility. Thousands of Windows titles play great on $DISTRO via applications like Steam with no additional configuration.';
  }

  @override
  String get installationSlidesSecurityTitle => 'Privato e sicuro';

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
  String get installationSlidesAccessibilityOrca => 'Orca screen reader';

  @override
  String get installationSlidesAccessibilityLanguages =>
      'Supporto multi-lingua';

  @override
  String get installationSlidesSupportTitle => 'Aiuto e supporto';

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
  String get installationSlidesSupportDocumentation =>
      'Documentazione ufficiale';

  @override
  String get installationSlidesSupportUbuntuPro =>
      'Enterprise-grade 24/7 support with Ubuntu Pro';

  @override
  String get nextSlideSemanticLabel => 'Slide successiva';

  @override
  String get previousSlideSemanticLabel => 'Slide precedente';

  @override
  String get playSlideshowSemanticLabel => 'Play slideshow';

  @override
  String get pauseSlideshowSemanticLabel => 'Pause slideshow';

  @override
  String get toggleLogsSemanticLabel =>
      'Mostra/Nascondi i log di installazione';

  @override
  String get copyingFiles => 'Copia dei file…';

  @override
  String get installingSystem => 'Installazione del sistema…';

  @override
  String get configuringSystem => 'Configurazione del sistema…';

  @override
  String get installationFailed => 'Installazione non riuscita';

  @override
  String get notEnoughDiskSpaceTitle => 'Spiacenti';

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
  String get successIconSemanticLabel => 'Successo';

  @override
  String get errorIconSemanticLabel => 'Error';

  @override
  String get closeIconSemanticLabel => 'Chiudi';

  @override
  String get maximizeIconSemanticLabel => 'Massimizza';

  @override
  String get minimizeIconSemanticLabel => 'Minimizza';

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
  String tpmActionSingleSolutionLabel(String text) {
    return 'Solution: $text';
  }

  @override
  String get tpmActionDocumentationLinkLabel =>
      'Learn more about hardware-backed encryption';

  @override
  String get tpmActionErrorSupportLabel =>
      'Try the solutions below, contact IT support, or choose a different encryption method.';

  @override
  String get tpmActionErrorSupportSingleLabel =>
      'Try the solution below, contact IT support, or choose a different encryption method.';

  @override
  String get tpmActionErrorSupportNoActionLabel =>
      'Contact IT support, or choose a different encryption method.';

  @override
  String get tpmActionErrorKindInternal => 'Internal error.';

  @override
  String get tpmActionErrorKindShutdownRequired => 'Power off is required.';

  @override
  String get tpmActionErrorKindRebootRequired => 'Restart is required.';

  @override
  String get tpmActionErrorKindUnexpectedAction => 'Unexpected action.';

  @override
  String get tpmActionErrorKindMissingArgument => 'Missing argument.';

  @override
  String get tpmActionErrorKindInvalidArgument => 'Invalid argument.';

  @override
  String get tpmActionErrorKindActionFailed => 'Action failed.';

  @override
  String get tpmActionErrorKindRunningInVm =>
      'The current environment is a virtual machine.';

  @override
  String get tpmActionErrorKindSystemNotEfi =>
      'This computer is using older firmware (legacy BIOS) that is not compatible with this encryption method.';

  @override
  String get tpmActionErrorKindEfiVariableAccess =>
      'There is an issue with this computer\'s firmware.';

  @override
  String get tpmActionErrorKindNoSuitableTpm2Device =>
      'This computer does not have the required security hardware (TPM 2.0) for this encryption method.';

  @override
  String get tpmActionErrorKindTpmDeviceDisabled =>
      'This computer\'s TPM is disabled.';

  @override
  String get tpmActionErrorKindTpmHierarchiesOwned =>
      'This computer\'s TPM is already in use by another system or application.';

  @override
  String get tpmActionErrorKindTpmDeviceLockoutLockedOut =>
      'This computer\'s TPM is currently locked.';

  @override
  String get tpmActionErrorKindInsufficientTpmStorage =>
      'This computer\'s TPM does not have enough storage available.';

  @override
  String get tpmActionErrorKindUnsupportedPlatform =>
      'This computer is not compatible with hardware-backed encryption.';

  @override
  String get tpmActionErrorKindUefiDebuggingEnabled =>
      'UEFI debugging is enabled.';

  @override
  String get tpmActionErrorKindInsufficientDmaProtection =>
      'This computer is missing a required security feature (DMA protection).';

  @override
  String get tpmActionErrorKindNoKernelIommu =>
      'This computer is missing a required security feature (IOMMU).';

  @override
  String get tpmActionErrorKindHostSecurity =>
      'There is an issue with this computer\'s security configuration.';

  @override
  String get tpmActionErrorKindSysPrepApplicationsPresent =>
      'There is software running at startup that might prevent a secure connection with the computer\'s TPM.';

  @override
  String get tpmActionErrorKindAbsolutePresent =>
      'Absolute Persistence Module is enabled in this computer.';

  @override
  String get tpmActionErrorKindInvalidSecureBootMode =>
      'Secure boot is disabled in this computer or is not set in deployed mode.';

  @override
  String get tpmActionErrorKindWeakSecureBootAlgorithmDetected =>
      'Some of the certificates verifying software in this computer are outdated or use weak protection.';

  @override
  String get tpmActionErrorKindPreOsSecureBootAuthByEnrolledDigests =>
      'This computer is using a manual allowlist to verify software at startup.';

  @override
  String get tpmActionErrorKindAddonDriversPresent =>
      'Add-on drivers are present.';

  @override
  String get tpmActionErrorKindGenericTpm =>
      'There is an issue with this computer\'s TPM.';

  @override
  String get tpmActionErrorKindGenericFirmware =>
      'There is an issue with this computer\'s firmware.';

  @override
  String get tpmActionFixActionReboot => 'Restart';

  @override
  String get tpmActionFixActionShutdown => 'Power off';

  @override
  String get tpmActionFixActionRebootToFwSettings =>
      'Restart to firmware settings';

  @override
  String get tpmActionFixActionRebootToFwSettingsInstructions =>
      'If firmware settings do not load automatically, restart and press the settings key repeatedly during startup (commonly F2, F10 or Delete).';

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
      'Enable IOMMU manually';

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
  String get tpmActionFixActionRebootToFwSettingsAbsolutePresent =>
      'Disable Absolute Persistence Module manually';

  @override
  String get tpmActionFixActionContactOem => 'Contact OEM';

  @override
  String get tpmActionFixActionContactOsVendor => 'Contact OS vendor';

  @override
  String get tpmActionFixActionEnableTpmViaFirmware => 'Enable TPM on restart';

  @override
  String get tpmActionFixActionEnableAndClearTpmViaFirmware =>
      'Enable and clear TPM on restart';

  @override
  String get tpmActionFixActionClearTpmViaFirmware => 'Clear TPM on restart';

  @override
  String get tpmActionFixActionClearTpm => 'Clear TPM';

  @override
  String get tpmActionFixActionProceed => 'Ignore';

  @override
  String get tpmActionFixActionRebootDescription =>
      'Restart the computer to complete previous actions.';

  @override
  String get tpmActionFixActionRebootTpmDeviceFailureDescription =>
      'Restarting the computer may fix the issue.';

  @override
  String get tpmActionFixActionShutdownDescription =>
      'Power off the computer to complete previous actions.';

  @override
  String get tpmActionFixActionRebootToFwSettingsDescription =>
      'You can do this in your computer\'s firmware settings.';

  @override
  String get tpmActionFixActionRebootToFwSettingsWithDocsDescription =>
      'You might be able to do this in your computer\'s firmware settings. Check the documentation of the CPU vendor for guidance.';

  @override
  String get tpmActionFixActionRebootToFwSettingsInvalidSecureBootModeHint =>
      'Check secure boot mode is set to \"deployed\".';

  @override
  String get tpmActionFixActionRebootToFwSettingsNoKernelIommuHint =>
      'This feature might be referred to as \"Virtualization Technology\", \"VT-d\" or \"AMD-Vi\".';

  @override
  String get tpmActionFixActionProceedDescription =>
      'Ignoring this issue might result in a less secure installation.';

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
  String get tpmActionFixActionCaveatConfirm =>
      'You might be asked to confirm this action on restart.';

  @override
  String get tpmActionFixActionCaveatRetry =>
      'Then you will need to start the installation again.';

  @override
  String get tpmActionErrorTitle => 'This solution failed';

  @override
  String get tpmActionErrorDescription =>
      'Try a different solution or contact IT support.';

  @override
  String get manualPartitioningWarningBody =>
      'Try something else. You may also <a href=\"\">send an error report</a>.';
}
