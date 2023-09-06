import 'ubuntu_init_localizations.dart';

/// The translations for Turkish (`tr`).
class UbuntuInitLocalizationsTr extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get welcomePageTitle => 'Hoş Geldiniz';

  @override
  String welcomePageHeader(Object distro) {
    return '$distro dağıtımına hoş geldiniz';
  }

  @override
  String get welcomeWhatsNew => 'NELER YENİ?';

  @override
  String get welcomeStartTitle => 'Modern bir başlangıç';

  @override
  String get welcomeStartSubtitle => 'Daha temiz bir kurulum deneyimini destekler.';

  @override
  String get welcomeStoreTitle => 'Yeni görünüm Uygulama Mağazası';

  @override
  String get welcomeStoreSubtitle => 'Gözde yazılımınızı bulmak hiç bu kadar kolay olmamıştı.';

  @override
  String get welcomeSecurityTitle => 'Arttırılmış güvenlik';

  @override
  String get welcomeSecuritySubtitle => 'Donanım destekli ya da ZFS şifrelemesi için yeni seçenekler.';

  @override
  String welcomeChangelogLabel(Object url) {
    return '<a href=\"$url\">Değişiklik günlüğünü görüntüle</a>';
  }

  @override
  String get telemetryPageTitle => 'Telemetri';

  @override
  String telemetryHeader(Object distro) {
    return '$distro iyileştirmenize yardım et';
  }

  @override
  String telemetryDescription(Object distro) {
    return 'Deneyiminizi geliştirebilmemiz için verileri $distro ile anonim olarak paylaşın.';
  }

  @override
  String telemetryLabelOn(Object distro) {
    return 'Evet, sistem verilerini $distro ekibiyle paylaş';
  }

  @override
  String get telemetryLabelOff => 'Hayır, sistem verilerini paylaşma';

  @override
  String get telemetryReportLabel => 'Raporlama ayrıntıları';

  @override
  String get telemetryReportTitle => 'Raporlama ayrıntıları';

  @override
  String get telemetryLegalLabel => 'Yasal';

  @override
  String get privacyPageTitle => 'Konum hizmetleri';

  @override
  String get privacyLocationTitle => 'Konum hizmetleri etkinleştirilsin mi?';

  @override
  String get privacyLocationSubtitle => 'Uygulamaların coğrafi konumunuzu öğrenmesine izin verin.\nBunu istediğiniz zaman Sistem Ayarları\'ndan değiştirebilirsiniz.';

  @override
  String get privacyLocationEnable => 'Konum hizmetleri';

  @override
  String get privacyPolicyLink => 'Veri Gizliliği';

  @override
  String get storeTitle => 'Ubuntu Mağaza';

  @override
  String get storeHeader => 'Daha fazla uygulamayı kullanmaya başlayın';

  @override
  String get storeDescription => 'Ubuntu\'nun Uygulama Mağazası, başlangıçtan itibaren kullanabileceğiniz bir dizi uygulama sunar.';

  @override
  String get storeOpen => 'Uygulama Mağazasını Aç';
}
