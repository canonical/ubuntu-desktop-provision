// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_bootstrap_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class UbuntuBootstrapLocalizationsDe extends UbuntuBootstrapLocalizations {
  UbuntuBootstrapLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'Ubuntu-Desktop-Installationsprogramm';

  @override
  String windowTitle(String RELEASE) {
    return '$RELEASE installieren';
  }

  @override
  String get autoinstallDirectTitle => 'Automatisierte Installation';

  @override
  String get autoinstallDirectHeader => 'Autoinstall-Datei importieren';

  @override
  String get autoinstallDirectUrlLabel => 'Sie können die URL einer autoinstall-Datei eingeben:';

  @override
  String get autoinstallDirectFileLabel => 'Oder wählen Sie eine lokale Datei aus:';

  @override
  String get autoinstallDirectFileButtonLabel => 'Datei auswählen...';

  @override
  String get autoinstallDirectFileClearButtonLabel => 'Datei leeren';

  @override
  String get autoinstallDirectFilePickerTitle => 'Datei auswählen';

  @override
  String get autoinstallDirectFilePickerFilterLabel => 'YAML-Dateien';

  @override
  String get autoinstallDirectImportButtonLabel => 'Importieren';

  @override
  String get autoinstallDirectErrorNetworkTitle => 'Autoinstall-Datei ist nicht erreichbar';

  @override
  String get autoinstallDirectErrorNetworkBody => 'Überprüfen Sie, ob die URL korrekt ist, testen Sie Ihre Internetverbindung oder versuchen Sie es später.';

  @override
  String get autoinstallDirectErrorInvalidUrlTitle => 'Ungültige URL';

  @override
  String get autoinstallDirectErrorInvalidUrlBody => 'Überprüfen Sie, ob die URL korrekt ist, oder wählen Sie eine lokale Datei aus.';

  @override
  String get autoinstallDirectErrorInvalidContentTitle => 'Ungültige autoinstall-Datei';

  @override
  String get autoinstallDirectErrorInvalidContentBody => 'Überprüfen Sie die Datei oder stellen Sie eine andere Datei bereit.';

  @override
  String get autoinstallDirectErrorFileSystemTitle => 'Autoinstall-Datei ist nicht lesbar';

  @override
  String get autoinstallDirectErrorFileSystemBody => 'Überprüfen Sie Ihre Berechtigungen oder stellen Sie eine andere Datei bereit.';

  @override
  String get autoinstallDirectErrorUnkownTitle => 'Unbekannter Fehler';

  @override
  String get autoinstallTitle => 'Art der Installation';

  @override
  String autoinstallHeader(String DISTRO) {
    return 'Wie möchten Sie $DISTRO installieren?';
  }

  @override
  String get autoinstallInstructions => 'Geben Sie die URL der autoinstall.yaml oder den lokalen Dateipfad ein:';

  @override
  String get autoinstallInteractiveOption => 'Interaktive Installation';

  @override
  String get autoinstallInteractiveDescription => 'Für Benutzer, die Schritt für Schritt durch die Installation geführt werden möchten.';

  @override
  String get autoinstallDirectOption => 'Automatisiert mit autoinstall-Datei';

  @override
  String get autoinstallDirectDescription => 'Für fortgeschrittene Benutzer, die eine autoinstall.yaml für konsistente und wiederholbare Systemeinrichtungen haben.';

  @override
  String get autoinstallLandscapeOption => 'Automatisiert mit Landscape';

  @override
  String get autoinstallLandscapeDescription => 'Für Benutzer in Organisationen, die eine autoinstall-Datei über Landscape bereitstellen.';

  @override
  String get changeButtonText => 'Ändern';

  @override
  String get quitButtonText => 'Installation beenden';

  @override
  String loadingPageTitle(String DISTRO) {
    return 'Willkommen bei $DISTRO';
  }

  @override
  String loadingHeader(String DISTRO) {
    return '$DISTRO wird vorbereitet …';
  }

  @override
  String get warningLabel => 'Warnung:';

  @override
  String tryOrInstallTitle(String DISTRO) {
    return '$DISTRO ausprobieren oder installieren';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return 'Was möchten Sie mit $DISTRO machen?';
  }

  @override
  String get tryOrInstallRepairOption => 'Installation reparieren';

  @override
  String get tryOrInstallRepairDescription => 'Beim Reparieren wird die gesamte installierte Software neu installiert, ohne dass Dokumente oder Einstellungen angerührt werden.';

  @override
  String tryOption(String RELEASE) {
    return '$RELEASE ausprobieren';
  }

  @override
  String tryDescription(String RELEASE) {
    return 'Sie können $RELEASE ausprobieren, ohne irgendwelche Änderungen an Ihrem Computer vorzunehmen.';
  }

  @override
  String installOption(String RELEASE) {
    return '$RELEASE installieren';
  }

  @override
  String installDescription(String RELEASE) {
    return 'Installieren Sie $RELEASE neben (oder anstelle) Ihres aktuellen Betriebssystems. Dies sollte nicht allzu lange dauern.';
  }

  @override
  String tryOrInstallReleaseNotesLabel(String url) {
    return 'Vielleicht möchten Sie die <a href=\"$url\">Veröffentlichungshinweise</a> lesen.';
  }

  @override
  String get rstTitle => 'RST ist aktiviert';

  @override
  String get rstHeader => 'Zum Fortsetzen der Installation müssen Sie RST deaktivieren';

  @override
  String get rstDisable => 'Ihr Computer verwendet Intel RST (Rapid Storage Technology). Sie können RST entweder deaktivieren in:';

  @override
  String get rstDisableWindows => 'Windows, wenn Sie eine Dual-Boot-Konfiguration mit Windows verwenden';

  @override
  String get rstDisableBios => 'Die BIOS-Einstellungen';

  @override
  String rstInstructions(String url) {
    return 'Um Anweisungen zu erhalten, scannen Sie den QR-Code mit einem anderen Gerät oder besuchen Sie: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'Secure Boot konfigurieren';

  @override
  String get configureSecureBootDescription => 'Sie haben sich für die Installation von Treibersoftware von Drittanbietern entschieden. Dazu muss Secure Boot ausgeschaltet werden.\nDazu müssen Sie jetzt einen Sicherheitsschlüssel auswählen und ihn beim Neustart des Systems eingeben.';

  @override
  String get configureSecureBootOption => 'Secure Boot konfigurieren';

  @override
  String get chooseSecurityKey => 'Sicherheitsschlüssel auswählen';

  @override
  String get confirmSecurityKey => 'Sicherheitsschlüssel bestätigen';

  @override
  String get dontInstallDriverSoftwareNow => 'Installieren Sie die Treibersoftware vorerst nicht';

  @override
  String get dontInstallDriverSoftwareNowDescription => 'Sie können sie später über Software & Aktualisierungen installieren.';

  @override
  String get configureSecureBootSecurityKeyRequired => 'Ein Sicherheitsschlüssel ist erforderlich';

  @override
  String get secureBootSecurityKeysDontMatch => 'Die Sicherheitsschlüssel stimmen nicht überein';

  @override
  String get showSecurityKey => 'Sicherheitsschlüssel anzeigen';

  @override
  String get hideSecurityKey => 'Ausblenden';

  @override
  String get updatesOtherSoftwarePageTitle => 'Anwendungen und Aktualisierungen';

  @override
  String get updatesOtherSoftwarePageDescription => 'Welche Anwendungen möchten Sie am Anfang installieren?';

  @override
  String get codecsAndDriversPageTitle => 'Optimieren Sie Ihren Computer';

  @override
  String get codecsAndDriversPageDescription => 'Empfohlene proprietäre Software installieren?';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return 'Im Lieferumfang von $DISTRO ist standardmäßig keine proprietäre Software enthalten. Die Installation von zusätzlicher Software kann die Leistung Ihres Computers verbessern.';
  }

  @override
  String get codecsAndDriversNvidiaNote => 'NVIDIA-Grafikkarte erkannt';

  @override
  String get codecsAndDriversNvidiaBody => 'Um die beste Leistung von NVIDIA-Grafikkarten zu erzielen, wird die Installation zusätzlicher Treiber dringend empfohlen.';

  @override
  String get fullInstallationTitle => 'Vollständige Installation';

  @override
  String get fullInstallationSubtitle => 'Eine offline-freundliche Auswahl an Office-Programmen, Dienstprogrammen, Webbrowsern und Spielen.';

  @override
  String get minimalInstallationTitle => 'Standard-Installation';

  @override
  String get minimalInstallationSubtitle => 'Nur das Nötigste, Webbrowser und grundlegende Dienstprogramme.';

  @override
  String get otherOptions => 'Weitere Optionen';

  @override
  String get installThirdPartyTitle => 'Software von Drittanbietern für Grafik- und WLAN-Hardware sowie zusätzliche Medienformate installieren';

  @override
  String get installThirdPartySubtitle => 'Diese Software unterliegt den Lizenzbedingungen, die in der Dokumentation enthalten sind. Ein Teil davon ist proprietär.';

  @override
  String get installDriversTitle => 'Software von Drittanbietern für Grafik- und WLAN-Hardware installieren';

  @override
  String get installDriversSubtitle => 'Einschließlich, aber nicht beschränkt auf NVIDIA-Treiber und ähnliche';

  @override
  String get installCodecsTitle => 'Unterstützung für zusätzliche Medienformate herunterladen und installieren';

  @override
  String get installCodecsSubtitle => 'Einschließlich, aber nicht beschränkt auf MP3, MP4, MOV und ähnliche Formate';

  @override
  String get batteryWarning => 'Der Computer ist nicht an eine Stromquelle angeschlossen.';

  @override
  String get offlineWarning => 'Sie sind derzeit offline';

  @override
  String get choosePassphraseTitle => 'Festplatten-Passphrase';

  @override
  String get choosePassphraseHeader => 'Passphrase erstellen';

  @override
  String get choosePassphraseBody => 'Sie benötigen eine Passphrase, um Ihre Dateien zu verschlüsseln. Sie werden jedes Mal, wenn Sie Ihren Computer einschalten, zur Eingabe Ihrer Passphrase aufgefordert.';

  @override
  String get choosePassphraseHint => 'Passphrase auswählen';

  @override
  String get choosePassphraseConfirmHint => 'Passphrase bestätigen';

  @override
  String get choosePassphraseRequired => 'Eine Passphrase ist erforderlich';

  @override
  String get choosePassphraseMismatch => 'Die Passphrasen stimmen nicht überein';

  @override
  String get choosePassphraseInfoHeader => 'Bewahren Sie Ihre Passphrase an einem sicheren Ort auf';

  @override
  String get choosePassphraseInfoBody => 'Wenn Sie Ihre Passphrase verlieren, verlieren Sie alle Ihre Daten.';

  @override
  String get chooseOptionalPassphraseHeader => 'Passphrase erstellen (optional)';

  @override
  String get chooseOptionalPassphraseBody => 'Mit einer Passphrase können Sie Ihre Daten schützen, selbst wenn Ihre Hardware kompromittiert wird. Sie müssen die Passphrase jedes Mal eingeben, wenn Sie Ihren Computer einschalten. Sie können sie später nicht mehr entfernen';

  @override
  String get chooseOptionalPassphraseInfoHeader => 'Bewahren Sie Ihre Passphrase und Ihren Wiederherstellungsschlüssel an einem sicheren Ort auf';

  @override
  String get chooseOptionalPassphraseInfoBody => 'Wenn Sie Ihre Passphrase verlieren, verlieren Sie alle Ihre Daten. Die Passphrase ersetzt nicht den Wiederherstellungsschlüssel oder Ihr Benutzerpasswort.';

  @override
  String get createPassphrase => 'Passphrase erstellen';

  @override
  String get confirmPassphrase => 'Passphrase bestätigen';

  @override
  String get installationTypeTitle => 'Art der Installation';

  @override
  String installationTypeHeader(String DISTRO) {
    return 'Wie möchten Sie $DISTRO installieren?';
  }

  @override
  String installationTypeOSDetected(String os) {
    return 'Auf diesem Computer befindet sich momentan $os. Wie möchten Sie vorgehen?';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return 'Auf diesem Computer sind aktuell $os1 und $os2 installiert. Was möchten Sie tun?';
  }

  @override
  String get installationTypeMultiOSDetected => 'Auf diesem Computer sind aktuell mehrere Betriebssysteme installiert. Was möchten Sie tun?';

  @override
  String get installationTypeNoOSDetected => 'Auf diesem Computer befinden sich momentan keine erkannten Betriebssysteme. Wie möchten Sie vorgehen?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'Festplatte löschen und $DISTRO installieren';
  }

  @override
  String get installationTypeEraseInfo => 'Alle Daten und Partitionen auf der Festplatte, einschließlich der Betriebssysteme, werden gelöscht.';

  @override
  String get installationTypeAdvancedLabel => 'Erweiterte Optionen anzeigen ...';

  @override
  String get installationTypeAdvancedTitle => 'Verschlüsselung und Dateisystem';

  @override
  String get installationTypeExperimental => 'Experimentell';

  @override
  String get installationTypeNone => 'Keine Verschlüsselung';

  @override
  String get installationTypeNoneInfo => 'Standard-Dateisystem ohne Verschlüsselung.';

  @override
  String get installationTypeNoneSelected => 'Keine ausgewählt';

  @override
  String get installationTypeLVM => 'LVM ohne Verschlüsselung verwenden';

  @override
  String get installationTypeLVMSelected => 'LVM ausgewählt';

  @override
  String get installationTypeLVMEncryption => 'Mit einer Passphrase verschlüsseln';

  @override
  String get installationTypeLVMEncryptionInfo => 'Sie müssen jedes Mal, wenn Sie Ihren Computer einschalten, eine Passphrase eingeben. Hierbei wird LUKS-Verschlüsselung mit LVM verwendet.';

  @override
  String get installationTypeLVMEncryptionSelected => 'LVM und Verschlüsselung ausgewählt';

  @override
  String get installationTypeEncryptInfo => 'Im nächsten Schritt wählen Sie einen Sicherheitsschlüssel aus.';

  @override
  String get installationTypeZFS => 'ZFS ohne Verschlüsselung verwenden';

  @override
  String get installationTypeZFSEncryption => 'Mit einer Passphrase verschlüsseln unter Verwendung von ZFS';

  @override
  String get installationTypeZFSEncryptionInfo => 'Native Verschlüsselung mit ZFS. Sie müssen jedes Mal, wenn Sie Ihren Computer einschalten, eine Passphrase eingeben.';

  @override
  String get installationTypeZFSSelected => 'ZFS ausgewählt';

  @override
  String get installationTypeZFSEncryptionSelected => 'ZFS und Verschlüsselung ausgewählt';

  @override
  String get installationTypeTPM => 'Hardwaregestützte Verschlüsselung verwenden';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return '<a href=\"$url\">Informieren Sie sich über TPM-Verschlüsselung</a>, bevor Sie diese Option wählen. Dies funktioniert möglicherweise nicht mit Ihrer Hardware oder zukünftigen $DISTRO-Versionen.';
  }

  @override
  String get installationTypeTPMSelected => 'TPM ausgewählt';

  @override
  String installationTypeReinstall(String os) {
    return '$os löschen und neu installieren';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">Warning:</font> Dies wird alle Ihre Programme, Dokumente, Fotos, Musik und alle anderen Dateien von $os löschen.';
  }

  @override
  String installationTypeAlongside(String product, String os) {
    return '$product neben $os installieren';
  }

  @override
  String installationTypeAlongsideDual(String product, String os1, String os2) {
    return '$product neben $os1 und $os2 installieren';
  }

  @override
  String installationTypeAlongsideMulti(String product) {
    return '$product neben bestehenden Betriebssystemen installieren';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return '$product neben anderen Partitionen installieren';
  }

  @override
  String installationTypeAlongsideInfo(String product) {
    return 'Wählen Sie eine Partition zur Größenänderung aus, um Platz für $product zu schaffen. Sie können Ihr Betriebssystem beim Hochfahren auswählen.';
  }

  @override
  String installationTypeEraseAndInstall(String os, String product) {
    return '$os löschen und $product installieren';
  }

  @override
  String installationTypeEraseAndInstallInfo(String os) {
    return 'Alle Dateien und Daten der bestehenden Installation von $os werden endgültig gelöscht.';
  }

  @override
  String get installationTypeManual => 'Manuelle Installation';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'Für fortgeschrittene Benutzer, die individuelle Festplattenkonfigurationen wünschen.';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'Festplatte löschen und $DISTRO installieren';
  }

  @override
  String get selectGuidedStorageInfo => 'Auf der von Ihnen ausgewählten Festplatte von vorne beginnen.';

  @override
  String get selectGuidedStorageDriveDropdownLabel => 'Laufwerk auswählen:';

  @override
  String get selectGuidedStoragePartitionDropdownLabel => 'Partition auswählen:';

  @override
  String get selectGuidedStorageInfoLabel => 'Die gesamte Festplatte wird verwendet:';

  @override
  String get selectGuidedStorageInstallNow => 'Jetzt installieren';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return 'Wählen Sie aus, wo $DISTRO installiert werden soll';
  }

  @override
  String get installAlongsideSpaceDivider => 'Weisen Sie dem Laufwerk Speicherplatz zu, indem Sie die Trennlinie darunter ziehen:';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return '$num kleinere Partitionen werden ausgeblendet, verwenden Sie das <a href=\"$url\">erweiterte Partitionierungswerkzeug⁣</a> für mehr Kontrolle';
  }

  @override
  String get installAlongsideResizePartition => 'Größe der Partition ändern';

  @override
  String get installAlongsideAllocateSpace => 'Speicherplatz zuweisen';

  @override
  String get installAlongsideFiles => 'Dateien';

  @override
  String get installAlongsidePartition => 'Partition:';

  @override
  String get installAlongsideSize => 'Größe:';

  @override
  String get installAlongsideAvailable => 'Verfügbar:';

  @override
  String get allocateDiskSpace => 'Manuelle Partitionierung';

  @override
  String get allocateDiskSpaceInvalidMountPointSlash => 'Einhängepunkte müssen mit „/“ beginnen';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace => 'Einhängepunkte dürfen keine Leerzeichen enthalten';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(String mountpoint, String format) {
    return '$format ist ein nicht unterstütztes Dateisystem für $mountpoint';
  }

  @override
  String get diskHeadersDevice => 'Laufwerk';

  @override
  String get diskHeadersType => 'Verwendung';

  @override
  String get diskHeadersMountPoint => 'Einhängepunkt';

  @override
  String get diskHeadersSize => 'Größe';

  @override
  String get diskHeadersUsed => 'Belegt';

  @override
  String get diskHeadersSystem => 'System';

  @override
  String get diskHeadersFormat => 'Formatieren';

  @override
  String get freeDiskSpace => 'Freier Speicherplatz';

  @override
  String get newPartitionTable => 'Neue Partitionstabelle';

  @override
  String get newPartitionTableConfirmationTitle => 'Neue leere Partition';

  @override
  String get newPartitionTableConfirmationMessage => 'Die Erstellung einer neuen Partitionstabelle auf einem gesamten Gerät entfernt alle aktuellen Partitionen. Dieser Vorgang kann bei Bedarf rückgängig gemacht werden.';

  @override
  String get tooManyPrimaryPartitions => 'Zu viele primäre Partitionen';

  @override
  String get partitionLimitReached => 'Grenze erreicht';

  @override
  String get bootLoaderDevice => 'Laufwerk zur Installation des Bootloaders';

  @override
  String get partitionCreateTitle => 'Partition erstellen';

  @override
  String get partitionEditTitle => 'Partition bearbeiten';

  @override
  String get partitionSizeLabel => 'Größe:';

  @override
  String get partitionTypeLabel => 'Typ der neuen Partition:';

  @override
  String get partitionTypePrimary => 'Primär';

  @override
  String get partitionTypeLogical => 'Logisch';

  @override
  String get partitionLocationLabel => 'Ort der neuen Partition:';

  @override
  String get partitionLocationBeginning => 'Anfang dieses Bereichs';

  @override
  String get partitionLocationEnd => 'Ende dieses Bereichs';

  @override
  String get partitionFormatLabel => 'Verwendet als:';

  @override
  String get partitionFormatNone => 'Unformatiert lassen';

  @override
  String partitionFormatKeep(String format) {
    return 'Als $format formatiert lassen';
  }

  @override
  String get partitionErase => 'Partition formatieren';

  @override
  String get partitionMountPointLabel => 'Einhängepunkt:';

  @override
  String get confirmPageTitle => 'Bereit zur Installation';

  @override
  String get confirmHeader => 'Überprüfen Sie Ihre Auswahl';

  @override
  String get confirmDiskEncryptionLVM => 'LUKS (LVM)';

  @override
  String get confirmDiskEncryptionZFS => 'LUKS (ZFS)';

  @override
  String get confirmDiskEncryptionTPM => 'TPM';

  @override
  String get confirmDiskEncryptionNone => 'Keine';

  @override
  String get confirmDevicesTitle => 'Geräte';

  @override
  String get confirmEntryApplications => 'Anwendungen';

  @override
  String get confirmEntryDiskSetup => 'Art der Installation';

  @override
  String get confirmEntryDiskEncryption => 'Festplattenverschlüsselung';

  @override
  String get confirmEntryInstallationDisk => 'Installationsfestplatte';

  @override
  String get confirmEntryProprietarySoftware => 'Proprietäre Software';

  @override
  String get confirmSectionGeneralTitle => 'Allgemein';

  @override
  String get confirmSectionSecurityAndMoreTitle => 'Sicherheit & mehr';

  @override
  String get confirmPartitionsTitle => 'Partitionen';

  @override
  String get confirmPartitionTables => 'Die Partitionstabellen der folgenden Laufwerke werden geändert:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmProprietarySoftwareCodecs => 'Codecs';

  @override
  String get confirmProprietarySoftwareCodecsDrivers => 'Codecs & Treiber';

  @override
  String get confirmProprietarySoftwareDrivers => 'Treiber';

  @override
  String get confirmInstallButton => 'Installieren';

  @override
  String get confirmTableErased => 'Gelöscht';

  @override
  String get confirmTableUnchanged => 'Unverändert';

  @override
  String confirmTableResized(String oldsize, String newsize) {
    return 'Größe von $oldsize auf $newsize geändert';
  }

  @override
  String confirmTableCreatedFormattedMounted(String format, String mountpoint) {
    return 'Erstellt und als $format formatiert, verwendet für $mountpoint';
  }

  @override
  String confirmTableFormattedMounted(String format, String mountpoint) {
    return 'Als $format formatiert, verwendet für $mountpoint';
  }

  @override
  String confirmTableMounted(String mountpoint) {
    return 'Verwendet für $mountpoint';
  }

  @override
  String confirmTableFormatted(String format) {
    return 'Als $format formatiert';
  }

  @override
  String get installationCompleteTitle => 'Installation abgeschlossen';

  @override
  String readyToUse(String system) {
    return '$system ist installiert und einsatzbereit';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system** wurde auf die Festplatte kopiert';
  }

  @override
  String restartInto(String system) {
    return 'Neustart unter $system';
  }

  @override
  String get restartWarningBody => 'Starten Sie neu, um die Installation abzuschließen oder die Tests fortzusetzen.\nAlle Änderungen, die Sie vornehmen, werden nicht gespeichert.';

  @override
  String get rebootToConfigureWarning => 'Sie müssen den Computer neu starten, um den Installationsprozess fortzusetzen.';

  @override
  String get shutdown => 'Herunterfahren';

  @override
  String get restartNow => 'Jetzt neu starten';

  @override
  String get continueTesting => 'Testen fortsetzen';

  @override
  String get bitlockerInfoTitle => 'BitLocker erkannt';

  @override
  String get bitlockerInfoDescription => 'Eine oder mehrere Partitionen sind mit BitLocker verschlüsselt.';

  @override
  String get bitlockerInfoDisable => 'Für die Installation neben Windows müssen Sie BitLocker in Windows deaktivieren.';

  @override
  String get bitlockerInfoRecovery => 'Windows kann beim Hochfahren nach der Installation Wiederherstellungsschlüssel anfordern.';

  @override
  String bitlockerInfoInstructions(String url) {
    return 'Anleitungen finden Sie im <a href=\"$url\">BitLocker-Handbuch</a>.';
  }

  @override
  String get bitlockerWarningTitle => 'Ohne BitLocker-Wiederherstellungsschlüssel können Sie alle Ihre Daten verlieren';

  @override
  String get restartComputer => 'Computer neu starten';

  @override
  String get restartComputerTitle => 'Computer neu starten?';

  @override
  String get restartIntoWindows => 'Neustart in Windows';

  @override
  String get restartIntoWindowsTitle => 'Neustart in Windows hinein?';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return 'Sind Sie sicher, dass Sie Ihren Computer neu starten möchten? Sie müssen die Installation von $DISTRO später neu starten, um die Installation von $DISTRO abzuschließen.';
  }

  @override
  String installationSlidesTitle(String RELEASE) {
    return 'Willkommen bei $RELEASE';
  }

  @override
  String get installationSlidesAvailable => 'Verfügbar:';

  @override
  String get installationSlidesIncluded => 'Einschließlich:';

  @override
  String get installationSlidesWelcomeTitle => 'Schnell, kostenlos und mit vielen neuen Funktionen';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return 'Die neueste Version von $DISTRO macht Computerarbeiten so einfach wie nie zuvor.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'Egal, ob Sie Entwickler, Grafiker, Spieler oder Administrator sind, in $RELEASE finden Sie neue Werkzeuge, um Ihre Produktivität zu steigern und Ihre Erfahrung zu verbessern.';
  }

  @override
  String get installationSlidesSoftwareTitle => 'Alle Anwendungen, die Sie brauchen';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'Installieren, verwalten und aktualisieren Sie alle Ihre Anwendungen in Ubuntu Software, einschließlich Tausender von Anwendungen aus dem Snap Store und dem $DISTRO-Archiv.';
  }

  @override
  String get installationSlidesDevelopmentTitle => 'Entwickeln Sie mit dem Besten aus Open Source';

  @override
  String installationSlidesDevelopmentBody(String DISTRO) {
    return '$DISTRO ist die ideale Arbeitsumgebung für App- oder Webentwicklung, Datenwissenschaft und KI/ML sowie für Devops und Administration. Jede $DISTRO-Version enthält die neuesten Toolchains und unterstützt alle wichtigen IDEs.';
  }

  @override
  String get installationSlidesCreativityTitle => 'Steigern Sie Ihre Kreativität';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return 'Wenn Sie ein Animator, Designer, Videokünstler oder Spieleentwickler sind, können Sie Ihre Arbeitsabläufe dank der Unterstützung von Open-Source- und Industriestandard-Software und -Anwendungen ganz einfach in $DISTRO einbringen.';
  }

  @override
  String get installationSlidesGamingTitle => 'Ideal für Spiele';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return '$DISTRO unterstützt die neuesten NVIDIA- und Mesa-Treiber, um Leistung und Kompatibilität zu verbessern. Tausende von Windows-Titeln lassen sich auf $DISTRO über Anwendungen wie Steam ohne zusätzliche Konfiguration problemlos spielen.';
  }

  @override
  String get installationSlidesSecurityTitle => 'Privat und sicher';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return '$DISTRO bietet alle Werkzeuge, die Sie brauchen, um privat und sicher online zu sein. Mit integrierter Firewall- und VPN-Unterstützung und einer Vielzahl von datenschutzfreundlichen Anwendungen, die Ihnen die volle Kontrolle über Ihre Daten geben.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return 'Alle $DISTRO LTS-Versionen enthalten fünf Jahre lang Sicherheitspatches, mit einem Ubuntu Pro-Abonnement sogar zehn Jahre.';
  }

  @override
  String get installationSlidesProductivityTitle => 'Erhöhen Sie Ihre Produktivität';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return '$DISTRO Desktop enthält LibreOffice, eine Suite von Microsoft Office-kompatiblen quelloffenen Anwendungen für Dokumente, Tabellenkalkulationen und Präsentationen. Beliebte Werkzeuge für die Zusammenarbeit sind ebenfalls verfügbar.';
  }

  @override
  String get installationSlidesAccessibilityTitle => 'Zugänglichkeit für alle';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return 'Im Mittelpunkt der $DISTRO-Philosophie steht die Überzeugung, dass Computer für alle da sind. Mit fortschrittlichen Werkzeugen für die Barrierefreiheit und Optionen zum Ändern von Sprache, Farben und Textgröße macht $DISTRO das Computerarbeiten einfach - egal wer und wo Sie sind.';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'Orca-Screenreader';

  @override
  String get installationSlidesAccessibilityLanguages => 'Sprachunterstützung';

  @override
  String get installationSlidesSupportTitle => 'Hilfe & Unterstützung';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return 'Die offizielle $DISTRO-Dokumentation ist sowohl online als auch über das Hilfesymbol im Dock verfügbar.';
  }

  @override
  String get installationSlidesSupportCommunity => 'Ask Ubuntu deckt eine Reihe von Fragen und Antworten ab und der Ubuntu Discourse bietet Anleitungen und Diskussionen für neue und erfahrene Benutzer.';

  @override
  String get installationSlidesSupportEnterprise => 'Für Unternehmensanwender bietet Canonical kommerzielle Unterstützung an, um die Einführung und sichere Verwaltung von Ubuntu am Arbeitsplatz zu erleichtern.';

  @override
  String get installationSlidesSupportResources => 'Hilfreiche Ressourcen:';

  @override
  String get installationSlidesSupportDocumentation => 'Offizielle Dokumentation';

  @override
  String get installationSlidesSupportUbuntuPro => 'Unternehmenstaugliche 24/7-Unterstützung mit Ubuntu Pro';

  @override
  String get copyingFiles => 'Dateien werden kopiert …';

  @override
  String get installingSystem => 'System wird installiert …';

  @override
  String get configuringSystem => 'System wird eingerichtet …';

  @override
  String get installationFailed => 'Installation fehlgeschlagen';

  @override
  String get notEnoughDiskSpaceTitle => 'Nicht genug Festplattenplatz';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return 'Nicht genügend Festplattenplatz für die Installation von $DISTRO';
  }

  @override
  String notEnoughDiskSpaceBody(String DISTRO) {
    return 'Auf der ausgewählten Festplatte ist nicht genügend Speicherplatz für die Installation von $DISTRO vorhanden. Beenden Sie das Installationsprogramm, um Platz zu schaffen, oder wählen Sie ein anderes Laufwerk aus.';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'Verfügbar:';

  @override
  String get notEnoughDiskSpaceRequired => 'Erforderlich:';

  @override
  String get refreshPageTitle => 'Aktualisierung verfügbar';

  @override
  String get refreshHeader => 'Für das Installationsprogramm ist eine Aktualisierung verfügbar';

  @override
  String get refreshUpdateNow => 'Jetzt aktualisieren';

  @override
  String get refreshInfo => 'Aktualisieren Sie auf die neueste Version, um eine verbesserte Zuverlässigkeit und mehr Funktionen zu erhalten.';

  @override
  String get refreshReady => 'Aktualisierung bereit';

  @override
  String refreshCurrent(String snap, String version) {
    return 'Die aktuelle $snap-Version ist $version.';
  }

  @override
  String refreshInstall(String version) {
    return 'Aktualisierung auf Version $version';
  }

  @override
  String refreshUpToDate(String version) {
    return 'Die aktuelle Version $version ist auf dem neuesten Stand.';
  }

  @override
  String refreshUpdating(String snap) {
    return '$snap wird aktualisiert ...';
  }

  @override
  String get refreshRestart => 'Bitte schließen Sie das Installationsprogramm und starten Sie es erneut, um fortzufahren';

  @override
  String get refreshCloseLabel => 'Installationsprogramm schließen';

  @override
  String refreshSnapPrerequisites(String snap) {
    return 'Voraussetzungen für $snap werden sichergestellt ...';
  }

  @override
  String refreshSnapRefresh(String snap) {
    return '$snap wird aufgefrischt ...';
  }

  @override
  String refreshSnapCheckRerefresh(String snap) {
    return 'Erneute $snap-Auffrischung wird überprüft ...';
  }

  @override
  String refreshSnapPrepare(String snap) {
    return '$snap wird vorbereitet ...';
  }

  @override
  String refreshSnapDownload(String snap) {
    return '$snap wird heruntergeladen ...';
  }

  @override
  String refreshSnapValidate(String snap) {
    return '$snap wird validiert ...';
  }

  @override
  String refreshSnapMount(String snap) {
    return '$snap wird eingehängt ...';
  }

  @override
  String refreshSnapStopServices(String snap) {
    return '$snap-Dienste werden gestoppt ...';
  }

  @override
  String refreshSnapRemoveAliases(String snap) {
    return '$snap-Aliase werden entfernt ...';
  }

  @override
  String refreshSnapUnlink(String snap) {
    return 'Verknüpfung zu $snap wird aufgehoben ...';
  }

  @override
  String refreshSnapUpdateAssets(String snap) {
    return '$snap-Güter werden aktualisiert ...';
  }

  @override
  String refreshSnapUpdateKernelCommandLine(String snap) {
    return '$snap-Kernel-Befehlszeile wird aktualisiert ...';
  }

  @override
  String refreshSnapCopyData(String snap) {
    return '$snap-Daten werden kopiert ...';
  }

  @override
  String refreshSnapSetupProfiles(String snap) {
    return '$snap-Sicherheitsprofile werden eingerichtet ...';
  }

  @override
  String refreshSnapLink(String snap) {
    return '$snap wird verknüpft ...';
  }

  @override
  String refreshSnapAutoConnect(String snap) {
    return '$snap-Stecker und -Steckplätze werden verbunden ...';
  }

  @override
  String refreshSnapSetAutoAliases(String snap) {
    return 'Automatische $snap-Aliase werden festgelegt ...';
  }

  @override
  String refreshSnapSetupAliases(String snap) {
    return '$snap-Aliase werden eingerichtet ...';
  }

  @override
  String refreshSnapStartServices(String snap) {
    return '$snap-Dienste werden gestartet ...';
  }

  @override
  String refreshSnapCleanup(String snap) {
    return '$snap wird bereinigt ...';
  }

  @override
  String get recoveryKeyTitle => 'TPM-Wiederherstellungsschlüssel';

  @override
  String get recoveryKeyHeader => 'Wiederherstellungsschlüssel erhalten';

  @override
  String get recoveryKeyInfoHeader => 'Ohne einen Wiederherstellungsschlüssel können Sie alle Ihre Daten verlieren';

  @override
  String get recoveryKeyTextFieldLabel => 'Recovery key';

  @override
  String get recoveryKeyStorageAdvice => 'Bewahren Sie den Wiederherstellungsschlüssel an einem sicheren Ort auf. Verwenden Sie ihn zum Entschlüsseln der Festplatte im Falle bestimmter Systemänderungen. Sie benötigen ihn zum Beispiel, wenn Sie die Komponenten in Ihrem Computer ändern oder die Firmware aktualisieren.';

  @override
  String get recoveryKeyConfirmation => 'Ich verstehe, dass ich alle meine Daten verlieren kann, wenn ich keinen Wiederherstellungsschlüssel habe';

  @override
  String get recoveryKeyLinkLabel => 'Mehr erfahren';

  @override
  String get recoveryKeySaveToFileLabel => 'Save to file';

  @override
  String get recoveryKeyShowQrCodeLabel => 'Show QR code';

  @override
  String recoveryKeyQrDialogTitle(String DISTRO) {
    return '$DISTRO Desktop - Recovery key';
  }

  @override
  String get recoveryKeyQrDialogBody => 'Scan the QR code to copy the recovery key and save it somewhere safe and accessible, such as a password manager. You can also take a photo for later use.';

  @override
  String landscapeMagicAttachInstructions(String url) {
    return 'Scannen Sie den QR-Code oder geben Sie den unten stehenden Code unter <a href=\"https://$url\">$url</a> ein';
  }

  @override
  String get landscapePageTitle => 'Automatisierte Installation';

  @override
  String get landscapeHeader => 'Bei Landscape anmelden';

  @override
  String get landscapeDomainHeader => 'Landscape-Domain (FQDN) eingeben';

  @override
  String get landscapeDomainHintText => 'Landscape-Domäne (FQDN)';

  @override
  String get landscapeDomainInstructions => 'Geben Sie die Landscape-Domain Ihrer Organisation an, um sich anzumelden und eine autoinstall-Datei abzurufen. Sie erhalten die FQDN von Ihrem IT-Support.';

  @override
  String get landscapeDomainTextField => 'Landscape-Domain (FQDN)';

  @override
  String get next => 'Weiter';

  @override
  String get landscapeDomainInvalidDomainWarning => 'Ungültige Domain, bitte überprüfen oder kontaktieren Sie Ihren IT-Support';

  @override
  String get landscapeDomainNoInternetTitleWarning => 'Stellen Sie eine Internetverbindung her, um fortzufahren';

  @override
  String get landscapeDomainNoInternetDescriptionWarning => 'Internet wird benötigt, um die autoinstall-Datei von Landscape abzurufen';

  @override
  String get landscapeCodeExpiredWarning => 'Code abgelaufen, bitte versuchen Sie es erneut';

  @override
  String get landscapeLoginFailedWarning => 'Anmeldung fehlgeschlagen, bitte versuchen Sie es erneut';

  @override
  String get landscapeErrorPageTitle => 'Automatisierte Installation ist für Ihr Konto nicht verfügbar';

  @override
  String get landscapeErrorPageBody => 'Wenden Sie sich an Ihren IT-Support oder versuchen Sie eine andere Installationsoption.';

  @override
  String landscapeErrorPageCode(String code) {
    return 'Fehlercode: $code';
  }

  @override
  String get landscapeConfirmPageSuccessInfoTitle => 'Ubuntu wird mit der von Ihrer Organisation bereitgestellten Konfiguration installiert';

  @override
  String get landscapeConfirmPageSuccessInfoContent => 'Sie können die aus Landscape importierte autoinstall-Datei unten einsehen.';
}
