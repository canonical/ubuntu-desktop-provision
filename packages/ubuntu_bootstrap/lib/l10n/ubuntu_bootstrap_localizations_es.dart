import 'ubuntu_bootstrap_localizations.dart';

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
  String get autoinstallTitle => 'Tipo de instalación';

  @override
  String autoinstallHeader(String DISTRO) {
    return '¿Cómo te gustaría instalar $DISTRO ?';
  }

  @override
  String get autoinstallInstructions => 'Introduzca la URL de autoinstall.yaml:';

  @override
  String get autoinstallInteractiveOption => 'Instalación interactiva';

  @override
  String get autoinstallInteractiveDescription => 'Para usuarios que quieran ser guiados paso a paso durante la instalación.';

  @override
  String get autoinstallAutomatedOption => 'Instalación automatizada';

  @override
  String get autoinstallAutomatedDescription => 'Para usuarios avanzados que tienen un archivo autoinstall.yaml para configuraciones del sistema consistentes y repetibles.';

  @override
  String get changeButtonText => 'Cambiar';

  @override
  String get quitButtonText => 'Salir de la instalación';

  @override
  String loadingPageTitle(String DISTRO) {
    return 'Bienvenido a $DISTRO';
  }

  @override
  String loadingHeader(String DISTRO) {
    return 'Preparando la $DISTRO…';
  }

  @override
  String get warningLabel => 'Advertencia:';

  @override
  String tryOrInstallTitle(String DISTRO) {
    return 'Prueba o instala $DISTRO';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return '¿Qué quieres hacer con $DISTRO ?';
  }

  @override
  String get tryOrInstallRepairOption => 'Reparar instalación';

  @override
  String get tryOrInstallRepairDescription => 'Al reparar se reinstalarán todos los programas instalados sin tocar los documentos ni la configuración.';

  @override
  String tryOption(String RELEASE) {
    return 'Probar $RELEASE';
  }

  @override
  String tryDescription(String RELEASE) {
    return 'Puede probar $RELEASE sin efectuar ningún cambio en su equipo.';
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
  String get rstHeader => 'Desactive RST para continuar';

  @override
  String rstDescription(String DISTRO) {
    return 'Este ordenador utiliza la tecnología Intel RST (Rapid Storage Technology). Es necesario desactivar RST en Windows antes de instalar $DISTRO.';
  }

  @override
  String rstInstructions(String url) {
    return 'Para obtener instrucciones, escanee el código QR en otro dispositivo o visite: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'Configurar Secure Boot';

  @override
  String get configureSecureBootDescription => 'Ha elegido instalar software de controladores de terceros. Esto requiere desactivar Secure Boot.\nPara ello, debe elegir una clave de seguridad ahora, e introducirla cuando se reinicie el sistema.';

  @override
  String get configureSecureBootOption => 'Configurar Secure Boot';

  @override
  String get chooseSecurityKey => 'Elija una clave de seguridad';

  @override
  String get confirmSecurityKey => 'Confirme la clave de seguridad';

  @override
  String get dontInstallDriverSoftwareNow => 'No instalar el software de controladores por ahora';

  @override
  String get dontInstallDriverSoftwareNowDescription => 'Puede instalarlo más tarde desde Software y Actualizaciones.';

  @override
  String get configureSecureBootSecurityKeyRequired => 'Se debe ingresar una clave de seguridad';

  @override
  String get secureBootSecurityKeysDontMatch => 'Las claves de seguridad no coinciden';

  @override
  String get showSecurityKey => 'Mostrar la clave de seguridad';

  @override
  String get hideSecurityKey => 'Ocultar';

  @override
  String get updatesOtherSoftwarePageTitle => 'Aplicaciones y actualizaciones';

  @override
  String get updatesOtherSoftwarePageDescription => '¿Qué aplicaciones le gustaría instalar para comenzar?';

  @override
  String get codecsAndDriversPageTitle => 'Optimizar tú ordenador';

  @override
  String get codecsAndDriversPageDescription => '¿Instalar el software propietario recomendado?';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return '$DISTRO no tiene software propietario de forma predeterminada. La instalación de software adicional puede mejorar el rendimiento de su ordenador.';
  }

  @override
  String get codecsAndDriversNvidiaNote => 'Tarjeta gráfica NVIDIA detectada';

  @override
  String get codecsAndDriversNvidiaBody => 'Para obtener el mejor rendimiento de las tarjetas gráficas NVIDIA, se recomienda encarecidamente instalar controladores adicionales.';

  @override
  String get fullInstallationTitle => 'Instalación completa';

  @override
  String get fullInstallationSubtitle => 'Una selección de herramientas de oficina, utilidades y navegador web compatibles sin conexión.';

  @override
  String get minimalInstallationTitle => 'Instalación predeterminada';

  @override
  String get minimalInstallationSubtitle => 'Sólo lo esencial, el navegador web y las utilidades básicas.';

  @override
  String get otherOptions => 'Otras opciones';

  @override
  String get installThirdPartyTitle => 'Instalar controladores de terceros para gráficos y dispositivos de Wi-Fi, así como formatos multimedia adicionales';

  @override
  String get installThirdPartySubtitle => 'Este software está sujeto a los términos de licencia incluidos en su documentación. Algunos son privativos.';

  @override
  String get installDriversTitle => 'Instalar software de terceros para gráficos y dispositivos de Wi-Fi';

  @override
  String get installDriversSubtitle => 'Incluidos, entre otros, los controladores NVIDIA y similares';

  @override
  String get installCodecsTitle => 'Descarga e instala un soporte para formatos multimedia adicionales';

  @override
  String get installCodecsSubtitle => 'Incluidos, entre otros, MP3, MP4, MOV y similares';

  @override
  String get batteryWarning => 'El ordenador no está conectado a una fuente de alimentación.';

  @override
  String get offlineWarning => 'Actualmente no está conectado';

  @override
  String get choosePassphraseTitle => 'Contraseña del disco';

  @override
  String get choosePassphraseHeader => 'Crear una contraseña';

  @override
  String get choosePassphraseBody => 'Necesita una contraseña para cifrar sus archivos. Se le solicitará su contraseña cada vez que encienda su ordenador.';

  @override
  String get choosePassphraseHint => 'Elige una contraseña';

  @override
  String get choosePassphraseConfirmHint => 'Verificar la contraseña';

  @override
  String get choosePassphraseRequired => 'Se requiere una contraseña';

  @override
  String get choosePassphraseMismatch => 'Las contraseña no coinciden';

  @override
  String get choosePassphraseInfoHeader => 'Asegúrate de guardar tu contraseña';

  @override
  String get choosePassphraseInfoBody => 'Si pierde su contraseña, perderá todos sus datos.';

  @override
  String get createPassphrase => 'Crear una contraseña';

  @override
  String get confirmPassphrase => 'Confirmar la contraseña';

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
  String get installationTypeMultiOSDetected => 'Actualmente este equipo tiene varios sistemas operativos instalados. ¿Qué le gustaría hacer?';

  @override
  String get installationTypeNoOSDetected => 'Actualmente este equipo no tiene ningún sistema operativo detectado. ¿Qué le gustaría hacer?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'Borrar disco e instalar $DISTRO';
  }

  @override
  String get installationTypeEraseInfo => 'Comience desde cero en el disco seleccionado.';

  @override
  String get installationTypeAdvancedLabel => 'Funciones avanzadas...';

  @override
  String get installationTypeAdvancedTitle => 'Características avanzadas';

  @override
  String get installationTypeExperimental => 'Experimental';

  @override
  String get installationTypeNone => 'Ninguno';

  @override
  String get installationTypeNoneSelected => 'Nada seleccionado';

  @override
  String get installationTypeLVM => 'Usar LVM';

  @override
  String get installationTypeLVMSelected => 'LVM seleccionado';

  @override
  String get installationTypeLVMEncryption => 'Utilice LVM y el cifrado';

  @override
  String get installationTypeLVMEncryptionSelected => 'LVM y cifrado seleccionado';

  @override
  String get installationTypeEncryptInfo => 'Elegirá una clave de seguridad en el siguiente paso.';

  @override
  String get installationTypeZFS => 'EXPERIMENTAL: Borrar disco y usar ZFS';

  @override
  String get installationTypeZFSEncryption => 'Borrar el disco y usar ZFS con cifrado';

  @override
  String get installationTypeZFSSelected => 'ZFS seleccionado';

  @override
  String get installationTypeZFSEncryptionSelected => 'ZFS y cifrado seleccionados';

  @override
  String get installationTypeTPM => 'EXPERIMENTAL: Activar el cifrado del disco completo por hardware';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return 'Esta es una característica experimental. Es posible que no funcione con el hardware de futuras versiones de $DISTRO. <a href=\"$url\">Lea sobre el cifrado TPM</a> antes de elegir esta opción.';
  }

  @override
  String get installationTypeTPMSelected => 'TPM seleccionado';

  @override
  String installationTypeReinstall(String os) {
    return 'Borrar $os y reinstalar';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">Advertencia:</font> Esto eliminará todos sus programas , documentos, fotos, música y cualquier otro archivo de $os.';
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
    return 'Instalar $product junto a estos';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return 'Instalar $product junto a otras particiones';
  }

  @override
  String get installationTypeAlongsideInfo => 'Se conservarán los documentos, la música y otros archivos personales. Puede elegir qué sistema operativo quiere iniciar cada vez que arranque el equipo.';

  @override
  String get installationTypeManual => 'Partición manual';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'Para usuarios avanzados que buscan configuraciones de disco personalizadas.';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'Borrar el disco e instalar $DISTRO';
  }

  @override
  String get selectGuidedStorageInfo => 'Empieza desde cero en el disco seleccionado.';

  @override
  String get selectGuidedStorageDriveDropdownLabel => 'Selecciona la unidad:';

  @override
  String get selectGuidedStoragePartitionDropdownLabel => 'Selecciona la partición:';

  @override
  String get selectGuidedStorageInfoLabel => 'Se utilizará todo el disco:';

  @override
  String get selectGuidedStorageInstallNow => 'Instalar ahora';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return 'Elige dónde instalar $DISTRO';
  }

  @override
  String get installAlongsideSpaceDivider => 'Asignar el espacio de la unidad arrastrando el divisor de abajo:';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return '$num particiones más pequeñas están ocultas, use la <a href=\"$url\">herramienta de partición avanzada</a> para un mayor control';
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
  String get allocateDiskSpaceInvalidMountPointSlash => 'Los puntos de montaje deben empezar por \"/\"';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace => 'Los puntos de montaje no pueden contener espacios';

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
  String get newPartitionTableConfirmationMessage => 'La creación de una nueva tabla de particiones en un dispositivo completo eliminará todas sus particiones actuales. Esta operación puede deshacerse si es necesario.';

  @override
  String get tooManyPrimaryPartitions => 'Demasiadas particiones primarias';

  @override
  String get partitionLimitReached => 'Límite alcanzado';

  @override
  String get bootLoaderDevice => 'Dispositivo donde instalar el cargador de arranque';

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
  String get confirmEntryDiskSetup => 'Configuración del disco';

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
  String get confirmPartitionTables => 'Las tablas de partición de los siguientes dispositivos se modifican:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmPartitionChanges => 'Se aplicarán los cambios siguientes a las particiones:';

  @override
  String confirmPartitionResize(String sysname, String oldsize, String newsize) {
    return 'partición <b>$sysname</b> redimensionada de <b>$oldsize</b> a <b>$newsize</b>';
  }

  @override
  String confirmPartitionFormatMount(String sysname, String format, String mount) {
    return 'partición <b>$sysname</b> formateada como <b>$format</b> utilizada para <b>$mount</b>';
  }

  @override
  String confirmPartitionFormat(String sysname, String format) {
    return 'partición <b>$sysname</b> formateada como <b>$format</b>';
  }

  @override
  String confirmPartitionMount(String sysname, String mount) {
    return 'partición <b>$sysname</b> utilizada para <b>$mount</b>';
  }

  @override
  String confirmPartitionCreate(String sysname) {
    return 'partición <b>$sysname</b> creada';
  }

  @override
  String get confirmProprietarySoftwareCodecs => 'Códecs';

  @override
  String get confirmProprietarySoftwareCodecsDrivers => 'Códecs y controladores';

  @override
  String get confirmProprietarySoftwareDrivers => 'Controladores';

  @override
  String get confirmInstallButton => 'Instalar';

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
  String get restartWarningBody => 'Reinicie para completar la instalación o continuar las pruebas.\nLos cambios que realice no se guardarán.';

  @override
  String get rebootToConfigureWarning => 'Debe reiniciar el ordenador para continuar con el proceso de instalación.';

  @override
  String get shutdown => 'Apagar';

  @override
  String get restartNow => 'Reiniciar ahora';

  @override
  String get continueTesting => 'Continuar probando';

  @override
  String get bitlockerTitle => 'BitLocker está activado';

  @override
  String get bitlockerHeader => 'Desactive BitLocker para continuar';

  @override
  String bitlockerDescription(String option) {
    return 'Este ordenador utiliza el cifrado BitLocker de Windows.\nDebe utilizar Windows para crear espacio libre o volver atrás y elegir \'$option\' para continuar.';
  }

  @override
  String bitlockerInstructions(String url) {
    return 'Para obtener instrucciones, escanee el código QR en otro dispositivo o visite: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get restartIntoWindows => 'Reiniciar en Windows';

  @override
  String get restartIntoWindowsTitle => '¿Reiniciar en Windows?';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return '¿Está seguro de que quieres reiniciar tú ordenador? Necesitas reiniciar la instalación de $DISTRO más tarde para finalizar la instalación de $DISTRO.';
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
  String get installationSlidesWelcomeTitle => 'Rápido, gratuito y lleno de nuevas funciones';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return 'La última versión de $DISTRO hace que la informática sea más fácil que nunca.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'Tanto si eres desarrollador, creador, jugador o administrador, en $RELEASE encontrarás nuevas herramientas para mejorar tu productividad y mejorar tu experiencia.';
  }

  @override
  String get installationSlidesSoftwareTitle => 'Todas las aplicaciones que necesitas';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'Instala, gestiona y actualiza todas tus aplicaciones en Ubuntu Software, incluyendo miles de aplicaciones tanto de Snap Store como del archivo $DISTRO.';
  }

  @override
  String get installationSlidesDevelopmentTitle => 'Desarrolla con lo mejor del código abierto';

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
  String get installationSlidesProductivityTitle => 'Aumenta tu productividad';

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
  String get installationSlidesAccessibilityLanguages => 'Compatibilidad lingüística';

  @override
  String get installationSlidesSupportTitle => 'Ayuda y soporte';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return 'La documentación oficial de $DISTRO está disponible tanto en línea como a través del icono Ayuda del dock.';
  }

  @override
  String get installationSlidesSupportCommunity => 'Ask Ubuntu cubre una gama de preguntas y respuestas. Ubuntu Discourse proporciona guías y discusiones para usuarios nuevos y experimentados.';

  @override
  String get installationSlidesSupportEnterprise => 'Para los usuarios de empresa, Canonical ofrece soporte comercial para facilitar la incorporación y gestión segura de Ubuntu en el lugar de trabajo.';

  @override
  String get installationSlidesSupportResources => 'Recursos útiles:';

  @override
  String get installationSlidesSupportDocumentation => 'Documentación oficial';

  @override
  String get installationSlidesSupportUbuntuPro => 'Soporte 24/7 de nivel empresarial con Ubuntu Pro';

  @override
  String get copyingFiles => 'Copiando archivos…';

  @override
  String get installingSystem => 'Instalando el sistema…';

  @override
  String get configuringSystem => 'Configurando el sistema…';

  @override
  String get installationFailed => 'Falló la instalación';

  @override
  String get notEnoughDiskSpaceTitle => 'Espacio insuficiente';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return 'No hay suficiente espacio en disco para instalar $DISTRO';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'Disponible:';

  @override
  String get notEnoughDiskSpaceRequired => 'Requerido:';

  @override
  String get refreshPageTitle => 'Actualización disponible';

  @override
  String get refreshHeader => 'Existe una actualización disponible para el instalador';

  @override
  String get refreshUpdateNow => 'Actualizar ahora';

  @override
  String get refreshInfo => 'Actualice a la última versión para mejorar la fiabilidad y obtener más funciones.';

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
  String get refreshRestart => 'Por favor, cierre el instalador y vuelva a iniciarlo para continuar';

  @override
  String get refreshCloseLabel => 'Cerrar el instalador';

  @override
  String refreshSnapPrerequisites(String snap) {
    return 'Asegurando $snap los requisitos previos...';
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
  String get recoveryKeyCommand => 'Puede acceder a tu clave de recuperación después de la instalación con el siguiente comando:';

  @override
  String recoveryKeyWarning(String color) {
    return '<font color=\"$color\">Advertencia:</font> Si pierdes esta clave de seguridad, se perderán todos los datos. Si lo necesitas, anota tu clave y guárdala en un lugar seguro.';
  }

  @override
  String get validate => 'Validar';
}
