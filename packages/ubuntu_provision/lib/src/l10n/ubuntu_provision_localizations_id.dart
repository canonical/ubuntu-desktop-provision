// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_provision_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class UbuntuProvisionLocalizationsId extends UbuntuProvisionLocalizations {
  UbuntuProvisionLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get accessibilityPageTitle => 'Aksesibilitas';

  @override
  String accessibilityPageHeader(String DISTRO) {
    return 'Aksesibilitas dalam $DISTRO';
  }

  @override
  String accessibilityPageBody(String DISTRO) {
    return 'Sesuaikan $DISTRO untuk kebutuhan Anda sebelum Anda menyiapkan. Anda dapat mengubahnya nanti dalam Pengaturan Sistem.';
  }

  @override
  String get accessibilitySeeingLabel => 'Penglihatan';

  @override
  String get accessibilityHearingLabel => 'Pendengaran';

  @override
  String get accessibilityTypingLabel => 'Mengetik';

  @override
  String get accessibilityPointingLabel => 'Menunjuk dan mengklik';

  @override
  String get accessibilityZoomLabel => 'Zum';

  @override
  String get accessibilityHighContrastLabel => 'Kontras tinggi';

  @override
  String get accessibilityLargeTextLabel => 'Teks besar';

  @override
  String get accessibilityReduceAnimationLabel => 'Kurangi animasi';

  @override
  String get accessibilityScreenReaderLabel => 'Pembaca layar';

  @override
  String get accessibilityVisualAlertsLabel => 'Peringatan visual';

  @override
  String get accessibilityStickKeysLabel => 'Tombol lengket';

  @override
  String get accessibilitySlowKeysLabel => 'Tombol lambat';

  @override
  String get accessibilityMouseKeysLabel => 'Tombol tetikus';

  @override
  String get accessibilityDesktopZoomLabel => 'Zum desktop';

  @override
  String get errorPageTitle => 'Ada yang salah';

  @override
  String get errorPageUnexpected => 'Kami minta maaf, tetapi kami tidak yakin apa kesalahannya. Anda dapat mencoba menjalankan ulang komputer Anda dan memulai proses instalasi lagi. Anda juga dapat <a>melaporkan masalah</a>.';

  @override
  String errorPageUbuntuBug(String SNAP) {
    return 'Untuk mengirim suatu laporan bug secara otomatis yang menyertakan informasi debug yang relevan, harap jalankan <pre>sudo ubuntu-bug $SNAP</pre> dalam suatu terminal, atau dari konsol perintah (Alt+F2).';
  }

  @override
  String get errorPageShowLog => 'Tampilkan log';

  @override
  String get errorPageHideLog => 'Sembunyikan log';

  @override
  String get restart => 'Jalankan Ulang';

  @override
  String get close => 'Tutup';

  @override
  String get timezonePageTitle => 'Pilih zona waktu Anda';

  @override
  String get timezoneLocationLabel => 'Lokasi';

  @override
  String get timezoneTimezoneLabel => 'Zona waktu';

  @override
  String get keyboardTitle => 'Tata letak papan ketik';

  @override
  String get keyboardHeader => 'Pilih tata letak papan ketik Anda';

  @override
  String get keyboardTestHint => 'Ketik di sini untuk menguji papan ketik Anda';

  @override
  String get keyboardDetectTitle => 'Deteksi Tata Letak Papan Ketik';

  @override
  String get keyboardDetectButton => 'Deteksi';

  @override
  String get keyboardVariantLabel => 'Pilih varian papan ketik Anda:';

  @override
  String get keyboardPressKeyLabel => 'Silakan tekan salah satu tombol berikut:';

  @override
  String get keyboardKeyPresentLabel => 'Apakah tombol berikut ada di papan ketik Anda?';

  @override
  String get themePageTitle => 'Pilih penampilan Anda';

  @override
  String get themePageHeader => 'Anda selalu dapat mengubahnya nanti di pengaturan tampilan.';

  @override
  String get themeDark => 'Gelap';

  @override
  String get themeLight => 'Terang';

  @override
  String localePageTitle(String DISTRO) {
    return 'Selamat datang di $DISTRO';
  }

  @override
  String get localeHeader => 'Pilih bahasa Anda:';

  @override
  String get identityPageTitle => 'Buat akun Anda';

  @override
  String get identityAutoLogin => 'Masuk secara otomatis';

  @override
  String get identityRequirePassword => 'Perlu kata sandi saya untuk masuk';

  @override
  String get identityRealNameLabel => 'Namamu';

  @override
  String get identityRealNameRequired => 'Sebuah nama diperlukan';

  @override
  String get identityRealNameTooLong => 'Nama itu terlalu panjang.';

  @override
  String get identityHostnameLabel => 'Nama komputer Anda';

  @override
  String get identityHostnameInfo => 'Nama yang digunakannya saat berbicara dengan komputer lain.';

  @override
  String get identityHostnameRequired => 'Sebuah nama komputer diperlukan';

  @override
  String get identityHostnameTooLong => 'Nama komputer itu terlalu panjang.';

  @override
  String get identityInvalidHostname => 'Nama komputer tidak valid';

  @override
  String get identityUsernameLabel => 'Pilih nama pengguna';

  @override
  String get identityUsernameRequired => 'Nama pengguna diperlukan';

  @override
  String get identityInvalidUsername => 'Nama pengguna tidak valid';

  @override
  String get identityUsernameInUse => 'Nama pengguna sudah ada.';

  @override
  String get identityUsernameSystemReserved => 'Nama itu dicadangkan untuk penggunaan sistem.';

  @override
  String get identityUsernameTooLong => 'Nama itu terlalu panjang.';

  @override
  String get identityUsernameInvalidChars => 'Nama itu mengandung karakter yang tidak valid.';

  @override
  String get identityPasswordLabel => 'Pilih sebuah kata sandi';

  @override
  String get identityPasswordRequired => 'Kata sandi diperlukan';

  @override
  String get identityConfirmPasswordLabel => 'Konfirmasikan kata sandi Anda';

  @override
  String get identityPasswordMismatch => 'Kata sandi tidak cocok';

  @override
  String get identityPasswordShow => 'Tampilkan';

  @override
  String get identityPasswordHide => 'Sembunyikan';

  @override
  String get identityActiveDirectoryOption => 'Gunakan Active Directory';

  @override
  String get identityActiveDirectoryInfo => 'Anda akan memasukkan domain dan rincian lain dalam langkah berikutnya.';

  @override
  String get activeDirectoryTitle => 'Log masuk ke Active Directory';

  @override
  String get activeDirectoryHeader => 'Log masuk ke Active Directory?';

  @override
  String activeDirectoryInfo(String DISTRO) {
    return '$DISTRO dirancang untuk berintegrasi secara mulus dengan Active Directory untuk administrasi yang lebih mudah.';
  }

  @override
  String get activeDirectoryTestConnection => 'Uji konektivitas domain';

  @override
  String get activeDirectoryDomainLabel => 'Domain';

  @override
  String get activeDirectoryDomainEmpty => 'Dibutuhkan';

  @override
  String get activeDirectoryDomainTooLong => 'Terlalu panjang';

  @override
  String get activeDirectoryDomainInvalidChars => 'Karakter tidak valid';

  @override
  String get activeDirectoryDomainStartDot => 'Mulai dengan titik (.)';

  @override
  String get activeDirectoryDomainEndDot => 'Berakhir dengan titik (.)';

  @override
  String get activeDirectoryDomainStartHyphen => 'Mulai dengan tanda sambung (-)';

  @override
  String get activeDirectoryDomainEndHyphen => 'Berakhir dengan tanda sambung (-)';

  @override
  String get activeDirectoryDomainMultipleDots => 'Mengandung beberapa titik berurutan (..)';

  @override
  String get activeDirectoryDomainNotFound => 'Domain tidak ditemukan';

  @override
  String get activeDirectoryAdminLabel => 'Pengguna untuk bergabung ke domain';

  @override
  String get activeDirectoryAdminEmpty => 'Dibutuhkan';

  @override
  String get activeDirectoryAdminInvalidChars => 'Karakter tidak valid';

  @override
  String get activeDirectoryPasswordLabel => 'Kata sandi';

  @override
  String get activeDirectoryPasswordEmpty => 'Dibutuhkan';

  @override
  String get activeDirectoryErrorTitle => 'Galat saat mengonfigurasi koneksi ke Active Directory';

  @override
  String get activeDirectoryErrorMessage => 'Maaf, Active Directory tidak dapat disiapkan saat ini. Setelah sistem Anda hidup dan berjalan, kunjungi <a href=\"https://help.ubuntu.com/activedirectory\">help.ubuntu.com/activedirectory </a> untuk bantuan.';

  @override
  String get networkPageTitle => 'Menyambung ke internet';

  @override
  String get networkPageHeader => 'Hubungkan ke internet';

  @override
  String get networkPageBody => 'Suatu koneksi internet akan memperbaiki instalasi Anda dengan pemeriksaan kompatibilitas dan paket perangkat lunak ekstra.';

  @override
  String get networkWiredOption => 'Gunakan sambungan kabel';

  @override
  String get networkWiredNone => 'Tidak ada sambungan kabel yang terdeteksi';

  @override
  String get networkWiredOff => 'Koneksi lewat kabel dimatikan';

  @override
  String get networkWiredDisabled => 'Untuk memakai Ethernet pada komputer ini, suatu koneksi lewat kabel mesti difungsikan';

  @override
  String get networkWiredEnable => 'Fungsikan lewat kabel';

  @override
  String get networkWifiOption => 'Menyambung ke suatu jaringan Wi-Fi';

  @override
  String get networkWifiOff => 'Jaringan nirkabel dinonaktifkan';

  @override
  String get networkWifiNone => 'Tidak ada peranti Wi-Fi yang terdeteksi';

  @override
  String get networkWifiDisabled => 'Untuk memakai Wi-Fi pada komputer ini, jaringan nirkabel mesti difungsikan';

  @override
  String get networkWifiEnable => 'Fungsikan Wi-Fi';

  @override
  String get networkHiddenWifiOption => 'Menyambung ke jaringan Wi-Fi tersembunyi';

  @override
  String get networkHiddenWifiNameLabel => 'Nama jaringan';

  @override
  String get networkHiddenWifiNameRequired => 'Nama jaringan diperlukan';

  @override
  String get networkNoneOption => 'Saya tidak ingin tersambung ke internet saat ini';

  @override
  String get eulaPageTitle => 'Persetujuan lisensi';

  @override
  String get eulaReviewTerms => 'Tinjau persyaratan lisensi';

  @override
  String get eulaReadAndAcceptTerms => 'Untuk melanjutkan penyiapan mesin ini, Anda harus membaca dan menerima persyaratan perjanjian lisensi.';

  @override
  String get eulaAcceptTerms => 'Saya telah membaca dan menerima syarat-syarat ini';
}
