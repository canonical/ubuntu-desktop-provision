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
  String get autoinstallErrorMessage =>
      'A command in the autoinstall file failed to run during installation.';

  @override
  String get autoinstallErrorInstructions =>
      'You will need to restart the installation. Check the autoinstall file, choose a different installation type, or contact your IT support.';

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
      'Necesita una contraseña para cifrar sus archivos. Se le solicitará su contraseña cada vez que encienda su ordenador. Esta contraseña es distinta a la que usa para iniciar sesión con su usuario.';

  @override
  String get choosePassphraseInfoHeader =>
      'Asegúrese de almacenar su frase secreta en algún lugar seguro';

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
  String get passphrasePageTitle => 'Encriptación';

  @override
  String get passphrasePageHeaderPassphrase =>
      'Establecer una contraseña de encriptación';

  @override
  String get passphrasePageHeaderPin => 'Establecer un PIN de encriptación';

  @override
  String get passphrasePageBodyPassphrase =>
      'Cada vez que encienda el ordenador, deberá introducir la contraseña. Esta contraseña es distinta a la que usa para iniciar sesión como usuario. Puede cambiarla más tarde, pero no desactivarla. Si olvida la contraseña, podrá recuperar el acceso al disco usando la clave de recuperación.';

  @override
  String get passphrasePageBodyPin =>
      'Cada vez que encienda el ordenador, deberá introducir el PIN. Este PIN es distinto a su contraseña de usuario. Podrá cambiarlo más tarde, pero no desactivarlo. Si olvida su PIN, puede recuperar el acceso al disco usando la clave de recuperación.';

  @override
  String get passphrasePageChoosePassphraseHint => 'Contraseña';

  @override
  String get passphrasePageConfirmPassphraseHint => 'Confirme la contraseña';

  @override
  String get passphrasePageRequiredPassphrase => 'Se necesita una contraseña';

  @override
  String get passphrasePageMismatchPassphrase => 'Las contraseñas no coinciden';

  @override
  String get passphrasePageChoosePinHint => 'PIN';

  @override
  String get passphrasePageConfirmPinHint => 'Confirme el PIN';

  @override
  String get passphrasePageRequiredPin => 'Se necesita un PIN';

  @override
  String get passphrasePageMismatchPin => 'Los PIN no coinciden';

  @override
  String get passphraseTypePassphraseTileTitle => 'Necesitar una contraseña';

  @override
  String get passphraseTypePassphraseTileSubTitle =>
      'Lo más seguro. Cada vez que encienda el ordenador, tendrá que introducir una contraseña más larga.';

  @override
  String get passphraseTypePinTileTitle => 'Necesitar un PIN';

  @override
  String get passphraseTypePinTileSubTitle =>
      'Más seguro. Se debe introducir un PIN numérico cada vez que encienda el ordenador.';

  @override
  String get passphraseTypeNoneTileTitle =>
      'Desbloquear el disco automáticamente';

  @override
  String get passphraseTypePageHeader => 'Seguridad adicional';

  @override
  String get passphraseTypePageBody =>
      'Por defecto, el módulo de plataforma de confianza del ordenador (TPM) desbloqueará el disco durante el arranque. También tiene opciones para proteger sus datos de forma adicional.';

  @override
  String get passphrasePagePassphraseEntropyBelowMin =>
      'Contraseña débil, hágala más larga o más compleja';

  @override
  String get passphrasePagePassphraseEntropyBelowOptimal =>
      'Contraseña suficiente, hágala más larga o más compleja para mayor seguridad';

  @override
  String get passphrasePagePassphraseEntropyOptimal => 'Contraseña fuerte';

  @override
  String get passphrasePagePinEntropyBelowMin =>
      'PIN débil, hágalo más largo o menos predecible';

  @override
  String get passphrasePagePinEntropyBelowOptimal =>
      'PIN suficiente, hágalo más largo o menos predecible para mayor seguridad';

  @override
  String get passphrasePagePinEntropyOptimal =>
      'La longitud del PIN es suficiente';

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
  String get installationTypeAdvancedLabel => 'Opciones avanzadas';

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
  String installationTypeLVMEncryptionInfoResolute(String advancedHint) {
    return 'Necesitará introducir una frase de paso cada vez que encienda su equipo. $advancedHint';
  }

  @override
  String get installationTypeLVMEncryptionInfo2 =>
      'Esto utiliza LVM con cifrado LUKS.';

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
  String get installationTypeTPMInfoResolute =>
      'El disco se desbloqueará automáticamente durante el arranque.';

  @override
  String get installationTypeTPMInfoUnavailable =>
      'No disponible en este equipo.';

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
  String get restartInstaller => 'Restart installer';

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
  String installationSlidesDevelopmentBody(String DISTRO, Object OS) {
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
  String get nextSlideSemanticLabel => 'Siguiente diapositiva';

  @override
  String get previousSlideSemanticLabel => 'Anterior diapositiva';

  @override
  String get playSlideshowSemanticLabel => 'Presentación de diapositivas';

  @override
  String get pauseSlideshowSemanticLabel => 'Pausar presentación';

  @override
  String get toggleLogsSemanticLabel =>
      'Mostrar u ocultar registros de instalación';

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
  String get recoveryKeyTitle => 'Clave de recuperación';

  @override
  String get recoveryKeyTitleBadgeLabel => 'Importante';

  @override
  String get recoveryKeyHeader => 'Guarda tu clave de recuperación';

  @override
  String get recoveryKeyInfoHeader =>
      'Puede perder todos sus datos sin una clave de recuperación';

  @override
  String get recoveryKeyTextFieldLabel => 'Clave de recuperación';

  @override
  String get recoveryKeyStorageAdvice =>
      'Deberá proporcionar esta clave de recuperación si el descifrado falla durante el inicio. Sin la clave, perderá el acceso a todos sus datos. Guárdela en un lugar seguro, como un gestor de contraseñas.';

  @override
  String get recoveryKeyConfirmation =>
      'He guardado mi clave de recuperación en un lugar seguro';

  @override
  String get recoveryKeyLinkLabel => 'Saber más';

  @override
  String get recoveryKeySaveToFileLabel => 'Guardar a un archivo';

  @override
  String get recoveryKeyShowQrCodeLabel => 'Mostrar código QR';

  @override
  String recoveryKeyQrDialogTitle(String DISTRO) {
    return '$DISTRO Escritorio - Clave de recuperación';
  }

  @override
  String get recoveryKeyQrDialogBody =>
      'Escanee el código QR para copiar la clave de recuperación y guardarla en un lugar seguro, como un gestor de contraseñas. También puede tomarle una foto para usarlo más tarde.';

  @override
  String get recoveryKeyClipboardNotifiaction => 'Copiada al portapapeles';

  @override
  String get recoveryKeyExceptionFileSystemTitle =>
      'No se ha guardado la clave de recuperación';

  @override
  String get recoveryKeyExceptionDisallowedPathTitle =>
      'El archivo de clave de recuperación no se puede guardar en una ubicación temporal';

  @override
  String get recoveryKeyExceptionUnknownTitle => 'Error desconocido';

  @override
  String get recoveryKeyExceptionFileSystemBody =>
      'No tiene permisos de escritura en esa carpeta. Inténtelo en otra ruta o use otro método.';

  @override
  String get recoveryKeyExceptionDisallowedPathBody =>
      'Pruebe una lugar diferente, como una unidad extraíble, o use otro método.';

  @override
  String get recoveryKeyFilePickerTitle =>
      'Guardar archivo de clave de recuperación';

  @override
  String get recoveryKeyFilePickerFilter => 'Archivos de texto';

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

  @override
  String get successIconSemanticLabel => 'Éxito';

  @override
  String get errorIconSemanticLabel => 'Error';

  @override
  String get closeIconSemanticLabel => 'Cerrar';

  @override
  String get maximizeIconSemanticLabel => 'Maximizar';

  @override
  String get minimizeIconSemanticLabel => 'Minimizar';

  @override
  String get tpmActionPageTitle =>
      'El cifrado con hardware en segundo plano no pudo ser habilitado';

  @override
  String get tpmActionBadgeLabel => 'Acción requerida';

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
    return 'Solution: $text';
  }

  @override
  String get tpmActionDocumentationLinkLabel => 'Enlace a la documentación';

  @override
  String get tpmActionErrorSupportLabel =>
      'Intente las soluciones a continuación, contacte con mantenimiento IT, o elija un método distinto del cifrado.';

  @override
  String get tpmActionErrorSupportSingleLabel =>
      'Try the solution below, contact IT support, or choose a different encryption method.';

  @override
  String get tpmActionErrorSupportNoActionLabel =>
      'Contacte con el mantenimiento IT, o elija un método diferente de cifrado.';

  @override
  String get tpmActionErrorKindInternal => 'Interno';

  @override
  String get tpmActionErrorKindShutdownRequired => 'Apagado Requerido';

  @override
  String get tpmActionErrorKindRebootRequired => 'Rearranque Requerido';

  @override
  String get tpmActionErrorKindUnexpectedAction => 'Acción Inesperada';

  @override
  String get tpmActionErrorKindMissingArgument => 'Argumento Ausente';

  @override
  String get tpmActionErrorKindInvalidArgument => 'Argumento No Válido';

  @override
  String get tpmActionErrorKindActionFailed => 'Acción Incorrecta';

  @override
  String get tpmActionErrorKindRunningInVm =>
      'El entorno actual es una máquina virtual.';

  @override
  String get tpmActionErrorKindSystemNotEfi =>
      'Este equipo está utilizando firmware más antiguo (BIOS heredado) que no es compatible con este método de cifrado.';

  @override
  String get tpmActionErrorKindEfiVariableAccess =>
      'Hay un tema con este ajuste del firmware en el equipo.';

  @override
  String get tpmActionErrorKindNoSuitableTpm2Device =>
      'Este equipo no tiene el hardware de seguridad requerido (TPM 2.0) para este método de cifrado.';

  @override
  String get tpmActionErrorKindTpmDeviceDisabled =>
      'Este TPM del equipo está inhabilitado.';

  @override
  String get tpmActionErrorKindTpmHierarchiesOwned =>
      'Este TPM del equipo ya está en uso por otro sistema u otra aplicación.';

  @override
  String get tpmActionErrorKindTpmDeviceLockoutLockedOut =>
      'Este TPM del equipo actualmente está bloqueado.';

  @override
  String get tpmActionErrorKindInsufficientTpmStorage =>
      'Este TPM del equipo no tiene suficiente almacén disponible.';

  @override
  String get tpmActionErrorKindUnsupportedPlatform =>
      'Este equipo no es compatible con cifrado por hardware en segundo plano.';

  @override
  String get tpmActionErrorKindUefiDebuggingEnabled =>
      'Depuración de UEFI está habilitada';

  @override
  String get tpmActionErrorKindInsufficientDmaProtection =>
      'Este equipo está ausente en una característica de seguridad requerida (protección DMA).';

  @override
  String get tpmActionErrorKindNoKernelIommu =>
      'A este equipo le falta una característica de seguridad requerida (kernel IOMMU).';

  @override
  String get tpmActionErrorKindHostSecurity =>
      'Hay un asunto con este ajuste de seguridad del equipo.';

  @override
  String get tpmActionErrorKindSysPrepApplicationsPresent =>
      'Hay software ejecutándose al inicio que puede prevenir una conexión segura con el TPM del equipo.';

  @override
  String get tpmActionErrorKindAbsolutePresent =>
      'Módulo de Persistencia Absoluta está habilitada en este equipo.';

  @override
  String get tpmActionErrorKindInvalidSecureBootMode =>
      'El arranque seguro está inhabilitado en este equipo o no está configurado en modo \"deployed\".';

  @override
  String get tpmActionErrorKindWeakSecureBootAlgorithmDetected =>
      'Alguno de los certificados verifican componentes en este equipo están obsoletos o utilizan protección débil.';

  @override
  String get tpmActionErrorKindPreOsSecureBootAuthByEnrolledDigests =>
      'Este equipo está utilizando un listado de permiso manual para verificar el software al arrancar.';

  @override
  String get tpmActionErrorKindAddonDriversPresent =>
      'Unidades Añadidas Presentes';

  @override
  String get tpmActionErrorKindGenericTpm =>
      'Hay un asunto con este TPM del equipo.';

  @override
  String get tpmActionErrorKindGenericFirmware =>
      'Hay un asunto con este firmware del equipo.';

  @override
  String get tpmActionFixActionReboot => 'Reiniciar';

  @override
  String get tpmActionFixActionShutdown => 'Apagar';

  @override
  String get tpmActionFixActionRebootToFwSettings =>
      'Reiniciar en los ajustes del firmware';

  @override
  String get tpmActionFixActionRebootToFwSettingsInstructions =>
      'If firmware settings do not load automatically, restart and press the settings key repeatedly during startup (commonly F2, F10 or Delete).';

  @override
  String get tpmActionFixActionRebootToFwSettingsInsufficientDmaProtection =>
      'Habilitar manualmente la protección DMA';

  @override
  String get tpmActionFixActionRebootToFwSettingsInsufficientTpmStorage =>
      'Purgar TPM manualmente';

  @override
  String get tpmActionFixActionRebootToFwSettingsInvalidSecureBootMode =>
      'Habilitar arranque seguro manualmente';

  @override
  String get tpmActionFixActionRebootToFwSettingsNoKernelIommu =>
      'Habilitar protección DMA manualmente';

  @override
  String get tpmActionFixActionRebootToFwSettingsNoSuitablePcrBank =>
      'Habilitar bancos PCR manualmente';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmDeviceDisabled =>
      'Habilitar TPM manualmente';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmDeviceLockoutLockedOut =>
      'Purgar TPM manualmente';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmHierarchiesOwned =>
      'Purgar TPM manualmente';

  @override
  String get tpmActionFixActionRebootToFwSettingsAbsolutePresent =>
      'Inhabilitar Módulo de Persistencia Absoluta manualmente';

  @override
  String get tpmActionFixActionContactOem => 'Contacto OEM';

  @override
  String get tpmActionFixActionContactOsVendor =>
      'Contacto con Proveedor de SO';

  @override
  String get tpmActionFixActionEnableTpmViaFirmware =>
      'Habilitar TPM al reiniciar';

  @override
  String get tpmActionFixActionEnableAndClearTpmViaFirmware =>
      'Habilitar y purgar TPM al reiniciar';

  @override
  String get tpmActionFixActionClearTpmViaFirmware => 'Purgar TPM en reinicio';

  @override
  String get tpmActionFixActionClearTpm => 'Purgar TPM';

  @override
  String get tpmActionFixActionProceed => 'Ignorar';

  @override
  String get tpmActionFixActionRebootDescription =>
      'Reinicia el equipo para completar acciones anteriores.';

  @override
  String get tpmActionFixActionRebootTpmDeviceFailureDescription =>
      'Reiniciar el equipo puede reparar el defecto.';

  @override
  String get tpmActionFixActionShutdownDescription =>
      'Apagar el equipo para completar acciones anteriores.';

  @override
  String get tpmActionFixActionRebootToFwSettingsDescription =>
      'Puede hacer esto en sus ajustes del firmware del equipo.';

  @override
  String get tpmActionFixActionRebootToFwSettingsWithDocsDescription =>
      'Puede ser capaz de hacer esto en su ajustes del firmware del equipo. Compruebe la documentación del proveedor de CPU para guía.';

  @override
  String get tpmActionFixActionRebootToFwSettingsInvalidSecureBootModeHint =>
      'Check secure boot mode is set to \"deployed\".';

  @override
  String get tpmActionFixActionRebootToFwSettingsNoKernelIommuHint =>
      'This feature might be referred to as \"Virtualization Technology\", \"VT-d\" or \"AMD-Vi\".';

  @override
  String get tpmActionFixActionProceedDescription =>
      'Se hace caso omiso al asunto puede resultar en una instalación menos segura.';

  @override
  String get tpmActionRestartLabel => 'Reiniciar';

  @override
  String get tpmActionRestartAndEnableTpmLabel => 'Reiniciar y habilitar TPM';

  @override
  String get tpmActionRestartAndClearTpmLabel => 'Reiniciar y purgar TPM';

  @override
  String get tpmActionIgnoreAndContinueLabel => 'Ignorar y continuar';

  @override
  String get tpmActionFixActionClearTpmWarningTitle =>
      'Purgando el TPM borra todas las llaves de cifrado';

  @override
  String get tpmActionFixActionClearTpmWarningBody =>
      'Perderá el acceso a todos los datos en unidades cifradas para la cual no tenga llaves de recuperación. Además romperá otras características que dependen en el TPM, tales como autenticación y certificados.';

  @override
  String get tpmActionFixActionClearTpmConfirmationLabel =>
      'Yo comprendo las consecuencias de purga del TPM';

  @override
  String get tpmActionFixActionCaveatConfirm =>
      'Puede ser preguntado para confirmar esta acción al reiniciar.';

  @override
  String get tpmActionFixActionCaveatRetry =>
      'Entonces tendrá que reintentar la instalación desde el comienzo.';

  @override
  String get tpmActionErrorTitle => 'Esta solución ha fallado';

  @override
  String get tpmActionErrorDescription =>
      'Intente una solución diferente o contacte con el mantenimiento de IT';

  @override
  String get manualPartitioningWarningBody =>
      'Intente algo más. Puede además <a href=\"\">enviar un informe de error</a>.';
}
