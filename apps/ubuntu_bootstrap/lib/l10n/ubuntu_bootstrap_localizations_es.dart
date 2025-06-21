// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_bootstrap_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class UbuntuBootstrapLocalizationsEs extends UbuntuBootstrapLocalizations {
  UbuntuBootstrapLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Instalador de Ubuntu Desktop';

  @override
  String windowTitle(String RELEASE) {
    return 'Instalar $RELEASE';
  }

  @override
  String get autoinstallDirectTitle => 'Instalación automática';

  @override
  String get autoinstallDirectHeader => 'Importar archivo de autoinstalador';

  @override
  String get autoinstallDirectUrlLabel =>
      'Puede introducir la URL de un archivo auto-instalador:';

  @override
  String get autoinstallDirectFileLabel => 'O seleccione un archivo local:';

  @override
  String get autoinstallDirectFileButtonLabel => 'Seleccionar archivo…';

  @override
  String get autoinstallDirectFileClearButtonLabel => 'Vaciar archivo';

  @override
  String get autoinstallDirectFilePickerTitle => 'Elija archivo';

  @override
  String get autoinstallDirectFilePickerFilterLabel => 'Archivos YAML';

  @override
  String get autoinstallDirectImportButtonLabel => 'Importar';

  @override
  String get autoinstallDirectErrorNetworkTitle =>
      'Archivo auto-instalar no es alcanzable';

  @override
  String get autoinstallDirectErrorNetworkBody =>
      'Compruebe si la URL es correcta, pruebe su conexión a Internet, o inténtelo más tarde.';

  @override
  String get autoinstallDirectErrorInvalidUrlTitle => 'URL no válida';

  @override
  String get autoinstallDirectErrorInvalidUrlBody =>
      'Compruebe si es correcta la URL o seleccione un archivo local.';

  @override
  String get autoinstallDirectErrorInvalidContentTitle =>
      'Archivo de auto-instalación no válido';

  @override
  String get autoinstallDirectErrorInvalidContentBody =>
      'Compruebe el archivo o proporcione uno diferente.';

  @override
  String get autoinstallDirectErrorFileSystemTitle =>
      'El archivo auto-instalar no es legible';

  @override
  String get autoinstallDirectErrorFileSystemBody =>
      'Compruebe sus permisos o proporcione un archivo diferente.';

  @override
  String get autoinstallDirectErrorUnkownTitle => 'Error desconocido';

  @override
  String get autoinstallTitle => 'Tipo de instalación';

  @override
  String autoinstallHeader(String DISTRO) {
    return '¿Cómo le gustaría instalar $DISTRO?';
  }

  @override
  String get autoinstallInstructions =>
      'Ingresa la URL de autoinstall.yaml o la ruta del archivo local:';

  @override
  String get autoinstallInteractiveOption => 'Instalación interactiva';

  @override
  String get autoinstallInteractiveDescription =>
      'Para usuarios que quieran ser guiados paso a paso durante la instalación.';

  @override
  String get autoinstallDirectOption => 'Automático con archivo autoinstall';

  @override
  String get autoinstallDirectDescription =>
      'Para usuarios avanzados quienes tengan un autoinstall.yaml para configuraciones del sistema consistente y repetible.';

  @override
  String get autoinstallLandscapeOption => 'Automático con Landscape';

  @override
  String get autoinstallLandscapeDescription =>
      'Para usuarios en organización que proporciona un archivo autoinstall a través de Landscape.';

  @override
  String get changeButtonText => 'Cambiar';

  @override
  String get quitButtonText => 'Salir de la instalación';

  @override
  String loadingPageTitle(String DISTRO) {
    return 'Le damos la bienvenida a $DISTRO';
  }

  @override
  String loadingHeader(String DISTRO) {
    return 'Preparando $DISTRO…';
  }

  @override
  String get warningLabel => 'Atención:';

  @override
  String tryOrInstallTitle(String DISTRO) {
    return 'Probar o instalar $DISTRO';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return '¿Qué quiere hacer con $DISTRO?';
  }

  @override
  String get tryOrInstallRepairOption => 'Reparar instalación';

  @override
  String get tryOrInstallRepairDescription =>
      'Al reparar se reinstalarán todos los programas instalados sin tocar los documentos ni la configuración.';

  @override
  String tryOption(String RELEASE) {
    return 'Probar $RELEASE';
  }

  @override
  String tryDescription(String RELEASE) {
    return 'Puede probar $RELEASE sin efectuar ningún cambio en el equipo.';
  }

  @override
  String installOption(String RELEASE) {
    return 'Instalar $RELEASE';
  }

  @override
  String installDescription(String RELEASE) {
    return 'Instalar $RELEASE junto con (o en lugar de) su sistema operativo actual. No debería tardar mucho.';
  }

  @override
  String tryOrInstallReleaseNotesLabel(String url) {
    return 'Puede leer el <a href=\"$url\">informe de novedades</a>.';
  }

  @override
  String get rstTitle => 'RST detectado';

  @override
  String get rstHeader => 'Debe desactivar RST para continuar la instalación';

  @override
  String get rstDisable =>
      'Su equipo utiliza Intel RDT (Rapid Storage Technology). Puede desactivar RTS en:';

  @override
  String get rstDisableWindows =>
      'Windows, si está utilizando una configuración de arranque dual con Windows';

  @override
  String get rstDisableBios => 'Los parámetros de la BIOS';

  @override
  String rstInstructions(String url) {
    return 'Para obtener instrucciones, escanee el código QR en otro dispositivo o visite: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'Configurar Secure Boot';

  @override
  String get configureSecureBootDescription =>
      'Ha elegido instalar software de controladores de terceros. Esto requiere desactivar Secure Boot.\nPara ello, debe elegir una clave de seguridad ahora, e introducirla cuando se reinicie el sistema.';

  @override
  String get configureSecureBootOption => 'Configurar Secure Boot';

  @override
  String get chooseSecurityKey => 'Elija una clave de seguridad';

  @override
  String get confirmSecurityKey => 'Confirme la clave de seguridad';

  @override
  String get dontInstallDriverSoftwareNow =>
      'No instalar controladores en este momento';

  @override
  String get dontInstallDriverSoftwareNowDescription =>
      'Puede instalarlo más tarde en Programas y actualizaciones.';

  @override
  String get configureSecureBootSecurityKeyRequired =>
      'Se necesita una clave de seguridad';

  @override
  String get secureBootSecurityKeysDontMatch =>
      'Las claves de seguridad no coinciden';

  @override
  String get showSecurityKey => 'Mostrar';

  @override
  String get hideSecurityKey => 'Ocultar';

  @override
  String get updatesOtherSoftwarePageTitle => 'Aplicaciones';

  @override
  String get updatesOtherSoftwarePageDescription =>
      '¿Qué aplicaciones le gustaría instalar para comenzar?';

  @override
  String get codecsAndDriversPageTitle => 'Optimice el equipo';

  @override
  String get codecsAndDriversPageDescription =>
      '¿Quiere instalar los programas privativos recomendados?';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return '$DISTRO no incluye programas privativos de forma predeterminada. La instalación de programas adicionales puede mejorar el desempeño del equipo.';
  }

  @override
  String get codecsAndDriversNvidiaNote => 'Tarjeta gráfica NVIDIA detectada';

  @override
  String get codecsAndDriversNvidiaBody =>
      'Para obtener el mejor rendimiento de las tarjetas gráficas NVIDIA, se recomienda encarecidamente instalar controladores adicionales.';

  @override
  String get fullInstallationTitle => 'Selección ampliada';

  @override
  String get fullInstallationSubtitle =>
      'Una selección de herramientas de oficina, utilidades y navegador web compatibles sin conexión.';

  @override
  String get minimalInstallationTitle => 'Selección predeterminada';

  @override
  String get minimalInstallationSubtitle =>
      'Solo lo esencial, el navegador web y las utilidades básicas.';

  @override
  String get otherOptions => 'Otras opciones';

  @override
  String get installThirdPartyTitle =>
      'Instalar controladores de terceros para gráficos y dispositivos de Wi-Fi, así como formatos multimedia adicionales';

  @override
  String get installThirdPartySubtitle =>
      'Este software está sujeto a los términos de licencia incluidos en su documentación. Algunos son privativos.';

  @override
  String get installDriversTitle =>
      'Instalar software de terceros para gráficos y dispositivos de Wi-Fi';

  @override
  String get installDriversSubtitle =>
      'Incluidos, entre otros, los controladores NVIDIA y similares';

  @override
  String get installCodecsTitle =>
      'Descargar e instalar compatibilidad para más formatos multimedia';

  @override
  String get installCodecsSubtitle =>
      'Incluidos, entre otros, MP3, MP4, MOV y similares';

  @override
  String get batteryWarning =>
      'El equipo no está enchufado a una fuente de alimentación.';

  @override
  String get offlineWarning => 'Actualmente no hay conexión';

  @override
  String get choosePassphraseHeader => 'Crear una contraseña';

  @override
  String get choosePassphraseBody =>
      'Necesita una contraseña para cifrar sus archivos. Se le solicitará su contraseña cada vez que encienda su ordenador.';

  @override
  String get choosePassphraseInfoHeader =>
      'Almacene su frase secreta en algún lugar seguro';

  @override
  String get choosePassphraseInfoBody =>
      'Si pierde su contraseña, perderá todos sus datos.';

  @override
  String get chooseOptionalPassphraseInfoHeader =>
      'Almacena su frase secreta y recupere la clave donde esté seguro';

  @override
  String get chooseOptionalPassphraseInfoBody =>
      'Si pierde su frase secreta, perderá todos sus datos. La frase de contraseña no remplaza la llave de recuperación o su contraseña de usuario.';

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
  String get passphraseTypePageHeader => 'Encryption PIN or passphrase';

  @override
  String get passphraseTypePageBody =>
      'By default, the computer’s Trusted Platform Module (TPM) will unlock the disk during startup. However, you can also require a PIN or a passphrase to further protect your data.';

  @override
  String get passphrasePagePassphraseEntropyBelowMin => 'Weak passphrase, make it longer or more complex';

  @override
  String get passphrasePagePassphraseEntropyBelowOptimal => 'Fair passphrase, make it longer or more complex for better security';

  @override
  String get passphrasePagePassphraseEntropyOptimal => 'Strong passphrase';

  @override
  String get passphrasePagePinEntropyBelowMin => 'Weak PIN, make it longer or less predictable';

  @override
  String get passphrasePagePinEntropyBelowOptimal => 'Fair PIN, make it longer or less predictable for better security';

  @override
  String get passphrasePagePinEntropyOptimal => 'PIN is long enough';

  @override
  String get installationTypeTitle => 'Configuración del disco';

  @override
  String installationTypeHeader(String DISTRO) {
    return '¿Cómo quieres instalar $DISTRO ?';
  }

  @override
  String installationTypeOSDetected(String os) {
    return 'Actualmente este equipo tiene $os instalado. ¿Qué le gustaría hacer?';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return 'Actualmente este equipo tiene $os1 y $os2 instalado. ¿Qué le gustaría hacer?';
  }

  @override
  String get installationTypeMultiOSDetected =>
      'Actualmente este equipo tiene varios sistemas operativos instalados. ¿Qué le gustaría hacer?';

  @override
  String get installationTypeNoOSDetected =>
      'Actualmente este equipo no tiene ningún sistema operativo detectado. ¿Qué le gustaría hacer?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'Borrar disco e instalar $DISTRO';
  }

  @override
  String get installationTypeEraseInfo =>
      'Todos los datos y particiones en el disco serán borradas, incluyendo el sistema operativo.';

  @override
  String get installationTypeAdvancedLabel => 'Mostrar opciones avanzadas…';

  @override
  String get installationTypeAdvancedTitle => 'Cifrado y sistema de archivo';

  @override
  String get installationTypeExperimental => 'Experimental';

  @override
  String get installationTypeNone => 'Sin cifrado';

  @override
  String get installationTypeNoneInfo =>
      'Es sistema de archivo estándar sin cifrado.';

  @override
  String get installationTypeNoneSelected => 'Nada seleccionado';

  @override
  String get installationTypeLVM => 'Utilice LVM sin cifrado';

  @override
  String get installationTypeLVMSelected => 'LVM seleccionado';

  @override
  String get installationTypeLVMEncryption => 'Cifrado con frase contraseña';

  @override
  String get installationTypeLVMEncryptionInfo =>
      'Necesitará introducir una frase secreta cada vez que encienda su equipo. Esto utiliza el cifrado LUKS con LVM.';

  @override
  String get installationTypeLVMEncryptionSelected =>
      'LVM y cifrado seleccionado';

  @override
  String get installationTypeEncryptInfo =>
      'Elegirá una clave de seguridad en el siguiente paso.';

  @override
  String get installationTypeZFS => 'Utilizar ZFS sin cifrado';

  @override
  String get installationTypeZFSEncryption =>
      'Cifrar con una frase contraseña utilizando ZFS';

  @override
  String get installationTypeZFSEncryptionInfo =>
      'El cifrado nativo con ZFS. Necesitará introducir una frase secreta cada vez que encienda su equipo.';

  @override
  String get installationTypeZFSSelected => 'ZFS seleccionado';

  @override
  String get installationTypeZFSEncryptionSelected =>
      'ZFS y cifrado seleccionados';

  @override
  String get installationTypeTPM => 'Utilizar cifrado con backend en hardware';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return '<a href=\"$url\">Lea sobre el cifrado de TPM</a> antes de elegir esta opción. Esto puede no funcionar con su hardware o publicaciones futuras de la $DISTRO.';
  }

  @override
  String get installationTypeTPMSelected => 'TPM seleccionado';

  @override
  String installationTypeReinstall(String os) {
    return 'Borrar $os y reinstalar';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">Atención:</font> esto eliminará todos sus programas, documentos, fotos, música y cualquier otro archivo de $os.';
  }

  @override
  String installationTypeAlongside(String product, String os) {
    return 'Instalar $product junto a $os';
  }

  @override
  String installationTypeAlongsideDual(String product, String os1, String os2) {
    return 'Instalar $product junto a $os1 y $os2';
  }

  @override
  String installationTypeAlongsideMulti(String product) {
    return 'Instalar $product junto a sistemas operativos existentes';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return 'Instalar $product junto a otras particiones';
  }

  @override
  String installationTypeAlongsideInfo(String product) {
    return 'Seleccione una partición para redimensionar y crear espacio para $product. Puede elegir su sistema operativo durante el arranque.';
  }

  @override
  String installationTypeEraseAndInstall(String os, String product) {
    return 'Elimine $os e instale $product';
  }

  @override
  String installationTypeEraseAndInstallInfo(String os) {
    return 'Todos los archivos y datos desde la instalación del $os existente serán borrados permanentemente.';
  }

  @override
  String get installationTypeManual => 'Instalación manual';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'Para usuarios avanzados que buscan configuraciones de disco personalizadas.';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'Borrar el disco e instalar $DISTRO';
  }

  @override
  String get selectGuidedStorageInfo =>
      'Empiece desde cero en el disco seleccionado.';

  @override
  String get selectGuidedStorageDriveDropdownLabel => 'Seleccione la unidad:';

  @override
  String get selectGuidedStoragePartitionDropdownLabel =>
      'Seleccione la partición:';

  @override
  String get selectGuidedStorageInfoLabel => 'Se utilizará todo el disco:';

  @override
  String get selectGuidedStorageInstallNow => 'Instalar ahora';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return 'Elija dónde instalar $DISTRO';
  }

  @override
  String get installAlongsideSpaceDivider =>
      'Asigne el espacio en disco arrastrando el divisor siguiente:';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return 'Hay $num particiones más pequeñas ocultas. Use la <a href=\"$url\">herramienta de partición avanzada</a> para un mayor control';
  }

  @override
  String get installAlongsideResizePartition => 'Redimensionar partición';

  @override
  String get installAlongsideAllocateSpace => 'Asignar espacio';

  @override
  String get installAlongsideFiles => 'Archivos';

  @override
  String get installAlongsidePartition => 'Partición:';

  @override
  String get installAlongsideSize => 'Tamaño:';

  @override
  String get installAlongsideAvailable => 'Disponible:';

  @override
  String get allocateDiskSpace => 'Particionamiento manual';

  @override
  String get allocateDiskSpaceInvalidMountPointSlash =>
      'Los puntos de montaje deben empezar por \"/\"';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace =>
      'Los puntos de montaje no pueden contener espacios';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(
      String mountpoint, String format) {
    return '$format no es un sistema de ficheros compatible con $mountpoint';
  }

  @override
  String get diskHeadersDevice => 'Dispositivo';

  @override
  String get diskHeadersType => 'Tipo';

  @override
  String get diskHeadersMountPoint => 'Punto de montaje';

  @override
  String get diskHeadersSize => 'Tamaño';

  @override
  String get diskHeadersUsed => 'Usado';

  @override
  String get diskHeadersSystem => 'Sistema';

  @override
  String get diskHeadersFormat => 'Formato';

  @override
  String get freeDiskSpace => 'Espacio libre';

  @override
  String get newPartitionTable => 'Nueva tabla de particiones';

  @override
  String get newPartitionTableConfirmationTitle => 'Nueva partición vacía';

  @override
  String get newPartitionTableConfirmationMessage =>
      'La creación de una nueva tabla de particiones en un dispositivo completo eliminará todas sus particiones actuales. Esta operación puede deshacerse si es necesario.';

  @override
  String get tooManyPrimaryPartitions => 'Demasiadas particiones primarias';

  @override
  String get partitionLimitReached => 'Límite alcanzado';

  @override
  String get bootLoaderDevice =>
      'Dispositivo donde instalar el cargador de arranque';

  @override
  String get partitionCreateTitle => 'Crear partición';

  @override
  String get partitionEditTitle => 'Editar partición';

  @override
  String get partitionSizeLabel => 'Tamaño:';

  @override
  String get partitionTypeLabel => 'Tipo de la partición nueva:';

  @override
  String get partitionTypePrimary => 'Primaria';

  @override
  String get partitionTypeLogical => 'Lógica';

  @override
  String get partitionLocationLabel => 'Ubicación de la partición nueva:';

  @override
  String get partitionLocationBeginning => 'Inicio de este espacio';

  @override
  String get partitionLocationEnd => 'Fin de este espacio';

  @override
  String get partitionFormatLabel => 'Utilizada como:';

  @override
  String get partitionFormatNone => 'Dejar sin formatear';

  @override
  String partitionFormatKeep(String format) {
    return 'Dejar formateado como $format';
  }

  @override
  String get partitionErase => 'Formatear la partición';

  @override
  String get partitionMountPointLabel => 'Punto de montaje:';

  @override
  String get confirmPageTitle => 'Listo para instalar';

  @override
  String get confirmHeader => 'Revise sus elecciones';

  @override
  String get confirmDiskEncryptionLVM => 'LUKS (LVM)';

  @override
  String get confirmDiskEncryptionZFS => 'LUKS (ZFS)';

  @override
  String get confirmDiskEncryptionTPM => 'TPM';

  @override
  String get confirmDiskEncryptionNone => 'Ninguna';

  @override
  String get confirmDevicesTitle => 'Dispositivos';

  @override
  String get confirmEntryApplications => 'Aplicaciones';

  @override
  String get confirmEntryDiskSetup => 'Tipo de instalación';

  @override
  String get confirmEntryDiskEncryption => 'Cifrado del disco';

  @override
  String get confirmEntryInstallationDisk => 'Disco de instalación';

  @override
  String get confirmEntryProprietarySoftware => 'Software propietario';

  @override
  String get confirmSectionGeneralTitle => 'General';

  @override
  String get confirmSectionSecurityAndMoreTitle => 'Seguridad y más';

  @override
  String get confirmPartitionsTitle => 'Particiones';

  @override
  String get confirmPartitionTables =>
      'Las tablas de partición de los siguientes dispositivos se modifican:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmProprietarySoftwareCodecs => 'Códecs';

  @override
  String get confirmProprietarySoftwareCodecsDrivers =>
      'Códecs y controladores';

  @override
  String get confirmProprietarySoftwareDrivers => 'Controladores';

  @override
  String get confirmInstallButton => 'Instalar';

  @override
  String get confirmTableErased => 'Borrado';

  @override
  String get confirmTableUnchanged => 'No modificado';

  @override
  String confirmTableResized(String oldsize, String newsize) {
    return 'Redimensionado desde $oldsize hasta $newsize';
  }

  @override
  String confirmTableCreatedFormattedMounted(String format, String mountpoint) {
    return 'Creado y formateado como $format utilizado para $mountpoint';
  }

  @override
  String confirmTableFormattedMounted(String format, String mountpoint) {
    return 'Formateado como $format utilizado para $mountpoint';
  }

  @override
  String confirmTableMounted(String mountpoint) {
    return 'Utilizado para $mountpoint';
  }

  @override
  String confirmTableFormatted(String format) {
    return 'Formateado como $format';
  }

  @override
  String get installationCompleteTitle => 'Finalizó la instalación';

  @override
  String readyToUse(String system) {
    return '$system está instalado y listo para usarse';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system** se ha copiado en el disco';
  }

  @override
  String restartInto(String system) {
    return 'Reiniciar en $system';
  }

  @override
  String get restartWarningBody =>
      'Reinicie para completar la instalación o continuar las pruebas.\nLos cambios que realice no se guardarán.';

  @override
  String get rebootToConfigureWarning =>
      'Debe reiniciar el ordenador para continuar con el proceso de instalación.';

  @override
  String get shutdown => 'Apagar';

  @override
  String get restartNow => 'Reiniciar ahora';

  @override
  String get continueTesting => 'Continuar probando';

  @override
  String get bitlockerInfoTitle => 'BitLocker detectado';

  @override
  String get bitlockerInfoDescription =>
      'Una o más particiones están cifradas con BitLocker.';

  @override
  String get bitlockerInfoDisable =>
      'Para instalar junto a Windows, desactive BitLocker en Windows.';

  @override
  String get bitlockerInfoRecovery =>
      'Windows puede solicitar claves de recuperación en el arranque tras la instalación.';

  @override
  String bitlockerInfoInstructions(String url) {
    return 'Para instrucciones, visite la <a href=\"$url\">Guía de BitLocker</a>.';
  }

  @override
  String get bitlockerWarningTitle =>
      'Puede perder todos sus datos sin las claves de recuperación de BitLocker';

  @override
  String get restartComputer => 'Reiniciar equipo';

  @override
  String get restartComputerTitle => '¿Reiniciar equipo?';

  @override
  String get restartIntoWindows => 'Reiniciar en Windows';

  @override
  String get restartIntoWindowsTitle => '¿Quiere reiniciar en Windows?';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return '¿Confirma que quiere reiniciar el equipo? Deberá retomar el instalador de $DISTRO posteriormente para que $DISTRO termine de instalarse.';
  }

  @override
  String installationSlidesTitle(String RELEASE) {
    return 'Le damos la bienvenida a $RELEASE';
  }

  @override
  String get installationSlidesAvailable => 'Disponible:';

  @override
  String get installationSlidesIncluded => 'Incluido:';

  @override
  String get installationSlidesWelcomeTitle =>
      'Rápido, gratuito y lleno de nuevas funciones';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return 'La última versión de $DISTRO hace que la informática sea más fácil que nunca.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'Tanto si eres desarrollador, creador, jugador o administrador, en $RELEASE encontrarás nuevas herramientas para mejorar tu productividad y mejorar tu experiencia.';
  }

  @override
  String get installationSlidesSoftwareTitle =>
      'Todas las aplicaciones que necesitas';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'Instala, gestiona y actualiza todas tus aplicaciones en Ubuntu Software, incluyendo miles de aplicaciones tanto de Snap Store como del archivo $DISTRO.';
  }

  @override
  String get installationSlidesDevelopmentTitle =>
      'Desarrolla con lo mejor del código abierto';

  @override
  String installationSlidesDevelopmentBody(String DISTRO) {
    return '$DISTRO es la estación de trabajo ideal para el desarrollo web o de aplicaciones, ciencia de datos e IA/ML, así como para operaciones de desarrollo y administración. Todas las versiones de $DISTRO incluyen las cadenas de herramientas más recientes y son compatibles con los principales IDE.';
  }

  @override
  String get installationSlidesCreativityTitle => 'Potencia tu creatividad';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return 'Si eres un animador, diseñador, creador de vídeo o desarrollador de juegos, es fácil trasladar tus flujos de trabajo a $DISTRO gracias a la compatibilidad con software y aplicaciones de código abierto y estándar del sector.';
  }

  @override
  String get installationSlidesGamingTitle => 'Ideal para jugar';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return '$DISTRO es compatible con los últimos controladores de NVIDIA y Mesa para mejorar el rendimiento y la compatibilidad. Miles de títulos de Windows se reproducen perfectamente en $DISTRO a través de aplicaciones como Steam sin necesidad de configuración adicional.';
  }

  @override
  String get installationSlidesSecurityTitle => 'Privado y seguro';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return '$DISTRO proporciona todas las herramientas que necesitas para mantenerte privado y seguro en Internet. Con firewall y VPN incorporados y una serie de aplicaciones centradas en la privacidad para garantizar el control total de sus datos.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return 'Todas las versiones $DISTRO LTS vienen con cinco años de parches de seguridad incluidos, que se extienden a diez años con una suscripción a Ubuntu Pro.';
  }

  @override
  String get installationSlidesProductivityTitle => 'Aumente su productividad';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return '$DISTRO Escritorio incluye LibreOffice, un conjunto de aplicaciones de código abierto compatibles con Microsoft Office para documentos, hojas de cálculo y presentaciones. También dispone de conocidas herramientas de colaboración.';
  }

  @override
  String get installationSlidesAccessibilityTitle => 'Acceso para todos';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return 'En el corazón de la filosofía de $DISTRO reside la creencia de que la informática es para todas las personas. Las herramientas avanzadas de accesibilidad y las opciones de idioma, colores y tamaño del texto hacen que la computación con $DISTRO sea sencilla, sea quien sea y esté donde esté.';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'Lector de pantalla Orca';

  @override
  String get installationSlidesAccessibilityLanguages =>
      'Compatibilidad lingüística';

  @override
  String get installationSlidesSupportTitle => 'Ayuda y asistencia';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return 'La documentación oficial de $DISTRO está disponible tanto en línea como a través del icono Ayuda del dock.';
  }

  @override
  String get installationSlidesSupportCommunity =>
      'En Ask Ubuntu encontrará preguntas y respuestas sobre varios aspectos del sistema, y Ubuntu Discourse contiene guías y espacios de debate para usuarios nuevos y experimentados.';

  @override
  String get installationSlidesSupportEnterprise =>
      'Para entornos empresariales, Canonical ofrece asistencia comercial para facilitar la instalación y gestión segura de Ubuntu en su lugar de trabajo.';

  @override
  String get installationSlidesSupportResources => 'Recursos útiles:';

  @override
  String get installationSlidesSupportDocumentation => 'Documentación oficial';

  @override
  String get installationSlidesSupportUbuntuPro =>
      'Asistencia 24/7 de nivel empresarial con Ubuntu Pro';

  @override
  String get copyingFiles => 'Copiando archivos…';

  @override
  String get installingSystem => 'Instalando el sistema…';

  @override
  String get configuringSystem => 'Configurando el sistema…';

  @override
  String get installationFailed => 'Falló la instalación';

  @override
  String get notEnoughDiskSpaceTitle => 'No hay suficiente espacio en el disco';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return 'No hay suficiente espacio en disco para instalar $DISTRO';
  }

  @override
  String notEnoughDiskSpaceBody(String DISTRO) {
    return 'El disco seleccionado no tiene suficiente espacio en disco para instalar $DISTRO. Salga del instalador para liberar espacio o seleccione otro disco.';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'Disponible:';

  @override
  String get notEnoughDiskSpaceRequired => 'Requerido:';

  @override
  String get refreshPageTitle => 'Actualización disponible';

  @override
  String get refreshHeader =>
      'Existe una actualización disponible para el instalador';

  @override
  String get refreshUpdateNow => 'Actualizar ahora';

  @override
  String get refreshInfo =>
      'Actualice a la última versión para mejorar la fiabilidad y obtener más funciones.';

  @override
  String get refreshReady => 'Actualización preparada';

  @override
  String refreshCurrent(String snap, String version) {
    return 'La versión actual de $snap es $version.';
  }

  @override
  String refreshInstall(String version) {
    return 'Actualizar a la versión $version';
  }

  @override
  String refreshUpToDate(String version) {
    return 'La versión actual $version está actualizada.';
  }

  @override
  String refreshUpdating(String snap) {
    return 'Actualizando $snap...';
  }

  @override
  String get refreshRestart =>
      'Cierre el instalador y vuelva a iniciarlo para continuar';

  @override
  String get refreshCloseLabel => 'Cerrar instalador';

  @override
  String refreshSnapPrerequisites(String snap) {
    return 'Comprobando cumplimento de prerrequisitos de $snap…';
  }

  @override
  String refreshSnapRefresh(String snap) {
    return 'Actualizando $snap…';
  }

  @override
  String refreshSnapCheckRerefresh(String snap) {
    return 'Comprobando la actualización $snap...';
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
    return 'Deteniendo los servicios $snap...';
  }

  @override
  String refreshSnapRemoveAliases(String snap) {
    return 'Eliminando el alias $snap...';
  }

  @override
  String refreshSnapUnlink(String snap) {
    return 'Desvinculando $snap...';
  }

  @override
  String refreshSnapUpdateAssets(String snap) {
    return 'Los artículos se están actualizando $snap...';
  }

  @override
  String refreshSnapUpdateKernelCommandLine(String snap) {
    return 'Actualizando la línea de comandos del kernel $snap ...';
  }

  @override
  String refreshSnapCopyData(String snap) {
    return 'Copiando los datos $snap...';
  }

  @override
  String refreshSnapSetupProfiles(String snap) {
    return 'Configurando los perfiles de seguridad $snap...';
  }

  @override
  String refreshSnapLink(String snap) {
    return 'Enlazando $snap...';
  }

  @override
  String refreshSnapAutoConnect(String snap) {
    return 'Conectar $snap las conexiones y dispositivos...';
  }

  @override
  String refreshSnapSetAutoAliases(String snap) {
    return 'Estableciendo los alias automáticos $snap...';
  }

  @override
  String refreshSnapSetupAliases(String snap) {
    return 'Configurando los alias $snap...';
  }

  @override
  String refreshSnapStartServices(String snap) {
    return 'Iniciando los servicios $snap...';
  }

  @override
  String refreshSnapCleanup(String snap) {
    return 'Limpiando $snap...';
  }

  @override
  String get recoveryKeyTitle => 'Clave de recuperación para el TPM';

  @override
  String get recoveryKeyTitleBadgeLabel => 'Important';

  @override
  String get recoveryKeyHeader => 'Obtenga una clave de recuperación';

  @override
  String get recoveryKeyInfoHeader =>
      'Puede perder todos sus datos sin una clave de recuperación';

  @override
  String get recoveryKeyTextFieldLabel => 'Recovery key';

  @override
  String get recoveryKeyStorageAdvice =>
      'Almacene la clave de recuperación donde sea seguro. Utilícela para cifrar el disco en caso de ciertos cambios del sistema. Por ejemplo, puede necesitarlo si cambia los componentes en su equipo o actualice el firmware.';

  @override
  String get recoveryKeyConfirmation =>
      'Comprendo que puedo perder todos mis datos si no tengo una clave de recuperación';

  @override
  String get recoveryKeyLinkLabel => 'Saber más';

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
    return 'Analiza el código QR o introduzca el código a continuación en <a href=\"https://$url\">$url</a>';
  }

  @override
  String get landscapePageTitle => 'Instalación automática';

  @override
  String get landscapeHeader => 'Acceder a Landscape';

  @override
  String get landscapeDomainHeader =>
      'Introduzca el dominio de Landscape (FQDN)';

  @override
  String get landscapeDomainHintText => 'Dominio Landscape (FQDN)';

  @override
  String get landscapeDomainInstructions =>
      'Proporcione su dominio de Landscape de la organización para acceder y obtener un archivo de auto-instalación. Puede obtener es FQDN desde su proveedor IT.';

  @override
  String get landscapeDomainTextField => 'Dominio Landscape (FQDN)';

  @override
  String get next => 'Siguiente';

  @override
  String get landscapeDomainInvalidDomainWarning =>
      'Dominio no válido, compruebe o contacte con su mantenimiento de IT';

  @override
  String get landscapeDomainNoInternetTitleWarning =>
      'Conecte a Internet para continuar';

  @override
  String get landscapeDomainNoInternetDescriptionWarning =>
      'Internet es necesario para obtener el archivo autoinstall desde Landscape';

  @override
  String get landscapeCodeExpiredWarning =>
      'Código caducado, inténtelo de nuevo';

  @override
  String get landscapeLoginFailedWarning =>
      'Acceso erróneo, inténtelo de nuevo';

  @override
  String get landscapeErrorPageTitle =>
      'Instalación automática no disponible para su cuenta';

  @override
  String get landscapeErrorPageBody =>
      'Contacte con su mantenimiento IT o intente una opción de instalación diferente.';

  @override
  String landscapeErrorPageCode(String code) {
    return 'Código de error: $code';
  }

  @override
  String get landscapeConfirmPageSuccessInfoTitle =>
      'Ubuntu instalará con la configuración proporcionada por su organización';

  @override
  String get landscapeConfirmPageSuccessInfoContent =>
      'Puede revisar el archivo autoinstall importado desde Landscape a continuación.';
}
