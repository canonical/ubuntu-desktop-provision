import 'factory_reset_tools_localizations.dart';

/// The translations for Indonesian (`id`).
class FactoryResetToolsLocalizationsId extends FactoryResetToolsLocalizations {
  FactoryResetToolsLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get appTitle => 'Alat reset pabrik';

  @override
  String get windowTitle => 'Alat reset pabrik';

  @override
  String get homeTitle => 'Apa yang ingin Anda lakukan?';

  @override
  String get createResetMedia => 'Membuat media reset';

  @override
  String get startFactoryReset => 'Mulai reset pabrik';

  @override
  String get createUsbTitle => 'Membuat suatu media reset USB';

  @override
  String get createUsbBody => 'Membuat suatu media reset USB untuk memulihkan sistem, maupun untuk menyesuaikan instalasi Ubuntu Anda.';

  @override
  String get createUsbListExplanation => 'Pilih sebuah flash drive USB. Drive harus memiliki **setidaknya ruang 16GB.**';

  @override
  String get createUsbWarning => 'Flash drive akan diformat ulang dan semua data di drive akan hilang.';

  @override
  String get resetMediaTitle => 'Media reset USB';

  @override
  String get noMediaDetected => 'Tidak ada penyimpanan lepasan yang terdeteksi';

  @override
  String get noMediaDetectedSubtitle => 'Anda perlu suatu penyimpanan USB untuk membuat sebuah Media Reset Pabrik.';

  @override
  String get factoryResetTitle => 'Pilih suatu opsi untuk memulai reset pabrik';

  @override
  String get loadingDrives => 'Harap tunggu ketika kami mengambil drive.';

  @override
  String get resetMediaReadyTitle => 'Media reset USB siap';

  @override
  String get resetMediaReadyBody => 'Ketika Anda ingin menggunakannya, tancapkan USB drive ke komputer yang ingin Anda reset dan jalankan ulang itu.';

  @override
  String get errorLoadingDrives => 'Kesalahan terjadi saat mengambil drive.';

  @override
  String get resetMediaInitializing => 'Menginisialisasi';

  @override
  String get resetMediaCopying => 'Menyalin';

  @override
  String get resetMediaFinalizing => 'Memfinalisasi';

  @override
  String get resetMediaFinished => 'Selesai';

  @override
  String get resetMediaFailed => 'Gagal';

  @override
  String get error => 'Galat';

  @override
  String get loading => 'Memuat...';

  @override
  String get warning => 'Peringatan';

  @override
  String get restore => 'Pulihkan';

  @override
  String get restart => 'Jalankan Ulang';

  @override
  String get reformat => 'Format Ulang';

  @override
  String get failed => 'Gagal menjalankan perintah';

  @override
  String get close => 'Tutup';

  @override
  String get ok => 'Ok';
}
