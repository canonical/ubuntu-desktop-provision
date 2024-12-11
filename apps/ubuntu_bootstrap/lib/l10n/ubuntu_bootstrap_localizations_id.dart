import 'ubuntu_bootstrap_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class UbuntuBootstrapLocalizationsId extends UbuntuBootstrapLocalizations {
  UbuntuBootstrapLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get appTitle => 'Penginstal Desktop Ubuntu';

  @override
  String windowTitle(String RELEASE) {
    return 'Pasang $RELEASE';
  }

  @override
  String get autoinstallTitle => 'Tipe instalasi';

  @override
  String autoinstallHeader(String DISTRO) {
    return 'Bagaimana Anda ingin memasang $DISTRO?';
  }

  @override
  String get autoinstallInstructions => 'Masukkan URL atau jalur berkas lokal autoinstall.yaml:';

  @override
  String get autoinstallInteractiveOption => 'Pemasangan Interaktif';

  @override
  String get autoinstallInteractiveDescription => 'Untuk pengguna yang ingin melalui pemasangan terpandu langkah demi langkah.';

  @override
  String get autoinstallAutomatedOption => 'Pemasang Otomatis';

  @override
  String get autoinstallAutomatedDescription => 'Untuk pengguna lanjutan yang memiliki autoinstall.yaml untuk pemasangan yang konsisten dan dapat diulang.';

  @override
  String get changeButtonText => 'Ubah';

  @override
  String get quitButtonText => 'Keluar dari pemasangan';

  @override
  String loadingPageTitle(String DISTRO) {
    return 'Selamat datang di $DISTRO';
  }

  @override
  String loadingHeader(String DISTRO) {
    return 'Menyiapkan $DISTRO…';
  }

  @override
  String get warningLabel => 'Peringatan:';

  @override
  String tryOrInstallTitle(String DISTRO) {
    return 'Coba atau pasang';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return 'Apa yang Anda ingin lakukan dengan $DISTRO?';
  }

  @override
  String get tryOrInstallRepairOption => 'Perbaiki instalasi';

  @override
  String get tryOrInstallRepairDescription => 'Perbaikan akan memasang ulang semua perangkat lunak yang dipasang tanpa menyentuh dokumen atau pengaturan.';

  @override
  String tryOption(String RELEASE) {
    return 'Coba $RELEASE';
  }

  @override
  String tryDescription(String RELEASE) {
    return 'Anda dapat mencoba $RELEASE tanpa membuat perubahan apa pun pada komputer Anda.';
  }

  @override
  String installOption(String RELEASE) {
    return 'Pasang $RELEASE';
  }

  @override
  String installDescription(String RELEASE) {
    return 'Pasang $RELEASE bersama (atau sebagai pengganti) sistem operasi Anda saat ini. Ini seharusnya tidak memakan waktu terlalu lama.';
  }

  @override
  String tryOrInstallReleaseNotesLabel(String url) {
    return 'Anda mungkin ingin membaca <a href=\"$url\">catatan rilis</a>.';
  }

  @override
  String get rstTitle => 'Matikan RST';

  @override
  String get rstHeader => 'Nonaktifkan RST untuk melanjutkan';

  @override
  String rstDescription(String DISTRO) {
    return 'Komputer ini menggunakan Intel RST (Rapid Storage Technology). Anda harus mematikan RST di Windows sebelum memasang Ubuntu.';
  }

  @override
  String rstInstructions(String url) {
    return 'Untuk petunjuk, buka halaman ini di ponsel atau perangkat lain: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'Konfigurasikan Boot Aman';

  @override
  String get configureSecureBootDescription => 'Anda telah memilih untuk memasang perangkat lunak driver pihak ketiga. Ini membutuhkan mematikan Boot Aman.\nUntuk melakukan ini, Anda harus memilih kunci keamanan sekarang, dan memasukkannya saat sistem dimulai ulang.';

  @override
  String get configureSecureBootOption => 'Konfigurasikan Boot Aman';

  @override
  String get chooseSecurityKey => 'Pilih kunci keamanan';

  @override
  String get confirmSecurityKey => 'Konfirmasi kunci keamanan';

  @override
  String get dontInstallDriverSoftwareNow => 'Jangan pasang perangkat lunak driver untuk saat ini';

  @override
  String get dontInstallDriverSoftwareNowDescription => 'Anda dapat memasangnya nanti dari Perangkat Lunak & Pembaruan.';

  @override
  String get configureSecureBootSecurityKeyRequired => 'Kunci keamanan diperlukan';

  @override
  String get secureBootSecurityKeysDontMatch => 'Kunci keamanan tidak cocok';

  @override
  String get showSecurityKey => 'Tampilkan kunci keamanan';

  @override
  String get hideSecurityKey => 'Sembunyikan';

  @override
  String get updatesOtherSoftwarePageTitle => 'Pembaruan dan perangkat lunak lainnya';

  @override
  String get updatesOtherSoftwarePageDescription => 'Aplikasi apa yang ingin Anda pasang untuk memulai?';

  @override
  String get codecsAndDriversPageTitle => 'Optimalkan komputer Anda';

  @override
  String get codecsAndDriversPageDescription => 'Pasang perangkat lunak berpemilik yang direkomendasikan?';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return '$DISTRO dikirimkan tanpa perangkat lunak berpemilik sebagai default. Memasang perangkat lunak tambahan dapat meningkatkan performa komputer Anda.';
  }

  @override
  String get codecsAndDriversNvidiaNote => 'Kartu grafis NVIDIA terdeteksi';

  @override
  String get codecsAndDriversNvidiaBody => 'Untuk performa kartu grafis NVIDIA terbaik, memasang driver tambahan sangat direkomendasikan.';

  @override
  String get fullInstallationTitle => 'Pemilihan luas';

  @override
  String get fullInstallationSubtitle => 'Pilihan yang ramah luring alat kerja kantor, alat dan browser.';

  @override
  String get minimalInstallationTitle => 'PIlihan default';

  @override
  String get minimalInstallationSubtitle => 'Hanya yang penting, browser web dan utilitas dasar.';

  @override
  String get otherOptions => 'Opsi lain';

  @override
  String get installThirdPartyTitle => 'Pasang perangkat lunak pihak ketiga untuk perangkat keras Wi-Fi dan grafis, serta format media tambahan';

  @override
  String get installThirdPartySubtitle => 'Perangkat lunak ini tunduk pada persyaratan lisensi disertakan dengan dokumentasinya. Beberapa adalah proprietary.';

  @override
  String get installDriversTitle => 'Pasang perangkat lunak ketiga untuk grafis dan perangkat keras Wi-Fi';

  @override
  String get installDriversSubtitle => 'Termasuk tetapi tidak terbatas pada driver NVIDIA atau yang sejenisnya';

  @override
  String get installCodecsTitle => 'Unduh dan pasang dukungan untuk format media tambahan';

  @override
  String get installCodecsSubtitle => 'Termasuk tetapi tidak terbatas pada MP3, MP4, MOV, dan sejenisnya';

  @override
  String get batteryWarning => 'Komputer ini tidak terhubung pada sumber daya.';

  @override
  String get offlineWarning => 'Anda sekarang sedang luring';

  @override
  String get choosePassphraseTitle => 'Frasa sandi disk';

  @override
  String get choosePassphraseHeader => 'Buat frasa sandi';

  @override
  String get choosePassphraseBody => 'Anda perlu frasa sandi untuk mengenkripsi berkas Anda. Anda akan diminta untuk frasa sandi Anda setiap kali Anda menyalakan komputer Anda.';

  @override
  String get choosePassphraseHint => 'Pilih frasa sandi';

  @override
  String get choosePassphraseConfirmHint => 'Konfirmasikan frasa sandi';

  @override
  String get choosePassphraseRequired => 'Frasa sandi diperlukan';

  @override
  String get choosePassphraseMismatch => 'Frasa sandi tidak cocok';

  @override
  String get choosePassphraseInfoHeader => 'Pastikan Anda menyimpan frasa sandi Anda';

  @override
  String get choosePassphraseInfoBody => 'Jika Anda kehilangan frasa sandi Anda, Anda akan kehilangan semua data Anda.';

  @override
  String get createPassphrase => 'Buat frasa sandi';

  @override
  String get confirmPassphrase => 'Konfirmasikan frasa sandi';

  @override
  String get installationTypeTitle => 'Tipe instalasi';

  @override
  String installationTypeHeader(String DISTRO) {
    return 'Bagaimana Anda ingin memasang $DISTRO?';
  }

  @override
  String installationTypeOSDetected(String os) {
    return 'Komputer ini saat ini memiliki $os di dalamnya. Apa yang ingin Anda lakukan?';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return 'Komputer ini sudah memiliki $os1 dan $os2 di dalamnya. Apa yang ingin Anda lakukan?';
  }

  @override
  String get installationTypeMultiOSDetected => 'Komputer ini memiliki beberapa sistem operasi di dalamnya. Apa yang ingin Anda lakukan?';

  @override
  String get installationTypeNoOSDetected => 'Komputer ini saat ini tidak memiliki sistem operasi yang terdeteksi. Apa yang ingin Anda lakukan?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'Hapus disk dan pasang $DISTRO';
  }

  @override
  String get installationTypeEraseInfo => 'Mulai dari awal pada disk terpilih.';

  @override
  String get installationTypeAdvancedLabel => 'Fitur Tingkat Lanjut...';

  @override
  String get installationTypeAdvancedTitle => 'Fitur-fitur tingkat lanjut';

  @override
  String get installationTypeExperimental => 'Eksperimental';

  @override
  String get installationTypeNone => 'Nihil';

  @override
  String get installationTypeNoneSelected => 'Tidak ada yang dipilih';

  @override
  String get installationTypeLVM => 'Gunakan LVM';

  @override
  String get installationTypeLVMSelected => 'LVM dipilih';

  @override
  String get installationTypeLVMEncryption => 'Gunakan LVM dan enkripsi';

  @override
  String get installationTypeLVMEncryptionSelected => 'LVM dan enkripsi terpilih';

  @override
  String get installationTypeEncryptInfo => 'Anda akan memilih kunci keamanan di langkah berikutnya.';

  @override
  String get installationTypeZFS => 'EKSPERIMENTAL: Hapus disk dan gunakan ZFS';

  @override
  String get installationTypeZFSEncryption => 'Hapus disk dan gunakan ZFS dengan enkripsi';

  @override
  String get installationTypeZFSSelected => 'ZFS dipilih';

  @override
  String get installationTypeZFSEncryptionSelected => 'ZFS dan enkripsi terpilih';

  @override
  String get installationTypeTPM => 'Aktifkan enkripsi disk penuh yang didukung perangkat keras';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return 'Ini adalah fitur eksperimental. Mungkin tidak bekerja dengan perangkat keras Anda atau rilis $DISTRO berikutnya. <a href=\"$url\">Baca tentang enkripsi TPM</a> sebelum Anda memilih opsi ini.';
  }

  @override
  String get installationTypeTPMSelected => 'TPM dipilih';

  @override
  String installationTypeReinstall(String os) {
    return 'Hapus $os dan pasang ulang';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">Peringatan:</font> Ini akan menghapus semua program $os, dokumen, foto, musik, dan sebarang berkas lain.';
  }

  @override
  String installationTypeAlongside(String product, String os) {
    return 'Pasang $product bersama $os';
  }

  @override
  String installationTypeAlongsideDual(String product, String os1, String os2) {
    return 'Pasang $product bersama dengan $os1 dan $os2';
  }

  @override
  String installationTypeAlongsideMulti(String product) {
    return 'Pasang $product bersamaan dengan yang lain';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return 'Pasang $product bersamaan dengan partisi lain';
  }

  @override
  String installationTypeAlongsideInfo(String product) {
    return 'Dokumen, musik, dan berkas-berkas pribadi lain akan disimpan. Anda dapat memilih sistem operasi yang Anda inginkan setiap kali komputer dinyalakan.';
  }

  @override
  String installationTypeEraseAndInstall(String os, String product) {
    return 'Erase $os and install $product';
  }

  @override
  String installationTypeEraseAndInstallInfo(String os) {
    return 'Warning: All files and data from the existing $os installation will be permenantly deleted.';
  }

  @override
  String get installationTypeManual => 'Sesuatu yang lain';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'Anda dapat membuat atau mengubah ukuran partisi sendiri, atau memilih beberapa partisi untuk $DISTRO';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'Hapus disk dan pasang $DISTRO';
  }

  @override
  String get selectGuidedStorageInfo => 'Mulai dari awal pada disk terpilih.';

  @override
  String get selectGuidedStorageDriveDropdownLabel => 'Pilih drive:';

  @override
  String get selectGuidedStoragePartitionDropdownLabel => 'Pilih partisi:';

  @override
  String get selectGuidedStorageInfoLabel => 'Seluruh disk akan digunakan:';

  @override
  String get selectGuidedStorageInstallNow => 'Pasang Sekarang';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return 'Pilih di mana $DISTRO dipasang';
  }

  @override
  String get installAlongsideSpaceDivider => 'Alokasi ruang drive dengan menyeret pemisah di bawah:';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return '$num partisi yang lebih kecil disembunyikan, gunakan <a href=\"$url\">alat partisi lanjutan</a> untuk kontrol lebih banyak';
  }

  @override
  String get installAlongsideResizePartition => 'Ubah ukuran partisi';

  @override
  String get installAlongsideAllocateSpace => 'Alokasikan ruang';

  @override
  String get installAlongsideFiles => 'Berkas';

  @override
  String get installAlongsidePartition => 'Partisi:';

  @override
  String get installAlongsideSize => 'Ukuran:';

  @override
  String get installAlongsideAvailable => 'Tersedia:';

  @override
  String get allocateDiskSpace => 'Alokasikan ruang disk';

  @override
  String get allocateDiskSpaceInvalidMountPointSlash => 'Titik pasang harus dimulai dengan \"/\"';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace => 'Titik pemasangan tidak dapat mengandung spasi';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(Object format, Object mountpoint) {
    return '$format is not a supported filesystem for $mountpoint';
  }

  @override
  String get diskHeadersDevice => 'Perangkat';

  @override
  String get diskHeadersType => 'Tipe';

  @override
  String get diskHeadersMountPoint => 'Titik kait';

  @override
  String get diskHeadersSize => 'Ukuran';

  @override
  String get diskHeadersUsed => 'Dipakai';

  @override
  String get diskHeadersSystem => 'Sistem';

  @override
  String get diskHeadersFormat => 'Format';

  @override
  String get freeDiskSpace => 'Ruang bebas';

  @override
  String get newPartitionTable => 'Tabel partisi baru';

  @override
  String get newPartitionTableConfirmationTitle => 'Buat suatu tabel partisi baru yang kosong pada peranti ini?';

  @override
  String get newPartitionTableConfirmationMessage => 'Anda telah memilih seluruh peranti untuk dipartisi. Bila Anda melanjutkan membuat suatu tabel partisi baru pada peranti ini, maka semua partisi saat ini akan dihapus.\n\nPerhatikan bahwa Anda akan dapat membatalkan operasi ini nanti bila Anda mau.';

  @override
  String get tooManyPrimaryPartitions => 'Terlalu banyak partisi utama';

  @override
  String get partitionLimitReached => 'Batas tercapai';

  @override
  String get bootLoaderDevice => 'Perangkat untuk instalasi boot loader';

  @override
  String get partitionCreateTitle => 'Buat partisi';

  @override
  String get partitionEditTitle => 'Sunting partisi';

  @override
  String get partitionSizeLabel => 'Ukuran:';

  @override
  String get partitionTypeLabel => 'Tipe partisi baru:';

  @override
  String get partitionTypePrimary => 'Primer';

  @override
  String get partitionTypeLogical => 'Logis';

  @override
  String get partitionLocationLabel => 'Lokasi untuk partisi baru:';

  @override
  String get partitionLocationBeginning => 'Awal dari ruang ini';

  @override
  String get partitionLocationEnd => 'Akhir dari ruang ini';

  @override
  String get partitionFormatLabel => 'Dipakai sebagai:';

  @override
  String get partitionFormatNone => 'Biarkan tidak terformat';

  @override
  String partitionFormatKeep(String format) {
    return 'Biarkan terformat sebagai $format';
  }

  @override
  String get partitionErase => 'Format partisi';

  @override
  String get partitionMountPointLabel => 'Titik kait:';

  @override
  String get confirmPageTitle => 'Tulis perubahan ke disk';

  @override
  String get confirmHeader => 'Jika Anda melanjutkan, perubahan yang tercantum di bawah ini akan ditulis ke disk. Anda akan dapat membuat perubahan lebih lanjut secara manual.';

  @override
  String get confirmDiskEncryptionLVM => 'LUKS (LVM)';

  @override
  String get confirmDiskEncryptionZFS => 'LUKS (ZFS)';

  @override
  String get confirmDiskEncryptionTPM => 'TPM';

  @override
  String get confirmDiskEncryptionNone => 'Tidak ada';

  @override
  String get confirmDevicesTitle => 'Perangkat';

  @override
  String get confirmEntryApplications => 'Aplikasi';

  @override
  String get confirmEntryDiskSetup => 'Penyiapan Disk';

  @override
  String get confirmEntryDiskEncryption => 'Enkripsi disk';

  @override
  String get confirmEntryInstallationDisk => 'Disk instalasi';

  @override
  String get confirmEntryProprietarySoftware => 'Perangkat lunak berpemilik';

  @override
  String get confirmSectionGeneralTitle => 'Umum';

  @override
  String get confirmSectionSecurityAndMoreTitle => 'Keamanan & lainnya';

  @override
  String get confirmPartitionsTitle => 'Partisi';

  @override
  String get confirmPartitionTables => 'Tabel partisi perangkat berikut diubah:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmPartitionChanges => 'Partisi berikut akan diformat:';

  @override
  String confirmPartitionResize(String sysname, String oldsize, String newsize) {
    return 'Partisi <b>$sysname</b> diubah ukurannya dari <b>$oldsize</b> menjadi <b>$newsize</b>';
  }

  @override
  String confirmPartitionFormatMount(String sysname, String format, String mount) {
    return 'Partisi <b>$sysname</b> diformat sebagai <b>$format</b> digunakan untuk <b>$mount</b>';
  }

  @override
  String confirmPartitionFormat(String sysname, String format) {
    return 'Partisi <b>$sysname</b> diformat sebagai <b>$format</b>';
  }

  @override
  String confirmPartitionMount(String sysname, String mount) {
    return 'Partisi <b>$sysname</b> digunakan sebagai <b>$mount</b>';
  }

  @override
  String confirmPartitionCreate(String sysname) {
    return 'Partisi <b>$sysname</b> dibuat';
  }

  @override
  String get confirmProprietarySoftwareCodecs => 'Kodek';

  @override
  String get confirmProprietarySoftwareCodecsDrivers => 'Kodek & driver';

  @override
  String get confirmProprietarySoftwareDrivers => 'Driver';

  @override
  String get confirmInstallButton => 'Mulai Memasang';

  @override
  String get installationCompleteTitle => 'Instalasi selesai';

  @override
  String readyToUse(String system) {
    return '$system telah terpasang dan siap digunakan.';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system** telah disalin ke disk';
  }

  @override
  String restartInto(String system) {
    return 'Mulai ulang ke $system';
  }

  @override
  String get restartWarningBody => 'Mulai ulang untuk menyelesaikan instalasi atau lanjutkan percobaan.\nPerubahan apapun yang Anda buat tidak akan disimpan.';

  @override
  String get rebootToConfigureWarning => 'Anda harus memulai ulang komputer untuk melanjutkan proses instalasi.';

  @override
  String get shutdown => 'Matikan';

  @override
  String get restartNow => 'Mulai ulang sekarang';

  @override
  String get continueTesting => 'Lanjutkan mencoba';

  @override
  String get bitlockerTitle => 'Matikan BitLocker';

  @override
  String get bitlockerHeader => 'Nonaktifkan BitLocker untuk melanjutkan';

  @override
  String bitlockerDescription(String option) {
    return 'Komputer ini menggunakan enkripsi Windows BitLocker.\nAnda perlu mematikan BitLocker di Windows sebelum memasang Ubuntu.';
  }

  @override
  String bitlockerInstructions(String url) {
    return 'Untuk petunjuk, buka halaman ini di ponsel atau perangkat lain: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get restartIntoWindows => 'Mulai Ulang Ke Windows';

  @override
  String get restartIntoWindowsTitle => 'Mulai ulang ke Windows?';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return 'Apakah Anda yakin ingin memulai ulang komputer? Anda perlu memulai ulang instalasi $DISTRO nanti untuk menyelesaikan instalasi $DISTRO.';
  }

  @override
  String installationSlidesTitle(String RELEASE) {
    return 'Selamat datang di $RELEASE';
  }

  @override
  String get installationSlidesAvailable => 'Tersedia:';

  @override
  String get installationSlidesIncluded => 'Termasuk:';

  @override
  String get installationSlidesWelcomeTitle => 'Cepat, gratis dan penuh fitur baru';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return 'Versi terbaru $DISTRO membuat komputasi lebih cepat daripada sebelumnya.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'Baik Anda seorang pengembang, kreator, gamer atau administrator Anda dapat selalu menemukan alat baru untuk meningkatkan produktivitas Anda dan meningkatkan pengalaman $RELEASE Anda.';
  }

  @override
  String get installationSlidesSoftwareTitle => 'Semua aplikasi yang Anda butuhkan';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'Pasang, kelola dan perbarui semua aplikasi Anda di Ubuntu Software, termasuk ribuan aplikasi dari Snap Store dan arsip $DISTRO.';
  }

  @override
  String get installationSlidesDevelopmentTitle => 'Kembangkan dengan open-source terbaik';

  @override
  String installationSlidesDevelopmentBody(String DISTRO) {
    return '$DISTRO adalah stasiun kerja yang ideal untuk pengembangan aplikasi dan web, data science dan AI/ML serta DevOps dan administrasi. Setiap rilis $DISTRO berisi alat terbaru dan dukungan untuk semua IDE utama.';
  }

  @override
  String get installationSlidesCreativityTitle => 'Tingkatkan kreativitas Anda';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return 'Jika Anda seorang animator, desainer, kreator video atau pengembang game sangat mudah untuk membawa alur kerja Anda ke $DISTRO dengan dukungan untuk sumber terbuka dan standar industri perangkat lunak dan aplikasi.';
  }

  @override
  String get installationSlidesGamingTitle => 'Bagus untuk gaming';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return '$DISTRO mendukung driver terbaru NVIDIA dan Mesa untuk meningkatkan performa dan kompatibilitas. Ribuan judul Windows dapat dimainkan dengan baik pada $DISTRO melalui aplikasi seperti Stream tanpa konfigurasi tambahan.';
  }

  @override
  String get installationSlidesSecurityTitle => 'Privat dan aman';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return '$DISTRO menyediakan semua alat yang Anda butuhkan untuk online secara pribadi dan aman. Dengan firewall dan dukungan VPN bawaan serta sejumlah aplikasi yang berfokus pada privasi Anda untuk memastikan Anda tetap mendapatkan dukungan penuh terhadap data Anda.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return 'Semua rilis LTS $DISTRO dilengkapi dengan tambalan keamanan selama 5 tahun, diperpanjang hingga 10 tahun dengan langganan Ubuntu Pro.';
  }

  @override
  String get installationSlidesProductivityTitle => 'Tingkatkan produktivitas Anda';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return '$DISTRO Desktop dilengkapi dengan LibreOffice, sebuah aplikasi sumber terbuka yang kompatibel dengan Microsoft Office untuk dokumen, spreadsheet, dan presentasi. Alat kolaborasi popular juga tersedia.';
  }

  @override
  String get installationSlidesAccessibilityTitle => 'Akses untuk semua orang';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return 'Inti dari filosofi $DISTRO adalah percaya bahwa komputasi untuk semua orang. Dengan alat aksesibilitas lanjutan dan opsi untuk mengubah bahasa, warna dan ukuran teks, $DISTRO membuat komputasi menjadi lebih mudah - siapa pun dan di mana pun Anda berada.';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'Pembaca Layar Orca';

  @override
  String get installationSlidesAccessibilityLanguages => 'Dukungan bahasa';

  @override
  String get installationSlidesSupportTitle => 'Bantuan dan Dukungan';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return 'Dokumentasi resmi $DISTRO tersedia secara online dan melalui ikon Bantuan pada dok.';
  }

  @override
  String get installationSlidesSupportCommunity => 'Ask Ubuntu memiliki sejumlah pertanyaan dan bantuan dan Ubuntu Discourse menyediakan panduan dan diskusi untuk pengguna baru dan lanjutan.';

  @override
  String get installationSlidesSupportEnterprise => 'Untuk pengguna perusahaan, Canonical menyediakan dukungan komersial untuk memudahkan untuk melakukan onboarding dan mengelola Ubuntu dengan aman dalam tempat kerja.';

  @override
  String get installationSlidesSupportResources => 'Sumber daya berguna:';

  @override
  String get installationSlidesSupportDocumentation => 'Dokumentasi resmi';

  @override
  String get installationSlidesSupportUbuntuPro => 'Dukungan tingkat perusahaan 24/7 dengan Ubuntu Pro';

  @override
  String get copyingFiles => 'Menyalin berkas…';

  @override
  String get installingSystem => 'Memasang sistem…';

  @override
  String get configuringSystem => 'Menyiapkan sistem…';

  @override
  String get installationFailed => 'Pemasangan gagal';

  @override
  String get notEnoughDiskSpaceTitle => 'Ruang disk tidak cukup';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return 'Tidak cukup ruang disk untuk memasang $DISTRO';
  }

  @override
  String notEnoughDiskSpaceBody(String DISTRO) {
    return 'Disk terpilih tidak memiliki ruang yang cukup untuk memasang $DISTRO. Keluar dari pemasang untuk menyediakan ruang dan pilih disk lain.';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'Tersedia:';

  @override
  String get notEnoughDiskSpaceRequired => 'Diperlukan:';

  @override
  String get refreshPageTitle => 'Pembaruan tersedia';

  @override
  String get refreshHeader => 'Pembaruan tersedia untuk pemasang';

  @override
  String get refreshUpdateNow => 'Perbarui sekarang';

  @override
  String get refreshInfo => 'Perbarui ke versi terbaru untuk keandalan yang ditingkatkan dan fitur yang lebih banyak.';

  @override
  String get refreshReady => 'Pembaruan siap';

  @override
  String refreshCurrent(String snap, String version) {
    return 'Versi $snap saat ini adalah $version.';
  }

  @override
  String refreshInstall(String version) {
    return 'Perbarui ke versi $version';
  }

  @override
  String refreshUpToDate(String version) {
    return 'Versi saat ini $version sudah terbaru.';
  }

  @override
  String refreshUpdating(String snap) {
    return 'Memperbarui $snap...';
  }

  @override
  String get refreshRestart => 'Tutup pemasang dan jalankan ulang untuk melanjutkan';

  @override
  String get refreshCloseLabel => 'Tutup pemasang';

  @override
  String refreshSnapPrerequisites(String snap) {
    return 'Memastikan prasyarat $snap...';
  }

  @override
  String refreshSnapRefresh(String snap) {
    return 'Menyegarkan ulang $snap...';
  }

  @override
  String refreshSnapCheckRerefresh(String snap) {
    return 'Memeriksa penyegaran ulang $snap...';
  }

  @override
  String refreshSnapPrepare(String snap) {
    return 'Menyiapkan $snap...';
  }

  @override
  String refreshSnapDownload(String snap) {
    return 'Mengunduh $snap...';
  }

  @override
  String refreshSnapValidate(String snap) {
    return 'Memvalidasi $snap...';
  }

  @override
  String refreshSnapMount(String snap) {
    return 'Memasang $snap...';
  }

  @override
  String refreshSnapStopServices(String snap) {
    return 'Menghentikan layanan $snap...';
  }

  @override
  String refreshSnapRemoveAliases(String snap) {
    return 'Menghapus alias $snap...';
  }

  @override
  String refreshSnapUnlink(String snap) {
    return 'Melepas tautan $snap...';
  }

  @override
  String refreshSnapUpdateAssets(String snap) {
    return 'Memperbarui aset $snap...';
  }

  @override
  String refreshSnapUpdateKernelCommandLine(String snap) {
    return 'Memperbarui baris perintah kernel $snap...';
  }

  @override
  String refreshSnapCopyData(String snap) {
    return 'Menyalin data $snap...';
  }

  @override
  String refreshSnapSetupProfiles(String snap) {
    return 'Menyiapkan profil keamanan $snap...';
  }

  @override
  String refreshSnapLink(String snap) {
    return 'Menautkan $snap...';
  }

  @override
  String refreshSnapAutoConnect(String snap) {
    return 'Menghubungkan plug dan slot $snap...';
  }

  @override
  String refreshSnapSetAutoAliases(String snap) {
    return 'Mengatur alias otomatis $snap...';
  }

  @override
  String refreshSnapSetupAliases(String snap) {
    return 'Menyiapkan alias $snap...';
  }

  @override
  String refreshSnapStartServices(String snap) {
    return 'Memulai layanan $snap...';
  }

  @override
  String refreshSnapCleanup(String snap) {
    return 'Membersihkan $snap...';
  }

  @override
  String get recoveryKeyTitle => 'Kunci pemulihan TPM';

  @override
  String get recoveryKeyCommand => 'Anda dapat mengakses kunci keamanan setelah instalasi dengan perintah berikut:';

  @override
  String recoveryKeyWarning(String color) {
    return '<font color=\"$color\">Peringatan:</font> Jika Anda kehilangan kunci keamanan, semua data akan hilang. Jika perlu, tuliskan kunci Anda dan simpan di tempat yang aman.';
  }

  @override
  String get validate => 'Validasi';
}
