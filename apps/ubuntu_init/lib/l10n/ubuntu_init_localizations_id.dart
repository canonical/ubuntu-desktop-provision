// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_init_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class UbuntuInitLocalizationsId extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get welcomePageTitle => 'Selamat Datang';

  @override
  String welcomePageHeader(String distro) {
    return 'Selamat datang di $distro';
  }

  @override
  String get welcomeWhatsNew => 'APA YANG BARU?';

  @override
  String get welcomeStartTitle => 'Awal yang dirampingkan';

  @override
  String get welcomeStartSubtitle =>
      'Mendukung pengalaman penyiapan yang lebih bersih.';

  @override
  String get welcomeStoreTitle => 'Tampilan baru App Store';

  @override
  String get welcomeStoreSubtitle =>
      'Tidak pernah lebih mudah untuk menemukan perangkat lunak favorit Anda.';

  @override
  String get welcomeSecurityTitle => 'Keamanan yang ditingkatkan';

  @override
  String get welcomeSecuritySubtitle =>
      'Opsi baru untuk enkripsi ZFS atau yang didukung perangkat keras.';

  @override
  String welcomeChangelogLabel(String url) {
    return '<a href=\"$url\">Lihat changelog</a>';
  }

  @override
  String get telemetryPageTitle => 'Telemetri';

  @override
  String telemetryHeader(String distro) {
    return 'Bantu meningkatkan $distro';
  }

  @override
  String telemetryDescription(String distro) {
    return 'Bantu kami meningkatkan $distro dengan membagikan data sistem Anda dengan kami. Ini termasuk hal-hal seperti model mesin Anda, perangkat lunak yang terpasang, dan lokasi yang Anda pilih untuk zona waktu Anda.';
  }

  @override
  String telemetryLabelOn(String distro) {
    return 'Ya, bagikan data sistem dengan tim $distro';
  }

  @override
  String get telemetryLabelOff => 'Tidak, jangan bagikan data sistem';

  @override
  String get telemetryReportLabel => 'Tampilkan laporan pertama';

  @override
  String get telemetryReportTitle => 'Melaporkan rincian';

  @override
  String get telemetryLegalLabel => 'Pemberitahuan legal';

  @override
  String get telemetryCollectError => 'Gagal mengumpulkan data telemetri';

  @override
  String get privacyPageTitle => 'Layanan lokasi';

  @override
  String get privacyLocationTitle => 'Fungsikan layanan lokasi?';

  @override
  String get privacyLocationSubtitle =>
      'Mengizinkan aplikasi mengetahui lokasi geografis Anda.\nAnda dapat mengubah ini kapan pun dalam Pengaturan Sistem.';

  @override
  String get privacyLocationEnable => 'Layanan lokasi';

  @override
  String get privacyPolicyLink => 'Privasi Data';

  @override
  String ubuntuProMagicAttachInstructions(String url) {
    return 'Pencantolan ajaib dengan kode ini pada <a href=\"https://$url\"></a>';
  }

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';

  @override
  String get ubuntuProHeader => 'Cantolkan mesin ini';

  @override
  String get ubuntuProOrAddTokenManually =>
      'atau tambahkan suatu token secara manual';

  @override
  String get ubuntuProTokenTextfieldHint => 'Token';

  @override
  String get ubuntuProSubscriptionDescription =>
      'Dapatkan langganan yang paling komprehensif untuk keamanan perangkat lunak sumber terbuka';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(String url) {
    return 'Selalu bebas untuk penggunaan pribadi. Uji coba 30 hari bagi perusahaan. <a href=\"https://$url\">Pelajari lebih lanjut</a>';
  }

  @override
  String get ubuntuProTokenAttachButton => 'Cantolkan';

  @override
  String get ubuntuProTokenAttachError => 'Token tidak valid';

  @override
  String get ubuntuProTokenAttachSucess => 'Token valid';

  @override
  String get ubuntuProTokenAttachErrorVariant => 'Token tidak valid, coba lagi';

  @override
  String get ubuntuProOnBoardingSkipForNow => 'Lewati dulu';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription =>
      'Anda selalu dapat mengaktifkan Ubuntu Pro nanti melalui aplikasi Perangkat Lunak & Pembaruan.';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => 'Fungsikan Ubuntu Pro';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription =>
      'Cantolkan mesin ini ke suatu langganan Ubuntu Pro untuk pembaruan keamanan pada berbagai paket, hingga 2032.';

  @override
  String get ubuntuProSucessAttachHeader =>
      'Ubuntu Pro kini difungsikan pada mesin ini';

  @override
  String get ubuntuProSucessAttachDescription =>
      'Anda dapat mengelola layanan Pro Anda dalam aplikasi Perangkat Lunak & Pembaruan.';
}
