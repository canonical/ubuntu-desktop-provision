// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_provision_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class UbuntuProvisionLocalizationsTr extends UbuntuProvisionLocalizations {
  UbuntuProvisionLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get accessibilityPageTitle => 'Erişim Kolaylıkları';

  @override
  String accessibilityPageHeader(String DISTRO) {
    return '$DISTRO erişilebilirlik';
  }

  @override
  String accessibilityPageBody(String DISTRO) {
    return 'Kurulumdan önce $DISTRO\'yu ihtiyaçlarınıza göre özelleştirin. Bunları daha sonra Sistem Ayarları\'ndan değiştirebilirsiniz.';
  }

  @override
  String get accessibilitySeeingLabel => 'Görme';

  @override
  String get accessibilityHearingLabel => 'Duyma';

  @override
  String get accessibilityTypingLabel => 'Yazma';

  @override
  String get accessibilityPointingLabel => 'İşaretleme ve tıklama';

  @override
  String get accessibilityZoomLabel => 'Yakınlaştırma';

  @override
  String get accessibilityHighContrastLabel => 'Yüksek karşıtlık';

  @override
  String get accessibilityLargeTextLabel => 'Büyük metin';

  @override
  String get accessibilityReduceAnimationLabel => 'Animasyonu azalt';

  @override
  String get accessibilityScreenReaderLabel => 'Ekran okuyucusu';

  @override
  String get accessibilityVisualAlertsLabel => 'Görsel uyarılar';

  @override
  String get accessibilityStickKeysLabel => 'Yapışkan tuşlar';

  @override
  String get accessibilitySlowKeysLabel => 'Yavaş tuşlar';

  @override
  String get accessibilityMouseKeysLabel => 'Fare tuşları';

  @override
  String get accessibilityDesktopZoomLabel => 'Masaüstü yakınlaştırma';

  @override
  String get errorPageTitle => 'Bir sorun oluştu';

  @override
  String get errorPageUnexpected =>
      'Üzgünüz, ancak hatanın ne olduğundan emin değiliz. Bilgisayarınızı yeniden başlatıp yükleme işlemini tekrar başlatabilirsiniz. Ayrıca <a>sorunu bildirebilirsiniz</a>.';

  @override
  String errorPageUbuntuBug(String SNAP) {
    return 'İlgili hata ayıklama bilgilerini içeren otomatik bir hata raporu göndermek için lütfen bir terminalde veya komut konsolundan (Alt+F2) <pre>sudo ubuntu-bug $SNAP</pre> komutunu çalıştırın.';
  }

  @override
  String get errorPageShowLog => 'Günlüğü görüntüle';

  @override
  String get errorPageHideLog => 'Günlüğü gizle';

  @override
  String get restart => 'Yeniden Başlat';

  @override
  String get close => 'Kapat';

  @override
  String get timezonePageTitle => 'Saat diliminizi seçin';

  @override
  String get timezoneLocationLabel => 'Konum';

  @override
  String get timezoneTimezoneLabel => 'Saat Dilimi';

  @override
  String get keyboardTitle => 'Klavye düzeni';

  @override
  String get keyboardHeader => 'Klavye düzeninizi seçin';

  @override
  String get keyboardTestHint => 'Klavyenizi test etmek için buraya yazın';

  @override
  String get keyboardDetectTitle => 'Klavye düzenini algıla';

  @override
  String get keyboardDetectButton => 'Algıla';

  @override
  String get keyboardVariantLabel => 'Klavye yerleşimi:';

  @override
  String get keyboardPressKeyLabel =>
      'Lütfen aşağıdaki tuşlardan birine basın:';

  @override
  String get keyboardKeyPresentLabel =>
      'Aşağıdaki tuş klavyenizde bulunuyor mu?';

  @override
  String get themePageTitle => 'Temanızı seçin';

  @override
  String get themePageHeader =>
      'Görünüm ayarlarında bunu daha sonra değiştirebilirsiniz.';

  @override
  String get themeDark => 'Koyu';

  @override
  String get themeLight => 'Açık';

  @override
  String localePageTitle(String DISTRO) {
    return '$DISTRO dağıtımına hoş geldiniz';
  }

  @override
  String get localeHeader => 'Dil seçin:';

  @override
  String get identityPageTitle => 'Hesap oluşturun';

  @override
  String get identityAutoLogin => 'Otomatik giriş yap';

  @override
  String get identityRequirePassword => 'Giriş yapmak için parola iste';

  @override
  String get identityRealNameLabel => 'Adınız';

  @override
  String get identityRealNameRequired => 'İsim gereklidir';

  @override
  String get identityRealNameTooLong => 'Bu isim çok uzun.';

  @override
  String get identityHostnameLabel => 'Bilgisayar adı';

  @override
  String get identityHostnameInfo =>
      'Bu ad, diğer bilgisayarlarla kurulan iletişim esnasında kullanılır.';

  @override
  String get identityHostnameRequired => 'Bilgisayar adı gereklidir';

  @override
  String get identityHostnameTooLong => 'Bu bilgisayar ismi çok uzun.';

  @override
  String get identityInvalidHostname => 'Bilgisayar adı geçersiz';

  @override
  String get identityUsernameLabel => 'Kullanıcı adı seç';

  @override
  String get identityUsernameRequired => 'Kullanıcı adı gereklidir';

  @override
  String get identityInvalidUsername => 'Kullanıcı adı geçersiz';

  @override
  String get identityUsernameInUse => 'Bu kullanıcı adı zaten var.';

  @override
  String get identityUsernameSystemReserved =>
      'Bu ad sistem kullanımı için ayrılmış.';

  @override
  String get identityUsernameTooLong => 'Bu ad çok uzun.';

  @override
  String get identityUsernameInvalidChars =>
      'Bu ad geçersiz karakter içeriyor.';

  @override
  String get identityPasswordLabel => 'Parola seç';

  @override
  String get identityPasswordRequired => 'Parola gereklidir';

  @override
  String get identityConfirmPasswordLabel => 'Parolanızı doğrulayın';

  @override
  String get identityPasswordMismatch => 'Parolalar uyuşmuyor';

  @override
  String get identityPasswordShow => 'Göster';

  @override
  String get identityPasswordHide => 'Gizle';

  @override
  String get identityActiveDirectoryOption => 'Active Directory kullan';

  @override
  String get identityActiveDirectoryInfo =>
      'Bir sonraki adımda alan adı ve diğer ayrıntıları gireceksiniz.';

  @override
  String get activeDirectoryTitle => 'Active Directory\'yi Yapılandır';

  @override
  String get activeDirectoryHeader => 'Active Directory\'ye giriş yapılsın mı?';

  @override
  String activeDirectoryInfo(String DISTRO) {
    return '$DISTRO, daha kolay yönetim için Active Directory ile kusursuz bir şekilde entegre olacak şekilde tasarlanmıştır.';
  }

  @override
  String get activeDirectoryTestConnection => 'Etki alanı bağlantısını sına';

  @override
  String get activeDirectoryDomainLabel => 'Etki alanı';

  @override
  String get activeDirectoryDomainEmpty => 'Gerekli';

  @override
  String get activeDirectoryDomainTooLong => 'Çok uzun';

  @override
  String get activeDirectoryDomainInvalidChars => 'Geçersiz karakterler';

  @override
  String get activeDirectoryDomainStartDot => 'Bir nokta (.) ile başlar';

  @override
  String get activeDirectoryDomainEndDot => 'Bir nokta ile biter (.)';

  @override
  String get activeDirectoryDomainStartHyphen => 'Kısa çizgi (-) ile başlar';

  @override
  String get activeDirectoryDomainEndHyphen => 'Kısa çizgi (-) ile biter';

  @override
  String get activeDirectoryDomainMultipleDots =>
      'Birden fazla sıralı nokta içerir (...)';

  @override
  String get activeDirectoryDomainNotFound => 'Etki alanı bulunamadı';

  @override
  String get activeDirectoryAdminLabel => 'Etki alanına katılma kullanıcısı';

  @override
  String get activeDirectoryAdminEmpty => 'Gerekli';

  @override
  String get activeDirectoryAdminInvalidChars => 'Geçersiz karakterler';

  @override
  String get activeDirectoryPasswordLabel => 'Parola';

  @override
  String get activeDirectoryPasswordEmpty => 'Gerekli';

  @override
  String get activeDirectoryErrorTitle =>
      'Active Directory bağlantısı yapılandırılamadı';

  @override
  String get activeDirectoryErrorMessage =>
      'Üzgünüz, Active Directory şu anda kurulamıyor. Sisteminiz kurulup çalışmaya başladığında, yardım için <a href=\"https://help.ubuntu.com/activedirectory\">help.ubuntu.com/activedirectory</a> adresini ziyaret edin.';

  @override
  String get networkPageTitle => 'Bir ağa bağlan';

  @override
  String get networkPageHeader => 'İnternete bağlan';

  @override
  String get networkPageBody =>
      'İnternet bağlantısı, uyumluluk kontrolü ve ekstra yazılım paketleri ile kurulumunuzu iyileştirecektir.';

  @override
  String get networkWiredOption => 'Kablolu bağlantı kullan';

  @override
  String get networkWiredNone => 'Kablolu bağlantı saptanamadı';

  @override
  String get networkWiredOff => 'Kablolu bağlantı kapalı';

  @override
  String get networkWiredDisabled =>
      'Bilgisayarda Etherneti kullanabilrmek için kablolu bağlantı aktif hale getirilmelidir';

  @override
  String get networkWiredEnable => 'Kablolu bağlantıyı etkinleştir';

  @override
  String get networkWifiOption => 'Wi-Fi ağına bağlan';

  @override
  String get networkWifiOff => 'Kablosuz ağ kapatıldı';

  @override
  String get networkWifiNone => 'Wi-Fi cihazı algılanmadı';

  @override
  String get networkWifiDisabled =>
      'Bu bilgisayarda Wi-Fi kullanmak için, kablosuz ağın etkinleştirilmiş olması gerekir';

  @override
  String get networkWifiEnable => 'Wi-Fi\'yi etkinleştir';

  @override
  String get networkHiddenWifiOption => 'Gizli Wi-Fi ağına bağlan';

  @override
  String get networkHiddenWifiNameLabel => 'Ağ adı';

  @override
  String get networkHiddenWifiNameRequired => 'Ağ adı gereklidir';

  @override
  String get networkNoneOption => 'Şu anda internete bağlanmak istemiyorum';

  @override
  String get eulaPageTitle => 'Lisans sözleşmesi';

  @override
  String get eulaReviewTerms => 'Lisans koşullarını gözden geçirin';

  @override
  String get eulaReadAndAcceptTerms =>
      'Bu makineyi kurmaya devam etmek için lisans sözleşmesinin şartlarını okuyup kabul etmeniz gerekir.';

  @override
  String get eulaAcceptTerms => 'Koşulları okudum ve kabul ediyorum';

  @override
  String get successIconSemanticLabel => 'Success';

  @override
  String get closeIconSemanticLabel => 'Close';

  @override
  String get maximizeIconSemanticLabel => 'Maximize';

  @override
  String get minimizeIconSemanticLabel => 'Minimize';
}
