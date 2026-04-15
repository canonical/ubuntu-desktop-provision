// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_bootstrap_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Galician (`gl`).
class UbuntuBootstrapLocalizationsGl extends UbuntuBootstrapLocalizations {
  UbuntuBootstrapLocalizationsGl([String locale = 'gl']) : super(locale);

  @override
  String get appTitle => 'Instalador de escritorio Ubuntu';

  @override
  String windowTitle(String RELEASE) {
    return 'Instalar $RELEASE';
  }

  @override
  String get autoinstallDirectTitle => 'Instalación automática';

  @override
  String get autoinstallDirectHeader =>
      'Importar ficheiro de instalación automática';

  @override
  String get autoinstallDirectUrlLabel =>
      'Podes introducir o URL dun ficheiro de auto-instalación:';

  @override
  String get autoinstallDirectFileLabel => 'Ou seleccionar un ficheiro local:';

  @override
  String get autoinstallDirectFileButtonLabel => 'Seleccionar ficheiro...';

  @override
  String get autoinstallDirectFileClearButtonLabel => 'Limpar ficheiro';

  @override
  String get autoinstallDirectFilePickerTitle => 'Escoller ficheiro';

  @override
  String get autoinstallDirectFilePickerFilterLabel => 'Ficheiros YAML';

  @override
  String get autoinstallDirectImportButtonLabel => 'Importar';

  @override
  String get autoinstallDirectErrorNetworkTitle =>
      'Non se pode acceder ao ficheiro de instalación automática';

  @override
  String get autoinstallDirectErrorNetworkBody =>
      'Comproba que o URL sexa correcto, proba a túa conexión a internet ou téntao de novo máis tarde.';

  @override
  String get autoinstallDirectErrorInvalidUrlTitle => 'URL inválido';

  @override
  String get autoinstallDirectErrorInvalidUrlBody =>
      'Comprobe que o URL sexa correcto ou seleccione un ficheiro local.';

  @override
  String get autoinstallDirectErrorInvalidContentTitle =>
      'Ficheiro de auto-instalación non válido';

  @override
  String get autoinstallDirectErrorInvalidContentBody =>
      'Revisa o ficheiro ou proporciona un diferente.';

  @override
  String get autoinstallDirectErrorFileSystemTitle =>
      'O ficheiro de auto-instalación non é lexíbel';

  @override
  String get autoinstallDirectErrorFileSystemBody =>
      'Comprobe os seus permisos ou proporcione un ficheiro diferente.';

  @override
  String get autoinstallDirectErrorUnkownTitle => 'Erro descoñecido';

  @override
  String get autoinstallTitle => 'Tipo de instalación';

  @override
  String autoinstallHeader(String DISTRO) {
    return 'Como queres instalar $DISTRO?';
  }

  @override
  String get autoinstallInstructions =>
      'Introduza o URL ou a ruta do ficheiro local de autoinstall.yaml:';

  @override
  String get autoinstallInteractiveOption => 'Instalación interactiva';

  @override
  String get autoinstallInteractiveDescription =>
      'Para os usuarios que desexen ser guiados paso a paso durante a instalación.';

  @override
  String get autoinstallDirectOption =>
      'Automatizado con un ficheiro de auto-instalación';

  @override
  String get autoinstallDirectDescription =>
      'Para usuarios avanzados que dispoñen dun ficheiro autoinstall.yaml para configuracións de sistema consistentes e repetibles.';

  @override
  String get autoinstallLandscapeOption => 'Automatizado con Landscape';

  @override
  String get autoinstallLandscapeDescription =>
      'Para usuarios de organizacións que fornecen un ficheiro de auto-instalación a través de Landscape.';

  @override
  String get autoinstallErrorMessage =>
      'Non se puido executar un comando no ficheiro de auto-instalación durante a instalación.';

  @override
  String get autoinstallErrorInstructions =>
      'Terás que reiniciar a instalación. Comproba o ficheiro de auto-instalación, escolle un tipo de instalación diferente ou ponte en contacto co teu servizo de asistencia informática.';

  @override
  String get changeButtonText => 'Mudar';

  @override
  String get quitButtonText => 'Saír da instalación';

  @override
  String loadingPageTitle(String DISTRO) {
    return 'Benvido a $DISTRO';
  }

  @override
  String loadingHeader(String DISTRO) {
    return 'Preparando $DISTRO…';
  }

  @override
  String get warningLabel => 'Aviso:';

  @override
  String tryOrInstallTitle(String DISTRO) {
    return 'Probar ou instalar $DISTRO';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return 'Que queres facer con $DISTRO?';
  }

  @override
  String get tryOrInstallRepairOption => 'Reparar instalación';

  @override
  String get tryOrInstallRepairDescription =>
      'A reparación reinstalará todo o software instalado sen tocar os documentos nin a configuración.';

  @override
  String tryOption(String RELEASE) {
    return 'Probar $RELEASE';
  }

  @override
  String tryDescription(String RELEASE) {
    return 'Podes probar $RELEASE sen facer ningún cambio no teu ordenador.';
  }

  @override
  String installOption(String RELEASE) {
    return 'Instalar $RELEASE';
  }

  @override
  String installDescription(String RELEASE) {
    return 'Instalar $RELEASE xunto co teu sistema operativo actual (ou no seu lugar). Isto non debería levar moito tempo.';
  }

  @override
  String tryOrInstallReleaseNotesLabel(String url) {
    return 'Quizais queiras ler as <a href=\"$url\">notas da versión</a>.';
  }

  @override
  String get rstTitle => 'RST detectado';

  @override
  String get rstHeader => 'Debe desactivar RST para continuar coa instalación';

  @override
  String get rstDisable =>
      'O teu ordenador usa Intel RST (Rapid Storage Technology). Podes desactivar RST en:';

  @override
  String get rstDisableWindows =>
      'Windows, se estás a usar unha configuración de arranque dual con Windows';

  @override
  String get rstDisableBios => 'Parámetros da BIOS';

  @override
  String rstInstructions(String url) {
    return 'Para obter instrucións, escanea o código QR noutro dispositivo ou visita: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'Configurar o Arranque seguro';

  @override
  String get configureSecureBootDescription =>
      'Escolleu instalar software de controlador de terceiros. Isto require desactivar o Arranque seguro.\nPara facelo, debe escoller unha chave de seguranza agora e introducila cando se reinicie o sistema.';

  @override
  String get configureSecureBootOption => 'Configurar o Arranque Seguro';

  @override
  String get chooseSecurityKey => 'Escolla unha chave de seguranza';

  @override
  String get confirmSecurityKey => 'Confirme a chave de seguranza';

  @override
  String get dontInstallDriverSoftwareNow =>
      'Non instalar o software do controlador por agora';

  @override
  String get dontInstallDriverSoftwareNowDescription =>
      'Podes instalalo máis tarde dende Software e actualizacións.';

  @override
  String get configureSecureBootSecurityKeyRequired =>
      'Precísase da chave de seguranza';

  @override
  String get secureBootSecurityKeysDontMatch =>
      'As chaves de seguranza non coinciden';

  @override
  String get showSecurityKey => 'Amosar';

  @override
  String get hideSecurityKey => 'Agochar';

  @override
  String get updatesOtherSoftwarePageTitle => 'Aplicacións';

  @override
  String get updatesOtherSoftwarePageDescription =>
      'Que aplicacións queres instalar para comezar?';

  @override
  String get codecsAndDriversPageTitle => 'Optimice o seu ordenador';

  @override
  String get codecsAndDriversPageDescription =>
      'Instalar software propietario recomendado?';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return '$DISTRO non inclúe software propietario por defecto. A instalación de software adicional pode mellorar o rendemento do teu ordenador.';
  }

  @override
  String get codecsAndDriversNvidiaNote =>
      'Detectouse unha tarxeta gráfica NVIDIA';

  @override
  String get codecsAndDriversNvidiaBody =>
      'Para obter o mellor rendemento das tarxetas gráficas NVIDIA, recoméndase encarecidamente instalar controladores adicionais.';

  @override
  String get fullInstallationTitle => 'Selección ampliada';

  @override
  String get fullInstallationSubtitle =>
      'Unha selección de ferramentas de oficina, utilidades e navegador web compatibles sen conexión a internet.';

  @override
  String get minimalInstallationTitle => 'Selección predeterminada';

  @override
  String get minimalInstallationSubtitle =>
      'Só o esencial, o navegador web e as utilidades básicas.';

  @override
  String get otherOptions => 'Outras opcións';

  @override
  String get installThirdPartyTitle =>
      'Instalar software de terceiros para gráficos e dispositivos Wi-Fi, así como formatos multimedia adicionais';

  @override
  String get installThirdPartySubtitle =>
      'Este software está suxeito aos termos de licenza incluídos na súa documentación. Algúns son propietarios.';

  @override
  String get installDriversTitle =>
      'Instalar software de terceiros para gráficos e hardware Wi-Fi';

  @override
  String get installDriversSubtitle =>
      'Incluíndo, entre outros, controladores NVIDIA e similares';

  @override
  String get installCodecsTitle =>
      'Descargar e instalar compatibilidade con formatos multimedia adicionais';

  @override
  String get installCodecsSubtitle =>
      'Incluíndo, entre outros, MP3, MP4, MOV e similares';

  @override
  String get batteryWarning =>
      'O ordenador non está conectado a unha fonte de alimentación.';

  @override
  String get offlineWarning => 'Estás desconectado/a actualmente';

  @override
  String get choosePassphraseHeader => 'Crear unha frase de paso';

  @override
  String get choosePassphraseBody =>
      'Terás que introducir a túa frase de paso cada vez que acendas o ordenador. Esta frase de paso é diferente do teu contrasinal de usuario.';

  @override
  String get choosePassphraseInfoHeader =>
      'Asegúrate de gardar a túa frase de paso';

  @override
  String get choosePassphraseInfoBody =>
      'Se a perdes, perderás todos os teus datos.';

  @override
  String get chooseOptionalPassphraseInfoHeader =>
      'Garda a túa frase de paso e a túa chave de recuperación nun lugar seguro';

  @override
  String get chooseOptionalPassphraseInfoBody =>
      'Se perdes a túa frase de paso, perderás todos os teus datos. A frase de paso non substitúe á chave de recuperación nin ó contrasinal de usuario.';

  @override
  String get passphrasePageTitle => 'Cifrado';

  @override
  String get passphrasePageHeaderPassphrase =>
      'Definir unha frase de paso cifrada';

  @override
  String get passphrasePageHeaderPin => 'Definir un PIN cifrado';

  @override
  String get passphrasePageBodyPassphrase =>
      'Terás que introducir a túa frase de paso cada vez que acendas o ordenador. Esta frase de paso é diferente do teu contrasinal de usuario. Poderás cambiala máis tarde, pero non desactivala. Se esqueces a túa frase de paso, podes recuperar o acceso ao disco usando a chave de recuperación.';

  @override
  String get passphrasePageBodyPin =>
      'Terás que introducir o teu PIN cada vez que acendas o ordenador. Este PIN é diferente do teu contrasinal de usuario. Poderás cambialo máis tarde, pero non desactivalo. Se esqueces o teu PIN, podes recuperar o acceso ao disco usando a chave de recuperación.';

  @override
  String get passphrasePageChoosePassphraseHint => 'Frase de paso';

  @override
  String get passphrasePageConfirmPassphraseHint => 'Confirmar frase de paso';

  @override
  String get passphrasePageRequiredPassphrase =>
      'Precísase dunha frase de paso';

  @override
  String get passphrasePageMismatchPassphrase =>
      'As frases de paso non coinciden';

  @override
  String get passphrasePageChoosePinHint => 'PIN';

  @override
  String get passphrasePageConfirmPinHint => 'Confirmar o PIN';

  @override
  String get passphrasePageRequiredPin => 'Requírese un PIN';

  @override
  String get passphrasePageMismatchPin => 'Os PINs non coinciden';

  @override
  String get passphraseTypePassphraseTileTitle =>
      'Requírese unha frase de paso';

  @override
  String get passphraseTypePassphraseTileSubTitle =>
      'Máis seguro. Terás que introducir unha frase de paso máis longa cada vez que acendas o ordenador.';

  @override
  String get passphraseTypePinTileTitle => 'Requirir un PIN';

  @override
  String get passphraseTypePinTileSubTitle =>
      'Máis seguro. Terás que introducir un PIN numérico cada vez que acendas o ordenador.';

  @override
  String get passphraseTypeNoneTileTitle =>
      'Desbloquear o disco automaticamente';

  @override
  String get passphraseTypePageHeader => 'Seguranza adicional';

  @override
  String get passphraseTypePageBody =>
      'Por defecto, o módulo de plataforma fiable (TPM) do ordenador desbloqueará o disco durante o inicio. Tamén tes opcións para protexer aínda máis os teus datos.';

  @override
  String get passphrasePagePassphraseEntropyBelowMin =>
      'Frase de paso feble, faina máis longa ou máis complexa';

  @override
  String get passphrasePagePassphraseEntropyBelowOptimal =>
      'Frase de paso xusta, faina máis longa ou máis complexa para unha mellor seguranza';

  @override
  String get passphrasePagePassphraseEntropyOptimal => 'Frase de paso forte';

  @override
  String get passphrasePagePinEntropyBelowMin =>
      'PIN feble, faino máis longo ou menos previsíbel';

  @override
  String get passphrasePagePinEntropyBelowOptimal =>
      'PIN xusto, faino máis longo ou menos previsíbel para unha mellor seguranza';

  @override
  String get passphrasePagePinEntropyOptimal =>
      'O PIN é o suficientemente longo';

  @override
  String get installationTypeTitle => 'Configuración do disco';

  @override
  String installationTypeHeader(String DISTRO) {
    return 'Como queres instalar $DISTRO?';
  }

  @override
  String installationTypeOSDetected(String os) {
    return 'Este ordenador ten actualmente $os instalado. Que queres facer?';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return 'Este ordenador ten actualmente $os1 e $os2 instalados. Que queres facer?';
  }

  @override
  String get installationTypeMultiOSDetected =>
      'Actualmente este ordenador ten varios sistemas operativos instalados. Que queres facer?';

  @override
  String get installationTypeNoOSDetected =>
      'Actualmente este ordenador non ten ningún sistema operativo detectado. Que queres facer?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'Limpar o disco e instalar $DISTRO';
  }

  @override
  String get installationTypeEraseInfo =>
      'Borraranse todos os datos e particións do disco, incluídos os sistemas operativos.';

  @override
  String get installationTypeAdvancedLabel => 'Opcións avanzadas';

  @override
  String get installationTypeAdvancedTitle => 'Cifrado e sistema de ficheiros';

  @override
  String get installationTypeExperimental => 'Experimental';

  @override
  String get installationTypeNone => 'Sen cifrado';

  @override
  String get installationTypeNoneInfo =>
      'Sistema de ficheiros estándar sen cifrado.';

  @override
  String get installationTypeNoneSelected => 'Ningunha seleccionada';

  @override
  String get installationTypeLVM => 'Usar LVM sen cifrado';

  @override
  String get installationTypeLVMSelected => 'LVM seleccionado';

  @override
  String get installationTypeLVMEncryption => 'Cifrado con frase de paso';

  @override
  String installationTypeLVMEncryptionInfoResolute(String advancedHint) {
    return 'Terás que introducir unha frase de paso cada vez que acendas o ordenador. $advancedHint';
  }

  @override
  String get installationTypeLVMEncryptionInfo2 =>
      'Isto usa LVM con cifrado LUKS.';

  @override
  String get installationTypeLVMEncryptionSelected =>
      'LVM e cifrado seleccionados';

  @override
  String get installationTypeEncryptInfo =>
      'Escollerás unha chave de seguranza no seguinte paso.';

  @override
  String get installationTypeZFS => 'Usar ZFS sen cifrado';

  @override
  String get installationTypeZFSEncryption =>
      'Cifrar cunha frase de paso usando ZFS';

  @override
  String get installationTypeZFSEncryptionInfo =>
      'Cifrado nativo con ZFS. Terás que introducir unha frase de paso cada vez que acendas o ordenador.';

  @override
  String get installationTypeZFSSelected => 'ZFS seleccionado';

  @override
  String get installationTypeZFSEncryptionSelected =>
      'ZFS e cifrado seleccionados';

  @override
  String get installationTypeTPM => 'Usar cifrado con respaldo de hardware';

  @override
  String get installationTypeTPMInfoResolute =>
      'O disco desbloquearase automaticamente durante o inicio.';

  @override
  String get installationTypeTPMInfoUnavailable =>
      'Non dispoñíbel neste ordenador.';

  @override
  String get installationTypeTPMSelected => 'TPM seleccionado';

  @override
  String installationTypeReinstall(String os) {
    return 'Borrar $os e reinstalar';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">Aviso:</font> isto eliminará todos os teus programas, documentos, fotos, música e calquera outro ficheiro de $os.';
  }

  @override
  String installationTypeAlongside(String product, String os) {
    return 'Instalar $product xunto con $os';
  }

  @override
  String installationTypeAlongsideDual(String product, String os1, String os2) {
    return 'Instalar $product xunto con $os1 e $os2';
  }

  @override
  String installationTypeAlongsideMulti(String product) {
    return 'Instalar $product xunto cos sistemas operativos existentes';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return 'Instalar $product xunto con outras particións';
  }

  @override
  String installationTypeAlongsideInfo(String product) {
    return 'Selecciona unha partición para redimensionala e crear espazo para $product. Podes escoller o teu sistema operativo durante o arranque.';
  }

  @override
  String installationTypeEraseAndInstall(String os, String product) {
    return 'Borrar $os e instalar $product';
  }

  @override
  String installationTypeEraseAndInstallInfo(String os) {
    return 'Todos os ficheiros e datos da instalación existente de $os eliminaranse permanentemente.';
  }

  @override
  String get installationTypeManual => 'Instalación manual';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'Para usuarios avanzados que buscan configuracións de disco personalizadas.';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'Borrar o disco e instalar $DISTRO';
  }

  @override
  String get selectGuidedStorageInfo => 'Comeza de cero no disco escollido.';

  @override
  String get selectGuidedStorageDriveDropdownLabel => 'Seleccionar a unidade:';

  @override
  String get selectGuidedStoragePartitionDropdownLabel =>
      'Seleccionar a partición:';

  @override
  String get selectGuidedStorageInfoLabel => 'Empregarase todo o disco:';

  @override
  String get selectGuidedStorageInstallNow => 'Instalar agora';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return 'Escolle onde instalar $DISTRO';
  }

  @override
  String get installAlongsideSpaceDivider =>
      'Asigne o espazo do disco arrastrando o divisor de embaixo:';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return 'Hai $num particións máis pequenas ocultas, use a <a href=\"$url\">ferramenta de partición avanzada</a> para ter máis control';
  }

  @override
  String get installAlongsideResizePartition => 'Redimensionar partición';

  @override
  String get installAlongsideAllocateSpace => 'Asignar espazo';

  @override
  String get installAlongsideFiles => 'Ficheiros';

  @override
  String get installAlongsidePartition => 'Partición:';

  @override
  String get installAlongsideSize => 'Tamaño:';

  @override
  String get installAlongsideAvailable => 'Dispoñíbel:';

  @override
  String get allocateDiskSpace => 'Particionamento manual';

  @override
  String get allocateDiskSpaceInvalidMountPointSlash =>
      'Os puntos de montaxe deben comezar por \"/\"';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace =>
      'Os puntos de montaxe non poden conter espazos';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(
      String mountpoint, String format) {
    return '$format non é un sistema de ficheiros compatible con $mountpoint';
  }

  @override
  String get diskHeadersDevice => 'Dispositivo';

  @override
  String get diskHeadersType => 'Tipo';

  @override
  String get diskHeadersMountPoint => 'Punto de montaxe';

  @override
  String get diskHeadersSize => 'Tamaño';

  @override
  String get diskHeadersUsed => 'Usado';

  @override
  String get diskHeadersSystem => 'Sistema';

  @override
  String get diskHeadersFormat => 'Formato';

  @override
  String get freeDiskSpace => 'Espazo libre';

  @override
  String get newPartitionTable => 'Nova táboa de particións';

  @override
  String get newPartitionTableConfirmationTitle => 'Nova partición baleira';

  @override
  String get newPartitionTableConfirmationMessage =>
      'Crear unha nova táboa de particións nun dispositivo completo eliminará todas as súas particións actuais. Esta operación pódese desfacer se é necesario.';

  @override
  String get tooManyPrimaryPartitions => 'Demasiadas particións primarias';

  @override
  String get partitionLimitReached => 'Límite acadado';

  @override
  String get bootLoaderDevice =>
      'Dispositivo para a instalación do cargador de arranque';

  @override
  String get partitionCreateTitle => 'Crear partición';

  @override
  String get partitionEditTitle => 'Editar a partición';

  @override
  String get partitionSizeLabel => 'Tamaño:';

  @override
  String get partitionTypeLabel => 'Tipo da nova partición:';

  @override
  String get partitionTypePrimary => 'Primaria';

  @override
  String get partitionTypeLogical => 'Lóxica';

  @override
  String get partitionLocationLabel => 'Localización da nova partición:';

  @override
  String get partitionLocationBeginning => 'Inicio deste espazo';

  @override
  String get partitionLocationEnd => 'Fin deste espazo';

  @override
  String get partitionFormatLabel => 'Usada como:';

  @override
  String get partitionFormatNone => 'Deixar sen formatear';

  @override
  String partitionFormatKeep(String format) {
    return 'Deixar formateada como $format';
  }

  @override
  String get partitionErase => 'Formatear a partición';

  @override
  String get partitionMountPointLabel => 'Punto de montaxe:';

  @override
  String get confirmPageTitle => 'Listo para instalar';

  @override
  String get confirmHeader => 'Revisa as túas opcións';

  @override
  String get confirmDiskEncryptionLVM => 'LUKS (LVM)';

  @override
  String get confirmDiskEncryptionZFS => 'LUKS (ZFS)';

  @override
  String get confirmDiskEncryptionTPM => 'TPM';

  @override
  String get confirmDiskEncryptionNone => 'Ningunha';

  @override
  String get confirmDevicesTitle => 'Dispositivos';

  @override
  String get confirmEntryApplications => 'Aplicacións';

  @override
  String get confirmEntryDiskSetup => 'Tipo de instalación';

  @override
  String get confirmEntryDiskEncryption => 'Cifrado de disco';

  @override
  String get confirmEntryInstallationDisk => 'Disco de instalación';

  @override
  String get confirmEntryProprietarySoftware => 'Software propietario';

  @override
  String get confirmSectionGeneralTitle => 'Xeral';

  @override
  String get confirmSectionSecurityAndMoreTitle => 'Seguranza e máis';

  @override
  String get confirmPartitionsTitle => 'Particións';

  @override
  String get confirmPartitionTables =>
      'Modificáronse as táboas de particións dos seguintes dispositivos:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial$path';
  }

  @override
  String get confirmProprietarySoftwareCodecs => 'Códecs';

  @override
  String get confirmProprietarySoftwareCodecsDrivers =>
      'Códecs e controladores';

  @override
  String get confirmProprietarySoftwareDrivers => 'Controladores';

  @override
  String get confirmInstallButton => 'Instalar';

  @override
  String get confirmTableErased => 'Borrado';

  @override
  String get confirmTableUnchanged => 'Non modificado';

  @override
  String confirmTableResized(String oldsize, String newsize) {
    return 'Redimensionado dende $oldsize a $newsize';
  }

  @override
  String confirmTableCreatedFormattedMounted(String format, String mountpoint) {
    return 'Creado e formatado como $format usado para $mountpoint';
  }

  @override
  String confirmTableFormattedMounted(String format, String mountpoint) {
    return 'Formatado como $format usado para $mountpoint';
  }

  @override
  String confirmTableMounted(String mountpoint) {
    return 'Usado para $mountpoint';
  }

  @override
  String confirmTableFormatted(String format) {
    return 'Formateado como $format';
  }

  @override
  String get installationCompleteTitle => 'Rematou a instalación';

  @override
  String readyToUse(String system) {
    return '$system está instalado e listo para usar';
  }

  @override
  String rebootToConfigure(String system) {
    return 'Copiouse **$system** ao disco';
  }

  @override
  String restartInto(String system) {
    return 'Reiniciar en $system';
  }

  @override
  String get restartWarningBody =>
      'Reinicia para completar a instalación ou continuar as probas.\nNon se gardarán os cambios que fagas.';

  @override
  String get rebootToConfigureWarning =>
      'Tes que reiniciar o ordenador para continuar co proceso de instalación.';

  @override
  String get shutdown => 'Apagar';

  @override
  String get restartNow => 'Reiniciar agora';

  @override
  String get continueTesting => 'Continuar probando';

  @override
  String get bitlockerInfoTitle => 'Detectouse BitLocker';

  @override
  String get bitlockerInfoDescription =>
      'Unha ou máis particións están cifradas con BitLocker.';

  @override
  String get bitlockerInfoDisable =>
      'Para instalalo xunto con Windows, desactive BitLocker en Windows.';

  @override
  String get bitlockerInfoRecovery =>
      'Pode que Windows solicite chaves de recuperación ao iniciar despois da instalación.';

  @override
  String bitlockerInfoInstructions(String url) {
    return 'Para instruccións, visite a <a href=\"$url\">Guía de BitLocker</a>.';
  }

  @override
  String get bitlockerWarningTitle =>
      'Podes perder todos os teus datos sen as chaves de recuperación de BitLocker';

  @override
  String get restartComputer => 'Reiniciar o ordenador';

  @override
  String get restartComputerTitle => 'Reiniciar o ordenador?';

  @override
  String get restartInstaller => 'Reiniciar o instalador';

  @override
  String get restartIntoWindows => 'Reiniciar en Windows';

  @override
  String get restartIntoWindowsTitle => 'Reiniciar en Windows?';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return 'Seguro que queres reiniciar o ordenador? Terás que reiniciar a instalación de $DISTRO máis tarde para rematar de instalar $DISTRO.';
  }

  @override
  String installationSlidesTitle(String RELEASE) {
    return 'Benvido a $RELEASE';
  }

  @override
  String get installationSlidesAvailable => 'Dispoñíbel:';

  @override
  String get installationSlidesIncluded => 'Incluído:';

  @override
  String get installationSlidesWelcomeTitle =>
      'Rápido, gratuíto e cheo de novas funcións';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return 'A última versión de $DISTRO fai que a informática sexa máis doada ca nunca.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'Tanto se es desenvolvedor, creador, xogador ou administrador, atoparás novas ferramentas para mellorar a túa produtividade e a túa experiencia en $RELEASE.';
  }

  @override
  String get installationSlidesSoftwareTitle =>
      'Todas as aplicacións que necesitas';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'Instala, xestiona e actualiza todas as túas aplicacións en Ubuntu Software, incluíndo miles de aplicacións tanto da Snap Store como do arquivo $DISTRO.';
  }

  @override
  String get installationSlidesDevelopmentTitle =>
      'Desenvolvido co mellor do código aberto';

  @override
  String installationSlidesDevelopmentBody(String DISTRO, Object OS) {
    return '$DISTRO é a estación de traballo ideal para o desenvolvemento de aplicacións ou web, ciencia de datos e IA/ML, así como para devops e administración. Cada versión de $DISTRO inclúe as últimas cadeas de ferramentas e é compatible cos principais IDE.';
  }

  @override
  String get installationSlidesCreativityTitle => 'Mellora a túa creatividade';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return 'Se es animador, deseñador, creador de vídeos ou desenvolvedor de xogos, é doado levar os teus fluxos de traballo a $DISTRO con compatibilidade con software e aplicacións de código aberto e estándar da industria.';
  }

  @override
  String get installationSlidesGamingTitle => 'Ideal para xogar';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return '$DISTRO é compatible cos controladores NVIDIA e Mesa máis recentes para mellorar o rendemento e a compatibilidade. Miles de títulos de Windows funcionan perfectamente en $DISTRO a través de aplicacións como Steam sen ningunha configuración adicional.';
  }

  @override
  String get installationSlidesSecurityTitle => 'Privado e seguro';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return '$DISTRO ofréceche todas as ferramentas que necesitas para manter a privacidade e a seguridade en liña. Cun firewall integrado e compatibilidade con VPN e unha serie de aplicacións centradas na privacidade para garantir que tes o control total dos teus datos.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return 'Todas as versións de $DISTRO LTS inclúen cinco anos de parches de seguranza, que se poden ampliar a dez anos cunha subscrición a Ubuntu Pro.';
  }

  @override
  String get installationSlidesProductivityTitle =>
      'Potencia a túa produtividade';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return '$DISTRO Desktop inclúe LibreOffice, un conxunto de aplicacións de código aberto compatibles con Microsoft Office para documentos, follas de cálculo e presentacións. Tamén hai dispoñíbeis ferramentas de colaboración populares.';
  }

  @override
  String get installationSlidesAccessibilityTitle => 'Acceso para todos';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return 'No corazón da filosofía de $DISTRO está a crenza de que a informática é para todos. Con ferramentas de accesibilidade avanzadas e opcións para cambiar o idioma, as cores e o tamaño do texto, $DISTRO facilita a informática, quen sexas e onde estés.';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'Lector de pantalla Orca';

  @override
  String get installationSlidesAccessibilityLanguages =>
      'Compatibilidade lingüística';

  @override
  String get installationSlidesSupportTitle => 'Axuda e asistencia';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return 'A documentación oficial de $DISTRO está dispoñible tanto en liña como a través da icona de Axuda no dock.';
  }

  @override
  String get installationSlidesSupportCommunity =>
      '\"Ask Ubuntu\" abrangue unha serie de preguntas e respostas e o \"Discourse\" de Ubuntu ofrece guías e debates para usuarios novos así como experimentados.';

  @override
  String get installationSlidesSupportEnterprise =>
      'Para os usuarios empresariais, Canonical ofrece soporte comercial para facilitar a incorporación e a xestión segura de Ubuntu no lugar de traballo.';

  @override
  String get installationSlidesSupportResources => 'Recursos útiles:';

  @override
  String get installationSlidesSupportDocumentation => 'Documentación oficial';

  @override
  String get installationSlidesSupportUbuntuPro =>
      'Soporte 24/7 de nivel empresarial con Ubuntu Pro';

  @override
  String get nextSlideSemanticLabel => 'Seguinte diapositiva';

  @override
  String get previousSlideSemanticLabel => 'Diapositiva anterior';

  @override
  String get playSlideshowSemanticLabel => 'Reproducir presentación';

  @override
  String get pauseSlideshowSemanticLabel => 'Pausar presentación';

  @override
  String get toggleLogsSemanticLabel =>
      'Amostrar/agochar rexistros de instalación';

  @override
  String get copyingFiles => 'Copiando ficheiros…';

  @override
  String get installingSystem => 'Instalando o sistema…';

  @override
  String get configuringSystem => 'Configurando o sistema…';

  @override
  String get installationFailed => 'Fallo na instalación';

  @override
  String get notEnoughDiskSpaceTitle => 'Non hai espazo suficiente en disco';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return 'Non hai espazo en disco suficiente para instalar $DISTRO';
  }

  @override
  String notEnoughDiskSpaceBody(String DISTRO) {
    return 'O disco seleccionado non ten espazo en disco suficiente para instalar $DISTRO. Saia do instalador para liberar espazo ou seleccione outro disco.';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'Dispoñíbel:';

  @override
  String get notEnoughDiskSpaceRequired => 'Requerido:';

  @override
  String get refreshPageTitle => 'Actualización dispoñíbel';

  @override
  String get refreshHeader =>
      'Hai unha actualización dispoñíbel para o instalador';

  @override
  String get refreshUpdateNow => 'Actualizar agora';

  @override
  String get refreshInfo =>
      'Actualiza á última versión para unha mellor fiabilidade e máis funcións.';

  @override
  String get refreshReady => 'Actualización preparada';

  @override
  String refreshCurrent(String snap, String version) {
    return 'A versión actual de $snap é $version.';
  }

  @override
  String refreshInstall(String version) {
    return 'Actualizar á versión $version';
  }

  @override
  String refreshUpToDate(String version) {
    return 'A versión actual $version está actualizada.';
  }

  @override
  String refreshUpdating(String snap) {
    return 'Actualizando $snap...';
  }

  @override
  String get refreshRestart => 'Pecha o instalador e reiníciao para continuar';

  @override
  String get refreshCloseLabel => 'Pechar instalador';

  @override
  String refreshSnapPrerequisites(String snap) {
    return 'Comprobando os requisitos previos de $snap...';
  }

  @override
  String refreshSnapRefresh(String snap) {
    return 'Actualizando $snap...';
  }

  @override
  String refreshSnapCheckRerefresh(String snap) {
    return 'Comprobando a actualización de $snap...';
  }

  @override
  String refreshSnapPrepare(String snap) {
    return 'Preparando $snap...';
  }

  @override
  String refreshSnapDownload(String snap) {
    return 'Descargando $snap...';
  }

  @override
  String refreshSnapValidate(String snap) {
    return 'Validando $snap...';
  }

  @override
  String refreshSnapMount(String snap) {
    return 'Montando $snap...';
  }

  @override
  String refreshSnapStopServices(String snap) {
    return 'Detendo os servizos $snap...';
  }

  @override
  String refreshSnapRemoveAliases(String snap) {
    return 'Eliminando o alias $snap...';
  }

  @override
  String refreshSnapUnlink(String snap) {
    return 'Desvinculando $snap...';
  }

  @override
  String refreshSnapUpdateAssets(String snap) {
    return 'Actualizando os recursos de $snap...';
  }

  @override
  String refreshSnapUpdateKernelCommandLine(String snap) {
    return 'Actualizando a liña de comandos do kernel $snap...';
  }

  @override
  String refreshSnapCopyData(String snap) {
    return 'Copiando os datos $snap...';
  }

  @override
  String refreshSnapSetupProfiles(String snap) {
    return 'Configurando os perfís de seguranza $snap...';
  }

  @override
  String refreshSnapLink(String snap) {
    return 'Ligando $snap...';
  }

  @override
  String refreshSnapAutoConnect(String snap) {
    return 'Conectando os conectores e as ranuras $snap...';
  }

  @override
  String refreshSnapSetAutoAliases(String snap) {
    return 'Definindo alias automáticos de $snap...';
  }

  @override
  String refreshSnapSetupAliases(String snap) {
    return 'Configurando alias de $snap...';
  }

  @override
  String refreshSnapStartServices(String snap) {
    return 'Iniciando os servizos $snap...';
  }

  @override
  String refreshSnapCleanup(String snap) {
    return 'Limpando $snap...';
  }

  @override
  String get recoveryKeyTitle => 'Chave de recuperación';

  @override
  String get recoveryKeyTitleBadgeLabel => 'Importante';

  @override
  String get recoveryKeyHeader => 'Garda a túa chave de recuperación';

  @override
  String get recoveryKeyInfoHeader =>
      'Podes perder todos os teus datos sen unha chave de recuperación';

  @override
  String get recoveryKeyTextFieldLabel => 'Chave de recuperación';

  @override
  String get recoveryKeyStorageAdvice =>
      'Terás que proporcionar esta chave de recuperación se o descifrado falla durante o inicio. Sen a chave, perderás o acceso a todos os teus datos. Garda a chave nun lugar seguro, como un xestor de contrasinais.';

  @override
  String get recoveryKeyConfirmation =>
      'Gardei a miña chave de recuperación nun lugar seguro';

  @override
  String get recoveryKeyLinkLabel => 'Saber máis';

  @override
  String get recoveryKeySaveToFileLabel => 'Gardar nun ficheiro';

  @override
  String get recoveryKeyShowQrCodeLabel => 'Mostrar código QR';

  @override
  String recoveryKeyQrDialogTitle(String DISTRO) {
    return '$DISTRO Escritorio - Chave de recuperación';
  }

  @override
  String get recoveryKeyQrDialogBody =>
      'Escanee o código QR para copiar a chave de recuperación e gardala nun lugar seguro, como un xestor de contrasinais. Tamén podes tomar unha foto para usala máis tarde.';

  @override
  String get recoveryKeyClipboardNotifiaction => 'Copiado no portapapeis';

  @override
  String get recoveryKeyExceptionFileSystemTitle =>
      'Non se gardou o ficheiro da chave de recuperación';

  @override
  String get recoveryKeyExceptionDisallowedPathTitle =>
      'Non se pode gardar o ficheiro da chave de recuperación nunha localización temporal';

  @override
  String get recoveryKeyExceptionUnknownTitle => 'Erro descoñecido';

  @override
  String get recoveryKeyExceptionFileSystemBody =>
      'Non tes permiso para escribir nese cartafol. Proba cunha localización diferente ou usa outro método.';

  @override
  String get recoveryKeyExceptionDisallowedPathBody =>
      'Proba cunha localización diferente, como unha unidade extraíble, ou usa outro método.';

  @override
  String get recoveryKeyFilePickerTitle =>
      'Gardar ficheiro de chave de recuperación';

  @override
  String get recoveryKeyFilePickerFilter => 'Ficheiros de texto';

  @override
  String landscapeMagicAttachInstructions(String url) {
    return 'Escanea o código QR ou introduce o código que aparece a continuación en <a href=\"https://$url\">$url</a>';
  }

  @override
  String get landscapePageTitle => 'Instalación automática';

  @override
  String get landscapeHeader => 'Iniciar sesión en Landscape';

  @override
  String get landscapeDomainHeader => 'Introducir dominio de Landscape (FQDN)';

  @override
  String get landscapeDomainHintText => 'Dominio Landscape (FQDN)';

  @override
  String get landscapeDomainInstructions =>
      'Forneza o dominio Landscape da súa organización para iniciar sesión e obter un ficheiro de instalación automática. Pode obter o FQDN a través do seu servizo de asistencia informática.';

  @override
  String get landscapeDomainTextField => 'Dominio Landscape (FQDN)';

  @override
  String get next => 'Seguinte';

  @override
  String get landscapeDomainInvalidDomainWarning =>
      'Dominio non válido. Compróbeo ou póñase en contacto co servizo de asistencia informática';

  @override
  String get landscapeDomainNoInternetTitleWarning =>
      'Conéctate a internet para continuar';

  @override
  String get landscapeDomainNoInternetDescriptionWarning =>
      'Necesítase internet para obter o ficheiro de instalación automática de Landscape';

  @override
  String get landscapeCodeExpiredWarning => 'Código caducado. Ténteo de novo';

  @override
  String get landscapeLoginFailedWarning =>
      'Fallou o inicio de sesión. Téntao de novo';

  @override
  String get landscapeErrorPageTitle =>
      'A instalación automática non está dispoñible para a túa conta';

  @override
  String get landscapeErrorPageBody =>
      'Ponte en contacto co servizo de asistencia informática ou proba unha opción de instalación diferente.';

  @override
  String landscapeErrorPageCode(String code) {
    return 'Código de erro: $code';
  }

  @override
  String get landscapeConfirmPageSuccessInfoTitle =>
      'Ubuntu instalarase coa configuración proporcionada pola túa organización';

  @override
  String get landscapeConfirmPageSuccessInfoContent =>
      'Podes revisar o ficheiro de instalación automática importado desde Landscape a continuación.';

  @override
  String get successIconSemanticLabel => 'Éxito';

  @override
  String get errorIconSemanticLabel => 'Erro';

  @override
  String get closeIconSemanticLabel => 'Pechar';

  @override
  String get maximizeIconSemanticLabel => 'Maximizar';

  @override
  String get minimizeIconSemanticLabel => 'Minimizar';

  @override
  String get tpmActionPageTitle =>
      'Non se puido activar o cifrado con respaldo de hardware';

  @override
  String get tpmActionBadgeLabel => 'Acción requirida';

  @override
  String get tpmActionDetailsLabel => 'Detalles técnicos';

  @override
  String get tpmActionConfirmLabel => 'Confirmar';

  @override
  String tpmActionSolutionLabel(int n, String text) {
    return 'Solución $n: $text';
  }

  @override
  String tpmActionSingleSolutionLabel(String text) {
    return 'Solución: $text';
  }

  @override
  String get tpmActionDocumentationLinkLabel =>
      'Saber máis do cifrado con respaldo de hardware';

  @override
  String get tpmActionErrorSupportLabel =>
      'Proba as solucións seguintes, ponte en contacto co servizo de asistencia informática ou escolle un método de cifrado diferente.';

  @override
  String get tpmActionErrorSupportSingleLabel =>
      'Proba a solución que aparece a continuación, ponte en contacto co servizo de asistencia informática ou escolle un método de cifrado diferente.';

  @override
  String get tpmActionErrorSupportNoActionLabel =>
      'Ponte en contacto co servizo de asistencia informática ou escolle un método de cifrado diferente.';

  @override
  String get tpmActionErrorKindInternal => 'Erro interno.';

  @override
  String get tpmActionErrorKindShutdownRequired => 'É necesario apagar.';

  @override
  String get tpmActionErrorKindRebootRequired => 'É necesario reiniciar.';

  @override
  String get tpmActionErrorKindUnexpectedAction => 'Acción inesperada.';

  @override
  String get tpmActionErrorKindMissingArgument => 'Argumento ausente.';

  @override
  String get tpmActionErrorKindInvalidArgument => 'Argumento non válido.';

  @override
  String get tpmActionErrorKindActionFailed => 'Fallou a acción.';

  @override
  String get tpmActionErrorKindRunningInVm =>
      'O entorno actual é unha máquina virtual.';

  @override
  String get tpmActionErrorKindSystemNotEfi =>
      'Este ordenador usa un firmware antigo (BIOS herdado) que non é compatible con este método de cifrado.';

  @override
  String get tpmActionErrorKindEfiVariableAccess =>
      'Hai un problema co firmware deste ordenador.';

  @override
  String get tpmActionErrorKindNoSuitableTpm2Device =>
      'Este computador non ten o hardware de seguranza necesario (TPM 2.0) para este método de cifrado.';

  @override
  String get tpmActionErrorKindTpmDeviceDisabled =>
      'O TPM deste ordenador está desactivado.';

  @override
  String get tpmActionErrorKindTpmHierarchiesOwned =>
      'O TPM deste computador xa está a ser usado por outro sistema ou aplicación.';

  @override
  String get tpmActionErrorKindTpmDeviceLockoutLockedOut =>
      'O TPM deste ordenador está bloqueado actualmente.';

  @override
  String get tpmActionErrorKindInsufficientTpmStorage =>
      'O TPM deste ordenador non ten almacenamento suficiente dispoñible.';

  @override
  String get tpmActionErrorKindUnsupportedPlatform =>
      'Este ordenador non é compatible co cifrado con hardware.';

  @override
  String get tpmActionErrorKindUefiDebuggingEnabled =>
      'A depuración UEFI está activada.';

  @override
  String get tpmActionErrorKindInsufficientDmaProtection =>
      'A este ordenador fáltalle unha función de seguranza obrigatoria (protección DMA).';

  @override
  String get tpmActionErrorKindNoKernelIommu =>
      'A este ordenador fáltalle unha función de seguranza obrigatoria (IOMMU).';

  @override
  String get tpmActionErrorKindHostSecurity =>
      'Hai un problema coa configuración de seguranza deste ordenador.';

  @override
  String get tpmActionErrorKindSysPrepApplicationsPresent =>
      'Hai software que se executa ao inicio e que pode impedir unha conexión segura co TPM do computador.';

  @override
  String get tpmActionErrorKindAbsolutePresent =>
      'O Módulo de Persistencia Absoluta está activado neste computador.';

  @override
  String get tpmActionErrorKindInvalidSecureBootMode =>
      'O arranque seguro está desactivado neste ordenador ou non está configurado no modo despregado.';

  @override
  String get tpmActionErrorKindWeakSecureBootAlgorithmDetected =>
      'Algúns dos certificados que verifican o software neste ordenador están desactualizados ou usan unha protección débil.';

  @override
  String get tpmActionErrorKindPreOsSecureBootAuthByEnrolledDigests =>
      'Este ordenador está a usar unha lista de permisos manual para verificar o software ao iniciar.';

  @override
  String get tpmActionErrorKindAddonDriversPresent =>
      'Hai controladores complementarios presentes.';

  @override
  String get tpmActionErrorKindGenericTpm =>
      'Hai un problema co TPM deste ordenador.';

  @override
  String get tpmActionErrorKindGenericFirmware =>
      'Hai un problema co firmware deste ordenador.';

  @override
  String get tpmActionFixActionReboot => 'Reiniciar';

  @override
  String get tpmActionFixActionShutdown => 'Apagar';

  @override
  String get tpmActionFixActionRebootToFwSettings =>
      'Reiniciar na configuración do firmware';

  @override
  String get tpmActionFixActionRebootToFwSettingsInstructions =>
      'Se a configuración do firmware non se carga automaticamente, reinicie o ordenador e prema a tecla de configuración repetidamente durante o inicio (normalmente F2, F10 ou Supr).';

  @override
  String get tpmActionFixActionRebootToFwSettingsInsufficientDmaProtection =>
      'Activar a protección DMA manualmente';

  @override
  String get tpmActionFixActionRebootToFwSettingsInsufficientTpmStorage =>
      'Borrar TPM manualmente';

  @override
  String get tpmActionFixActionRebootToFwSettingsInvalidSecureBootMode =>
      'Activar o arranque seguro manualmente';

  @override
  String get tpmActionFixActionRebootToFwSettingsNoKernelIommu =>
      'Activar IOMMU manualmente';

  @override
  String get tpmActionFixActionRebootToFwSettingsNoSuitablePcrBank =>
      'Activar os bancos de PCR manualmente';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmDeviceDisabled =>
      'Activar TPM manualmente';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmDeviceLockoutLockedOut =>
      'Borrar TPM manualmente';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmHierarchiesOwned =>
      'Borrar TPM manualmente';

  @override
  String get tpmActionFixActionRebootToFwSettingsAbsolutePresent =>
      'Desactivar o módulo de persistencia absoluta manualmente';

  @override
  String get tpmActionFixActionContactOem => 'Contactar OEM';

  @override
  String get tpmActionFixActionContactOsVendor => 'Contactar vendedor do SO';

  @override
  String get tpmActionFixActionEnableTpmViaFirmware =>
      'Activar TPM ao reiniciar';

  @override
  String get tpmActionFixActionEnableAndClearTpmViaFirmware =>
      'Activar e purgar o TPM ao reiniciar';

  @override
  String get tpmActionFixActionClearTpmViaFirmware =>
      'Purgar o TPM ao reiniciar';

  @override
  String get tpmActionFixActionClearTpm => 'Purgar TPM';

  @override
  String get tpmActionFixActionProceed => 'Ignorar';

  @override
  String get tpmActionFixActionRebootDescription =>
      'Reinicie o ordenador para completar as accións anteriores.';

  @override
  String get tpmActionFixActionRebootTpmDeviceFailureDescription =>
      'Reiniciar o ordenador pode solucionar o problema.';

  @override
  String get tpmActionFixActionShutdownDescription =>
      'Apaga o ordenador para completar as accións anteriores.';

  @override
  String get tpmActionFixActionRebootToFwSettingsDescription =>
      'Podes facelo na configuración do firmware do teu ordenador.';

  @override
  String get tpmActionFixActionRebootToFwSettingsWithDocsDescription =>
      'É posíbel que poidas facelo na configuración do firmware do teu ordenador. Consulta a documentación do provedor da CPU para obter orientación.';

  @override
  String get tpmActionFixActionRebootToFwSettingsInvalidSecureBootModeHint =>
      'Comprobe que o modo de arranque seguro estea configurado como \"implementado\".';

  @override
  String get tpmActionFixActionRebootToFwSettingsNoKernelIommuHint =>
      'Esta funcionalidade podería denominarse \"Tecnoloxía de virtualización\", \"VT-d\" ou \"AMD-Vi\".';

  @override
  String get tpmActionFixActionProceedDescription =>
      'Ignorar este problema pode resultar nunha instalación menos segura.';

  @override
  String get tpmActionRestartLabel => 'Reiniciar';

  @override
  String get tpmActionRestartAndEnableTpmLabel => 'Reiniciar e activar o TPM';

  @override
  String get tpmActionRestartAndClearTpmLabel => 'Reiniciar e purgar TPM';

  @override
  String get tpmActionIgnoreAndContinueLabel => 'Ignorar e continuar';

  @override
  String get tpmActionFixActionClearTpmWarningTitle =>
      'Ao borrar o TPM, bórranse todas as chaves de cifrado';

  @override
  String get tpmActionFixActionClearTpmWarningBody =>
      'Perderás o acceso a todos os datos das unidades cifradas para as que non teñas claves de recuperación. Tamén se producirán erros noutras funcións que dependen do TPM, como a autenticación e os certificados.';

  @override
  String get tpmActionFixActionClearTpmConfirmationLabel =>
      'Entendo as consecuencias de purgar o TPM';

  @override
  String get tpmActionFixActionCaveatConfirm =>
      'É posíbel que se che pida que confirmes esta acción ao reiniciar.';

  @override
  String get tpmActionFixActionCaveatRetry =>
      'Entón terás que iniciar a instalación de novo.';

  @override
  String get tpmActionErrorTitle => 'Esta solución fallou';

  @override
  String get tpmActionErrorDescription =>
      'Proba unha solución diferente ou ponte en contacto co servizo de asistencia informática.';

  @override
  String get manualPartitioningWarningBody =>
      'Proba con outra cousa. Tamén podes <a href=\"\">enviar un informe de erros</a>.';
}
