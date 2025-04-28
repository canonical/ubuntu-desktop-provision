// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'factory_reset_tools_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class FactoryResetToolsLocalizationsTr extends FactoryResetToolsLocalizations {
  FactoryResetToolsLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appTitle => 'Sıfırlama araçları';

  @override
  String get windowTitle => 'Sıfırlama Araçları';

  @override
  String get homeTitle => 'Ne yapmak istersiniz?';

  @override
  String get createResetMedia => 'Sıfırlama medyası oluşturun';

  @override
  String get startFactoryReset => 'Sıfırlamayı başlat';

  @override
  String get createUsbTitle => 'USB Sıfırlama medyası oluşturun';

  @override
  String get createUsbBody => 'Sistemi eski haline getirmek ve Ubuntu kurulumlarınızı özelleştirmek için bir USB sıfırlama medyası oluşturun.';

  @override
  String get createUsbListExplanation => 'Bir USB flaş belleği seçin. Bu bellekte en az **16 GB** depolama alanı olmalıdır.';

  @override
  String get createUsbWarning => 'Flaş belleği sıfırlanacak ve içerisindeki bütün veriler kaybolacaktır.';

  @override
  String get resetMediaTitle => 'USB sıfırlama medyası';

  @override
  String get noMediaDetected => 'Çıkarılabilir bir depolama cihazı bulunamadı';

  @override
  String get noMediaDetectedSubtitle => 'Sıfırlama medyası oluşturmak için bir USB depolama cihazına ihtiyacınız var.';

  @override
  String get factoryResetTitle => 'Sıfırlamak için bir seçeneği seçin';

  @override
  String get loadingDrives => 'Lütfen depolama cihazlarını algılayana kadar bekleyin.';

  @override
  String get resetMediaReadyTitle => 'USB sıfırlama cihazı hazır';

  @override
  String get resetMediaReadyBody => 'Kullanmak istediğinizde, sıfırlayacağınız bilgisayara USB flaş belleği takın ve yeniden başlatın.';

  @override
  String get errorLoadingDrives => 'Depolama cihazlarını algılarken bir hata oluştu.';

  @override
  String get resetMediaInitializing => 'Initializing';

  @override
  String get resetMediaCopying => 'Copying';

  @override
  String get resetMediaFinalizing => 'Finalizing';

  @override
  String get resetMediaFinished => 'Finished';

  @override
  String get resetMediaFailed => 'Failed';

  @override
  String get error => 'Error';

  @override
  String get loading => 'Loading...';

  @override
  String get warning => 'Warning';

  @override
  String get restore => 'Restore';

  @override
  String get restart => 'Yeniden Başlat';

  @override
  String get reformat => 'Reformat';

  @override
  String get failed => 'Failed to run command';

  @override
  String get close => 'Kapat';

  @override
  String get ok => 'OK';
}
