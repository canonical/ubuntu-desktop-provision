// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_init_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class UbuntuInitLocalizationsTr extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get welcomePageTitle => 'Hoş Geldiniz';

  @override
  String welcomePageHeader(String distro) {
    return '$distro dağıtımına hoş geldiniz';
  }

  @override
  String get welcomeWhatsNew => 'NELER YENİ?';

  @override
  String get welcomeStartTitle => 'Modern bir başlangıç';

  @override
  String get welcomeStartSubtitle =>
      'Daha temiz bir kurulum deneyimini destekler.';

  @override
  String get welcomeStoreTitle => 'Yeni görünüm Uygulama Mağazası';

  @override
  String get welcomeStoreSubtitle =>
      'Gözde yazılımınızı bulmak hiç bu kadar kolay olmamıştı.';

  @override
  String get welcomeSecurityTitle => 'Arttırılmış güvenlik';

  @override
  String get welcomeSecuritySubtitle =>
      'Donanım destekli ya da ZFS şifrelemesi için yeni seçenekler.';

  @override
  String welcomeChangelogLabel(String url) {
    return '<a href=\"$url\">Değişiklik günlüğünü görüntüle</a>';
  }

  @override
  String get telemetryPageTitle => 'Telemetri';

  @override
  String telemetryHeader(String distro) {
    return '$distro iyileştirmenize yardım et';
  }

  @override
  String telemetryDescription(String distro) {
    return 'Sistem verilerinizi bizimle paylaşarak $distro\'yu geliştirmemize yardımcı olun. Bu veriler arasında makine modeliniz, yüklü yazılımlarınız ve saat diliminiz için seçtiğiniz konum gibi bilgiler yer alır.';
  }

  @override
  String telemetryLabelOn(String distro) {
    return 'Evet, sistem verilerini $distro ekibiyle paylaş';
  }

  @override
  String get telemetryLabelOff => 'Hayır, sistem verilerini paylaşma';

  @override
  String get telemetryReportLabel => 'İlk raporu göster';

  @override
  String get telemetryReportTitle => 'Raporlama ayrıntıları';

  @override
  String get telemetryLegalLabel => 'Yasal uyarı';

  @override
  String get telemetryCollectError => 'Telemetri verileri toplanamadı';

  @override
  String get privacyPageTitle => 'Konum hizmetleri';

  @override
  String get privacyLocationTitle => 'Konum hizmetleri etkinleştirilsin mi?';

  @override
  String get privacyLocationSubtitle =>
      'Uygulamaların coğrafi konumunuzu öğrenmesine izin verin.\nBunu istediğiniz zaman Sistem Ayarları\'ndan değiştirebilirsiniz.';

  @override
  String get privacyLocationEnable => 'Konum hizmetleri';

  @override
  String get privacyPolicyLink => 'Veri Gizliliği';

  @override
  String ubuntuProMagicAttachInstructions(String url) {
    return 'Bu kodla <a href=\"https://$url\">$url</a> adresindeki sihirli bağlantıyı kullanın';
  }

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';

  @override
  String get ubuntuProHeader => 'Bu makineyi takın';

  @override
  String get ubuntuProOrAddTokenManually =>
      'veya bir belirteci manuel olarak ekleyin';

  @override
  String get ubuntuProTokenTextfieldHint => 'Jeton';

  @override
  String get ubuntuProSubscriptionDescription =>
      'Açık kaynaklı yazılım güvenliği için en kapsamlı aboneliği edinin';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(String url) {
    return 'Kişisel kullanım için her zaman ücretsiz. Kurumsal kullanım için 30 günlük deneme. <a href=\"https://$url\">Daha fazla bilgi edinin</a>';
  }

  @override
  String get ubuntuProTokenAttachButton => 'Ekle';

  @override
  String get ubuntuProTokenAttachError => 'Geçersiz jeton';

  @override
  String get ubuntuProTokenAttachSucess => 'Geçerli jeton';

  @override
  String get ubuntuProTokenAttachErrorVariant =>
      'Geçersiz jeton, yeniden deneyin';

  @override
  String get ubuntuProOnBoardingSkipForNow => 'Şimdilik atla';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription =>
      'Ubuntu Pro\'yu daha sonra istediğiniz zaman Yazılım ve Güncellemeler uygulaması üzerinden etkinleştirebilirsiniz.';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => 'Ubuntu Pro\'yu etkinleştir';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription =>
      'Bu makineyi 2032 yılına kadar daha geniş bir paket yelpazesindeki güvenlik güncellemelerinden yararlanmak için Ubuntu Pro aboneliğine bağlayın.';

  @override
  String get ubuntuProSucessAttachHeader =>
      'Ubuntu Pro artık bu makinede etkinleştirildi';

  @override
  String get ubuntuProSucessAttachDescription =>
      'Pro servislerinizi Yazılım ve Güncellemeler uygulamasından yönetebilirsiniz.';

  @override
  String get successIconSemanticLabel => 'Success';

  @override
  String get closeIconSemanticLabel => 'Close';

  @override
  String get maximizeIconSemanticLabel => 'Maximize';

  @override
  String get minimizeIconSemanticLabel => 'Minimize';
}
