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
  String get telemetryReportLabel => 'İlk raporu göster';

  @override
  String get telemetryReportTitle => 'Raporlama ayrıntıları';

  @override
  String get telemetryLegalLabel => 'Yasal';

  @override
  String get telemetryCollectError => 'Failed to collect telemetry data';

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
  String ubuntuProMagicAttachInstructions(Object url) {
    return 'Magic attach with this code at <a href=\"https://$url\">$url</a>';
  }

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';

  @override
  String get ubuntuProHeader => 'Attach this machine';

  @override
  String get ubuntuProOrAddTokenManually => 'or add a token manually';

  @override
  String get ubuntuProTokenTextfieldHint => 'Token';

  @override
  String get ubuntuProSubscriptionDescription => 'Get the most comprehensive subscription for open-source software security';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(Object url) {
    return 'Always free for personal use. 30-days trial for enterprises. <a href=\"https://$url\">Learn more</a>';
  }

  @override
  String get ubuntuProTokenAttachButton => 'Attach';

  @override
  String get ubuntuProTokenAttachError => 'Invalid token';

  @override
  String get ubuntuProTokenAttachSucess => 'Valid token';

  @override
  String get ubuntuProTokenAttachErrorVariant => 'Invalid token, retry';

  @override
  String get ubuntuProOnBoardingSkipForNow => 'Skip for now';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription => 'You can always enable Ubuntu Pro later via the Software & Updates application.';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => 'Enable Ubuntu Pro';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription => 'Attach this machine to an Ubuntu Pro subscription for security updates on a wider range of packages, until 2032.';

  @override
  String get ubuntuProSucessAttachHeader => 'Ubuntu Pro is now enabled in this machine';

  @override
  String get ubuntuProSucessAttachDescription => 'You can manage your Pro services in the Software & Updates application.';
}
