import 'ubuntu_bootstrap_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class UbuntuBootstrapLocalizationsFr extends UbuntuBootstrapLocalizations {
  UbuntuBootstrapLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Programme d’installation de Ubuntu Desktop';

  @override
  String windowTitle(String RELEASE) {
    return 'Installer $RELEASE';
  }

  @override
  String get autoinstallDirectTitle => 'Automated installation';

  @override
  String get autoinstallDirectHeader => 'Import autoinstall file';

  @override
  String get autoinstallDirectUrlLabel => 'You can enter the URL of an autoinstall file:';

  @override
  String get autoinstallDirectFileLabel => 'Or select a local file:';

  @override
  String get autoinstallDirectFileButtonLabel => 'Select file...';

  @override
  String get autoinstallDirectFileClearButtonLabel => 'Clear file';

  @override
  String get autoinstallDirectFilePickerTitle => 'Choose file';

  @override
  String get autoinstallDirectFilePickerFilterLabel => 'YAML files';

  @override
  String get autoinstallDirectImportButtonLabel => 'Import';

  @override
  String get autoinstallDirectErrorNetworkTitle => 'Autoinstall file is not reachable';

  @override
  String get autoinstallDirectErrorNetworkBody => 'Check the URL is correct, test your internet connection, or try later.';

  @override
  String get autoinstallDirectErrorInvalidUrlTitle => 'Invalid URL';

  @override
  String get autoinstallDirectErrorInvalidUrlBody => 'Check the URL is correct or select a local file.';

  @override
  String get autoinstallDirectErrorInvalidContentTitle => 'Invalid autoinstall file';

  @override
  String get autoinstallDirectErrorInvalidContentBody => 'Check the file or provide a different one.';

  @override
  String get autoinstallDirectErrorFileSystemTitle => 'Autoinstall file is not readable';

  @override
  String get autoinstallDirectErrorFileSystemBody => 'Check your permissions or provide a different file.';

  @override
  String get autoinstallDirectErrorUnkownTitle => 'Unknown error';

  @override
  String get autoinstallTitle => 'Type d’installation';

  @override
  String autoinstallHeader(String DISTRO) {
    return 'Comment souhaitez-vous installer $DISTRO ?';
  }

  @override
  String get autoinstallInstructions => 'Saisir l’URL du fichier autoinstall.yaml ou le chemin d’accès local :';

  @override
  String get autoinstallInteractiveOption => 'Installation interactive';

  @override
  String get autoinstallInteractiveDescription => 'Pour les utilisateurs qui veulent être guidés étape par étape à travers l\'installation.';

  @override
  String get autoinstallDirectOption => 'Automated with autoinstall file';

  @override
  String get autoinstallDirectDescription => 'For advanced users who have an autoinstall.yaml for consistent and repeatable system setups.';

  @override
  String get autoinstallLandscapeOption => 'Automated with Landscape';

  @override
  String get autoinstallLandscapeDescription => 'For users in organisations that provide an autoinstall file via Landscape.';

  @override
  String get changeButtonText => 'Changer';

  @override
  String get quitButtonText => 'Quitter l’installation';

  @override
  String loadingPageTitle(String DISTRO) {
    return 'Bienvenue à $DISTRO';
  }

  @override
  String loadingHeader(String DISTRO) {
    return 'Préparation d’$DISTRO…';
  }

  @override
  String get warningLabel => 'Attention :';

  @override
  String tryOrInstallTitle(String DISTRO) {
    return 'Essayer ou installer $DISTRO';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return 'Que voulez-vous faire avec $DISTRO ?';
  }

  @override
  String get tryOrInstallRepairOption => 'Réparer l’installation';

  @override
  String get tryOrInstallRepairDescription => 'La réparation réinstallera tous les logiciels installés en conservant les documents et les paramètres.';

  @override
  String tryOption(String RELEASE) {
    return 'Essayer $RELEASE';
  }

  @override
  String tryDescription(String RELEASE) {
    return 'Vous pouvez essayer $RELEASE sans appliquer aucun changement à votre ordinateur.';
  }

  @override
  String installOption(String RELEASE) {
    return 'Installer $RELEASE';
  }

  @override
  String installDescription(String RELEASE) {
    return 'Installer $RELEASE à côté (ou en remplacement) de votre système d’exploitation actuel. Ceci ne devrait pas prendre trop longtemps.';
  }

  @override
  String tryOrInstallReleaseNotesLabel(String url) {
    return 'Vous pouvez éventuellement lire les <a href=\"$url\">notes de publication</a>.';
  }

  @override
  String get rstTitle => 'RST est activé';

  @override
  String get rstHeader => 'Désactivez RST pour continuer';

  @override
  String rstDescription(String DISTRO) {
    return 'Cet ordinateur utilise la technologie RST (Rapid Storage Technology) d’Intel. Il est nécessaire de désactiver RST dans Windows avant d’installer $DISTRO.';
  }

  @override
  String rstInstructions(String url) {
    return 'Pour obtenir des instructions, scannez le code QR sur un autre appareil ou visitez le site : <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'Configurer Secure Boot';

  @override
  String get configureSecureBootDescription => 'Vous avez choisi d’installer des pilotes logiciels tiers. Cela nécessite de désactiver Secure Boot.\nPour cela, vous devez choisir une clé de sécurité maintenant, et l’entrer quand le système démarrera.';

  @override
  String get configureSecureBootOption => 'Configurer Secure Boot';

  @override
  String get chooseSecurityKey => 'Choisissez une clé de sécurité';

  @override
  String get confirmSecurityKey => 'Confirmer le code de sécurité';

  @override
  String get dontInstallDriverSoftwareNow => 'Ne pas installer le pilote maintenant';

  @override
  String get dontInstallDriverSoftwareNowDescription => 'Vous pouvez l’installer ultérieurement depuis Logiciel & Mises à jour.';

  @override
  String get configureSecureBootSecurityKeyRequired => 'La clé de sécurité est nécessaire';

  @override
  String get secureBootSecurityKeysDontMatch => 'Les codes de sécurité ne correspondent pas';

  @override
  String get showSecurityKey => 'Montrer la clé de sécurité';

  @override
  String get hideSecurityKey => 'Masquer';

  @override
  String get updatesOtherSoftwarePageTitle => 'Applications et mises à jour';

  @override
  String get updatesOtherSoftwarePageDescription => 'Quelles applications souhaitez-vous installer pour commencer ?';

  @override
  String get codecsAndDriversPageTitle => 'Optimisez votre ordinateur';

  @override
  String get codecsAndDriversPageDescription => 'Installer les logiciels propriétaires recommandés ?';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return '$DISTRO est fourni sans logiciel propriétaire par défaut. L\'installation de logiciels supplémentaires peut améliorer la performance de votre ordinateur.';
  }

  @override
  String get codecsAndDriversNvidiaNote => 'Carte graphique NVIDIA détectée';

  @override
  String get codecsAndDriversNvidiaBody => 'Pour une performance optimale des cartes graphiques NVIDIA, l\'installation de pilotes supplémentaires est fortement recommandée.';

  @override
  String get fullInstallationTitle => 'Installation complète';

  @override
  String get fullInstallationSubtitle => 'Une sélection d\'outils de bureau, utilitaires, navigateur internet et jeux adaptée au hors ligne.';

  @override
  String get minimalInstallationTitle => 'Installation par défaut';

  @override
  String get minimalInstallationSubtitle => 'Seulement les essentiels, navigateur internet et utilitaires de base.';

  @override
  String get otherOptions => 'Autres options';

  @override
  String get installThirdPartyTitle => 'Installer des logiciels tiers pour le support du matériel graphique et Wi-Fi, ainsi que des formats multimédia supplémentaires';

  @override
  String get installThirdPartySubtitle => 'Ce logiciel est soumis à des termes de licence inclus dans sa documentation. Certains sont propriétaires.';

  @override
  String get installDriversTitle => 'Installer des logiciels tiers pour le support du matériel graphique et Wi-Fi';

  @override
  String get installDriversSubtitle => 'Cela inclut mais ne se limite pas aux pilotes NVIDIA et assimilés';

  @override
  String get installCodecsTitle => 'Télécharger et installer la prise en charge de formats de multimédias supplémentaires';

  @override
  String get installCodecsSubtitle => 'Cela inclut mais ne se limite pas aux MP3, MP4, MOV et assimilés';

  @override
  String get batteryWarning => 'L\'ordinateur n\'est pas branché à une source d\'alimentation.';

  @override
  String get offlineWarning => 'Vous êtes actuellement hors ligne';

  @override
  String get choosePassphraseTitle => 'Phrase secrète du disque';

  @override
  String get choosePassphraseHeader => 'Créez une phrase secrète';

  @override
  String get choosePassphraseBody => 'Vous avez besoin d\'une phrase secrète pour chiffrer vos fichiers. Votre phrase secrète vous sera demandée à chaque fois que vous allumez sur votre ordinateur.';

  @override
  String get choosePassphraseHint => 'Choisissez une phrase secrète';

  @override
  String get choosePassphraseConfirmHint => 'Confirmez la phrase secrète';

  @override
  String get choosePassphraseRequired => 'Une phrase secrète est nécessaire';

  @override
  String get choosePassphraseMismatch => 'Les phrases secrètes ne correspondent pas';

  @override
  String get choosePassphraseInfoHeader => 'Assurez-vous de sauvegarder votre phrase secrète';

  @override
  String get choosePassphraseInfoBody => 'Si vous perdez votre phrase secrète, vous perdrez toutes vos données.';

  @override
  String get chooseOptionalPassphraseHeader => 'Create a passphrase (optional)';

  @override
  String get chooseOptionalPassphraseBody => 'A passphrase can help protect your data even if your hardware gets compromised. You will need to enter the passphrase every time you turn on your computer. You will not be able to remove it later';

  @override
  String get chooseOptionalPassphraseInfoHeader => 'Store your passphrase and recovery key somewhere safe';

  @override
  String get chooseOptionalPassphraseInfoBody => 'If you lose your passphrase, you will lose all your data. The passphrase does not replace the recovery key or your user password.';

  @override
  String get createPassphrase => 'Créer une phrase secrète';

  @override
  String get confirmPassphrase => 'Confirmer la phrase secrète';

  @override
  String get installationTypeTitle => 'Configuration du disque';

  @override
  String installationTypeHeader(String DISTRO) {
    return 'Comment souhaitez-vous installer $DISTRO ?';
  }

  @override
  String installationTypeOSDetected(String os) {
    return 'Cet ordinateur est installé avec $os. Que voulez-vous faire ?';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return 'Cet ordinateur est installé avec $os1 et $os2. Que voulez-vous faire ?';
  }

  @override
  String get installationTypeMultiOSDetected => 'Cet ordinateur est installé avec plusieurs systèmes d’exploitation. Que voulez-vous faire ?';

  @override
  String get installationTypeNoOSDetected => 'Aucun système d’exploitation n’a été détecté sur cet ordinateur. Que voulez-vous faire ?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'Effacer le disque et installer $DISTRO';
  }

  @override
  String get installationTypeEraseInfo => 'Commencez à partir de zéro sur votre disque sélectionné.';

  @override
  String get installationTypeAdvancedLabel => 'Fonctions avancées…';

  @override
  String get installationTypeAdvancedTitle => 'Fonctions avancées';

  @override
  String get installationTypeExperimental => 'Expérimental';

  @override
  String get installationTypeNone => 'Aucune';

  @override
  String get installationTypeNoneSelected => 'Aucune sélectionnée';

  @override
  String get installationTypeLVM => 'Utiliser LVM';

  @override
  String get installationTypeLVMSelected => 'LVM sélectionné';

  @override
  String get installationTypeLVMEncryption => 'Utiliser LVM et le chiffrement';

  @override
  String get installationTypeLVMEncryptionSelected => 'LVM et chiffrement sélectionnés';

  @override
  String get installationTypeEncryptInfo => 'Vous allez choisir une clé de sécurité à l’étape suivante.';

  @override
  String get installationTypeZFS => 'EXPERIMENTAL : Effacer le disque et utiliser ZFS';

  @override
  String get installationTypeZFSEncryption => 'Effacer le disque et utiliser ZFS avec chiffrement';

  @override
  String get installationTypeZFSSelected => 'ZFS sélectionné';

  @override
  String get installationTypeZFSEncryptionSelected => 'ZFS et chiffrement sélectionnés';

  @override
  String get installationTypeTPM => 'Activer le chiffrement matériel complet du disque';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return 'C\'est une fonctionnalité expérimentale. Elle peut ne pas fonctionner avec votre matériel ou de futures versions de $DISTRO. <a href=\"$url\">Lisez à propos du chiffrement TPM</a> avant de choisir cette option.';
  }

  @override
  String get installationTypeTPMSelected => 'TPM sélectionné';

  @override
  String installationTypeReinstall(String os) {
    return 'Supprimer $os et réinstaller';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">Attention :</font> Cela va supprimer tous vos programmes, documents, photos, musiques, et tous les fichiers de $os.';
  }

  @override
  String installationTypeAlongside(String product, String os) {
    return 'Installer $product à côté de $os';
  }

  @override
  String installationTypeAlongsideDual(String product, String os1, String os2) {
    return 'Installer $product à côté de $os1 et $os2';
  }

  @override
  String installationTypeAlongsideMulti(String product) {
    return 'Installer $product à côté d’eux';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return 'Installer $product à côté des autres partitions';
  }

  @override
  String installationTypeAlongsideInfo(String product) {
    return 'Vous pouvez choisir votre système d\'exploitation pendant le démarrage.';
  }

  @override
  String installationTypeEraseAndInstall(String os, String product) {
    return 'Erase $os and install $product';
  }

  @override
  String installationTypeEraseAndInstallInfo(String os) {
    return 'All files and data from the existing $os installation will be permanently deleted.';
  }

  @override
  String get installationTypeManual => 'Partitionnement manuel';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'Pour les utilisateurs avancés recherchant des configurations de disque personnalisées.';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'Effacer le disque et installer $DISTRO';
  }

  @override
  String get selectGuidedStorageInfo => 'Commencez à partir de zéro sur votre disque sélectionné.';

  @override
  String get selectGuidedStorageDriveDropdownLabel => 'Sélectionnez le disque :';

  @override
  String get selectGuidedStoragePartitionDropdownLabel => 'Sélectionnez la partition :';

  @override
  String get selectGuidedStorageInfoLabel => 'La totalité du disque sera utilisée :';

  @override
  String get selectGuidedStorageInstallNow => 'Installer maintenant';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return 'Choisissez où installer $DISTRO';
  }

  @override
  String get installAlongsideSpaceDivider => 'Allouez de l’espace disque en déplaçant le séparateur ci-dessous :';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return '$num partitions plus petites sont masquées, utilisez <a href=\"$url\">l’outil de partitionnement avancé</a> pour plus de contrôle';
  }

  @override
  String get installAlongsideResizePartition => 'Redimensionner la partition';

  @override
  String get installAlongsideAllocateSpace => 'Allouer de l’espace';

  @override
  String get installAlongsideFiles => 'Fichiers';

  @override
  String get installAlongsidePartition => 'Partition :';

  @override
  String get installAlongsideSize => 'Taille :';

  @override
  String get installAlongsideAvailable => 'Disponible :';

  @override
  String get allocateDiskSpace => 'Partitionnement manuel';

  @override
  String get allocateDiskSpaceInvalidMountPointSlash => 'Les points de montage doivent commencer par \"/\"';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace => 'Les points de montage ne doivent pas contenir d\'espaces';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(Object format, Object mountpoint) {
    return '$format n’est pas un système de fichiers supporté pour $mountpoint';
  }

  @override
  String get diskHeadersDevice => 'Périphérique';

  @override
  String get diskHeadersType => 'Type';

  @override
  String get diskHeadersMountPoint => 'Point de montage';

  @override
  String get diskHeadersSize => 'Taille';

  @override
  String get diskHeadersUsed => 'Utilisé';

  @override
  String get diskHeadersSystem => 'Système';

  @override
  String get diskHeadersFormat => 'Formatter';

  @override
  String get freeDiskSpace => 'Espace libre';

  @override
  String get newPartitionTable => 'Nouvelle table de partition';

  @override
  String get newPartitionTableConfirmationTitle => 'Nouvelle partition vide';

  @override
  String get newPartitionTableConfirmationMessage => 'La création d’une nouvelle table de partitions sur un périphérique entier supprimera toutes ses partitions actuelles. Vous pourrez annuler cette opération plus tard si vous le souhaitez.';

  @override
  String get tooManyPrimaryPartitions => 'Trop de partitions primaires';

  @override
  String get partitionLimitReached => 'Limite atteinte';

  @override
  String get bootLoaderDevice => 'Périphérique pour installer le chargeur d’amorçage (bootloader)';

  @override
  String get partitionCreateTitle => 'Créer une partition';

  @override
  String get partitionEditTitle => 'Modifier la partition';

  @override
  String get partitionSizeLabel => 'Taille :';

  @override
  String get partitionTypeLabel => 'Type pour la nouvelle partition :';

  @override
  String get partitionTypePrimary => 'Primaire';

  @override
  String get partitionTypeLogical => 'Logique';

  @override
  String get partitionLocationLabel => 'Emplacement pour la nouvelle partition :';

  @override
  String get partitionLocationBeginning => 'Début de cet espace';

  @override
  String get partitionLocationEnd => 'Fin de cet espace';

  @override
  String get partitionFormatLabel => 'Utilisée comme :';

  @override
  String get partitionFormatNone => 'Laisser non formatée';

  @override
  String partitionFormatKeep(String format) {
    return 'Laisser formatée en $format';
  }

  @override
  String get partitionErase => 'Formatter la partition';

  @override
  String get partitionMountPointLabel => 'Point de montage :';

  @override
  String get confirmPageTitle => 'Prêt à installer';

  @override
  String get confirmHeader => 'Vérifiez vos choix';

  @override
  String get confirmDiskEncryptionLVM => 'LUKS (LVM)';

  @override
  String get confirmDiskEncryptionZFS => 'LUKS (ZFS)';

  @override
  String get confirmDiskEncryptionTPM => 'TPM';

  @override
  String get confirmDiskEncryptionNone => 'Aucune';

  @override
  String get confirmDevicesTitle => 'Disques';

  @override
  String get confirmEntryApplications => 'Applications';

  @override
  String get confirmEntryDiskSetup => 'Configuration du disque';

  @override
  String get confirmEntryDiskEncryption => 'Chiffrement du disque';

  @override
  String get confirmEntryInstallationDisk => 'Disque d\'installation';

  @override
  String get confirmEntryProprietarySoftware => 'Logiciel propriétaire';

  @override
  String get confirmSectionGeneralTitle => 'Général';

  @override
  String get confirmSectionSecurityAndMoreTitle => 'Sécurité & plus';

  @override
  String get confirmPartitionsTitle => 'Partitions';

  @override
  String get confirmPartitionTables => 'Les tables de partitions des périphériques suivants seront modifiées :';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmPartitionChanges => 'Les modification suivantes sur les partitions seront appliquées :';

  @override
  String confirmPartitionResize(String sysname, String oldsize, String newsize) {
    return 'la partition <b>$sysname</b> redimensionnée de <b>$oldsize</b> à <b>$newsize</b>';
  }

  @override
  String confirmPartitionFormatMount(String sysname, String format, String mount) {
    return 'la partition <b>$sysname</b> formatée en <b>$format</b> utilisée pour <b>$mount</b>';
  }

  @override
  String confirmPartitionFormat(String sysname, String format) {
    return 'la partition <b>$sysname</b> formatée en <b>$format</b>';
  }

  @override
  String confirmPartitionMount(String sysname, String mount) {
    return 'la partition <b>$sysname</b> utilisée pour <b>$mount</b>';
  }

  @override
  String confirmPartitionCreate(String sysname) {
    return 'la partition <b>$sysname</b> créée';
  }

  @override
  String get confirmProprietarySoftwareCodecs => 'Codecs';

  @override
  String get confirmProprietarySoftwareCodecsDrivers => 'Codecs & pilotes';

  @override
  String get confirmProprietarySoftwareDrivers => 'Pilotes';

  @override
  String get confirmInstallButton => 'Installer';

  @override
  String get installationCompleteTitle => 'Installation terminée';

  @override
  String readyToUse(String system) {
    return '$system est installé et prêt à être utilisé';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system** a été copié sur le disque';
  }

  @override
  String restartInto(String system) {
    return 'Redémarrer sous $system';
  }

  @override
  String get restartWarningBody => 'Redémarrez pour terminer l\'installation ou continuez à tester.\nLes changements effectués ne seront pas préservés.';

  @override
  String get rebootToConfigureWarning => 'Vous devez redémarrer l\'ordinateur pour continuer le processus d\'installation.';

  @override
  String get shutdown => 'Éteindre';

  @override
  String get restartNow => 'Redémarrer maintenant';

  @override
  String get continueTesting => 'Continuer à tester';

  @override
  String get bitlockerTitle => 'BitLocker est activé';

  @override
  String get bitlockerHeader => 'Désactivez BitLocker pour continuer';

  @override
  String bitlockerDescription(String option) {
    return 'Cet ordinateur utilise le chiffrement BitLocker de Windows.\nVous devez utiliser Windows pour créer de l’espace libre ou choisir \'$option\' pour continuer.';
  }

  @override
  String bitlockerInstructions(String url) {
    return 'Pour obtenir des instructions, scannez le code QR sur un autre appareil ou visitez le site : <a href=\"https://$url\">$url</a>';
  }

  @override
  String get restartIntoWindows => 'Redémarrer sous Windows';

  @override
  String get restartIntoWindowsTitle => 'Redémarrer sous Windows ?';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return 'Voulez-vous vraiment redémarrer votre ordinateur ? Vous devrez redémarrer l’installation d’$DISTRO ultérieurement pour compléter l’installation d’$DISTRO.';
  }

  @override
  String installationSlidesTitle(String RELEASE) {
    return 'Bienvenue à $RELEASE';
  }

  @override
  String get installationSlidesAvailable => 'Disponible :';

  @override
  String get installationSlidesIncluded => 'Inclus :';

  @override
  String get installationSlidesWelcomeTitle => 'Rapide, gratuit et plein de nouvelles fonctionnalités';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return 'La dernière version d’$DISTRO rend l’informatique plus facile que jamais.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'Que vous soyez développeur, créateur, joueur ou administrateur, vous trouverez de nouveaux outils pour améliorer votre productivité et votre expérience sur $RELEASE.';
  }

  @override
  String get installationSlidesSoftwareTitle => 'Toutes les applications dont vous avez besoin';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'Installez, gérez et mettez à jour toutes vos applications dans Ubuntu Software, y compris des milliers d’applications provenant du Snap Store et de l’archive $DISTRO.';
  }

  @override
  String get installationSlidesDevelopmentTitle => 'Développez avec le meilleur de l’open source';

  @override
  String installationSlidesDevelopmentBody(String DISTRO) {
    return '$DISTRO est le poste de travail idéal pour le développement d’applications ou de sites Web, la science des données, l’intelligence artificielle et l’apprentissage automatique, ainsi que pour le devops et l’administration. Chaque version $DISTRO inclut les dernières chaînes d’outils et prend en charge tous les principaux environnements de développement intégrés.';
  }

  @override
  String get installationSlidesCreativityTitle => 'Améliorez votre créativité';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return 'Si vous êtes animateur, concepteur, créateur vidéo ou développeur de jeux, il est facile d\'amener vos flux de travail sur $DISTRO grâce à la prise en charge de logiciels et d\'applications open source et standard de l\'industrie.';
  }

  @override
  String get installationSlidesGamingTitle => 'Idéal pour les jeux';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return '$DISTRO prend en charge les derniers pilotes NVIDIA et Mesa pour améliorer les performances et la compatibilité. Des milliers de jeux pour Windows fonctionnent parfaitement sur $DISTRO via des applications telles que Steam, sans aucune configuration supplémentaire.';
  }

  @override
  String get installationSlidesSecurityTitle => 'Privé et sécurisé';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return '$DISTRO fournit tous les outils dont vous avez besoin pour rester privé et sécurisé en ligne. Il intègre un pare-feu et un réseau privé virtuel (VPN), ainsi qu’une série d’applications axées sur la protection de la vie privée, afin que vous puissiez contrôler pleinement vos données.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return 'Toutes les versions LTS d’$DISTRO sont accompagnées de cinq ans de correctifs de sécurité, qui s’étendent à dix ans dans le cas d’un abonnement Ubuntu Pro.';
  }

  @override
  String get installationSlidesProductivityTitle => 'Augmentez votre productivité';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return '$DISTRO Desktop comprend LibreOffice, une suite d’applications open source compatibles avec Microsoft Office pour les documents, les feuilles de calcul et les présentations. Des outils de collaboration populaires sont également disponibles.';
  }

  @override
  String get installationSlidesAccessibilityTitle => 'Accès pour tous';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return 'Au cœur de la philosophie d’$DISTRO se trouve la conviction que l’informatique doit être accessible à tous. Proposant des outils d’accessibilité avancés et des options telles que le choix de la langue, du thème de couleurs, de la taille des polices, $DISTRO vous rend l’informatique facile – qui que vous soyez, où que vous soyez.';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'Lecteur d’écran Orca';

  @override
  String get installationSlidesAccessibilityLanguages => 'Prise en charge des langues';

  @override
  String get installationSlidesSupportTitle => 'Aide et assistance';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return 'La documentation officielle d’$DISTRO est disponible en ligne et via l’icône Aide dans le dock.';
  }

  @override
  String get installationSlidesSupportCommunity => 'Ask Ubuntu couvre une gamme de questions et de réponses. Discours Ubuntu fournit des guides et des discussions pour les nouveaux utilisateurs et les utilisateurs expérimentés.';

  @override
  String get installationSlidesSupportEnterprise => 'Pour les entreprises, Canonical propose un support commercial qui facilite l’intégration et la gestion d’Ubuntu en toute sécurité sur le lieu de travail.';

  @override
  String get installationSlidesSupportResources => 'Ressources utiles :';

  @override
  String get installationSlidesSupportDocumentation => 'Documentation officielle';

  @override
  String get installationSlidesSupportUbuntuPro => 'Assistance professionnelle 24h/24 et 7j/7 avec Ubuntu Pro';

  @override
  String get copyingFiles => 'Copie des fichiers…';

  @override
  String get installingSystem => 'Installation du système…';

  @override
  String get configuringSystem => 'Configuration du système…';

  @override
  String get installationFailed => 'Échec de l’installation';

  @override
  String get notEnoughDiskSpaceTitle => 'Pas assez d\'espace disque';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return 'Espace disque insuffisant pour installer $DISTRO';
  }

  @override
  String notEnoughDiskSpaceBody(String DISTRO) {
    return 'Le disque sélectionné n\'a pas assez d\'espace disque pour installer $DISTRO. Arrêtez l\'installateur pour libérer de l\'espace ou sélectionnez un autre disque.';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'Disponible :';

  @override
  String get notEnoughDiskSpaceRequired => 'Requis :';

  @override
  String get refreshPageTitle => 'Mise à jour disponible';

  @override
  String get refreshHeader => 'Une mise à jour est disponible pour l\'installateur';

  @override
  String get refreshUpdateNow => 'Mettre à jour maintenant';

  @override
  String get refreshInfo => 'Mettre à jour vers la dernière version pour une fiabilité améliorée et d\'avantage de fonctionnalités.';

  @override
  String get refreshReady => 'Mise à jour prête';

  @override
  String refreshCurrent(String snap, String version) {
    return 'La version actuelle du $snap est $version.';
  }

  @override
  String refreshInstall(String version) {
    return 'Mettre à jour à la version $version';
  }

  @override
  String refreshUpToDate(String version) {
    return 'La version actuelle $version est à jour.';
  }

  @override
  String refreshUpdating(String snap) {
    return 'Mise à jour de $snap...';
  }

  @override
  String get refreshRestart => 'Veuillez redémarrer l\'installateur pour continuer';

  @override
  String get refreshCloseLabel => 'Fermer l\'installateur';

  @override
  String refreshSnapPrerequisites(String snap) {
    return 'Assurer les prérequis de $snap...';
  }

  @override
  String refreshSnapRefresh(String snap) {
    return 'Rafraîchissement de $snap...';
  }

  @override
  String refreshSnapCheckRerefresh(String snap) {
    return 'Vérification $snap re-refresh...';
  }

  @override
  String refreshSnapPrepare(String snap) {
    return 'Préparer de $snap...';
  }

  @override
  String refreshSnapDownload(String snap) {
    return 'Téléchargement de $snap...';
  }

  @override
  String refreshSnapValidate(String snap) {
    return 'Validation de $snap...';
  }

  @override
  String refreshSnapMount(String snap) {
    return 'Montage de $snap...';
  }

  @override
  String refreshSnapStopServices(String snap) {
    return 'Arrêt des services de $snap...';
  }

  @override
  String refreshSnapRemoveAliases(String snap) {
    return 'Suppression des alias de $snap...';
  }

  @override
  String refreshSnapUnlink(String snap) {
    return 'Délier $snap...';
  }

  @override
  String refreshSnapUpdateAssets(String snap) {
    return 'Mise à jour des actifs de $snap...';
  }

  @override
  String refreshSnapUpdateKernelCommandLine(String snap) {
    return 'Mise à jour de la ligne de commande noyau de $snap...';
  }

  @override
  String refreshSnapCopyData(String snap) {
    return 'Copie des données de $snap...';
  }

  @override
  String refreshSnapSetupProfiles(String snap) {
    return 'Configuration des profils de sécurité de $snap...';
  }

  @override
  String refreshSnapLink(String snap) {
    return 'Édition de liens de $snap...';
  }

  @override
  String refreshSnapAutoConnect(String snap) {
    return 'Connexion des connecteurs et prises de $snap...';
  }

  @override
  String refreshSnapSetAutoAliases(String snap) {
    return 'Configuration des alias automatique de $snap...';
  }

  @override
  String refreshSnapSetupAliases(String snap) {
    return 'Configuration des alias de $snap...';
  }

  @override
  String refreshSnapStartServices(String snap) {
    return 'Démarrage des services de $snap...';
  }

  @override
  String refreshSnapCleanup(String snap) {
    return 'Nettoyage de $snap...';
  }

  @override
  String get recoveryKeyTitle => 'Clé de récupération du TPM';

  @override
  String get recoveryKeyHeader => 'Get a recovery key';

  @override
  String get recoveryKeyInfoHeader => 'You may lose all your data without a recovery key';

  @override
  String recoveryKeyInfoBody(String distro) {
    return 'Get a recovery key as soon as you first log into $distro and store it somewhere safe.';
  }

  @override
  String get recoveryKeyCommand => 'Vous pouvez accéder à votre clé de récupération après l\'installation avec la commande suivante :';

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
