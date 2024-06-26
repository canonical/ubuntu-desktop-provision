import 'ubuntu_bootstrap_localizations.dart';

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
  String get autoinstallAutomatedOption => 'Automatisierte Installation';

  @override
  String get autoinstallAutomatedDescription => 'Für fortgeschrittene Benutzer, die eine autoinstall.yaml für konsistente und wiederholbare Systemeinrichtungen haben.';

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
  String get rstHeader => 'Schalten Sie RST aus, um fortzufahren';

  @override
  String rstDescription(String DISTRO) {
    return 'Dieser Computer verwendet Intel RST (Rapid Storage Technology). Vor der Installation von $DISTRO muss RST in Windows ausgeschaltet werden.';
  }

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
  String get choosePassphraseInfoHeader => 'Stellen Sie sicher, dass Sie Ihre Passphrase speichern';

  @override
  String get choosePassphraseInfoBody => 'Wenn Sie Ihre Passphrase verlieren, verlieren Sie alle Ihre Daten.';

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
  String get installationTypeEraseInfo => 'Auf der von Ihnen ausgewählten Festplatte von vorne beginnen.';

  @override
  String get installationTypeAdvancedLabel => 'Erweiterte Funktionen ...';

  @override
  String get installationTypeAdvancedTitle => 'Erweiterte Funktionen';

  @override
  String get installationTypeExperimental => 'Experimentell';

  @override
  String get installationTypeNone => 'Keine';

  @override
  String get installationTypeNoneSelected => 'Keine ausgewählt';

  @override
  String get installationTypeLVM => 'LVM verwenden';

  @override
  String get installationTypeLVMSelected => 'LVM ausgewählt';

  @override
  String get installationTypeLVMEncryption => 'LVM und Verschlüsselung verwenden';

  @override
  String get installationTypeLVMEncryptionSelected => 'LVM und Verschlüsselung ausgewählt';

  @override
  String get installationTypeEncryptInfo => 'Im nächsten Schritt wählen Sie einen Sicherheitsschlüssel aus.';

  @override
  String get installationTypeZFS => 'EXPERIMENTELL: Festplatte löschen und ZFS verwenden';

  @override
  String get installationTypeZFSEncryption => 'Festplatte löschen und ZFS mit Verschlüsselung verwenden';

  @override
  String get installationTypeZFSSelected => 'ZFS ausgewählt';

  @override
  String get installationTypeZFSEncryptionSelected => 'ZFS und Verschlüsselung ausgewählt';

  @override
  String get installationTypeTPM => 'EXPERIMENTELL: Hardwaregestützte vollständige Festplattenverschlüsselung aktivieren';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return 'Dies ist eine experimentelle Funktion. Sie funktioniert möglicherweise nicht mit Ihrer Hardware oder zukünftigen Versionen von $DISTRO. <a href=\"$url\">Informieren Sie sich über TPM-Verschlüsselung</a>, bevor Sie diese Option auswählen.';
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
    return '$product neben diesen installieren';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return '$product neben anderen Partitionen installieren';
  }

  @override
  String get installationTypeAlongsideInfo => 'Dokumente, Musik und andere persönliche Dateien bleiben erhalten. Sie können bei jedem Start des Computers auswählen, welches Betriebssystem Sie verwenden möchten.';

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
  String get confirmEntryDiskSetup => 'Festplatteneinrichtung';

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
  String get confirmPartitionChanges => 'Die folgenden Partitionsänderungen werden vorgenommen:';

  @override
  String confirmPartitionResize(String sysname, String oldsize, String newsize) {
    return 'Größe der Partition <b>$sysname</b> von <b>$oldsize</b> auf <b>$newsize</b> geändert';
  }

  @override
  String confirmPartitionFormatMount(String sysname, String format, String mount) {
    return 'Partition <b>$sysname</b> formatiert als <b>$format</b> verwendet für <b>$mount</b>';
  }

  @override
  String confirmPartitionFormat(String sysname, String format) {
    return 'Partition <b>$sysname</b> formatiert als <b>$format</b>';
  }

  @override
  String confirmPartitionMount(String sysname, String mount) {
    return 'Partition <b>$sysname</b> verwendet für <b>$mount</b>';
  }

  @override
  String confirmPartitionCreate(String sysname) {
    return 'Partition <b>$sysname</b> erstellt';
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
  String get bitlockerTitle => 'BitLocker ist aktiviert';

  @override
  String get bitlockerHeader => 'Schalten Sie BitLocker aus, um fortzufahren';

  @override
  String bitlockerDescription(String option) {
    return 'Dieser Computer verwendet die Windows-BitLocker-Verschlüsselung.\nSie müssen Windows verwenden, um freien Speicherplatz zu schaffen, oder wählen Sie \'$option\', um fortzufahren.';
  }

  @override
  String bitlockerInstructions(String url) {
    return 'Für Anweisungen scannen Sie den QR-Code mit einem anderen Gerät oder besuchen Sie: <a href=\"https://$url\">$url</a>';
  }

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
  String get recoveryKeyCommand => 'Sie können nach der Installation mit folgendem Befehl auf Ihren Wiederherstellungsschlüssel zugreifen:';

  @override
  String recoveryKeyWarning(String color) {
    return '<font color=\"$color\">Warnung:</font> Wenn Sie diesen Sicherheitsschlüssel verlieren, sind alle Daten verloren. Bei Bedarf notieren Sie sich den Schlüssel und bewahren ihn an einem sicheren Ort auf.';
  }

  @override
  String get validate => 'Validieren';
}
