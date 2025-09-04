// ignore: unused_import
import 'package:intl/intl.dart' as intl;
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
  String get autoinstallDirectTitle => 'installation automatisée';

  @override
  String get autoinstallDirectHeader => 'Importer fichier autoinstall';

  @override
  String get autoinstallDirectUrlLabel =>
      'Vous pouvez saisir l’URL d’un fichier autoinstall :';

  @override
  String get autoinstallDirectFileLabel => 'Ou sélectionnez un fichier local :';

  @override
  String get autoinstallDirectFileButtonLabel => 'Sélection fichier...';

  @override
  String get autoinstallDirectFileClearButtonLabel => 'Effacer fichier';

  @override
  String get autoinstallDirectFilePickerTitle => 'Choisir fichier';

  @override
  String get autoinstallDirectFilePickerFilterLabel => 'Fichiers YAML';

  @override
  String get autoinstallDirectImportButtonLabel => 'Importer';

  @override
  String get autoinstallDirectErrorNetworkTitle =>
      'Fichier autoinstall non accessible';

  @override
  String get autoinstallDirectErrorNetworkBody =>
      'Vérifiez que l’URL est correcte, testez votre connexion internet ou essayez plus tard.';

  @override
  String get autoinstallDirectErrorInvalidUrlTitle => 'URL invalide';

  @override
  String get autoinstallDirectErrorInvalidUrlBody =>
      'Vérifier que l’URL est correcte ou sélectionner un fichier local.';

  @override
  String get autoinstallDirectErrorInvalidContentTitle =>
      'Fichier autoinstall invalide';

  @override
  String get autoinstallDirectErrorInvalidContentBody =>
      'Vérifier le fichier ou en fournir un autre.';

  @override
  String get autoinstallDirectErrorFileSystemTitle =>
      'Fichier autoinstall non lisible';

  @override
  String get autoinstallDirectErrorFileSystemBody =>
      'Vérifiez vos autorisations ou fournissez un fichier différent.';

  @override
  String get autoinstallDirectErrorUnkownTitle => 'Erreur inconnue';

  @override
  String get autoinstallTitle => 'Type d’installation';

  @override
  String autoinstallHeader(String DISTRO) {
    return 'Comment souhaitez-vous installer $DISTRO ?';
  }

  @override
  String get autoinstallInstructions =>
      'Saisir l’URL du fichier autoinstall.yaml ou le chemin d’accès local :';

  @override
  String get autoinstallInteractiveOption => 'Installation interactive';

  @override
  String get autoinstallInteractiveDescription =>
      'Pour les utilisateurs qui veulent être guidés étape par étape à travers l\'installation.';

  @override
  String get autoinstallDirectOption => 'Automatisé avec fichier autoinstall';

  @override
  String get autoinstallDirectDescription =>
      'Pour les utilisateurs avancés qui ont un autoinstall.yaml pour des configurations de système cohérentes et reproductibles.';

  @override
  String get autoinstallLandscapeOption => 'Automatisé avec Landscape';

  @override
  String get autoinstallLandscapeDescription =>
      'Pour les utilisateurs des organisations qui fournissent un fichier autoinstall via Landscape.';

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
  String get tryOrInstallRepairDescription =>
      'La réparation réinstallera tous les logiciels installés en conservant les documents et les paramètres.';

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
  String get rstHeader => 'Vous devez RST pour continuer l\'installation';

  @override
  String get rstDisable =>
      'Votre ordinateur utilise Intel RST (Rapid Storage Technology). Vous pouvez désactiver RST dans :';

  @override
  String get rstDisableWindows =>
      'Windows, si vous utilisez une configuration à double démarrage avec Windows';

  @override
  String get rstDisableBios => 'Les réglages du BIOS';

  @override
  String rstInstructions(String url) {
    return 'Pour obtenir des instructions, scannez le code QR sur un autre appareil ou visitez le site : <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'Configurer Secure Boot';

  @override
  String get configureSecureBootDescription =>
      'Vous avez choisi d’installer des pilotes logiciels tiers. Cela nécessite de désactiver Secure Boot.\nPour cela, vous devez choisir une clé de sécurité maintenant, et l’entrer quand le système démarrera.';

  @override
  String get configureSecureBootOption => 'Configurer Secure Boot';

  @override
  String get chooseSecurityKey => 'Choisissez une clé de sécurité';

  @override
  String get confirmSecurityKey => 'Confirmer le code de sécurité';

  @override
  String get dontInstallDriverSoftwareNow =>
      'Ne pas installer le pilote maintenant';

  @override
  String get dontInstallDriverSoftwareNowDescription =>
      'Vous pouvez l’installer ultérieurement depuis Logiciel & Mises à jour.';

  @override
  String get configureSecureBootSecurityKeyRequired =>
      'La clé de sécurité est nécessaire';

  @override
  String get secureBootSecurityKeysDontMatch =>
      'Les codes de sécurité ne correspondent pas';

  @override
  String get showSecurityKey => 'Montrer la clé de sécurité';

  @override
  String get hideSecurityKey => 'Masquer';

  @override
  String get updatesOtherSoftwarePageTitle => 'Applications et mises à jour';

  @override
  String get updatesOtherSoftwarePageDescription =>
      'Quelles applications souhaitez-vous installer pour commencer ?';

  @override
  String get codecsAndDriversPageTitle => 'Optimisez votre ordinateur';

  @override
  String get codecsAndDriversPageDescription =>
      'Installer les logiciels propriétaires recommandés ?';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return '$DISTRO est fourni sans logiciel propriétaire par défaut. L\'installation de logiciels supplémentaires peut améliorer la performance de votre ordinateur.';
  }

  @override
  String get codecsAndDriversNvidiaNote => 'Carte graphique NVIDIA détectée';

  @override
  String get codecsAndDriversNvidiaBody =>
      'Pour une performance optimale des cartes graphiques NVIDIA, l\'installation de pilotes supplémentaires est fortement recommandée.';

  @override
  String get fullInstallationTitle => 'Installation complète';

  @override
  String get fullInstallationSubtitle =>
      'Une sélection d\'outils de bureau, utilitaires, navigateur internet et jeux adaptée au hors ligne.';

  @override
  String get minimalInstallationTitle => 'Installation par défaut';

  @override
  String get minimalInstallationSubtitle =>
      'Seulement les essentiels, navigateur internet et utilitaires de base.';

  @override
  String get otherOptions => 'Autres options';

  @override
  String get installThirdPartyTitle =>
      'Installer des logiciels tiers pour le support du matériel graphique et Wi-Fi, ainsi que des formats multimédia supplémentaires';

  @override
  String get installThirdPartySubtitle =>
      'Ce logiciel est soumis à des termes de licence inclus dans sa documentation. Certains sont propriétaires.';

  @override
  String get installDriversTitle =>
      'Installer des logiciels tiers pour le support du matériel graphique et Wi-Fi';

  @override
  String get installDriversSubtitle =>
      'Cela inclut mais ne se limite pas aux pilotes NVIDIA et assimilés';

  @override
  String get installCodecsTitle =>
      'Télécharger et installer la prise en charge de formats de multimédias supplémentaires';

  @override
  String get installCodecsSubtitle =>
      'Cela inclut mais ne se limite pas aux MP3, MP4, MOV et assimilés';

  @override
  String get batteryWarning =>
      'L\'ordinateur n\'est pas branché à une source d\'alimentation.';

  @override
  String get offlineWarning => 'Vous êtes actuellement hors ligne';

  @override
  String get choosePassphraseHeader => 'Créez une phrase secrète';

  @override
  String get choosePassphraseBody =>
      'Vous avez besoin d\'une phrase secrète pour chiffrer vos fichiers. Votre phrase secrète vous sera demandée à chaque fois que vous allumez sur votre ordinateur.';

  @override
  String get choosePassphraseInfoHeader =>
      'Stockez votre phrase secrète en lieu sûr';

  @override
  String get choosePassphraseInfoBody =>
      'Si vous perdez votre phrase secrète, vous perdrez toutes vos données.';

  @override
  String get chooseOptionalPassphraseInfoHeader =>
      'Conservez votre phrase de passe et la clé de récupération en lieu sûr';

  @override
  String get chooseOptionalPassphraseInfoBody =>
      'Si vous perdez votre phrase de passe, vous perdrez toutes vos données. La phrase de passe ne remplace pas la clé de récupération ni votre mot de passe utilisateur.';

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
      'By default, the computer’s Trusted Platform Module (TPM) will unlock the disk during startup. You also have options to better protect your data.';

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
  String get installationTypeMultiOSDetected =>
      'Cet ordinateur est installé avec plusieurs systèmes d’exploitation. Que voulez-vous faire ?';

  @override
  String get installationTypeNoOSDetected =>
      'Aucun système d’exploitation n’a été détecté sur cet ordinateur. Que voulez-vous faire ?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'Effacer le disque et installer $DISTRO';
  }

  @override
  String get installationTypeEraseInfo =>
      'Toutes les données et partitions du disque seront effacées, y compris les systèmes d’exploitation.';

  @override
  String get installationTypeAdvancedLabel => 'Montrer fonctions avancées…';

  @override
  String get installationTypeAdvancedTitle =>
      'Chiffrement et système de fichiers';

  @override
  String get installationTypeExperimental => 'Expérimental';

  @override
  String get installationTypeNone => 'Pas de chiffrement';

  @override
  String get installationTypeNoneInfo =>
      'Système de fichiers standard sans chiffrement.';

  @override
  String get installationTypeNoneSelected => 'Aucune sélectionnée';

  @override
  String get installationTypeLVM => 'Utiliser LVM sans chiffrement';

  @override
  String get installationTypeLVMSelected => 'LVM sélectionné';

  @override
  String get installationTypeLVMEncryption =>
      'Chiffrer avec une phrase de passe';

  @override
  String get installationTypeLVMEncryptionInfo =>
      'Vous devrez entrer un mot de passe chaque fois que vous allumerez votre ordinateur. Il utilise le chiffrement LUKS avec LVM.';

  @override
  String get installationTypeLVMEncryptionSelected =>
      'LVM et chiffrement sélectionnés';

  @override
  String get installationTypeEncryptInfo =>
      'Vous allez choisir une clé de sécurité à l’étape suivante.';

  @override
  String get installationTypeZFS => 'Utiliser ZFS sans chiffrement';

  @override
  String get installationTypeZFSEncryption =>
      'Chiffrer avec une phrase secrète en utilisant ZFS';

  @override
  String get installationTypeZFSEncryptionInfo =>
      'Chiffrement natif avec ZFS. Vous devrez entrer un mot de passe chaque fois que vous allumerez votre ordinateur.';

  @override
  String get installationTypeZFSSelected => 'ZFS sélectionné';

  @override
  String get installationTypeZFSEncryptionSelected =>
      'ZFS et chiffrement sélectionnés';

  @override
  String get installationTypeTPM => 'Utiliser le chiffrement par matériel';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return '<a href=\"$url\">Lisez à propos du chiffrement TPM</a> avant de choisir cette option. Cela risque de ne pas fonctionner avec votre matériel ou les futures versions de $DISTRO.';
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
    return 'Installer $product à côté des systèmes d’exploitation existants';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return 'Installer $product à côté des autres partitions';
  }

  @override
  String installationTypeAlongsideInfo(String product) {
    return 'Sélectionnez une partition à redimensionner et créez de l’espace pour $product. Vous pouvez choisir votre système d’exploitation pendant le démarrage.';
  }

  @override
  String installationTypeEraseAndInstall(String os, String product) {
    return 'Effacer $os et installer $product';
  }

  @override
  String installationTypeEraseAndInstallInfo(String os) {
    return 'Tous les fichiers et données de l’installation existante $os seront définitivement supprimés.';
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
  String get selectGuidedStorageInfo =>
      'Commencez à partir de zéro sur votre disque sélectionné.';

  @override
  String get selectGuidedStorageDriveDropdownLabel =>
      'Sélectionnez le disque :';

  @override
  String get selectGuidedStoragePartitionDropdownLabel =>
      'Sélectionnez la partition :';

  @override
  String get selectGuidedStorageInfoLabel =>
      'La totalité du disque sera utilisée :';

  @override
  String get selectGuidedStorageInstallNow => 'Installer maintenant';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return 'Choisissez où installer $DISTRO';
  }

  @override
  String get installAlongsideSpaceDivider =>
      'Allouez de l’espace disque en déplaçant le séparateur ci-dessous :';

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
  String get allocateDiskSpaceInvalidMountPointSlash =>
      'Les points de montage doivent commencer par \"/\"';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace =>
      'Les points de montage ne doivent pas contenir d\'espaces';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(
      String mountpoint, String format) {
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
  String get newPartitionTableConfirmationMessage =>
      'La création d’une nouvelle table de partitions sur un périphérique entier supprimera toutes ses partitions actuelles. Vous pourrez annuler cette opération plus tard si vous le souhaitez.';

  @override
  String get tooManyPrimaryPartitions => 'Trop de partitions primaires';

  @override
  String get partitionLimitReached => 'Limite atteinte';

  @override
  String get bootLoaderDevice =>
      'Périphérique pour installer le chargeur d’amorçage (bootloader)';

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
  String get partitionLocationLabel =>
      'Emplacement pour la nouvelle partition :';

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
  String get confirmEntryDiskSetup => 'Type d\'installation';

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
  String get confirmPartitionTables =>
      'Les tables de partitions des périphériques suivants seront modifiées :';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
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
  String get confirmTableErased => 'Effacé(e)';

  @override
  String get confirmTableUnchanged => 'Inchangé(e)';

  @override
  String confirmTableResized(String oldsize, String newsize) {
    return 'Redimensionné de $oldsize à $newsize';
  }

  @override
  String confirmTableCreatedFormattedMounted(String format, String mountpoint) {
    return 'Créé(e) et formaté(e) en $format utilisé(e) pour $mountpoint';
  }

  @override
  String confirmTableFormattedMounted(String format, String mountpoint) {
    return 'Formaté(e) en $format utilisé(e) pour $mountpoint';
  }

  @override
  String confirmTableMounted(String mountpoint) {
    return 'Utilisé(e) pour $mountpoint';
  }

  @override
  String confirmTableFormatted(String format) {
    return 'Formatté(e) en $format';
  }

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
  String get restartWarningBody =>
      'Redémarrez pour terminer l\'installation ou continuez à tester.\nLes changements effectués ne seront pas préservés.';

  @override
  String get rebootToConfigureWarning =>
      'Vous devez redémarrer l\'ordinateur pour continuer le processus d\'installation.';

  @override
  String get shutdown => 'Éteindre';

  @override
  String get restartNow => 'Redémarrer maintenant';

  @override
  String get continueTesting => 'Continuer à tester';

  @override
  String get bitlockerInfoTitle => 'BitLocker detecté';

  @override
  String get bitlockerInfoDescription =>
      'Une ou plusieurs partitions sont chiffrées avec BitLocker.';

  @override
  String get bitlockerInfoDisable =>
      'Pour installer à côté de Windows, désactivez BitLocker dans Windows.';

  @override
  String get bitlockerInfoRecovery =>
      'Windows pourrait demander des clés de récupération au démarrage après l’installation.';

  @override
  String bitlockerInfoInstructions(String url) {
    return 'Pour des instructions, visitez le <a href=\"$url\">guide BitLocker</a>.';
  }

  @override
  String get bitlockerWarningTitle =>
      'Vous risquez de perdre toutes vos données sans les clés de récupération BitLocker';

  @override
  String get restartComputer => 'Redémarrer l\'ordinateur';

  @override
  String get restartComputerTitle => 'Redémarrer l\'ordinateur ?';

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
  String get installationSlidesWelcomeTitle =>
      'Rapide, gratuit et plein de nouvelles fonctionnalités';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return 'La dernière version d’$DISTRO rend l’informatique plus facile que jamais.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'Que vous soyez développeur, créateur, joueur ou administrateur, vous trouverez de nouveaux outils pour améliorer votre productivité et votre expérience sur $RELEASE.';
  }

  @override
  String get installationSlidesSoftwareTitle =>
      'Toutes les applications dont vous avez besoin';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'Installez, gérez et mettez à jour toutes vos applications dans Ubuntu Software, y compris des milliers d’applications provenant du Snap Store et de l’archive $DISTRO.';
  }

  @override
  String get installationSlidesDevelopmentTitle =>
      'Développez avec le meilleur de l’open source';

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
  String get installationSlidesProductivityTitle =>
      'Augmentez votre productivité';

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
  String get installationSlidesAccessibilityLanguages =>
      'Prise en charge des langues';

  @override
  String get installationSlidesSupportTitle => 'Aide et assistance';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return 'La documentation officielle d’$DISTRO est disponible en ligne et via l’icône Aide dans le dock.';
  }

  @override
  String get installationSlidesSupportCommunity =>
      'Ask Ubuntu couvre une gamme de questions et de réponses. Discours Ubuntu fournit des guides et des discussions pour les nouveaux utilisateurs et les utilisateurs expérimentés.';

  @override
  String get installationSlidesSupportEnterprise =>
      'Pour les entreprises, Canonical propose un support commercial qui facilite l’intégration et la gestion d’Ubuntu en toute sécurité sur le lieu de travail.';

  @override
  String get installationSlidesSupportResources => 'Ressources utiles :';

  @override
  String get installationSlidesSupportDocumentation =>
      'Documentation officielle';

  @override
  String get installationSlidesSupportUbuntuPro =>
      'Assistance professionnelle 24h/24 et 7j/7 avec Ubuntu Pro';

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
  String get refreshHeader =>
      'Une mise à jour est disponible pour l\'installateur';

  @override
  String get refreshUpdateNow => 'Mettre à jour maintenant';

  @override
  String get refreshInfo =>
      'Mettre à jour vers la dernière version pour une fiabilité améliorée et d\'avantage de fonctionnalités.';

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
  String get refreshRestart =>
      'Veuillez redémarrer l\'installateur pour continuer';

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
  String get recoveryKeyTitleBadgeLabel => 'Important';

  @override
  String get recoveryKeyHeader => 'Obtenir une clé de récupération';

  @override
  String get recoveryKeyInfoHeader =>
      'Vous risquez de perdre toutes vos données sans clé de récupération';

  @override
  String get recoveryKeyTextFieldLabel => 'Recovery key';

  @override
  String get recoveryKeyStorageAdvice =>
      'Stocker la clé de récupération en lieu sûr. Utilisez-la pour déchiffrer le disque en cas de certains changements du système. Par exemple, vous pourriez en avoir besoin si vous changez les composants de votre ordinateur ou mettez à jour le micrologiciel.';

  @override
  String get recoveryKeyConfirmation =>
      'Je comprends que je pourrais perdre toutes mes données si je n’ai pas de clé de récupération';

  @override
  String get recoveryKeyLinkLabel => 'En savoir plus';

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
    return 'Scanner le code QR ou saisir le code ci-dessous à <a href=\"https://$url\">$url</a>';
  }

  @override
  String get landscapePageTitle => 'installation automatisée';

  @override
  String get landscapeHeader => 'Ouvrir une session Landscape';

  @override
  String get landscapeDomainHeader => 'Entrer le domaine Landscape (FQDN)';

  @override
  String get landscapeDomainHintText => 'Domaine Landscape (FQDN)';

  @override
  String get landscapeDomainInstructions =>
      'Fournir le domaine Landscape de votre organisation afin d\'ouvrir une session et de récupérer un fichier autoinstall. Vous pouvez obtenir le nom de domaine complet auprès de votre équipe informatique.';

  @override
  String get landscapeDomainTextField => 'Domaine Landscape (FQDN)';

  @override
  String get next => 'Suivant';

  @override
  String get landscapeDomainInvalidDomainWarning =>
      'Domaine non valide, veuillez vérifier ou contacter votre support informatique';

  @override
  String get landscapeDomainNoInternetTitleWarning =>
      'Connectez-vous à Internet pour continuer';

  @override
  String get landscapeDomainNoInternetDescriptionWarning =>
      'Internet est nécessaire pour récupérer le fichier autoinstall de Landscape';

  @override
  String get landscapeCodeExpiredWarning => 'Code expiré, veuillez réessayer';

  @override
  String get landscapeLoginFailedWarning =>
      'Échec de connexion, veuillez réessayer';

  @override
  String get landscapeErrorPageTitle =>
      'L’installation automatisée n’est pas disponible pour votre compte';

  @override
  String get landscapeErrorPageBody =>
      'Contactez votre support informatique ou essayez une autre option d’installation.';

  @override
  String landscapeErrorPageCode(String code) {
    return 'Code d\'erreur : $code';
  }

  @override
  String get landscapeConfirmPageSuccessInfoTitle =>
      'Ubuntu s’installera avec la configuration fournie par votre organisation';

  @override
  String get landscapeConfirmPageSuccessInfoContent =>
      'Vous pouvez consulter ci-dessous le fichier d’installation automatique importé de Landscape.';

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
